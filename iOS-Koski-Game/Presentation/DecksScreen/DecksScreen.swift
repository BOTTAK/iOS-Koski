import UIKit

class DecksScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var headerImg: UIImageView!
    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var animalsButton: UIButton!
    @IBOutlet weak var toolsButton: UIButton!
    @IBOutlet weak var vegitablesButton: UIButton!
    @IBOutlet weak var buyMoreButton: UIButton!
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
        self.addTappedToBackView()
        self.addTappedToAnimalsButton()
        self.addTappedToToolsButton()
        self.addTappedToVegitablesButton()
        self.addTappedToBuyMoreButton()
        self.addTappedToCreateMyOwnButton()
        
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
        
        self.headerLbl.text = "English - Russian"
        self.headerLbl.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.headerLbl.textColor = .white
        
        self.animalsButton.backgroundColor = UIColor(named: "MainColor")
        let animalButtonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let animalButtonTitle = NSAttributedString(string: "Animals", attributes: animalButtonTitleAttributes)
        self.animalsButton.setAttributedTitle(animalButtonTitle, for: .normal)
        self.animalsButton.layer.cornerRadius = 5
        
        self.toolsButton.backgroundColor = UIColor(named: "MainColor")
        let toolsButtonTitleAttribues: [NSAttributedString.Key : Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let toolsButtonTitle = NSAttributedString(string: "Tools", attributes: toolsButtonTitleAttribues)
        self.toolsButton.setAttributedTitle(toolsButtonTitle, for: .normal)
        self.toolsButton.layer.cornerRadius = 5
        
        self.vegitablesButton.backgroundColor = UIColor(named: "MainColor")
        let vegitablesButtonTitleAttributes: [NSAttributedString.Key : Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let vegitablesButtonTitle = NSAttributedString(string: "Vegitables", attributes: vegitablesButtonTitleAttributes)
        self.vegitablesButton.setAttributedTitle(vegitablesButtonTitle, for: .normal)
        self.vegitablesButton.layer.cornerRadius = 5
        
        self.buyMoreButton.backgroundColor = UIColor(named: "MainGrayColor")
        let buyMoreButtonTitleAttributes: [NSAttributedString.Key : Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let buyMoreButtonTitle = NSAttributedString(string: "Buy more", attributes: buyMoreButtonTitleAttributes)
        self.buyMoreButton.setAttributedTitle(buyMoreButtonTitle, for: .normal)
        self.buyMoreButton.layer.cornerRadius = 5
        
        self.createButton.backgroundColor = UIColor(named: "MainTextFieldColor")
        let createButtonTitleAttributes: [NSAttributedString.Key : Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor(named: "MainColor")
        ]
        let createButtonTitle = NSAttributedString(string: "Create my own", attributes: createButtonTitleAttributes)
        self.createButton.setAttributedTitle(createButtonTitle, for: .normal)
        self.createButton.layer.cornerRadius = 5
    }
    
    func addTappedToBackView() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(backButton))
        self.headerImg.addGestureRecognizer(tap)
        self.headerImg.isUserInteractionEnabled = true
    }
    
    func addTappedToAnimalsButton() {
        self.animalsButton.addTarget(self, action: #selector(openNextScreen), for: .touchUpInside)
    }
    
    func addTappedToToolsButton() {
        self.toolsButton.addTarget(self, action: #selector(openNextScreen), for: .touchUpInside)
    }
    
    func addTappedToVegitablesButton() {
        self.vegitablesButton.addTarget(self, action: #selector(openNextScreen), for: .touchUpInside)
    }
    
    func addTappedToBuyMoreButton() {
        self.buyMoreButton.addTarget(self, action: #selector(openNextScreen), for: .touchUpInside)
    }
    
    func addTappedToCreateMyOwnButton() {
        self.createButton.addTarget(self, action: #selector(openNextScreen), for: .touchUpInside)
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
        let nextViewController = TypeOfGameScreen()
        self.hidesBottomBarWhenPushed = false
        self.navigationController?.navigationBar.isHidden = true
        if let navigationController = self.navigationController {
            navigationController.pushViewController(nextViewController, animated: true)
        } else {
            self.present(nextViewController, animated: true, completion: nil)
        }
    }
}
