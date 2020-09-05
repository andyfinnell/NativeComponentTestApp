import Foundation
import NativeComponentKit

final class BannerComponentFactory: NativeComponentFactory {
    struct CreateParameter: Codable {
        let message: String
    }
    
    let id = NativeComponentID("com.losingfight.bannerkit.banner")
    
    func create(from parameter: CreateParameter) throws -> NativeComponent {
        BannerComponent(message: parameter.message)
    }
}
