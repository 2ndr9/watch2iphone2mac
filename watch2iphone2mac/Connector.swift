//
//  Connector.swift
//  watch2iphone2mac
//
//  Created by RikuTsunoda on 4/6/06.
//

import WatchConnectivity

class Connector: NSObject, WCSessionDelegate {
    private var session: WCSession = .default

    override init() {
        super.init()
        self.session.delegate = self
        self.session.activate()
    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        print(activationState)
    }
    
    func sessionDidBecomeInactive(_ session: WCSession) {
        print("sessionDidBecomeInactive")
    }

    func sessionDidDeactivate(_ session: WCSession) {
        print("sessionDidDeactivate")
    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        if let data = message["watchData"] as? Data {
            let tempURL = FileManager.default.temporaryDirectory.appendingPathComponent("watchData.txt")
            do {
                try data.write(to: tempURL)
            } catch {
                print("Failed to write data to file: \(error)")
            }
        } else {
            print("failed to receive or parse data")
        }
    }
}
