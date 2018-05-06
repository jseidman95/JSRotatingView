//
//  JSRotatingView.swift
//  JSRotatingView
//
//  Created by Jesse Seidman on 5/5/18.
//  Copyright © 2018 Jesse Seidman. All rights reserved.
//

import UIKit

// the delegate class that allows the user to deal with rotation of the UIView gracefully
public protocol JSRotationDelegate
{
  func jsRotatingView(_ view:JSRotatingView, hasRotatedTo orientation:UIDeviceOrientation)
}

open class JSRotatingView: UIView
{
  // vars
  // private
  private var lastOrientation:UIDeviceOrientation = UIDeviceOrientation.unknown
  // public
  public var rotationDelegate:JSRotationDelegate? = nil
  
  public override init(frame: CGRect)
  {
    super.init(frame: frame)
    
    startUp()
  }
  
  public required init?(coder aDecoder: NSCoder)
  {
    super.init(coder: aDecoder)
    
    startUp()
  }
  
  // funcs
  // private
  private func startUp()
  {
    lastOrientation = UIDevice.current.orientation
  }
  
  // overridden
  open override func layoutSubviews()
  {
    let currentOrientation = UIDevice.current.orientation
    if currentOrientation != lastOrientation
    {
      rotationDelegate?.jsRotatingView(self, hasRotatedTo: currentOrientation)
      lastOrientation = currentOrientation
    }
    
    super.layoutSubviews()
  }
}
