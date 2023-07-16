import UIKit

class TabBarScreen: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .white
        tabBar.backgroundColor = .black
        tabBar.frame.size.height = 50 // Устанавливаем высоту таббара
        setupVCs()
    }
    
    func setupVCs() {
        viewControllers = [
            createNavController(for: HomeScreen(), title: "Home"),
            createNavController(for: SetScreen(), title: "Sets"),
            createNavController(for: StatsScreen(), title: "Stats"),
            createNavController(for: MoreScreen(), title: "More")
        ]
    }
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                         title: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        let titleOffset = UIOffset(horizontal: 0, vertical: -10)
        navController.tabBarItem.titlePositionAdjustment = titleOffset
        navController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14, weight: .bold),
                                                         NSAttributedString.Key.foregroundColor: UIColor.white],
                                                        for: .normal)
        navController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14, weight: .bold),
                                                         NSAttributedString.Key.foregroundColor: UIColor.gray],
                                                        for: .selected)
        
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarController?.tabBar.backgroundColor = .blue
        return navController
    }
}


