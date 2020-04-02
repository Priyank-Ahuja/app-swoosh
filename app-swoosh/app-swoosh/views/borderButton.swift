//
//  borderButton.swift
//  app-swoosh
//
//  Created by Pravir Ahuja on 02/04/20.
//  Copyright © 2020 Priyank Ahuja. All rights reserved.
//

import UIKit

class borderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
