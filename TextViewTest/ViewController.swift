//
//  ViewController.swift
//  TextViewTest
//
//  Created by Kevin Ditraglia on 1/15/16.
//  Copyright © 2016 Test. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!

    var textShouldBe: NSString = ""
    
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        textShouldBe =  textShouldBe.stringByReplacingCharactersInRange(range, withString: text)
        
        return true
    }
    
    func textViewDidChange(textView: UITextView) {
        print("Text shows:     \(textView.text)")
        print("Text should be: \(textShouldBe)")
    }

}

