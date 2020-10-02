import Foundation
import UIKit

final class BannerView: UIView {
    private let label = UILabel()
    
    var message: String? {
        get { label.text }
        set { label.text = newValue }
    }
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension BannerView {
    func commonInit() {
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        label.setContentHuggingPriority(.defaultLow, for: .horizontal)
        label.setContentHuggingPriority(.required, for: .vertical)
        label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        label.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
        backgroundColor = .red
        label.textColor = .white
    }
}
