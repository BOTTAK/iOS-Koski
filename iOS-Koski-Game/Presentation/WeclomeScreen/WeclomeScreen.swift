import UIKit

class WeclomeScreen: UIViewController {
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Outlets
    //------------------------------------------------------------------------------
    @IBOutlet weak var titleLbl: UILabel!
    
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
        self.openNextScreen()
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
        self.view.backgroundColor = UIColor(named: "MainColor")
        self.titleLbl.text = "Welcome!"
        self.titleLbl.font = UIFont.systemFont(ofSize: 48, weight: .bold)
        self.titleLbl.textAlignment = .center
        self.titleLbl.textColor = .white
    }
    
    //------------------------------------------------------------------------------
    // MARK:-
    // MARK:- Objective-C Methods
    //------------------------------------------------------------------------------
    func openNextScreen() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) { [weak self ] in
            let vc = RegisterScreen()
            self?.defaultPresentationStyle(viewController: vc)
        }
    }
}
