//
//  BaseViewController.swift
//  Blockout
//
//  Created by Kevin on 2022/9/12.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    var banScreenshot = false
    
    override func loadView() {
        if banScreenshot {
            let textField = UITextField()
            textField.isSecureTextEntry = true
            textField.isEnabled = false
            if textField.subviews.first != nil {
                self.view = textField.subviews.first
            } else {
                self.view = UIView()
            }
        } else {
            self.view = UIView()
        }
        self.view.isUserInteractionEnabled = true
        self.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        self.view.backgroundColor = .white
    }
}
