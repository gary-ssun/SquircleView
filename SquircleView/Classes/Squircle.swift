extension CALayer {
    
    /**
     Get UIBezierPath for squircle shape.
     */
    var squirclePath: UIBezierPath {
        let baseSize: CGSize = CGSize(width: 100.0, height: 100.0)
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 50, y: 5).convertPoint(with: bounds.size, base: baseSize))
        shape.addCurve(to: CGPoint(x: 5, y: 50).convertPoint(with: bounds.size, base: baseSize),
                       controlPoint1: CGPoint(x: 14, y: 5).convertPoint(with: bounds.size, base: baseSize),
                       controlPoint2: CGPoint(x: 5, y: 14).convertPoint(with: bounds.size, base: baseSize))
        shape.addCurve(to: CGPoint(x: 50, y: 95).convertPoint(with: bounds.size, base: baseSize),
                       controlPoint1: CGPoint(x: 5, y: 86).convertPoint(with: bounds.size, base: baseSize),
                       controlPoint2: CGPoint(x: 14, y: 95).convertPoint(with: bounds.size, base: baseSize))
        shape.addCurve(to: CGPoint(x: 95, y: 50).convertPoint(with: bounds.size, base: baseSize),
                       controlPoint1: CGPoint(x: 86, y: 95).convertPoint(with: bounds.size, base: baseSize),
                       controlPoint2: CGPoint(x: 95, y: 86).convertPoint(with: bounds.size, base: baseSize))
        shape.addCurve(to: CGPoint(x: 50, y: 5).convertPoint(with: bounds.size, base: baseSize),
                       controlPoint1: CGPoint(x: 95, y: 14).convertPoint(with: bounds.size, base: baseSize),
                       controlPoint2: CGPoint(x: 86, y: 5).convertPoint(with: bounds.size, base: baseSize))
        shape.addLine(to: CGPoint(x: 50, y: 5).convertPoint(with: bounds.size, base: baseSize))
        shape.close()
        return shape
    }
    
}

extension CGPoint {
    
    /**
     Get adjust point.
     */
    internal func convertPoint(with size: CGSize, base: CGSize) -> CGPoint {
        return CGPoint(x: x * size.width / base.width,
                       y: y * size.height / base.height)
    }
    
}
