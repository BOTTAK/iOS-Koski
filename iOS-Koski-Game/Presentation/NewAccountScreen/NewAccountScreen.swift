import UIKit

class NewAccountScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var passwordLbl: UILabel!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var repeatPasswordLbl: UILabel!
    @IBOutlet weak var repeatPasswordTxt: UITextField!
    @IBOutlet weak var createButton: UIButton!
    
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
        self.addTappedToButton()
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
        self.titleLbl.text = "New account"
        self.titleLbl.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        self.titleLbl.textColor = .black
        self.passwordLbl.text = "Password"
        self.passwordLbl.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        self.passwordLbl.textColor = .black
        self.passwordTxt.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.passwordTxt.layer.cornerRadius = 5
        self.repeatPasswordLbl.text = "Repeat password"
        self.repeatPasswordLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.repeatPasswordLbl.textColor = .black
        self.repeatPasswordTxt.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.repeatPasswordTxt.layer.cornerRadius = 5
        
        self.createButton.backgroundColor = UIColor(named: "MainColor")
        let buttonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let buttonTitle = NSAttributedString(string: "Create account", attributes: buttonTitleAttributes)
        self.createButton.setAttributedTitle(buttonTitle, for: .normal)
        self.createButton.layer.cornerRadius = 5
    }
    
    func addTappedToButton() {
        self.createButton.addTarget(self, action: #selector(openNextScreen), for: .touchUpInside)
    }
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Objective-C Methods
    //------------------------------------------------------------------------------
    @objc func openNextScreen() {
        let vc = SuccessScreen()
        self.defaultPresentationStyle(viewController: vc)
    }
}
