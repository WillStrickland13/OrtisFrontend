

import UIKit
import PixelSDK
import PhotosUI
import SwiftUI
import AWSS3
import AWSCore
import AWSCognitoIdentity
import AWSCognitoIdentityProvider
import AWSCognitoIdentityProviderASF
import ClientRuntime
import AWSClientRuntime
public var imageToPost:UIImage?


class ViewController: UITableViewController, ObservableObject{
    @State var isDisplayed:Bool = false
    @Published var isDoneEditing:Bool = false
    @Published var img:UIImage?
    
    struct ImagePicker: UIViewControllerRepresentable {
        var vc:ViewController
        typealias UIViewControllerType = UINavigationController
        
        
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
        isDoneEditing=false
        img = nil
        
    }

    
    func editController(_ editController: EditController, didFinishEditing session: Session){
        // Called when the Next button in the EditController is pressed.
        // Use this time to either dismiss the UINavigationController, or push a new controller on.
        print("finished editing")
        if let image = session.image {
            ImageExporter.shared.export(image: image, completion: { (error, uiImage) in
                if let error = error {
                    print("Unable to export image: \(error)")
                    return
                }
                
                print("Finished image export with UIImage: \(uiImage!)")
                imageToPost=uiImage
                self.img = uiImage
                self.isDoneEditing.toggle()
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
