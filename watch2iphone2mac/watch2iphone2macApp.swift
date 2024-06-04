//
//  watch2iphone2macApp.swift
//  watch2iphone2mac
//
//  Created by RikuTsunoda on 4/6/06.
//

import SwiftUI

@main
struct watch2iphone2macApp: App {
    @State private var isSheetPresent = false
    
    let connector = Connector()

    var body: some Scene {
        WindowGroup {
            Button("share") {
                isSheetPresent = true
            }
            .sheet(isPresented: $isSheetPresent) {
                ActivityViewController()
            }
        }
    }
}
