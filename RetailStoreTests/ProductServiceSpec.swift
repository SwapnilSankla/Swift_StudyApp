@testable import RetailStore
import XCTest

class ProductServiceSpec: XCTestCase {
    func testFetchProducts_returnsProducts_onSuccess() {
        let serviceResult = ProductService.fetchProducts()
        XCTAssertTrue(serviceResult.isLeft())
    }
}
