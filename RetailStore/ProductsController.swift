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
        tableView.register(UINib(nibName: "ProductSummaryCell", bundle: Bundle.main), forCellReuseIdentifier: "ProductSummaryCell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductSummaryCell", for: indexPath)
        if let productCell = cell as? ProductSummaryCell {
            productCell.fill(productName: "Product1")
        }
        return cell
    }
}
