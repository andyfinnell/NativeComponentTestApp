import Foundation
import NativeComponentKit

public final class BannerSource: NativeComponentSource {
    public init() {
        // inject any dependencies here
    }
    
    public func register(on registry: NativeComponentRegistry) {
        registry.install(BannerComponentFactory())
    }
}
