import Foundation
import RestLikeKit
import NativeComponentKit

protocol HasComponentStore {
    var componentStore: NativeComponentStore { get }
}

final class AppDependencies: HasAPI, HasBannerAPI, HasComponentStore {
    lazy var api: APIType = API(httpClient: self.httpClient,
                                apiConfig: .default,
                                authenticationStorage: AuthenticationStorage())
    lazy var bannerAPI: BannerAPIType = BannerAPI(api: self.api)
    lazy var componentStore = NativeComponentStore()

    private lazy var httpClient: HTTPClientType = HTTPClient(logger: self.logger,
                                                     urlSession: URLSession.shared,
                                                     httpRequestEncoder: HTTPRequestEncoder(),
                                                     httpResponseDecoder: HTTPResponseDecoder())
    private lazy var logger = Logger()
}
