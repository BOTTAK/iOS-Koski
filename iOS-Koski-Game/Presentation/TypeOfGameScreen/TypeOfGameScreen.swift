import UIKit

class TypeOfGameScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var headerImg: UIImageView!
    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var mainLbl: UILabel!
    @IBOutlet weak var easyButton: UIButton!
    @IBOutlet weak var averageButton: UIButton!
    @IBOutlet weak var nigthmareButton: UIButton!
    @IBOutlet weak var onlineButton: UIButton!
    @IBOutlet weak var togetherButton: UIButton!
    
    
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
        self.addTappedToBackView()
        self.addTappedToEaseButton()
        self.addTappedToAverageButton()
        self.addTappedToNightmareButton()
        self.addTappedToOnlineButton()
        self.addTappedToTogetherButton()
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
        
        self.headerLbl.text = "Animals"
        self.headerLbl.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.headerLbl.textColor = .white
        
        self.mainView.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.mainView.layer.cornerRadius = 5
        
        self.mainLbl.text = "Against the bot"
        self.mainLbl.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.mainLbl.textColor = .black
        
        // Для кнопки "Easy"
        self.easyButton.backgroundColor = UIColor(named: "MainColor")
        let easyButtonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let easyButtonTitle = NSAttributedString(string: "Easy", attributes: easyButtonTitleAttributes)
        self.easyButton.setAttributedTitle(easyButtonTitle, for: .normal)
        self.easyButton.layer.cornerRadius = 5

        // Для кнопки "Average"
        self.averageButton.backgroundColor = UIColor(named: "MainColor")
        let averageButtonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let averageButtonTitle = NSAttributedString(string: "Average", attributes: averageButtonTitleAttributes)
        self.averageButton.setAttributedTitle(averageButtonTitle, for: .normal)
        self.averageButton.layer.cornerRadius = 5

        // Для кнопки "Nightmare"
        self.nigthmareButton.backgroundColor = UIColor(named: "MainColor")
        let nightmareButtonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let nightmareButtonTitle = NSAttributedString(string: "Nightmare level", attributes: nightmareButtonTitleAttributes)
        self.nigthmareButton.setAttributedTitle(nightmareButtonTitle, for: .normal)
        self.nigthmareButton.layer.cornerRadius = 5

        // Для кнопки "Online"
        self.onlineButton.backgroundColor = UIColor(named: "MainColor")
        let onlineButtonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let onlineButtonTitle = NSAttributedString(string: "Online against another player", attributes: onlineButtonTitleAttributes)
        self.onlineButton.setAttributedTitle(onlineButtonTitle, for: .normal)
        self.onlineButton.layer.cornerRadius = 5

        // Для кнопки "Together"
        self.togetherButton.backgroundColor = UIColor(named: "MainColor")
        let togetherButtonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let togetherButtonTitle = NSAttributedString(string: "Together on the same phone", attributes: togetherButtonTitleAttributes)
        self.togetherButton.setAttributedTitle(togetherButtonTitle, for: .normal)
        self.togetherButton.layer.cornerRadius = 5

    }
    
    func addTappedToEaseButton() {
        self.easyButton.addTarget(self, action: #selector(openNextScreen), for: .touchUpInside)
    }
    
    func addTappedToAverageButton() {
        self.averageButton.addTarget(self, action: #selector(openNextScreen), for: .touchUpInside)
    }
    
    func addTappedToNightmareButton() {
        self.nigthmareButton.addTarget(self, action: #selector(openNextScreen), for: .touchUpInside)
    }
    
    func addTappedToOnlineButton() {
        self.onlineButton.addTarget(self, action: #selector(openNextScreen), for: .touchUpInside)
    }
    
    func addTappedToTogetherButton() {
        self.togetherButton.addTarget(self, action: #selector(openNextScreen), for: .touchUpInside)
    }
    
    func addTappedToBackView() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(backButton))
        self.headerImg.addGestureRecognizer(tap)
        self.headerImg.isUserInteractionEnabled = true
    }
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Objective-C Methods
    //------------------------------------------------------------------------------
    @objc func backButton() {
        if let navigationController = self.navigationController {
            navigationController.popViewController(animated: true)
        }
    }
    
    @objc func openNextScreen() {
        let nextViewController = TypeOfSuperPowerScreen()
        self.hidesBottomBarWhenPushed = false
        self.navigationController?.navigationBar.isHidden = true
        if let navigationController = self.navigationController {
            navigationController.pushViewController(nextViewController, animated: true)
        } else {
            self.present(nextViewController, animated: true, completion: nil)
        }
    }
}
