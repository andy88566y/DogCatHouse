//
//  PhotoPickerVC.swift
//  DogCatPhoto
//
//  Created by GCD on 2017/10/5.
//  Copyright © 2017年 GCD. All rights reserved.
//

import UIKit

class PhotoPickerVC: UIViewController {
    
    var delegate: PhotoTransferDelegate? = nil
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func PhotoBtnWasPressed(sender: UIButton){
        if delegate != nil{
            delegate?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
            self.navigationController?.popViewController(animated: true)

        }
        
    }
    
}
