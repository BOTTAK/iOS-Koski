import UIKit

class SetScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var headerImg: UIImageView!
    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var gameImg: UIImageView!
    @IBOutlet weak var greenCircleView: UIView!
    @IBOutlet weak var helpImg: UIView!
    
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
        addTargetToNextButton()
        addTargetToHelpButton()
        addTargetToPauseButton()
        view.insetsLayoutMarginsFromSafeArea = false
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
        self.headerImg.image = UIImage(named: "pause")
        self.headerLbl.text = "0:05\nSCORE 18 / 10"
        self.headerLbl.textAlignment = .right
        self.headerLbl.numberOfLines = 2
        self.headerLbl.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        self.headerLbl.textColor = .white
        self.greenCircleView.backgroundColor = .clear
        self.helpImg.backgroundColor = .clear
        self.gameImg.image = UIImage(named: "gamePlace")
        
        // Проверяем размер экрана
        if UIScreen.main.bounds.size.width > 375 {
            // Растягиваем изображение для экранов, шире, чем iPhone 7
            gameImg.contentMode = .scaleAspectFill
        } else {
            // Используем обычный режим отображения изображения для других экранов
            gameImg.contentMode = .scaleAspectFit
        }
    }
    
    func addTargetToNextButton() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(openNextScreen))
        self.greenCircleView.addGestureRecognizer(tap)
        self.greenCircleView.isUserInteractionEnabled = true
    }
    
    func addTargetToHelpButton() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(openHelpScreen))
        self.helpImg.addGestureRecognizer(tap)
        self.helpImg.isUserInteractionEnabled = true
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
    
    @objc func openHelpScreen() {
        let vc = HelpScreen()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    @objc func openPauseScreen() {
        let vc = PauseScreen()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
}
