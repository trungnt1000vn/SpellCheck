import UIKit

class AboutVC: UIViewController {
    @IBOutlet weak var aboutLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Constant().addCornerRadiusToButtons(btns:aboutLbl)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.title = "About The App"
        self.navigationController?.navigationBar.isHidden = false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.landscapeLeft
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return UIInterfaceOrientation.landscapeLeft
    }
    

}
