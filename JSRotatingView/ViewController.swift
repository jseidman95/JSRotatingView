//
//  ViewController.swift
//  JSRotatingView
//
//  Created by Jesse Seidman on 5/5/18.
//  Copyright © 2018 Jesse Seidman. All rights reserved.
//

import UIKit

class ViewController: UIViewController,JSRotationDelegate
{
  func jsRotatingView(_ view: JSRotatingView, hasRotatedToOrientation: UIDeviceOrientation)
  {
    print("rotated")
  }
  
  private let jsView = JSRotatingView()
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    jsView.rotationDelegate = self
    jsView.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(jsView)
    jsView.backgroundColor = UIColor.blue
    jsView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
    jsView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
    jsView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
    jsView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
  }
}

