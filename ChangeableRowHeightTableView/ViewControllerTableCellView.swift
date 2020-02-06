//
//  ViewControllerTableCellView.swift
//  ChangeableRowHeightTableView

import Cocoa

class ViewControllerTableCellView: NSTableCellView {

    @IBOutlet var myImaveView: NSImageView!
    @IBOutlet var nameTextField: NSTextField!
    @IBOutlet var messageTextField: NSTextField!
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }
    
}
