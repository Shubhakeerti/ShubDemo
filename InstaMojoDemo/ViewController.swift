//
//  ViewController.swift
//  InstaMojoDemo
//
//  Created by Shubhakeerti on 26/11/17.
//  Copyright © 2017 Shubhakeerti. All rights reserved.
//

import UIKit
import InstaMojoiOS

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func startPaymentButtonAction(_ sender: UIButton) {
        
        IMConfiguration.sharedInstance.setupOrder(purpose: "Testing", buyerName: "Shub", emailId: "shubhakeerti@gmail.com", mobile: "8718699108", amount: "10", environment: .Test, on: self) { (success, message) in
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: {
                if success {
                    let alert = UIAlertController(title: message, message: nil, preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.cancel, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                } else {
                    let alert = UIAlertController(title: message, message: nil, preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.cancel, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            })
        }
    }
}

