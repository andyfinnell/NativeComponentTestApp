import Foundation
import Cocoa

final class BannerView: NSView {
    private let label = NSTextField()
    
    var message: String? {
        get { label.stringValue }
        set { label.stringValue = newValue ?? "" }
    }
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    override func draw(_ dirtyRect: NSRect) {
        NSColor.red.set()
        NSBezierPath(rect: bounds).fill()
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

        label.textColor = .white
        label.isEditable = false
        label.isBordered = false
        label.isBezeled = false
        label.backgroundColor = .clear
    }
}

