//
//  ViewController.swift
//  PTPPlaceholderTextView-Demo
//
//  Created by Pitiphong Phongpattranont on 10/12/2558 BE.
//  Copyright © 2558 Pitiphong Phongpattranont. All rights reserved.
//

import UIKit
import PTPPlaceholderTextView

class ViewController: UIViewController {
  
  @IBOutlet weak var textview: PTPPlaceholderTextView!
  
  override func viewDidLoad() {
    self.textview.textColor = UIColor.red
  }
  
  @IBAction func dismissKeyboard(_ sender: UIBarButtonItem) {
    _ = textview.resignFirstResponder()
  }
}

