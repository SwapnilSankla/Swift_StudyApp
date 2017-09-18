import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        let productsController = new ProductsController(style: .plain)
        window?.rootViewController = productsController
        window?.makeKeyAndVisible()
        return true
    }
}
