import Foundation
import RestLikeKit

struct AuthenticationStorage: AuthenticationStorageType {
    func authenticationHeader(for service: String) -> String? {
        nil
    }
}
