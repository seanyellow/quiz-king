import UIKit

class TitleVC: UIViewController {

    @IBOutlet weak var titleStack: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
 
    }
    
    // 按下Start鍵
    @IBAction func start(_ sender: UIButton) {
        self.performSegue(withIdentifier: "selectLevelSegue", sender: self) 
    }
    
    // 按下About鍵
    @IBAction func about(_ sender: UIButton) {
    }
    
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if(size.width < size.height){
            titleStack.axis = .vertical
        }
        else {
            titleStack.axis = .horizontal
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

