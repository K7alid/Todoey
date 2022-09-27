import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        //MARK: - To Know Where UserDefault Saved
        //print(NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true).last! as String)
        //MARK: - To Know Where Realm Saved
        //print(Realm.Configuration.defaultConfiguration.fileURL)
        
        do {
            _ = try Realm()
        } catch {
            print("Error init installing new realm \(error)")
        }
        
        return true
    }
}

