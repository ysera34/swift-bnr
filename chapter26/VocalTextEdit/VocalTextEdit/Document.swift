//
//  Document.swift
//  VocalTextEdit
//
//  Created by Yoon on 2018. 1. 1..
//  Copyright © 2018년 Yoon. All rights reserved.
//

import Cocoa

class Document: NSDocument {

    enum Error: Swift.Error, LocalizedError {
        case UTF8Encoding
        case UTF8Decoding
        
        var failureReason: String? {
            switch self {
            case .UTF8Encoding: return "File cannot be encoded in UTF-8."
            case .UTF8Decoding: return "File is not valid UTF-8."
            }
        }
    }
    
    var contents: String = ""
    
//    override init() {
//        super.init()
        // Add your subclass-specific initialization here.
//    }

    override class var autosavesInPlace: Bool {
        return true
    }

    override func makeWindowControllers() {
        // Returns the Storyboard that contains your Document window.
        let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
        let windowController = storyboard.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier("Document Window Controller")) as! NSWindowController
        
        let viewController = windowController.contentViewController as! ViewController
//        viewController.textView.string = contents
        viewController.contents = contents
        
        self.addWindowController(windowController)
    }

    override func data(ofType typeName: String) throws -> Data {
        // Insert code here to write your document to data of the specified type. If outError != nil, ensure that you create and set an appropriate error when returning nil.
        // You can also choose to override fileWrapperOfType:error:, writeToURL:ofType:error:, or writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
//        throw NSError(domain: NSOSStatusErrorDomain, code: unimpErr, userInfo: nil)
        
        let windowController = windowControllers[0]
        let viewController = windowController.contentViewController as! ViewController
//        let contents = viewController.textView.string ?? ""
        let contents = viewController.contents ?? ""
        
        guard let data = contents.data(using: .utf8) else {
            throw Document.Error.UTF8Encoding
        }
        return data
    }

    override func read(from data: Data, ofType typeName: String) throws {
        // Insert code here to read your document from the given data of the specified type. If outError != nil, ensure that you create and set an appropriate error when returning false.
        // You can also choose to override readFromFileWrapper:ofType:error: or readFromURL:ofType:error: instead.
        // If you override either of these, you should also override -isEntireFileLoaded to return false if the contents are lazily loaded.
//        throw NSError(domain: NSOSStatusErrorDomain, code: unimpErr, userInfo: nil)
        
        guard let contents = String(data: data, encoding: .utf8) else {
            throw Document.Error.UTF8Decoding
        }
        
//        let windowController = windowControllers[0]
//        let viewController = windowController.contentViewController as! ViewController
//        viewController.textView.string = contents
        self.contents = contents
    }
}

