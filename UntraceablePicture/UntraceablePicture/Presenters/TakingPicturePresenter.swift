//
//  TakingPicturePresenter.swift
//  UntraceablePicture
//
//  Created by Tim Bastiaans on 22/10/2019.
//  Copyright © 2019 Tim Bastiaans. All rights reserved.
//

import Foundation
import UIKit

protocol TakingPictureDelegate: NSObjectProtocol{
    func changePictureButtonText(description: String)
}

class TakingPicturePresenter: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var model = MainModel(isAnPictureTaken: false, photo: nil)
    private let takingPictureService : TakingPictureService?
    weak private var takingPictureDelegate : TakingPictureDelegate?
    
    var takePictureButtonTitle: String {
        return model.isAnPictureTaken ? "Change Picture" : "Take picture"
    }
    
    init(takingPictureService:TakingPictureService){
        self.takingPictureService = takingPictureService
    }
    
    func setViewDelegate(takingPictureDelegate:TakingPictureDelegate?){
        self.takingPictureDelegate = takingPictureDelegate
    }
    
    func takePictureButtonIsPressed() -> UIImagePickerController {
        model.isAnPictureTaken = true
        self.takingPictureDelegate?.changePictureButtonText(description: takePictureButtonTitle)

        return takingPictureService?.useCamera() as! UIImagePickerController
    }
    


}


