//
//  ActivityViewController.swift
//  watch2iphone2mac
//
//  Created by RikuTsunoda on 4/6/06.
//

import SwiftUI

struct ActivityViewController: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let tempURL = FileManager.default.temporaryDirectory.appendingPathComponent("watchData.txt")
        return UIActivityViewController(activityItems: [tempURL], applicationActivities: nil)
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
    }
}
