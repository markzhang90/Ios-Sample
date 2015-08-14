//
//  MenuViewController.swift
//  MyStory
//
//  Created by Yiyuan Zhang on 2/23/15.
//  Copyright (c) 2015 Yiyuan Zhang. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController,UITextViewDelegate,UIGestureRecognizerDelegate {

    @IBOutlet weak var textPostIcon: UIImageView!
    @IBOutlet weak var textPostLabel: UILabel!
    
    @IBOutlet weak var photoPostIcon: UIImageView!
    @IBOutlet weak var photoPostLabel: UILabel!
    
    @IBOutlet weak var quotePostIcon: UIImageView!
    @IBOutlet weak var quotePostLabel: UILabel!
    
    @IBOutlet weak var linkPostIcon: UIImageView!
    @IBOutlet weak var linkPostLabel: UILabel!
    
    @IBOutlet weak var chatPostIcon: UIImageView!
    @IBOutlet weak var chatPostLabel: UILabel!
    
    @IBOutlet weak var audioPostIcon: UIImageView!
    @IBOutlet weak var audioPostLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "TextPressed:")
        
        self.textPostIcon.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // we override this method to manage what style status bar is shown
    
    
    // begin -------------
    func TextPressed(sender: UITapGestureRecognizer){
        println("pressed text")
        self.performSegueWithIdentifier("addText", sender: self)
    }
    
    // end -------------
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "addText"){
            var rootView:RootViewController = segue.destinationViewController as! RootViewController
        }
    }


}
