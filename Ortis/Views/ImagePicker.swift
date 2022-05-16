//
//  ViewControllerWrapper.swift
//  Ortis
//
//  Created by William Strickland on 5/16/22.
//

import UIKit
import SwiftUI
import PixelSDK
struct ImagePicker: UIViewControllerRepresentable {
    typealias UIViewControllerType = UINavigationController
    
    func makeUIViewController(context: Context) -> UINavigationController {
        print("here1")
        let vc = ViewController()
        let container = ContainerController()
        container.editControllerDelegate = vc

        let nav = UINavigationController(rootViewController: container)
        nav.modalPresentationStyle = .fullScreen
        print("here2")

        return nav
    }

    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        
    }
}
