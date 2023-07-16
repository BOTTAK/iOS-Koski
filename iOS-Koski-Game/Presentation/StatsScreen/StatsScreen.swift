import UIKit

class StatsScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var headerImg: UIImageView!
    @IBOutlet weak var winView: UIView!
    @IBOutlet weak var winLbl: UILabel!
    @IBOutlet weak var winImg: UIImageView!
    @IBOutlet weak var loseView: UIView!
    @IBOutlet weak var loseLbl: UILabel!
    @IBOutlet weak var loseImg: UIImageView!
    @IBOutlet weak var statsView: UIView!
    @IBOutlet weak var ratingLbl: UILabel!
    @IBOutlet weak var stastLbl: UILabel!
    @IBOutlet weak var greenArrow: UIImageView!
    
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
        
        self.headerView.backgroundColor = .white
        self.headerView.layer.cornerRadius = 5
        self.headerView.layer.shadowColor = UIColor.gray.cgColor
        self.headerView.layer.shadowOffset = CGSizeMake(0, 1)
        self.headerView.layer.shadowRadius = 5
        self.headerView.layer.shadowOpacity = 0.3
        
        self.headerLbl.text = "English - Russian"
        self.headerLbl.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        self.headerLbl.textColor = .black
        
        self.headerImg.image = UIImage(named: "arrow")
        
        self.winView.backgroundColor = .clear
        
        self.winLbl.text = "Win count"
        self.winLbl.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        self.winLbl.textColor = .black
        
        self.winImg.image = UIImage(named: "statsGood")
        
        self.loseView.backgroundColor = .clear
        
        self.loseLbl.text = "Lose count"
        self.loseLbl.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        self.loseLbl.textColor = .black
        
        self.loseImg.image = UIImage(named: "statsBad")
        
        self.statsView.backgroundColor = UIColor(named: "MainTextFieldColor")
        self.statsView.layer.cornerRadius = 5
        
        self.ratingLbl.text = "Rating"
        self.ratingLbl.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.ratingLbl.textColor = .black
        
        self.stastLbl.text = "1257"
        self.stastLbl.font = UIFont.systemFont(ofSize: 48, weight: .bold)
        self.stastLbl.textColor = .black
        
        self.greenArrow.image = UIImage(named: "greenArrow")
    }
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Objective-C Methods
    //------------------------------------------------------------------------------
}
