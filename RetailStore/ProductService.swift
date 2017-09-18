class ProductService {
    public static func fetchProducts() -> Either<[Product], Error> {
        var products = [Product]()
        for index in 0...51 {
            let product = Product(name: "Product " + String(index))
            products.append(product)
        }
        return Either.left(products)
    }
}
