//
//  ViewController.swift
//  UntraceablePicture
//
//  Created by Tim Bastiaans on 22/10/2019.
//  Copyright © 2019 Tim Bastiaans. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate, TakingPictureDelegate {
    
    @IBOutlet weak var pictureButton: UIButton!
    
    private let takingPicturePresenter = TakingPicturePresenter(takingPictureService: TakingPictureService())
    
    
    @IBOutlet weak var imageView: UIImageView!
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        takingPicturePresenter.setViewDelegate(takingPictureDelegate: self)
    }

    @IBAction func takePicture(_ sender: Any) {
        imagePicker = takingPicturePresenter.takePictureButtonIsPressed()
        imagePicker.delegate = self

        present(imagePicker, animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        imageView.image = info[.originalImage] as? UIImage
        
    }

    func changePictureButtonText (description: String){
        pictureButton.setTitle(description, for: .normal)
    }
    
}


