import UIKit

class BadEndScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var mainLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var scoreImg: UIImageView!
    @IBOutlet weak var rankLbl: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var anotherDeckButton: UIButton!

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
        self.mainLbl.text = "Transport\n English - Russian"
        self.mainLbl.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        self.mainLbl.textColor = UIColor(named: "MainGrayColor")
        self.mainLbl.textAlignment = .center
        self.mainLbl.numberOfLines = 0
        
        self.mainImg.image = UIImage(named: "badEnd")
        
        self.scoreLbl.text = "23"
        self.scoreLbl.font = UIFont.systemFont(ofSize: 36, weight: .bold)
        self.scoreLbl.textColor = UIColor(named: "MainGrayColor")
        
        self.scoreImg.image = UIImage(named: "zeroStart")
        
        self.rankLbl.text = "Past best: 145"
        self.rankLbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.rankLbl.textColor = UIColor(named: "MainGrayColor")
        
        // Для кнопки "Go"
        self.playAgainButton.backgroundColor = UIColor(named: "MainColor")
        let goButtonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let goButtonTitle = NSAttributedString(string: "Play again", attributes: goButtonTitleAttributes)
        self.playAgainButton.setAttributedTitle(goButtonTitle, for: .normal)
        self.playAgainButton.layer.cornerRadius = 5

        // Для кнопки "No"
        self.anotherDeckButton.backgroundColor = UIColor(named: "MainBlue")
        let noButtonTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
            .foregroundColor: UIColor.white
        ]
        let noButtonTitle = NSAttributedString(string: "Another deck", attributes: noButtonTitleAttributes)
        self.anotherDeckButton.setAttributedTitle(noButtonTitle, for: .normal)
        self.anotherDeckButton.layer.cornerRadius = 5
    }
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Objective-C Methods
    //------------------------------------------------------------------------------
}
