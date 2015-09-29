//
//  SignInViewController.swift
//  Week 2: Project Carousel
//
//  Created by Prime, Heather(AWF) on 9/26/15.
//  Copyright © 2015 Prime, Heather. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var smokeScreen: UIView!
    @IBOutlet weak var signInTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInTextField.frame.size.height = 60
        
        

        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.


    }
    
    //DELAY THING
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    
    //SIGN IN BUTTON FUNCTION
    @IBAction func onSignIn(sender: AnyObject) {
        
        
        //SUCCESS EMAIL AND PASSWORD
        if emailField.text == "email" && passwordField.text == "password" {
            
        // PUT SPINNER HERE SIGNNING IN...
            self.smokeScreen.hidden = false
            
            
        // DELAY
        // Delay for 2 seconds, then run the code between the braces.
            delay(2) {
            
            //SEGUE
            self.performSegueWithIdentifier("signInSegue", sender: nil)
            
            
        }
        }
        
        //FAIL
        else {
            
            //no email provided
            if emailField.text!.isEmpty {
                
                var alert = UIAlertView (title: "Email Required", message: "Please enter your email address", delegate: nil, cancelButtonTitle: "OK")
                    alert.show()
            }
            
                //sign in failed
                else{
                var alert = UIAlertView (title: "Sign In Failed", message: "Incorrect email or password", delegate: nil, cancelButtonTitle: "OK")
                    alert.show()
            }
        }
        
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
