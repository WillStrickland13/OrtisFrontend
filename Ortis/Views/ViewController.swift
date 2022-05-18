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
public var imageToPost:UIImage?
class ViewController: UITableViewController, ObservableObject{
    @State var isDisplayed:Bool = false
    @Published var isDoneEditing:Bool = false
    @Published var img:UIImage?
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

        func getViewController()->ViewController{
            return vc
        }
    }
    func checkIfDoneEditing()->Bool{
        return isDisplayed
    }

    
}

// MARK: - EditControllerDelegate

extension ViewController: EditControllerDelegate {
    
    func editController(_ editController: EditController, didLoadEditing session: Session) {
        print("loaded editing")
    }
    
    func editController(_ editController: EditController, didFinishEditing session: Session){
        // Called when the Next button in the EditController is pressed.
        // Use this time to either dismiss the UINavigationController, or push a new controller on.
        print("finished editing")
        //let controller = UIViewController()
        if let image = session.image {
            ImageExporter.shared.export(image: image, completion: { (error, uiImage) in
                if let error = error {
                    print("Unable to export image: \(error)")
                    return
                }
                
                print("Finished image export with UIImage: \(uiImage!)")
                self.isDisplayed.toggle()
                self.isDoneEditing=true
                self.isDisplayed=true
                self.img=uiImage
                imageToPost=uiImage
                print("toggled")
                
                
            })
            
        }
        editController.navigationController?.dismiss(animated: true)
        
        
        print("done")
        
        
        //UNCOMMENT FOR VIDEO FUNCTIONALITY
        //
        //        if let video = session.video {
        //            VideoExporter.shared.export(video: video, progress: { progress in
        //                print("Export progress: \(progress)")
        //            }, completion: { error in
        //                if let error = error {
        //                    print("Unable to export video: \(error)")
        //                    return
        //                }
        //
        //                print("Finished video export at URL: \(video.exportedVideoURL)")
        //            })
        //        }
        //        editController.navigationController?.pushViewController(controller, animated: true)
    }
    
    func editController(_ editController: EditController, didCancelEditing session: Session?) {
        // Called when the back button in the EditController is pressed.
        print("cancelled editing")
    }
}
