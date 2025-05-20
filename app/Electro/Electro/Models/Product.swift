//
//  Product.swift
//  Electro
//
//  Created by Adel Mansurov on 04.05.2025.
//
import SwiftUI

struct Product: Identifiable, Codable {
    let id: Int
    let name: String
    let category: String
    let description: String
    let price: Double
    let imageUrl: URL
    let stock: Int

    var priceString: String { String(format: "$%.2f", price) }

//    enum CodingKeys: String, CodingKey {
//        case id = "Id"
//        case name = "Name"
//        case category = "Category"
//        case description = "Description"
//        case price = "Price"
//        case imageUrl = "ImageUrl"
//        case stock = "Stock"
//    }
}

extension Product {
    // Sample Apple products for MasterView sections
    static let sampleApple: [Product] = [
        Product(id: 101, name: "iPhone 14", category: "Phones", description: "Sample iPhone 14", price: 799, imageUrl: URL(string: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-select-202209?wid=940&hei=1112&fmt=png-alpha&.png")!, stock: 10),
        Product(id: 102, name: "iPhone 14 Plus", category: "Phones", description: "Sample iPhone 14 Plus", price: 899, imageUrl: URL(string: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-plus-select-202209?wid=940&hei=1112&fmt=png-alpha&.png")!, stock: 5),
        Product(id: 103, name: "iPhone 14 Pro", category: "Phones", description: "Sample iPhone 14 Pro", price: 999, imageUrl: URL(string: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-pro-select-202209?wid=940&hei=1112&fmt=png-alpha&.png")!, stock: 3),
        Product(id: 104, name: "iPhone 14 Pro Max", category: "Phones", description: "Sample iPhone 14 Pro Max", price: 1099, imageUrl: URL(string: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-pro-max-select-202209?wid=940&hei=1112&fmt=png-alpha&.png")!, stock: 2),
        Product(id: 105, name: "iPhone SE", category: "Phones", description: "Sample iPhone SE", price: 429, imageUrl: URL(string: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-se-select-202203?wid=940&hei=1112&fmt=png-alpha&.png")!, stock: 8)
    ]
}
