//
//  Connector.swift
//  watch2iphone2mac Watch App
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
    
    func send(data: Data) {
        session.sendMessage(["watchData": data], replyHandler: nil)
    }
}
