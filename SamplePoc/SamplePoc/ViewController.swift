//
//  ViewController.swift
//  SamplePoc
//
//  Created by Jay Gajjar on 20/08/2024.
//

import UIKit
import RNFiveLivesSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadReactNativeView()
    }

    func loadReactNativeView() {
        let rnView = RNViewManager.getReactNativeView()
        rnView.frame = self.view.bounds
        self.view.addSubview(rnView)
    }

}

