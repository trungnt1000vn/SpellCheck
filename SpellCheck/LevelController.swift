import UIKit

class LevelController: UIViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
    self.navigationController?.navigationBar.isHidden = true
    }
    

    @IBAction func levelOneBtnTapAction(_ sender: UIButton) {
        let homeVC = self.storyboard?.instantiateViewController(withIdentifier:"ViewController") as! ViewController
        self.navigationController?.pushViewController(homeVC, animated: true)
    }
    
    
    @IBAction func levelTwoBtnActionTapped(_ sender: UIButton) {
        let homeVC = self.storyboard?.instantiateViewController(withIdentifier:"ViewController") as! ViewController
        self.navigationController?.pushViewController(homeVC, animated: true)
    }
    
    
    @IBAction func levelThreeActionBtnTapped(_ sender: UIButton) {
        let homeVC = self.storyboard?.instantiateViewController(withIdentifier:"ViewController2") as! ViewController2
        self.navigationController?.pushViewController(homeVC, animated: true)
    }
    
    
    
    @IBAction func levelFourActionButtonTapped(_ sender: UIButton) {
        let homeVC = self.storyboard?.instantiateViewController(withIdentifier:"ViewController3") as! ViewController3
        self.navigationController?.pushViewController(homeVC, animated: true)
    }
    
    
    @IBAction func homebtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    }
    

