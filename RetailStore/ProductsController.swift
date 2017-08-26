import UIKit

class ProductsController: UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNibs()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: private methods 
    private func registerNibs() {
        tableView.registerNibWithName(String(describing: ProductSummaryCell.self))
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reusableIdentifier = String(describing: ProductSummaryCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableIdentifier , for: indexPath)
        
        if let productCell = cell as? ProductSummaryCell {
            productCell.fill(productName: "Product " + String(indexPath.row))
        }
        return cell
    }
}
