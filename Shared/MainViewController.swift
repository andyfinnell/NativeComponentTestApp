import Foundation
import ViewKit

final class MainViewController: StandardViewController {
    init(viewModel: MainViewModel) {
        super.init(realView: MainView(viewModel: viewModel))
    }
}
