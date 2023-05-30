//
//  SifakaApp.swift
//  Sifaka
//
//  Created by Aiden Fox Ivey on 2023-05-10.
//

import SwiftUI

@main
struct SifakaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .presentedWindowToolbarStyle(UnifiedWindowToolbarStyle())
                .navigationTitle("Cosine Connect")
        }
    }
}
