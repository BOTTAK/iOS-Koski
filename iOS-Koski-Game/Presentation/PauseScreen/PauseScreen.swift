import UIKit

class PauseScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var headerImg: UIImageView!
    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var howButton: UIButton!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var giveUpButton: UIButton!
    @IBOutlet weak var quitButton: UIButton!
    @IBOutlet weak var reportButton: UIButton!
    
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
        self.addTargetToGiveUpButton()
        self.addTappedHowToPlayButton()
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

        // backButton
        let backButtonAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        let backButtonTitle = NSAttributedString(string: "Back to play", attributes: backButtonAttributes)
        backButton.setAttributedTitle(backButtonTitle, for: .normal)

        // howButton
        let howButtonAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        let howButtonTitle = NSAttributedString(string: "How to play", attributes: howButtonAttributes)
        howButton.setAttributedTitle(howButtonTitle, for: .normal)

        // restartButton
        let restartButtonAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        let restartButtonTitle = NSAttributedString(string: "Restart", attributes: restartButtonAttributes)
        restartButton.setAttributedTitle(restartButtonTitle, for: .normal)

        // giveUpButton
        let giveUpButtonAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        let giveUpButtonTitle = NSAttributedString(string: "Give up", attributes: giveUpButtonAttributes)
        giveUpButton.setAttributedTitle(giveUpButtonTitle, for: .normal)

        // quitButton
        let quitButtonAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        let quitButtonTitle = NSAttributedString(string: "Quit", attributes: quitButtonAttributes)
        quitButton.setAttributedTitle(quitButtonTitle, for: .normal)

        // reportButton
        let reportButtonAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        let reportButtonTitle = NSAttributedString(string: "Report", attributes: reportButtonAttributes)
        reportButton.setAttributedTitle(reportButtonTitle, for: .normal)

    }
    
    func addTargetToGiveUpButton()  {
        self.giveUpButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
    }
    
    func addTappedHowToPlayButton() {
        self.howButton.addTarget(self, action: #selector(howToPlayScreen), for: .touchUpInside)
    }
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Objective-C Methods
    //------------------------------------------------------------------------------
    @objc func goToNextScreen() {
        let vc = GiveUpScreen()
        self.defaultPresentationStyle(viewController: vc)
    }
    
    @objc func howToPlayScreen() {
        let vc = HowToPlayScreen()
        self.defaultPresentationStyle(viewController: vc)
    }
}
