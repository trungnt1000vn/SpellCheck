import UIKit


class ViewController3: UIViewController {
    
    @IBOutlet weak var questionLbl: UILabel!
    
    @IBOutlet weak var optionsView: UIView!
    @IBOutlet weak var aOptionBtnOutlet: UIButton!
    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var bOptionBtnOutlet: UIButton!
    @IBOutlet weak var cbtnoutlet: UIButton!
    @IBOutlet weak var homeBtnoutlet: UIButton!
    
    
    
    var allQuestions = Type3QuestionBank()
    var questionNumber : Int = 0
    var score : Int = 0
    var selectedAnswer : Int = 0
    var optionSelected = String()
    var questions: [Question] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questions = allQuestions.list.shuffled()
        print("questions: \(questions.count)")
        setUpView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    
    func setUpView(){
        updateUI()
        updateQuestion()
    }
    
    
    
    
    func updateQuestion(){
//        Constant().addShadowsToImageView(btn: aOptionBtnOutlet)
//        Constant().addShadowsToImageView(btn: bOptionBtnOutlet)
//        Constant().addShadowsToImageView(btn: cbtnoutlet)
//        Constant().addShadowsToImageView(btn: scoreLbl)
//        Constant().addShadowsToImageView(btn: homeBtnoutlet)
//        
//        Constant().addCornerRadiusToButtons(btns:questionLbl)
//        Constant().addCornerRadiusToButtons(btns:optionsView)
        
        if questionNumber <= questions.count - 1{
            aOptionBtnOutlet.setTitle(questions[questionNumber].optionA, for:.normal)
            bOptionBtnOutlet.setTitle(questions[questionNumber].optionB, for:.normal)
            cbtnoutlet.setTitle(questions[questionNumber].optionC, for:.normal)
            
            selectedAnswer = questions[questionNumber].correctAnswer
            updateUI()
            
        }else {
            let alert = UIAlertController(title: "Awesome", message: "End of Quiz. Do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Start Again??", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        
        
    }
    
    
    
    func updateUI(){
        scoreLbl.text = "Score: \(score)"
        //        Constant().addCornerRadiusToButtons(btns:questionsImageView)
        //
    }
    
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
        
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        
        
        if sender.tag == selectedAnswer {
            ProgressHUD.showSuccess("Correct")
            //            sender.layer.borderColor = UIColor.green.cgColor
            //            sender.layer.borderWidth = 2
            score += 1
            
        }else{
            ProgressHUD.showError("Incorrect")
            //            sender.layer.borderColor = UIColor.red.cgColor
            //            sender.layer.borderWidth = 2
            
        }
        
        questionNumber += 1
        updateQuestion()
    }
    
    
    
    
    
    
    @IBAction func homebtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}




