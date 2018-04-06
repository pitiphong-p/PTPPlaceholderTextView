//
//  PTPPlaceholderTextView.swift
//  PTPPlaceholderTextView
//
//  Created by Pitiphong Phongpattranont on 10/12/2015.
//  Copyright © 2558 Pitiphong Phongpattranont. All rights reserved.
//

import UIKit


/// A simple naive implementation of UITextView subclass to support `placeholder` text rendering in UITextView
@IBDesignable open class PTPPlaceholderTextView: UITextView {
  // MARK: Public properties
  /// Placeholder text that will be displayed when this text view doesnʼt have any text to display.
  @IBInspectable open var placeholder: String? {
    didSet {
      self.renderPlaceholderText()
    }
  }
  /// Text color of the placeholder text
  /// Default is 70% grey, like the UITextField's default placeholder color.
  @IBInspectable dynamic open var placeholderColor: UIColor = UIColor(white: 0.7, alpha: 1.0) {
    didSet {
      self.renderPlaceholderText()
    }
  }
  
  // MARK: - Private properties
  private var isPlaceholderActive = true
  private var actualTextColor: UIColor?
  private var isInRenderingPlaceholderProcess = false
  override open var text: String? {
    get {
      return self.isPlaceholderActive ? nil : super.text
    }
    set {
      super.text = newValue
    }
  }
  
  // MARK: - Override properties
  override open var textColor: UIColor? {
    didSet {
      self.actualTextColor = self.textColor
      renderPlaceholderText()
    }
  }
  override open var attributedText: NSAttributedString? {
    get {
      return self.isPlaceholderActive ? nil : super.attributedText
    }
    set {
      super.attributedText = newValue
      
      if let attributedText = attributedText, attributedText.length > 0 && !isInRenderingPlaceholderProcess && !isPlaceholderActive {
        let attributes = attributedText.attributes(at: 0, effectiveRange: nil)
        // Set the text color property with the foreground color attribute of the first character, this is a mimic the default behavior of UITextView.
        self.actualTextColor = attributes[NSAttributedStringKey.foregroundColor] as? UIColor ?? UIColor.black
      }
      
      if !isInRenderingPlaceholderProcess {
        self.isPlaceholderActive = (attributedText?.length ?? 0) == 0
        self.renderPlaceholderText()
      }
    }
  }
  
  // MARK: - Methods
  private func renderPlaceholderText() {
    // We don't render placeholder while this text view is the first responder.
    guard !self.isFirstResponder else {
      return
    }
    
    // We need to set to rendering placeholder mode due to the implementation of UITextView,
    // which can cause `renderPlaceholderText` method to be called multiple times during placeholder text rendering
    isInRenderingPlaceholderProcess = true
    if isPlaceholderActive {
      super.text = self.placeholder
    }
    super.textColor = isPlaceholderActive ? self.placeholderColor : self.actualTextColor
    isInRenderingPlaceholderProcess = false
  }
  
  override open func becomeFirstResponder() -> Bool {
    let becomeResponder = super.becomeFirstResponder()
    // Disable the placeholder text when this text view becomes first responder.
    if becomeResponder && isPlaceholderActive {
      super.text = nil
      super.textColor = self.actualTextColor
      isPlaceholderActive = false
    }
    return becomeResponder
  }
  
  override open func resignFirstResponder() -> Bool {
    let resignResponder = super.resignFirstResponder()
    if resignResponder {
      if !isInRenderingPlaceholderProcess {
        self.isPlaceholderActive = super.text.isEmpty
      }
      self.renderPlaceholderText()
    }
    
    return resignResponder
  }
}

