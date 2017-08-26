import UIKit

extension UITableView {
    public func registerNibWithName(_ name: String) {
        let nib = UINib(nibName: name, bundle: Bundle.main)
        register(nib, forCellReuseIdentifier: name)
    }
}
