import UIKit

class NewDeckTwoScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var headerImg: UIImageView!
    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var newDeckOneView: UIView!
    @IBOutlet weak var newDeckOneRuLbl: UILabel!
    @IBOutlet weak var newDeckOneEnLbl: UILabel!
    @IBOutlet weak var newDeckOnePicLbl: UILabel!
    @IBOutlet weak var newDeckOneRuTxt: UITextField!
    @IBOutlet weak var newDeckOneEnTxt: UITextField!
    @IBOutlet weak var newDeckOnePicView: UIView!
    @IBOutlet weak var newDeckOpenPickLbl: UILabel!
    
    @IBOutlet weak var newDeckTwoView: UIView!
    @IBOutlet weak var newDeckTwoRuLbl: UILabel!
    @IBOutlet weak var newDeckTwoEnLbl: UILabel!
    @IBOutlet weak var newDeckTwoPicLbl: UILabel!
    @IBOutlet weak var newDeckTwoRuTxt: UITextField!
    @IBOutlet weak var newDeckTwoEnTxt: UITextField!
    @IBOutlet weak var newDeckTwoPicView: UIView!
    @IBOutlet weak var newDeckTwoPickLbl: UILabel!
    
    @IBOutlet weak var saveButton: UIButton!
    
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
        
        self.headerLbl.text = "New deck"
        self.headerLbl.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.headerLbl.textColor = .white
        
        self.newDeckOneView.backgroundColor = .white
        self.newDeckOneView.layer.cornerRadius = 5
        self.newDeckOneView.layer.shadowColor = UIColor.gray.cgColor
        self.newDeckOneView.layer.shadowOffset = CGSizeMake(0, 1)
        self.newDeckOneView.layer.shadowRadius = 5
        self.newDeckOneView.layer.shadowOpacity = 0.3
        
        self.newDeckOneRuLbl.text = "Ru"
        self.newDeckOneRuLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.newDeckOneRuLbl.textColor = .black
        
        self.newDeckOneEnLbl.text = "En"
        self.newDeckOneEnLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.newDeckOneEnLbl.textColor = .black
        
        self.newDeckOnePicLbl.text = "Pic"
        self.newDeckOnePicLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.newDeckOnePicLbl.textColor = .black
        
        self.newDeckOneRuTxt.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.newDeckOneRuTxt.layer.cornerRadius = 5
        
        self.newDeckOneEnTxt.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.newDeckOneEnTxt.layer.cornerRadius = 5
        
        self.newDeckOnePicView.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.newDeckOnePicView.layer.cornerRadius = 5
        
        self.newDeckOpenPickLbl.text = "+"
        self.newDeckOpenPickLbl.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.newDeckOpenPickLbl.textColor = .gray
        
        self.newDeckTwoView.backgroundColor = .white
        self.newDeckTwoView.layer.cornerRadius = 5
        self.newDeckTwoView.layer.shadowColor = UIColor.gray.cgColor
        self.newDeckTwoView.layer.shadowOffset = CGSizeMake(0, 1)
        self.newDeckTwoView.layer.shadowRadius = 5
        self.newDeckTwoView.layer.shadowOpacity = 0.3
        
        self.newDeckTwoRuLbl.text = "Ru"
        self.newDeckTwoRuLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.newDeckTwoRuLbl.textColor = .black
        
        self.newDeckTwoEnLbl.text = "En"
        self.newDeckTwoEnLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.newDeckTwoEnLbl.textColor = .black
        
        self.newDeckTwoPicLbl.text = "Pic"
        self.newDeckTwoPicLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.newDeckTwoPicLbl.textColor = .black
        
        self.newDeckTwoRuTxt.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.newDeckTwoRuTxt.layer.cornerRadius = 5
        
        self.newDeckTwoEnTxt.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.newDeckTwoEnTxt.layer.cornerRadius = 5
        
        self.newDeckTwoPicView.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.newDeckTwoPicView.layer.cornerRadius = 5
        
        self.newDeckTwoPickLbl.text = "+"
        self.newDeckTwoPickLbl.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.newDeckTwoPickLbl.textColor = .gray
        
        self.saveButton.backgroundColor = UIColor(named: "MainColor")
        let playButtonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let playButtonTitle = NSAttributedString(string: "Save deck", attributes: playButtonTitleAttributes)
        self.saveButton.setAttributedTitle(playButtonTitle, for: .normal)
        self.saveButton.layer.cornerRadius = 5
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
