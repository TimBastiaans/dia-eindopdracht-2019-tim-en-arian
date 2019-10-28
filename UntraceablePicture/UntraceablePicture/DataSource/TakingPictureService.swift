//
//  TakingPictureService.swift
//  UntraceablePicture
//
//  Created by Tim Bastiaans on 25/10/2019.
//  Copyright © 2019 Tim Bastiaans. All rights reserved.
//
import UIKit
import Foundation

class TakingPictureService: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imagePicker: UIImagePickerController!
    
    func useCamera() -> UINavigationController {
        imagePicker =  UIImagePickerController()
        imagePicker.sourceType = .camera

        return imagePicker
    }
    
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        imagePicker.dismiss(animated: true, completion: nil)
//        imageView.image = info[.originalImage] as? UIImage
//    }
}
