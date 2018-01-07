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
    
    let speechSynthesizer = NSSpeechSynthesizer()

    @IBOutlet var textView: NSTextView!
    
    var contents: String? {
        get {
            return textView.string
        }
        set {
            textView.string = newValue!
        }
    }
    
    @IBAction func speakButtonClicked(_ sender: NSButton) {
//        print("The Speak button was clicked")
//        print("I Should speak \(textView.string)")
        if let contents = textView, !contents.string.isEmpty {
            speechSynthesizer.startSpeaking(contents.string)
        } else {
            speechSynthesizer.startSpeaking("The document is empty.")
        }
    }
    
    @IBAction func stopButtonClicked(_ sender: NSButton) {
//        print("The Stop button was clicked")
        speechSynthesizer.stopSpeaking()
    }

}

