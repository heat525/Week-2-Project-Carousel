//
//  ConversationsViewController.swift
//  Week 2: Project Carousel
//
//  Created by Prime, Heather(AWF) on 9/27/15.
//  Copyright © 2015 Prime, Heather. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {
    
    //attempt at going back with code
    @IBAction func onBackButton(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //dismiss view controller with code
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
