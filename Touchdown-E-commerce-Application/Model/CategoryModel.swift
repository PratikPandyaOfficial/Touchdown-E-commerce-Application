//
//  CategoryModel.swift
//  Touchdown-E-commerce-Application
//
//  Created by Drashti on 18/12/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
