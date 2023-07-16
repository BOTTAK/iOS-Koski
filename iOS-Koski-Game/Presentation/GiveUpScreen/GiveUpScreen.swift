import UIKit

class GiveUpScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var headerImg: UIImageView!
    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var mainLbl: UILabel!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    
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
        self.addTargetTpYesButton()
        self.addTargetNoButton()
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
        self.view.backgroundColor = .black
        self.headerImg.image = UIImage(named: "pause")
        self.headerLbl.text = "0:05\nSCORE 18 / 10"
        self.headerLbl.textAlignment = .right
        self.headerLbl.numberOfLines = 2
        self.headerLbl.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        self.headerLbl.textColor = .white
        
        self.mainLbl.text = "Are you sure you want to give\n up?"
        self.mainLbl.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.mainLbl.numberOfLines = 0
        self.mainLbl.textAlignment = .center
        self.mainLbl.textColor = .white
        
        // Для кнопки "Go"
        self.yesButton.backgroundColor = UIColor(named: "MainColor")
        let goButtonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 12, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let goButtonTitle = NSAttributedString(string: "Yes", attributes: goButtonTitleAttributes)
        self.yesButton.setAttributedTitle(goButtonTitle, for: .normal)
        self.yesButton.layer.cornerRadius = 5

        // Для кнопки "No"
        self.noButton.backgroundColor = UIColor(named: "MainBlue")
        let noButtonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 12, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let noButtonTitle = NSAttributedString(string: "Oh, no", attributes: noButtonTitleAttributes)
        self.noButton.setAttributedTitle(noButtonTitle, for: .normal)
        self.noButton.layer.cornerRadius = 5
    }
    
    func addTargetTpYesButton() {
        self.yesButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
    }
    
    func addTargetNoButton() {
        self.noButton.addTarget(self, action: #selector(goToBadScreen), for: .touchUpInside)
    }
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Objective-C Methods
    //------------------------------------------------------------------------------
    @objc func goToNextScreen() {
        let vc = GoodEndScreen()
        self.defaultPresentationStyle(viewController: vc)
    }
    
    @objc func goToBadScreen() {
        let vc = BadEndScreen()
        self.defaultPresentationStyle(viewController: vc)
    }
}
