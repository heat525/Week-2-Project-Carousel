//
//  Intro2ViewController.swift
//  Week 2: Project Carousel
//
//  Created by Prime, Heather(AWF) on 9/23/15.
//  Copyright © 2015 Prime, Heather. All rights reserved.
//

import UIKit

class Intro2ViewController: UIViewController {

    @IBOutlet weak var introTileSix: UIImageView!
    @IBOutlet weak var introTileFive: UIImageView!
    @IBOutlet weak var introTileFour: UIImageView!
    @IBOutlet weak var introTileThree: UIImageView!
    @IBOutlet weak var introTileTwo: UIImageView!
    @IBOutlet weak var introTileOne: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 320, height: 1136)
        
        introTileOne.transform = CGAffineTransformMakeRotation(CGFloat(10 * M_PI / 180))
        
        introTileTwo.transform = CGAffineTransformMakeRotation(CGFloat(10 * M_PI / 180))
        
        introTileThree.transform = CGAffineTransformMakeRotation(CGFloat(-20 * M_PI / 180))
        
        introTileFour.transform = CGAffineTransformMakeRotation(CGFloat(-15 * M_PI / 180))
        
        introTileFive.transform = CGAffineTransformMakeRotation(CGFloat(15 * M_PI / 180))
        
        introTileSix.transform = CGAffineTransformMakeRotation(CGFloat(-15 * M_PI / 180))


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
