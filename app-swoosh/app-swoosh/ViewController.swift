//
//  ViewController.swift
//  app-swoosh
//
//  Created by Pravir Ahuja on 02/04/20.
//  Copyright © 2020 Priyank Ahuja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        swoosh.frame = CGRect(x: view.frame.size.width / 2 - swoosh.frame.size.width / 2, y: 50, width: swoosh.frame.size.width, height: swoosh.frame.size.height)
        
        BgImg.frame = view.frame
    }

    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var BgImg: UIImageView!
    
}

