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
    
    @IBOutlet var myImageViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet var myImageViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet var myImageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet var myImageViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet var myImageViewLeadingConstraint: NSLayoutConstraint!
    
    @IBOutlet var nameTextFieldTopConstraint: NSLayoutConstraint!
    @IBOutlet var nameTextFieldLeadingConstraint: NSLayoutConstraint!
    @IBOutlet var nameTextFieldTrailingConstraint: NSLayoutConstraint!
    
    @IBOutlet var messageTextFieldTopConstraint: NSLayoutConstraint!
    @IBOutlet var messageTextFieldBottomConstraint: NSLayoutConstraint!
    @IBOutlet var messageTextFieldLeadingConstraint: NSLayoutConstraint!
    @IBOutlet var messageTextFieldTrailingConstraint: NSLayoutConstraint!
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        // Drawing code here.
    }
    
    func calculateWidthOfMessageTextField(_ widthOfTableView: CGFloat) -> CGFloat {
        return widthOfTableView
            - myImageViewLeadingConstraint.constant
            - myImageViewWidthConstraint.constant
            - messageTextFieldLeadingConstraint.constant
            - messageTextFieldTrailingConstraint.constant
    }
    
    func calculateWidthOfNameTextField(_ widthOfTableView: CGFloat) -> CGFloat {
        return widthOfTableView
            - myImageViewLeadingConstraint.constant
            - myImageViewWidthConstraint.constant
            - nameTextFieldLeadingConstraint.constant
            - nameTextFieldTrailingConstraint.constant
    }
}

