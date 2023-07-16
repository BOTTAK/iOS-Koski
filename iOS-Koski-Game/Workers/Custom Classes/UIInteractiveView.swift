import UIKit

open class UIInteractiveView: UIView {
    
    /*
     MARK: -
     */
    
    open var opacityFactor: Float = 0.5
    @IBInspectable open var isHighlightingEnabled: Bool = true
    open var didTouchAction: (() -> ())?
    open var isEnabled: Bool = true {
        didSet {
            isUserInteractionEnabled = isEnabled
            layer.opacity = isEnabled ? 1 : defaultOpacity * opacityFactor
        }
    }
    @IBInspectable open var isHapticEnabled: Bool = true
    private var defaultOpacity: Float = 1
    
    /*
     MARK: -
     */
    
    public let impactFeedbackgenerator = UIImpactFeedbackGenerator(style: .light)
    
    /*
     MARK: -
     */
    
    override open func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        if isHighlightingEnabled == true {
            defaultOpacity = layer.opacity
            layer.opacity = defaultOpacity * opacityFactor
        }
    }
    
    override open func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        restoreState()
    }
    
    override open func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        restoreState()
        
        if let touch = touches.first {
            let location = touch.location(in: self)
            if bounds.contains(location) {
                if isHapticEnabled {
                    impactFeedbackgenerator.impactOccurred()
                }
                didTouchAction?()
            }
        }
    }
    
    open func restoreState() {
        layer.add(CATransition(), forKey: nil)
        layer.opacity = defaultOpacity
    }

}

