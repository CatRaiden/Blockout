//
//  ViewController.swift
//  Blockout
//
//  Created by Kevin on 2022/9/12.
//

import UIKit

class ViewController: BaseViewController {

    override func loadView() {
        self.banScreenshot = false
        super.loadView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addSomething()
    }

    func addSomething() {
        let imageview = UIImageView.init(frame: .init(x: 0, y: 50, width: 100, height: 100))
        imageview.image = .init(systemName: "building.columns")
        self.view.addSubview(imageview)
    }
}

