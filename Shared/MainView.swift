import Foundation
import ViewKit
import NativeComponentKit
import Combine

final class MainView: StandardView {
    private let componentContainer = NativeComponentContainerViewController()
    private let contentLabel = StandardLabel(text: "This is a long bit of text, or at least it will be if I don't get tired and stop. I need some more content so it fills out the screen more.",
                                             line: .multiline)
    private var cancellables = Set<AnyCancellable>()
    
    init(viewModel: MainViewModel) {
        super.init()
        viewModel.component
            .assign(to: \.nativeComponent, on: componentContainer)
            .store(in: &cancellables)
    }
    
    override var hierarchy: ViewHierarchy {
        .hierarchy(self, subviews: [
            .controller(componentContainer),
            .views([contentLabel])
        ])
    }
    
    override var layout: [Layout] {
        [
            .column([
                .topGuide,
                .space(20),
                .view(leading: 0, componentContainer, trailing: 0),
                .space(20),
                .view(leading: 16, contentLabel, trailing: 16),
                .spaceOfAtLeast(20),
                .bottomGuide
            ])
        ]
    }
}
