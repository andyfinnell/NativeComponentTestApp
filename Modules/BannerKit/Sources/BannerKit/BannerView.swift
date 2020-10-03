import Foundation
import ViewKit

final class BannerView: StandardView {
    private let backgroundView = StandardContainerView(backgroundColor: .red)
    private let messageLabel: StandardLabel = {
        let label = StandardLabel(line: .multiline, textColor: .white)
        label.setContentHuggingPriority(.defaultLow, for: .horizontal)
        label.setContentHuggingPriority(.required, for: .vertical)
        return label
    }()
    
    var message: String? {
        get { messageLabel.text }
        set { messageLabel.text = newValue }
    }
    
    override var hierarchy: ViewHierarchy {
        .superview(backgroundView, subviews: [
            messageLabel
        ])
    }
    
    override var layout: [Layout] {
        [
            .hmargin(0, backgroundView, 0),
            .vmargin(0, backgroundView, 0),
            
            .hmargin(10, messageLabel, 10),
            .vmargin(5, messageLabel, 5)
        ]
    }
}
