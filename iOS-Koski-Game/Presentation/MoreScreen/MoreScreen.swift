import UIKit

class MoreScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var howButton: UIButton!
    @IBOutlet weak var languageButton: UIButton!
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var aboutButton: UIButton!
    @IBOutlet weak var giveButton: UIButton!
    @IBOutlet weak var accountButon: UIButton!
    
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
        self.addTappedToPlayButton()
        self.addTappedHowToPlayButton()
        self.addTappedToGiveFeedback()
        self.addTappedToNewDeck()
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
        self.view.backgroundColor = UIColor(named: "MainMore")
        // howButton
        let howButtonAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.black,
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        let howButtonTitle = NSAttributedString(string: "How to play", attributes: howButtonAttributes)
        howButton.setAttributedTitle(howButtonTitle, for: .normal)

        // languageButton
        let languageButtonAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.black,
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        let languageButtonTitle = NSAttributedString(string: "Language", attributes: languageButtonAttributes)
        languageButton.setAttributedTitle(languageButtonTitle, for: .normal)

        // createButton
        let createButtonAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.black,
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        let createButtonTitle = NSAttributedString(string: "Create new deck", attributes: createButtonAttributes)
        createButton.setAttributedTitle(createButtonTitle, for: .normal)

        // aboutButton
        let aboutButtonAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.black,
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        let aboutButtonTitle = NSAttributedString(string: "About premium", attributes: aboutButtonAttributes)
        aboutButton.setAttributedTitle(aboutButtonTitle, for: .normal)

        // giveButton
        let giveButtonAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.black,
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        let giveButtonTitle = NSAttributedString(string: "Give feedback", attributes: giveButtonAttributes)
        giveButton.setAttributedTitle(giveButtonTitle, for: .normal)
        
        // accountButton
        let accountButtonAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.black,
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        let accountButtonTitle = NSAttributedString(string: "Account", attributes: accountButtonAttributes)
        accountButon.setAttributedTitle(accountButtonTitle, for: .normal)


    }
    
    func addTappedToPlayButton() {
        self.accountButon.addTarget(self, action: #selector(openNextScreen), for: .touchUpInside)
    }
    
    func addTappedHowToPlayButton() {
        self.howButton.addTarget(self, action: #selector(howToPlayScreen), for: .touchUpInside)
    }
    
    func addTappedToGiveFeedback() {
        self.giveButton.addTarget(self, action: #selector(giveFeedbackScreen), for: .touchUpInside)
    }
    
    func addTappedToNewDeck() {
        self.createButton.addTarget(self, action: #selector(createNewDeckScreen), for: .touchUpInside)
    }
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Objective-C Methods
    //------------------------------------------------------------------------------
    @objc func openNextScreen() {
        let vc = AccountScreen()
        self.defaultPresentationStyle(viewController: vc)
    }
    
    @objc func howToPlayScreen() {
        let vc = HowToPlayScreen()
        self.defaultPresentationStyle(viewController: vc)
    }
    
    @objc func giveFeedbackScreen() {
        let vc = GiveFeedBackScreen()
        self.defaultPresentationStyle(viewController: vc)
    }
    
    @objc func createNewDeckScreen() {
        let vc = NewDeckOneScreen()
        self.defaultPresentationStyle(viewController: vc)
    }
}
