//
//  ViewController.swift
//  DogCatPhoto
//
//  Created by GCD on 2017/10/3.
//  Copyright © 2017年 GCD. All rights reserved.
//

import UIKit

class PhotoPresentVC: UIViewController, PhotoTransferDelegate {
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var PhotoNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func userDidChoose(color: UIColor, withName PhotoName: String) {
        view.backgroundColor = color
        PhotoNameLbl.text = PhotoName
        switch PhotoName {
        case "Da'an Park":
            photoImageView.image = UIImage(named: "1")
        case "Da Jia Park with Fire":
            photoImageView.image = UIImage(named: "2")
        case "Hot Pot":
            photoImageView.image = UIImage(named: "3")
        case "Go Hiking":
            photoImageView.image = UIImage(named: "4")
        case "Airport Metro":
            photoImageView.image = UIImage(named: "5")
            
        default:
            photoImageView.image = UIImage(named: "0")
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentPhotoPickerVC" {
            guard let photoPickerVC = segue.destination as? PhotoPickerVC else { return }
            photoPickerVC.delegate = self
        }
    }
    
    

}

