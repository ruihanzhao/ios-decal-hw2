//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var USA: UIButton!
    @IBOutlet var China: UIButton!
    @IBOutlet var Italy: UIButton!
    @IBOutlet var France: UIButton!
    @IBOutlet var Germany: UIButton!
    @IBOutlet var Japan: UIButton!
    @IBOutlet var Mexico: UIButton!
    @IBOutlet var Israel: UIButton!
    @IBOutlet var Russia: UIButton!
    @IBOutlet var Sweden: UIButton!
    @IBOutlet var India: UIButton!
    @IBOutlet var Greece: UIButton!
    @IBOutlet var Delete: UIButton!
    @IBOutlet var Return: UIButton!
    @IBOutlet var Spacebar: UIButton!
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
        addTargets()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    
    
    func loadUSA() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("hello")
    }
    func loadChina() {
        let proxy1 = textDocumentProxy as UITextDocumentProxy
        proxy1.insertText("你好")
    }
    func loadItaly() {
        let proxy1 = textDocumentProxy as UITextDocumentProxy
        proxy1.insertText("ciao")
    }
    func loadMexico() {
        let proxy1 = textDocumentProxy as UITextDocumentProxy
        proxy1.insertText("hola")
    }
    func loadGermany() {
        let proxy1 = textDocumentProxy as UITextDocumentProxy
        proxy1.insertText("gutentag")
    }
    func loadJapan() {
        let proxy1 = textDocumentProxy as UITextDocumentProxy
        proxy1.insertText("konnichiwa")
    }
    func loadFrance() {
        let proxy1 = textDocumentProxy as UITextDocumentProxy
        proxy1.insertText("bonjour")
    }
    func loadRussia() {
        let proxy1 = textDocumentProxy as UITextDocumentProxy
        proxy1.insertText("privét")
    }
    func loadSweden() {
        let proxy1 = textDocumentProxy as UITextDocumentProxy
        proxy1.insertText("hej")
    }
    func loadIsrael() {
        let proxy1 = textDocumentProxy as UITextDocumentProxy
        proxy1.insertText("shalom")
    }
    func loadDelete() {
        let proxy1 = textDocumentProxy as UITextDocumentProxy
        proxy1.deleteBackward()
    }
    func loadReturn() {
        let proxy1 = textDocumentProxy as UITextDocumentProxy
        proxy1.insertText("\n")
    }
    func loadSpacebar() {
        let proxy1 = textDocumentProxy as UITextDocumentProxy
        proxy1.insertText(" ")
    }
    func loadIndia() {
        let proxy1 = textDocumentProxy as UITextDocumentProxy
        proxy1.insertText("namaste")
    }
    func loadGreece() {
        let proxy1 = textDocumentProxy as UITextDocumentProxy
        proxy1.insertText("γειά σου")
    }
    
    func addTargets() {
        USA.addTarget(self, action: "loadUSA", forControlEvents: .TouchUpInside)
        China.addTarget(self, action: "loadChina", forControlEvents: .TouchUpInside)
        Italy.addTarget(self, action: "loadItaly", forControlEvents: .TouchUpInside)
        France.addTarget(self, action: "loadFrance", forControlEvents: .TouchUpInside)
        Germany.addTarget(self, action: "loadGermany", forControlEvents: .TouchUpInside)
        Japan.addTarget(self, action: "loadJapan", forControlEvents: .TouchUpInside)
        Mexico.addTarget(self, action: "loadMexico", forControlEvents: .TouchUpInside)
        Israel.addTarget(self, action: "loadIsrael", forControlEvents: .TouchUpInside)
        Russia.addTarget(self, action: "loadRussia", forControlEvents: .TouchUpInside)
        Sweden.addTarget(self, action: "loadSweden", forControlEvents: .TouchUpInside)
        Delete.addTarget(self, action: "loadDelete", forControlEvents: .TouchUpInside)
        Return.addTarget(self, action: "loadReturn", forControlEvents: .TouchUpInside)
        Spacebar.addTarget(self, action: "loadSpacebar", forControlEvents: .TouchUpInside)
        India.addTarget(self, action: "loadIndia", forControlEvents: .TouchUpInside)
        Greece.addTarget(self, action: "loadGreece", forControlEvents: .TouchUpInside)
        
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        
    }


}
