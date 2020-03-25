import UIKit
import SquircleView

class ViewController: UIViewController {

    private lazy var someView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.addSubview(someView)
        someView.widthAnchor.constraint(equalToConstant: 180.0).isActive = true
        someView.heightAnchor.constraint(equalToConstant: 180.0).isActive = true
        someView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        someView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        someView.removeSquircle()
        someView.squircleWithBorder(width: 0.5, color: .red)
    }
}

