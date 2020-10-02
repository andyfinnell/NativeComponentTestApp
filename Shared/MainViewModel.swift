import Foundation
import Combine
import NativeComponentKit
import BannerKit

struct MainViewModel {
    let component: AnyPublisher<NativeComponent?, Never>
    
    typealias Dependencies = HasBannerAPI & HasComponentStore
    
    init(dependencies: Dependencies) {
        component = dependencies.bannerAPI.banner()
            .receive(on: RunLoop.main)
            .tryMap { try dependencies.componentStore.create(from: .value($0)) }
            .replaceError(with: nil)
            .eraseToAnyPublisher()
    }
}
