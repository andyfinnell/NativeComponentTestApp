import Foundation
import NativeComponentKit

final class BannerComponent: NativeComponent {
    private let view = BannerView()
    
    var ui: NativeUI { .view(view) }

    init(message: String) {
        view.message = message
    }
}
