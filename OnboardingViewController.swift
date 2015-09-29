//
//  OnboardingViewController.swift
//  Week 2: Project Carousel
//
//  Created by Prime, Heather(AWF) on 9/26/15.
//  Copyright © 2015 Prime, Heather. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var onCarouselButton: UIButton!
    @IBOutlet weak var takeCarouselView: UIView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    //view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set delegate for scroll view
        self.scrollView.delegate = self
        
        
        //SET SCROLL VIEW (set actual scroll view size to 320 by 568)
        scrollView.contentSize = CGSize(width:1280, height:568)
        
      
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //UI PAGE CONTROL FUNCTION (LITTLE DOTS)
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        
        /*print page #
        print("page is \(page)") */
            
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        if page == 3
        {
            takeCarouselView.alpha = 1
        }
        else
        {
            takeCarouselView.alpha = 0
        }

    }
    
    func scrollViewDidScrollToTop(scrollView: UIScrollView){
        //take carousel for a spin
        takeCarouselView.alpha = 1
        
    }
    
    // called when scrolling animation finished. may be called immediately if already at top

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
