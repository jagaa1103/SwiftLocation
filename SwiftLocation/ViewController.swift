//
//  ViewController.swift
//  SwiftLocation
//
//  Created by Jagaa on 1/13/15.
//  Copyright (c) 2015 smartmongol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
    let mainService = MainService().mainService
    
    @IBAction func startGPS(sender: AnyObject) {
        mainService.startGPS()
    }
    
    @IBAction func stopGPS(sender: AnyObject) {
        mainService.stopGPS()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

