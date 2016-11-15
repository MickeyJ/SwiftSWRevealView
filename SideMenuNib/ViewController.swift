//
//  ViewController.swift
//  SideMenuNib
//
//  Created by Michael Malotte on 11/15/16.
//  Copyright © 2016 Michael Malotte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  @IBOutlet weak var menuButton: UIBarButtonItem!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if revealViewController() != nil {
      
      menuButton.target = self.revealViewController()
      menuButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
      
      self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
      
    }
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

