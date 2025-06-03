import Foundation

struct Product: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let image: String
    let price: Double
}

let productList = [
    Product(name: "T-shirt", image: "tshirt", price: 29.99),
    Product(name: "Jeans", image: "jeans", price: 49.99),
    Product(name: "Sneakers", image: "sneakers", price: 79.99),
    Product(name: "Hat", image: "hat", price: 19.99)
]
