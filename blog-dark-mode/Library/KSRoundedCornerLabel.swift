//
//  KSRoundedCornerLabel.swift
//  QQCOREG
//
//  Created by Lee Kah Seng on 22/11/2017.
//  Copyright © 2017 Lee Kah Seng. All rights reserved.
//

import UIKit

class KSRoundedCornerLabel: UILabel {

    @IBInspectable
    var cornerRadius: CGFloat = 5.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override public func draw(_ rect: CGRect) {
        super.draw(rect)
        
        // Set corner radius
        layer.cornerRadius = cornerRadius
        clipsToBounds = true
    }

}
