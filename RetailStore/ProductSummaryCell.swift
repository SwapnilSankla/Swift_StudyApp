import UIKit

class ProductSummaryCell: UITableViewCell {
    @IBOutlet weak var productName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    public func fill(productName: String) {
        self.productName.text = productName
    }
}
