import Cocoa
import BannerKit
import NativeComponentKit
import ViewKit

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    private let dependencies = AppDependencies()
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        dependencies.componentStore.install(BannerSource())
        
        let windowController = StandardWindowController(kind: .resizeable)
        let viewModel = MainViewModel(dependencies: dependencies)
        windowController.contentViewController = MainViewController(viewModel: viewModel)
        windowController.window?.title = "Components"
        
        windowController.window?.center()
        windowController.showWindow(nil)

    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

