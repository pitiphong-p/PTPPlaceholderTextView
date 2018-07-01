//
//  AppDelegate.swift
//  PTPPlaceholderTextView-Demo
//
//  Created by Pitiphong Phongpattranont on 10/12/2558 BE.
//  Copyright © 2558 Pitiphong Phongpattranont. All rights reserved.
//

import UIKit
import PTPPlaceholderTextView


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.

    // Uncomment the following code to test the UIAppearance support functionality.
    // PTPPlaceholderTextView.appearance().placeholderColor = UIColor.redColor()
    // PTPPlaceholderTextView.appearanceWhenContainedInInstancesOfClasses([ViewController.self]).placeholderColor = UIColor.redColor()
    return true
  }

}

