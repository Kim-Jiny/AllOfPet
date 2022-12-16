//
//  MainCoordinator.swift
//  AllOfPet
//
//  Created by Jiny on 2022/12/16.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
  
  var children: [Coordinator] = []
  var navigationController: UINavigationController?
  
  init(_ navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func appStart() {
    
  }
}
