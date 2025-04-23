import UIKit
import Flutter
import flutter_local_notifications
import flutter_pdfview

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    // Register the PDF view platform view factory
    FLTPDFViewFlutterPlugin.register(with: self.registrar(forPlugin: "FLTPDFViewFlutterPlugin"))

    FlutterLocalNotificationsPlugin.setPluginRegistrantCallback { (registry) in
        GeneratedPluginRegistrant.register(with: registry)
    }
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
