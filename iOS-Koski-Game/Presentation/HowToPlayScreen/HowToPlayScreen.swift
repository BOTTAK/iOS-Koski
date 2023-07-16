import UIKit

class HowToPlayScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var headerImg: UIImageView!
    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var questionOneLbl: UILabel!
    @IBOutlet weak var answerOneLbl: UILabel!
    @IBOutlet weak var questionTwoLbl: UILabel!
    @IBOutlet weak var answerTwoLbl: UILabel!
    @IBOutlet weak var questionThirdLbl: UILabel!
    @IBOutlet weak var answerThirdLbl: UILabel!
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Variables
    //------------------------------------------------------------------------------
    
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- View Life Cycle Methods
    //------------------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.addTargetToBackButton()
    }
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Action Methods
    //------------------------------------------------------------------------------
    
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Custom Methods
    //------------------------------------------------------------------------------
    func setupUI() {
        self.headerView.backgroundColor = UIColor(named: "MainGrayColor")
        
        self.headerImg.image = UIImage(named: "arrowLeft")
        
        self.headerLbl.text = "How to play"
        self.headerLbl.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.headerLbl.textColor = .white
        
        self.questionOneLbl.text = "How many cards are in the deck?"
        self.questionOneLbl.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        self.questionOneLbl.textColor = .black
        self.questionOneLbl.textAlignment = .left
        
        self.questionTwoLbl.text = "How many cards are in the deck?"
        self.questionTwoLbl.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        self.questionTwoLbl.textColor = .black
        self.questionTwoLbl.textAlignment = .left
        
        self.questionThirdLbl.text = "How many cards are in the deck?"
        self.questionThirdLbl.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        self.questionThirdLbl.textColor = .black
        self.questionThirdLbl.textAlignment = .left
        
        self.answerOneLbl.text = "There are 54 cards in a deck - these are\n 18 words, each of which is present in the\n form of a picture and a translation into\n two languages"
        self.answerOneLbl.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        self.answerOneLbl.textColor = .black
        self.answerOneLbl.textAlignment = .left
        self.answerOneLbl.numberOfLines = 0
        
        self.answerTwoLbl.text = "There are 54 cards in a deck - these are\n 18 words, each of which is present in the\n form of a picture and a translation into\n two languages"
        self.answerTwoLbl.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        self.answerTwoLbl.textColor = .black
        self.answerTwoLbl.textAlignment = .left
        self.answerTwoLbl.numberOfLines = 0
        
        self.answerThirdLbl.text = "There are 54 cards in a deck - these are\n 18 words, each of which is present in the\n form of a picture and a translation into\n two languages"
        self.answerThirdLbl.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        self.answerThirdLbl.textColor = .black
        self.answerThirdLbl.textAlignment = .left
        self.answerThirdLbl.numberOfLines = 0
    }
    func addTargetToBackButton() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(backButton))
        self.headerImg.addGestureRecognizer(tap)
        self.headerImg.isUserInteractionEnabled = true
    }
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Objective-C Methods
    //------------------------------------------------------------------------------
    @objc func backButton() {
        dismiss(animated: true)
    }
}
