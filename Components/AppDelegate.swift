import Cocoa
import BannerKit
import NativeComponentKit

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    private let componentStore = NativeComponentStore()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        componentStore.install(BannerSource())
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

