import Foundation
import RestLikeKit

extension APIConfig {
    static let `default` = APIConfig(baseURL: URL(string: "https://losingfight.com/api/")!,
                                     baseHeaders: [:])
}
