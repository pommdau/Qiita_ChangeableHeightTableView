//
//  SecondViewControllerTableCellView.swift
//  ChangeableRowHeightTableView
//
//  Created by HIROKI IKEUCHI on 2020/02/06.
//  Copyright © 2020年 hikeuchi. All rights reserved.
//

import Cocoa

class SecondViewControllerTableCellView: NSTableCellView {
    
    @IBOutlet var myImaveView: NSImageView!
    @IBOutlet var nameTextField: NSTextField!
    @IBOutlet var messageTextField: NSTextField!
    
    @IBOutlet var widthConstraintOfMyImageView: NSLayoutConstraint!
    @IBOutlet var leadingConstraintOfMyImageView: NSLayoutConstraint!
    
    @IBOutlet var trailingConstraintOfNameTextField: NSLayoutConstraint!
    @IBOutlet var leadingConstraintOfNameTextField: NSLayoutConstraint!
    
    @IBOutlet var trailingConstraintOfMessageTextField: NSLayoutConstraint!
    @IBOutlet var leadingConstraintOfMessageTextField: NSLayoutConstraint!
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        // Drawing code here.
    }
    
    func calculateWidthOfMessageTextField(_ widthOfTableView: CGFloat) -> CGFloat {
        return widthOfTableView
            - leadingConstraintOfMyImageView.constant
            - widthConstraintOfMyImageView.constant
            - leadingConstraintOfMessageTextField.constant
            - trailingConstraintOfMessageTextField.constant
    }
    
}
