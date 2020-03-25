extension UIView {
    
    /**
     Apply squircle corner radius on UIView.
     */
    public func squircle() {
        layer.applySquircle()
    }
    
    /**
    Apply squircle corner radius with border on UIView.

    - parameter width: border width
    - parameter color: border color
    */
    public func squircleWithBorder(width: CGFloat, color: UIColor) {
        layer.applySquircleWithBorder(width: width, color: color)
    }
    
    /**
     Remove the squircle corner radius and border on UIView
     */
    public func removeSquircle() {
        layer.removeSquircle()
    }
    
    /**
     Remove the squircle border on UIView
     */
    public func removeSquircleWithBorder() {
        layer.removeSquircleBorder()
    }
    
}
