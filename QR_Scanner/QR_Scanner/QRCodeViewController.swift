//
//  ViewController.swift
//  QR_Scanner
//
//  Created by Emmet Susslin on 6/4/17.
//  Copyright © 2017 Emmet Susslin. All rights reserved.
//

import UIKit

class QRCodeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Navigation
    
    @IBAction func unwindToHomeScreen(segue: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }
    
}

