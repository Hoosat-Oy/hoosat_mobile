import UIKit
import Flutter
import CoreNFC

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate, NFCNDEFReaderSessionDelegate {
    private var nfcSession: NFCNDEFReaderSession?
    private var methodChannel: FlutterMethodChannel?

    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        // Initialize Flutter engine and method channel
        let controller = window?.rootViewController as! FlutterViewController
        methodChannel = FlutterMethodChannel(
            name: "fi.hoosat_mobile.hoosatwallet/links",
            binaryMessenger: controller.binaryMessenger
        )

        // Handle deep links from launch options (e.g., app opened via custom URI)
        if let url = launchOptions?[.url] as? URL {
            handleDeepLink(url: url)
        }

        // Start NFC session if needed (you can trigger this from Flutter or on app launch)
        startNFCSession()

        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }

    // Handle deep links when app is already running
    override func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey: Any] = [:]
    ) -> Bool {
        handleDeepLink(url: url)
        return true
    }

    private func handleDeepLink(url: URL) {
        // Send the URL string to Flutter via the method channel
        methodChannel?.invokeMethod("link", arguments: url.absoluteString)
    }

    private func startNFCSession() {
        // Check if NFC is supported
        guard NFCNDEFReaderSession.readingAvailable else {
            print("NFC is not available on this device.")
            return
        }

        // Initialize NFC reader session
        nfcSession = NFCNDEFReaderSession(
            delegate: self,
            queue: .main,
            invalidateAfterFirstRead: true
        )
        nfcSession?.alertMessage = "Hold your iPhone near an NFC tag."
        nfcSession?.begin()
    }

    // MARK: - NFCNDEFReaderSessionDelegate

    func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) {
        guard let message = messages.first, let record = message.records.first else {
            return
        }

        var uri: String?

        // Handle Well-Known URI record (RTD_URI)
        if record.typeNameFormat == .nfcWellKnown, record.type == NFCNDEFWellKnownType.uri {
            if let url = record.wellKnownTypeURIPayload() {
                uri = url.absoluteString
            }
        }
        // Handle text/uri-list MIME type
        else if record.typeNameFormat == .media, String(data: record.type, encoding: .utf8) == "text/uri-list" {
            let payload = String(data: record.payload, encoding: .utf8) ?? ""
            // Parse text/uri-list: take the first non-empty, non-comment line
            uri = payload
                .components(separatedBy: .newlines)
                .map { $0.trimmingCharacters(in: .whitespaces) }
                .first { !$0.isEmpty && !$0.hasPrefix("#") }
        }

        // Send the URI to Flutter via the method channel
        if let uri = uri {
            methodChannel?.invokeMethod("link", arguments: uri)
        }

        // End the NFC session
        session.invalidate()
    }

    func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: Error) {
        print("NFC session invalidated: \(error.localizedDescription)")
    }
}