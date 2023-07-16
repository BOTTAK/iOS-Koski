import UIKit

class AccountScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var headerImg: UIImageView!
    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var limitedLbl: UILabel!
    @IBOutlet weak var premiumLbl: UILabel!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var emailNameLbl: UILabel!
    @IBOutlet weak var nickNameLbl: UILabel!
    @IBOutlet weak var nickNameNameLbl: UILabel!
    @IBOutlet weak var changePasswordLbl: UILabel!
    @IBOutlet weak var backgroundMusicLbl: UILabel!
    @IBOutlet weak var soungEffectLbl: UILabel!
    @IBOutlet weak var privacyPolicyLbl: UILabel!
    @IBOutlet weak var logOutLbl: UILabel!
    @IBOutlet weak var deleteLbl: UILabel!
    
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
        
        self.headerLbl.text = "Your account"
        self.headerLbl.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.headerLbl.textColor = .white
        
        self.limitedLbl.text = "You have limited access"
        self.limitedLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.limitedLbl.textColor = .black
        self.limitedLbl.textAlignment = .center
        
        self.premiumLbl.text = "Get Premium"
        self.premiumLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.premiumLbl.textColor = UIColor(named: "MainColor")
        self.premiumLbl.textAlignment = .center
        
        self.mainView.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.mainView.layer.cornerRadius = 5
        
        self.emailLbl.text = "E-mail"
        self.emailLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.emailLbl.textColor = UIColor(named: "MainEmail")
        
        self.emailNameLbl.text = "mail@mail.ru"
        self.emailNameLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.emailNameLbl.textColor = .black
        
        self.nickNameLbl.text = "Nickname"
        self.nickNameLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.nickNameLbl.textColor = UIColor(named: "MainEmail")
        
        self.nickNameNameLbl.text = "Vasja123"
        self.nickNameNameLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.nickNameNameLbl.textColor = .black
        
        self.changePasswordLbl.text = "Change password"
        self.changePasswordLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.changePasswordLbl.textColor = UIColor(named: "MainColor")
        
        self.backgroundMusicLbl.text = "Background music"
        self.backgroundMusicLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.backgroundMusicLbl.textColor = .black
        
        self.soungEffectLbl.text = "Sound effects"
        self.soungEffectLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.soungEffectLbl.textColor = .black
        
        self.privacyPolicyLbl.text = "Privacy policy"
        self.privacyPolicyLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.privacyPolicyLbl.textColor = UIColor(named: "MainColor")
        
        self.logOutLbl.text = "Log out"
        self.logOutLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.logOutLbl.textColor = UIColor(named: "MainColor")
        
        self.deleteLbl.text = "Delete account"
        self.deleteLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.deleteLbl.textColor = UIColor(named: "MainColor")
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
