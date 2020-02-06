//
//  ViewController.swift
//  ChangeableRowHeightTableView
//
//  Copyright © 2020年 hikeuchi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var myTableView: NSTableView!
    
    let messageTemplates = [
        """
    吾輩は猫である。名前はまだ無い。
    """,
        """
    どこで生れたかとんと見当がつかぬ。何でも薄暗いじめじめした所でニャーニャー泣いていた事だけは記憶している。
    吾輩はここで始めて人間というものを見た。しかもあとで聞くとそれは書生という人間中で一番獰悪な種族であったそうだ。この書生というのは時々我々を捕えて煮て食うという話である。しかしその当時は何という考もなかったから別段恐しいとも思わなかった。
    """,
        """
    ただ彼の掌に載せられてスーと持ち上げられた時何だかフワフワした感じがあったばかりである。掌の上で少し落ちついて書生の顔を見たのがいわゆる人間というものの見始であろう。この時妙なものだと思った感じが今でも残っている。第一毛をもって装飾されべきはずの顔がつるつるしてまるで薬缶だ。その後猫にもだいぶ逢ったがこんな片輪には一度も出会わした事がない。
    のみならず顔の真中があまりに突起している。
    そうしてその穴の中から時々ぷうぷ
    """]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

extension ViewController: NSTableViewDataSource, NSTableViewDelegate {
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return 10
    }
    
    func tableView(_ tableView: NSTableView,
                   viewFor tableColumn: NSTableColumn?,
                   row: Int) -> NSView? {
        
        guard let cellView = tableView.makeView(withIdentifier: tableColumn!.identifier, owner: self) as? ViewControllerTableCellView else {
            return nil
        }
        cellView.nameTextField.stringValue = String(format: "%d番目の人", row)
        cellView.messageTextField.stringValue = messageTemplates[Int.random(in: 0...2)]
        
        return cellView
    }
}
