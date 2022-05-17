//
//  ViewController.swift
//  PixelSDKExample
//
//  Created by Josh Bernfeld on 8/1/19.
//  Copyright © 2021 GottaYotta, Inc. All rights reserved.
//

import UIKit
import PixelSDK
import PhotosUI
import SwiftUI

class ViewController: UITableViewController{
    
struct ImagePicker: UIViewControllerRepresentable {
    typealias UIViewControllerType = UINavigationController
    
    let vc = ViewController()
    
    func makeUIViewController(context: Context) -> UINavigationController {
        
        print("here1")
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
}

// MARK: - EditControllerDelegate

extension ViewController: EditControllerDelegate {
    
    func editController(_ editController: EditController, didLoadEditing session: Session) {
        print("loaded editing")
    }
    
    func editController(_ editController: EditController, didFinishEditing session: Session) {
        // Called when the Next button in the EditController is pressed.
        // Use this time to either dismiss the UINavigationController, or push a new controller on.
        print("finished editing")
        let controller = UIViewController()
        editController.navigationController?.dismiss(animated: true)
//        editController.navigationController?.pushViewController(controller, animated: true)
    }
    
    func editController(_ editController: EditController, didCancelEditing session: Session?) {
        // Called when the back button in the EditController is pressed.
        print("cancelled editing")
    }
}
