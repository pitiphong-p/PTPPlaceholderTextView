//
//  PTPPlaceholderTextViewTests.swift
//  PTPPlaceholderTextViewTests
//
//  Created by Sarun Wongpatcharapakorn on 2/25/16.
//  Copyright © 2016 Pitiphong Phongpattranont. All rights reserved.
//

import XCTest
@testable import PTPPlaceholderTextView

class PTPPlaceholderTextViewTests: XCTestCase {
  
    let textView = PTPPlaceholderTextView()
  
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTextColor() {
      self.textView.textColor = UIColor.redColor()
      
      XCTAssertEqual(self.textView.textColor, UIColor.redColor())
    }
    
}
