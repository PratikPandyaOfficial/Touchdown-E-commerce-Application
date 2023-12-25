//
//  Touchdown_E_commerce_ApplicationApp.swift
//  Touchdown-E-commerce-Application
//
//  Created by Drashti on 15/12/23.
//

import SwiftUI

@main
struct Touchdown_E_commerce_ApplicationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
