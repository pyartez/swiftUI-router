//
//  SwiftUI_RouterApp.swift
//  SwiftUI Router
//
//  Created by Phil Yates on 12/02/2021.
//

import SwiftUI

@main
struct SwiftUI_RouterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(presenter: ContentPresenter())
        }
    }
}
