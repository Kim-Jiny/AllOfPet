//
//  UIView+Nib.swift
//  AllOfPet
//
//  Created by Jiny on 2022/12/16.
//

import Foundation
import UIKit

extension UIView {
  class func initWithNib<T: UIView>(name: String? = nil) -> T? {
    var nib = Bundle.main.loadNibNamed(String(describing: self), owner: self, options: nil)
    
    var returnView: T? = nil
    nib?.forEach {
      if let view = $0 as? T {
        returnView = view
      }
    }
    
    return returnView
  }
}
