
import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var startBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    
    @IBAction func tapOnHomeBtn(_ sender: UIButton) {
        let homeVC = self.storyboard?.instantiateViewController(withIdentifier:"LevelController") as! LevelController
        self.navigationController?.pushViewController(homeVC, animated: true)
    }
    

}
