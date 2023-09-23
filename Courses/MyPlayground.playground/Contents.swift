//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let customCard = UIView()
        customCard.frame = CGRect(x: 21, y: 21, width: 300, height: 210)
        customCard.backgroundColor = .cyan
        customCard.layer.cornerRadius = 21
        customCard.layer.cornerCurve = .continuous
        
        // Add Shadow
        customCard.layer.shadowColor = UIColor.black.cgColor
        customCard.layer.shadowOpacity = 0.21
        customCard.layer.shadowOffset = CGSize(width: 3, height: 5)
        customCard.layer.shadowRadius = 11
        
        view.addSubview(customCard)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
