import UIKit

class ProductsController: UITableViewController {

    var products: [Product]?

    override func viewDidLoad() {
        super.viewDidLoad()
        registerNibs()
        createDummyProducts()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: private methods 
    private func registerNibs() {
        tableView.registerNibWithName(String(describing: ProductSummaryCell.self))
    }

    private func createDummyProducts() {
        let serviceResponse = ProductService.fetchProducts()
        switch serviceResponse {
        case .left(let products): self.products = products
        case _: break
        }
    }

    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let product = products?[indexPath.row] {
            let message = "You have selected \(product.name)"
            let popupController = UIAlertController(title: "Selection", message: message, preferredStyle: .alert)
            popupController.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(popupController, animated: false)
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reusableIdentifier = String(describing: ProductSummaryCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableIdentifier, for: indexPath)
        if let productCell = cell as? ProductSummaryCell,
           let productName = products?[indexPath.row].name {
            productCell.fill(productName: productName)
        }
        return cell
    }
}
