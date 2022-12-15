//
//  UIViewController+OrientationLocked.swift
//  AllOfPet
//
//  Created by Jiny on 2022/12/15.
//

import Foundation
import UIKit

public protocol OrientationLockedAppDelegate {
    var orientationLock: UIInterfaceOrientationMask { get set }
}

extension UIViewController {
  private func rotateVCToPortrait() {
    UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKeyPath: "orientation")
  }
  
  private func rotateVCToLandscapeLeft() {
    UIDevice.current.setValue(UIInterfaceOrientation.landscapeLeft.rawValue, forKey: "orientation")
  }
  
  private func rotateVCToLandscapeRight() {
    UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight.rawValue, forKey: "orientation")
  }
  
  func allowAllOrientation() {
    lockOrientation(.all)
  }
  
  func allowAllOrientationAndRotate(currentDeviceOrientation: UIDeviceOrientation) {
    allowAllOrientation()
    
    switch currentDeviceOrientation {
    case .landscapeLeft:
      rotateVCToLandscapeRight()
    case .landscapeRight:
      rotateVCToLandscapeLeft()
    default:
      rotateVCToPortrait()
    }
  }
  
  func allowOnlyLandscape() {
    lockOrientation(.landscape)
  }
  
  func allowOnlyPortrait() {
    lockOrientation(.portrait, andRotateTo: .portrait)
  }
  
  private func lockOrientation(_ orientation: UIInterfaceOrientationMask, andRotateTo rotateOrientation: UIInterfaceOrientation? = nil) {
    if let delegate = UIApplication.shared.delegate as? AppDelegate {
      delegate.orientationLock = orientation
    }
    
    if let rotateOrientation = rotateOrientation {
      UIDevice.current.setValue(rotateOrientation.rawValue, forKey: "orientation")
    }
  }
}
