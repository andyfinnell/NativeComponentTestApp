import Foundation
import Combine
import RestLikeKit
import NativeComponentKit

protocol HasBannerAPI {
    var bannerAPI: BannerAPIType { get }
}

protocol BannerAPIType {
    func banner() -> AnyPublisher<JSONValue, Error>
}

struct BannerAPI: BannerAPIType {
    private let api: APIType
    
    init(api: APIType) {
        self.api = api
    }
    
    func banner() -> AnyPublisher<JSONValue, Error> {
        api.call(ShowBannerRequest()).map { $0.component }.eraseToAnyPublisher()
    }
}

struct ShowBannerRequest: ResourceRequest {
    struct ResourceType: Decodable, Equatable {
        let component: JSONValue
    }
    let verb = ResourceVerb.show
    let path = "components/banner.json"
    let parameters = Empty()
}
