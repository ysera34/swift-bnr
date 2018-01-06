//
//  ViewController.swift
//  VocalTextEdit
//
//  Created by Yoon on 2018. 1. 1..
//  Copyright © 2018년 Yoon. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//         Do any additional setup after loading the view.
//    }

//    override var representedObject: Any? {
//        didSet {
//         Update the view, if already loaded.
//        }
//    }

    @IBOutlet var textView: NSTextView!
    
    @IBAction func speakButtonClicked(_ sender: NSButton) {
//        print("The Speak button was clicked")
        print("I Should speak \(textView.string)")
    }
    
    @IBAction func stopButtonClicked(_ sender: NSButton) {
        print("The Stop button was clicked")
    }

}

