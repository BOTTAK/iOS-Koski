import UIKit

class RegisterScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var chooseSegmentControl: UISegmentedControl!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var nickNameLbl: UILabel!
    @IBOutlet weak var nickNameTxt: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    
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
    func setupUI(){
        self.chooseSegmentControl.layer.backgroundColor = UIColor(named: "MainGrayColor")?.cgColor
        self.chooseSegmentControl.selectedSegmentTintColor = UIColor(named: "MainColor")
        self.chooseSegmentControl.setTitleFont(UIFont.systemFont(ofSize: 18, weight: .bold))
        self.chooseSegmentControl.setTitleColor(UIColor.white)
        self.emailLabel.text = "E-mail"
        self.emailLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.emailLabel.textColor = .black
        self.emailTxt.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.emailTxt.layer.cornerRadius = 5
        self.nickNameLbl.text = "Nickname"
        self.nickNameLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.nickNameLbl.textColor = .black
        self.nickNameTxt.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.nickNameTxt.layer.cornerRadius = 5
        self.nextButton.backgroundColor = UIColor(named: "MainColor")
        let buttonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let buttonTitle = NSAttributedString(string: "Next", attributes: buttonTitleAttributes)
        self.nextButton.setAttributedTitle(buttonTitle, for: .normal)
        self.nextButton.layer.cornerRadius = 5
    }
    
    func addTappedToButton() {
        self.nextButton.addTarget(self, action: #selector(openNextScreen), for: .touchUpInside)
    }
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Objective-C Methods
    //------------------------------------------------------------------------------
    @objc func openNextScreen() {
        let vc = NewAccountScreen()
        self.defaultPresentationStyle(viewController: vc)
    }
}

extension UISegmentedControl {

    func setTitleColor(_ color: UIColor, state: UIControl.State = .normal) {
        var attributes = self.titleTextAttributes(for: state) ?? [:]
        attributes[.foregroundColor] = color
        self.setTitleTextAttributes(attributes, for: state)
    }
    
    func setTitleFont(_ font: UIFont, state: UIControl.State = .normal) {
        var attributes = self.titleTextAttributes(for: state) ?? [:]
        attributes[.font] = font
        self.setTitleTextAttributes(attributes, for: state)
    }

}
