import UIKit

class HelpScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var helpImg: UIImageView!
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var oneView: UIView!
    @IBOutlet weak var oneCircleView: UIView!
    @IBOutlet weak var oneLbl: UILabel!
    
    @IBOutlet weak var twoView: UIView!
    @IBOutlet weak var twoCircleView: UIView!
    @IBOutlet weak var twoLbl: UILabel!
    
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var thirdCircleView: UIView!
    @IBOutlet weak var thirdLbl: UILabel!
    @IBOutlet weak var thirdOrangeView: UIView!
    
    @IBOutlet weak var fourView: UIView!
    @IBOutlet weak var fourCircleView: UIView!
    @IBOutlet weak var fourLbl: UILabel!
    
    @IBOutlet weak var fifthView: UIView!
    @IBOutlet weak var fifthCircleView: UIView!
    @IBOutlet weak var fifthLbl: UILabel!
    
    @IBOutlet weak var sixView: UIView!
    @IBOutlet weak var sixCircleView: UIView!
    @IBOutlet weak var sixLbl: UILabel!
    
    @IBOutlet weak var goButton: UIButton!
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
        setupUI()
        addTappedToGoButton()
        
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
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.25)
        
        self.helpImg.image = UIImage(named: "help")
        
        self.mainView.backgroundColor = .clear
        
        self.oneView.backgroundColor = .clear
        self.oneCircleView.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.oneCircleView.layer.cornerRadius = self.oneCircleView.frame.height / 2
        
        self.oneLbl.text = "+30 secs hold / price"
        self.oneLbl.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        self.oneLbl.textColor = .white
        
        self.twoView.backgroundColor = .clear
        self.twoCircleView.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.twoCircleView.layer.cornerRadius = self.twoCircleView.frame.height / 2
        
        self.twoLbl.text = "Show opponent cards for 5 sec / price"
        self.twoLbl.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        self.twoLbl.textColor = .white
        
        self.thirdView.backgroundColor = .clear
        self.thirdCircleView.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.thirdCircleView.layer.cornerRadius = self.thirdCircleView.frame.height / 2
        
        self.thirdOrangeView.backgroundColor = UIColor(named: "MainColor")
        self.thirdOrangeView.layer.cornerRadius = self.thirdOrangeView.frame.height / 2
        
        self.thirdLbl.text = "Koski help 1 time / price"
        self.thirdLbl.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        self.thirdLbl.textColor = .white
        
        self.fourView.backgroundColor = .clear
        self.fourCircleView.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.fourCircleView.layer.cornerRadius = self.fourCircleView.frame.height / 2
        
        self.fourLbl.text = "Hide my side 1 time / price"
        self.fourLbl.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        self.fourLbl.textColor = .white
        
        self.fifthView.backgroundColor = .clear
        self.fifthCircleView.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.fifthCircleView.layer.cornerRadius = self.fifthCircleView.frame.height / 2
        
        self.fifthLbl.text = "Hide table 1 time / price"
        self.fifthLbl.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        self.fifthLbl.textColor = .white
        
        self.sixView.backgroundColor = .clear
        self.sixCircleView.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.sixCircleView.layer.cornerRadius = self.sixCircleView.frame.height / 2
        
        self.sixLbl.text = "Dictionary"
        self.sixLbl.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        self.sixLbl.textColor = .white
        
        // Для кнопки "Go"
        self.goButton.backgroundColor = UIColor(named: "MainBlue")
        let goButtonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 12, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let goButtonTitle = NSAttributedString(string: "Go →", attributes: goButtonTitleAttributes)
        self.goButton.setAttributedTitle(goButtonTitle, for: .normal)
        self.goButton.layer.cornerRadius = 5

        // Для кнопки "No"
        self.noButton.backgroundColor = UIColor(named: "MainColor")
        let noButtonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 12, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let noButtonTitle = NSAttributedString(string: "No, thank you", attributes: noButtonTitleAttributes)
        self.noButton.setAttributedTitle(noButtonTitle, for: .normal)
        self.noButton.layer.cornerRadius = 5
    }
    
    func addTappedToGoButton() {
        self.goButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
    }
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Objective-C Methods
    //------------------------------------------------------------------------------
    @objc func goToNextScreen() {
        let vc = SetHelpScreen()
        self.defaultPresentationStyle(viewController: vc)
    }
}
