//
//  Coordinator.swift
//  AllOfPet
//
//  Created by Jiny on 2022/12/16.
//

import Foundation
import UIKit
protocol Coordinator: AnyObject {
  
  var children: [Coordinator] { get set }
  var navigationController: UINavigationController? { get }

}

