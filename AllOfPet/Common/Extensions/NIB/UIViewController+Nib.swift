//
//  UIViewController+Nib.swift
//  AllOfPet
//
//  Created by Jiny on 2022/12/16.
//

import Foundation
import UIKit

extension UIViewController {
  static func loadFromNib() -> Self {
    func instantiateFromNib<T: UIViewController>() -> T {
      return T.init(nibName: String(describing: T.self), bundle: Bundle.main)
    }
    return instantiateFromNib()
  }
  
  static func instantiateFromStoryboard() -> Self {
    func instantiateFromStoryboard<T: UIViewController>() -> T {
      return UIStoryboard(name: String(describing: T.self), bundle: nil).instantiateInitialViewController() as! T
    }
    return instantiateFromStoryboard()
  }
}
