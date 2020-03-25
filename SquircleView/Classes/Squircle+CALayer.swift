internal let squircleBorderName = "squircleBorder"

extension CALayer {
    
    /**
     Apply squircle corner radius on mask layer of UIView.          
     */
    public func applySquircle() {
        let maskLayer = CAShapeLayer()
        maskLayer.path = squirclePath.cgPath
        mask = maskLayer
    }
    
    /**
    Apply squircle corner radius on mask layer  of UIView
     and add bordered sublayer of UIView.

    - parameter width: border width
    - parameter color: border color
    */
    public func applySquircleWithBorder(width: CGFloat, color: UIColor) {
        applySquircle()
        let borderLayer = CAShapeLayer()
        borderLayer.name = squircleBorderName
        borderLayer.path = squirclePath.cgPath
        borderLayer.lineWidth = width
        borderLayer.strokeColor = color.cgColor
        borderLayer.fillColor = UIColor.clear.cgColor
        borderLayer.frame = bounds
        addSublayer(borderLayer)
    }
    
    /**
     Remove the squircle corner radius on mask layer and border sublayer.
     */
    public func removeSquircle() {
        removeSquircleBorder()
        mask?.removeFromSuperlayer()
    }
    
    /**
     Remove the border sublayer.
     */
    public func removeSquircleBorder() {
        sublayers?
            .filter { layer in return layer.name == squircleBorderName }
            .forEach { layer in
                layer.removeFromSuperlayer()
        }
    }
    
}
