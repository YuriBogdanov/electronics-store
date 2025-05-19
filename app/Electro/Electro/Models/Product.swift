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
