//
//  PhotoTransferDelegate.swift
//  DogCatPhoto
//
//  Created by GCD on 2017/10/5.
//  Copyright © 2017年 GCD. All rights reserved.
//

import UIKit

protocol PhotoTransferDelegate {
    func userDidChoose(color: UIColor, withName PhotoName: String)
}
