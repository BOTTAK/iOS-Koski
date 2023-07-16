import UIKit

class NewDeckOneScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var headerImg: UIImageView!
    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var englishView: UIView!
    @IBOutlet weak var englishLbl: UILabel!
    @IBOutlet weak var englishImg: UIImageView!
    @IBOutlet weak var russianView: UIView!
    @IBOutlet weak var russianLbl: UILabel!
    @IBOutlet weak var russianImg: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var draftLbl: UILabel!
    @IBOutlet weak var transportLbl: UILabel!
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
        self.addTappedToNextButton()
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
        
        self.nameLbl.text = "Name"
        self.nameLbl.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        self.nameLbl.textColor = .black
        self.nameLbl.textAlignment = .left
        
        self.nameTxt.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.nameTxt.layer.cornerRadius = 5
        
        self.englishView.backgroundColor = .white
        self.englishView.layer.cornerRadius = 5
        self.englishView.layer.shadowColor = UIColor.gray.cgColor
        self.englishView.layer.shadowOffset = CGSizeMake(0, 1)
        self.englishView.layer.shadowRadius = 5
        self.englishView.layer.shadowOpacity = 0.3
        
        self.englishLbl.text = "English"
        self.englishLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.englishLbl.textColor = .black
        
        self.englishImg.image = UIImage(named: "arrow")
        
        self.russianView.backgroundColor = .white
        self.russianView.layer.cornerRadius = 5
        self.russianView.layer.shadowColor = UIColor.gray.cgColor
        self.russianView.layer.shadowOffset = CGSizeMake(0, 1)
        self.russianView.layer.shadowRadius = 5
        self.russianView.layer.shadowOpacity = 0.3
        
        self.russianLbl.text = "Russian"
        self.russianLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.russianLbl.textColor = .black
        
        self.russianImg.image = UIImage(named: "arrow")
        
        self.nextButton.backgroundColor = UIColor(named: "MainColor")
        let playButtonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let playButtonTitle = NSAttributedString(string: "Next", attributes: playButtonTitleAttributes)
        self.nextButton.setAttributedTitle(playButtonTitle, for: .normal)
        self.nextButton.layer.cornerRadius = 5
        
        self.draftLbl.text = "Draft"
        self.draftLbl.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        self.draftLbl.textColor = .black
        self.draftLbl.textAlignment = .left
        
        self.transportLbl.text = "Transport"
        self.transportLbl.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        self.transportLbl.textColor = UIColor(named: "MainColor")
        self.transportLbl.textAlignment = .left
        
        self.deleteLbl.text = "Delete"
        self.deleteLbl.font = UIFont.systemFont(ofSize: 14, weight: .light)
        self.deleteLbl.textColor = UIColor(named: "MainColor")
        self.deleteLbl.textAlignment = .left
    }
    
    func addTargetToBackButton() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(backButton))
        self.headerImg.addGestureRecognizer(tap)
        self.headerImg.isUserInteractionEnabled = true
    }
    
    func addTappedToNextButton() {
        self.nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
    }
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Objective-C Methods
    //------------------------------------------------------------------------------
    @objc func backButton() {
        dismiss(animated: true)
    }
    
    @objc func goToNextScreen() {
        let vc = NewDeckTwoScreen()
        self.defaultPresentationStyle(viewController: vc)
    }
}
