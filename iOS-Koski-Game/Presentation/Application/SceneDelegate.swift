import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        self.window = UIWindow(windowScene: windowScene)
        let viewController = WeclomeScreen()
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.navigationBar.isHidden = true
        navigationController.navigationBar.isTranslucent = false
        self.window?.overrideUserInterfaceStyle = .light
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
    }
    
}
