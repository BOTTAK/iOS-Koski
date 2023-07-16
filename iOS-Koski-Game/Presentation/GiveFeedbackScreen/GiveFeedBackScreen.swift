import UIKit

class GiveFeedBackScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var headerImg: UIImageView!
    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var mainLbl: UILabel!
    @IBOutlet weak var mainTxt: UITextField!
    @IBOutlet weak var sendButton: UIButton!
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
        
        self.headerLbl.text = "Give feedback"
        self.headerLbl.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.headerLbl.textColor = .white
        
        self.mainLbl.text = "Let us know"
        self.mainLbl.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        self.mainLbl.textColor = .black
        self.mainLbl.textAlignment = .left
        
        self.mainTxt.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.mainTxt.layer.cornerRadius = 5
        
        self.sendButton.backgroundColor = UIColor(named: "MainColor")
        let buttonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let buttonTitle = NSAttributedString(string: "Send", attributes: buttonTitleAttributes)
        self.sendButton.setAttributedTitle(buttonTitle, for: .normal)
        self.sendButton.layer.cornerRadius = 5
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
