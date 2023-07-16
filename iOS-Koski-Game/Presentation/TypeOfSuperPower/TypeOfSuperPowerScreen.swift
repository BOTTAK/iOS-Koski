import UIKit

class TypeOfSuperPowerScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var headerImg: UIImageView!
    @IBOutlet weak var mainLbl: UILabel!
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var tenSecView: UIView!
    @IBOutlet weak var tenSecImg: UIView!
    @IBOutlet weak var tenSecLbl: UILabel!
    
    @IBOutlet weak var opponentView: UIView!
    @IBOutlet weak var opponentImg: UIView!
    @IBOutlet weak var opponentLbl: UILabel!
    
    @IBOutlet weak var koskiView: UIView!
    @IBOutlet weak var koskiImg: UIView!
    @IBOutlet weak var chooseKoskiView: UIView!
    @IBOutlet weak var koskiLbl: UILabel!
    
    @IBOutlet weak var hideSideView: UIView!
    @IBOutlet weak var hideSideImg: UIView!
    @IBOutlet weak var hideSideLbl: UILabel!
    
    @IBOutlet weak var hideTableView: UIView!
    @IBOutlet weak var hideTableImg: UIView!
    @IBOutlet weak var hideTableLbl: UILabel!
    
    @IBOutlet weak var refilView: UIView!
    @IBOutlet weak var refilImg: UIView!
    @IBOutlet weak var refilLbl: UILabel!
    
    @IBOutlet weak var hide3View: UIView!
    @IBOutlet weak var hide3Img: UIView!
    @IBOutlet weak var hide3Lbl: UILabel!
    
    @IBOutlet weak var showView: UIView!
    @IBOutlet weak var showImg: UIView!
    @IBOutlet weak var showLbl: UILabel!
    
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
        self.addTappedToTenButton()
        self.addTappedToOpponentButton()
        self.addTappedToKoskiButton()
        self.addTappedToHideSideButton()
        self.addTappedToHideTableButton()
        self.addTappedToRefilButton()
        self.addTappedToHide3Button()
        self.addTappedToShowButton()
    }
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Action Methods
    //------------------------------------------------------------------------------
    
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Custom Methods
    //------------------------------------------------------------------------------
    func setupUI(){
        self.headerView.backgroundColor = UIColor(named: "MainGrayColor")
        
        self.headerImg.image = UIImage(named: "arrowLeft")
        
        self.headerLbl.text = "Animals"
        self.headerLbl.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.headerLbl.textColor = .white
        
        self.mainLbl.text = "Additional profit"
        self.mainLbl.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.mainLbl.textColor = .black
        
        self.mainView.backgroundColor = .clear
        
        self.tenSecImg.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.tenSecImg.layer.cornerRadius = self.tenSecImg.frame.height / 2
        
        self.tenSecLbl.text = "+10 secs hold / price"
        self.tenSecLbl.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        self.tenSecLbl.textColor = .black
        
        self.opponentImg.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.opponentImg.layer.cornerRadius = self.opponentImg.frame.height / 2
        
        self.opponentLbl.text = "Show opponent cards for 5 sec / price"
        self.opponentLbl.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        self.opponentLbl.textColor = .black
        
        self.koskiImg.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.koskiImg.layer.cornerRadius = self.koskiImg.frame.height / 2
        
        self.chooseKoskiView.backgroundColor = UIColor(named: "MainColor")
        self.chooseKoskiView.layer.cornerRadius = self.chooseKoskiView.frame.height / 2
        
        self.koskiLbl.text = "Koski help 1 time / price"
        self.koskiLbl.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        self.koskiLbl.textColor = .black
        
        self.hideSideImg.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.hideSideImg.layer.cornerRadius = self.hideSideImg.frame.height / 2
        
        self.hideSideLbl.text = "Hide my side 1 time / price"
        self.hideSideLbl.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        self.hideSideLbl.textColor = .black
        
        self.hideTableImg.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.hideTableImg.layer.cornerRadius = self.hideTableImg.frame.height / 2
        
        self.hideTableLbl.text = "Hide table 1 time / price"
        self.hideTableLbl.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        self.hideTableLbl.textColor = .black
        
        self.refilImg.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.refilImg.layer.cornerRadius = self.refilImg.frame.height / 2
        
        self.refilLbl.text = "Refill table 1 time / price"
        self.refilLbl.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        self.refilLbl.textColor = .black
        
        self.hide3Img.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.hide3Img.layer.cornerRadius = self.hide3Img.frame.height / 2
        
        self.hide3Lbl.text = "Hide 3 table cards 1 time / price"
        self.hide3Lbl.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        self.hide3Lbl.textColor = .black
        
        self.showImg.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.showImg.layer.cornerRadius = self.showImg.frame.height / 2
        
        self.showLbl.text = "Show dictionary: 3 random triplets / price"
        self.showLbl.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        self.showLbl.textColor = .black
    }
    
    func addTappedToBackView() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(backButton))
        self.headerImg.addGestureRecognizer(tap)
        self.headerImg.isUserInteractionEnabled = true
    }
    
    func addTappedToTenButton() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(openNextScreen))
        self.tenSecView.addGestureRecognizer(tap)
        self.tenSecView.isUserInteractionEnabled = true
    }
    
    func addTappedToOpponentButton() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(openNextScreen))
        self.opponentView.addGestureRecognizer(tap)
        self.opponentView.isUserInteractionEnabled = true
    }
    
    func addTappedToKoskiButton() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(openNextScreen))
        self.koskiView.addGestureRecognizer(tap)
        self.koskiView.isUserInteractionEnabled = true
    }
    
    func addTappedToHideSideButton() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(openNextScreen))
        self.hideSideView.addGestureRecognizer(tap)
        self.hideSideView.isUserInteractionEnabled = true
    }
    
    func addTappedToHideTableButton() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(openNextScreen))
        self.hideTableView.addGestureRecognizer(tap)
        self.hideTableView.isUserInteractionEnabled = true
    }
    
    func addTappedToRefilButton() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(openNextScreen))
        self.refilView.addGestureRecognizer(tap)
        self.refilView.isUserInteractionEnabled = true
    }
    
    func addTappedToHide3Button() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(openNextScreen))
        self.hide3View.addGestureRecognizer(tap)
        self.hide3View.isUserInteractionEnabled = true
    }
    
    func addTappedToShowButton() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(openNextScreen))
        self.showView.addGestureRecognizer(tap)
        self.showView.isUserInteractionEnabled = true
    }
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Objective-C Methods
    //------------------------------------------------------------------------------
    @objc func openNextScreen() {
        let vc = SetScreen()
        self.defaultPresentationStyle(viewController: vc)
    }
    
    @objc func backButton() {
        if let navigationController = self.navigationController {
            navigationController.popViewController(animated: true)
        }
    }
}
