//
//  ViewController.swift
//  StickyButton
//
//  Created by 흰 on 7/17/24.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  

}

class FirstViewController: UIHostingController<SwiftUIStickyButton> {
  init() {
    super.init(rootView: SwiftUIStickyButton())
  }
  
  @MainActor required dynamic init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
