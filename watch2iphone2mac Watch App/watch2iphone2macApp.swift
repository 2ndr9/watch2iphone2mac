//
//  watch2iphone2macApp.swift
//  watch2iphone2mac Watch App
//
//  Created by RikuTsunoda on 4/6/06.
//

import SwiftUI

@main
struct watch2iphone2mac_Watch_AppApp: App {
    let connector = Connector()
    
    var body: some Scene {
        WindowGroup {
            Button("send data to iPhone") {
                connector.send(data: Data("string".utf8))
            }
        }
    }
}
