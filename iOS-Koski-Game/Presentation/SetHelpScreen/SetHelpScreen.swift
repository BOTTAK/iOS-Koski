import UIKit

class SetHelpScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var headerImg: UIImageView!
    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var gameImg: UIImageView!
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
        setupUI()
        addTargetToPauseButton()
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
        self.headerView.backgroundColor = .black
        let allString = "KOSKI HELP 0:05\nSCORE 18 / 10"
        let rangeOne = "KOSKI HELP"
        let rangeTwo = "0:05"
        let range = (allString as NSString).range(of: rangeTwo)
        let attributedText = NSMutableAttributedString.init(string: allString)
        attributedText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue , range: range)
        headerLbl.attributedText = attributedText
        headerLbl.numberOfLines = 0

        self.headerImg.image = UIImage(named: "pause")
        self.headerLbl.numberOfLines = 2
        self.headerLbl.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        self.headerLbl.textColor = .white
        self.gameImg.image = UIImage(named: "gamePlaceHelp")
        // Проверяем размер экрана
        if UIScreen.main.bounds.size.width > 375 {
            // Растягиваем изображение для экранов, шире, чем iPhone 7
            gameImg.contentMode = .scaleAspectFill
        } else {
            // Используем обычный режим отображения изображения для других экранов
            gameImg.contentMode = .scaleAspectFit
        }
  
    }
    
    func addTargetToPauseButton() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(openPauseScreen))
        self.headerImg.addGestureRecognizer(tap)
        self.headerImg.isUserInteractionEnabled = true
    }
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Objective-C Methods
    //------------------------------------------------------------------------------
    @objc func openNextScreen() {
        let vc = SetScreenOrange()
        defaultPresentationStyle(viewController: vc)
    }
    
    @objc func openPauseScreen() {
        let vc = PauseScreen()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
}
