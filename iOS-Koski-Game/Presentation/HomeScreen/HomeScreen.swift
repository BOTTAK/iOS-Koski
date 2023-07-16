import UIKit

class HomeScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var englishView: UIView!
    @IBOutlet weak var englishLbl: UILabel!
    @IBOutlet weak var englishImg: UIImageView!
    @IBOutlet weak var russianView: UIView!
    @IBOutlet weak var russianLbl: UILabel!
    @IBOutlet weak var russianImg: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var buyMoreButton: UIButton!
    @IBOutlet weak var aboutButton: UIButton!
    
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
        self.mainView.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.mainView.layer.cornerRadius = 5
        
        self.titleLbl.text = "Free game"
        self.titleLbl.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.titleLbl.textColor = .black
        
        self.englishView.backgroundColor = .white
        self.englishView.layer.cornerRadius = 5
        self.englishView.layer.shadowColor = UIColor.gray.cgColor
        self.englishView.layer.shadowOffset = CGSizeMake(0, 1)
        self.englishView.layer.shadowRadius = 5
        self.englishView.layer.shadowOpacity = 0.3
        
        self.englishLbl.text = "English"
        self.englishLbl.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        self.englishLbl.textColor = .black
        
        self.englishImg.image = UIImage(named: "arrow")
        
        self.russianView.backgroundColor = .white
        self.russianView.layer.cornerRadius = 5
        self.russianView.layer.shadowColor = UIColor.gray.cgColor
        self.russianView.layer.shadowOffset = CGSizeMake(0, 1)
        self.russianView.layer.shadowRadius = 5
        self.russianView.layer.shadowOpacity = 0.3
        
        self.russianLbl.text = "Russian"
        self.russianLbl.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        self.russianLbl.textColor = .black
        
        self.russianImg.image = UIImage(named: "arrow")
        
        self.playButton.backgroundColor = UIColor(named: "MainColor")
        let playButtonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let playButtonTitle = NSAttributedString(string: "Play", attributes: playButtonTitleAttributes)
        self.playButton.setAttributedTitle(playButtonTitle, for: .normal)
        self.playButton.layer.cornerRadius = 5

        
        
        
        self.buyMoreButton.backgroundColor = UIColor(named: "MainGrayColor")
        let buyButtonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let buyButtonTitle = NSAttributedString(string: "Buy more languages", attributes: buyButtonTitleAttributes)
        self.buyMoreButton.setAttributedTitle(buyButtonTitle, for: .normal)
        self.buyMoreButton.layer.cornerRadius = 5

        
        let aboutButtonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor(named: "MainColor") ?? .black
        ]
        let aboutButtonTitle = NSAttributedString(string: "About Premium", attributes: aboutButtonTitleAttributes)
        self.aboutButton.setAttributedTitle(aboutButtonTitle, for: .normal)

    }
    
    func addTappedToPlayButton() {
        self.playButton.addTarget(self, action: #selector(openNextScreen), for: .touchUpInside)
    }
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Objective-C Methods
    //------------------------------------------------------------------------------
    @objc func openNextScreen() {
        let nextViewController = DecksScreen()
        self.hidesBottomBarWhenPushed = false
        self.navigationController?.navigationBar.isHidden = true
        if let navigationController = self.navigationController {
            navigationController.pushViewController(nextViewController, animated: true)
        } else {
            self.present(nextViewController, animated: true, completion: nil)
        }
    }
}
