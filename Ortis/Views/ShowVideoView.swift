//
//  ShowVideoView.swift
//  Ortis
//
//  Created by William Strickland on 5/17/22.
//

import SwiftUI
import UIKit

struct ShowVideoView: View {
    @Binding var isDisplayed: Bool
    @Binding var image:UIImage?
    var imageA1: UIImage? = nil
    var body: some View {
        Image(uiImage:isDisplayed ? image! : imageA1! )
    }
}

//struct ShowVideoView_Previews: PreviewProvider {
//    static var previews: some View {
//        ShowVideoView()
//    }
//}
