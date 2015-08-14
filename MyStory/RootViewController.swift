//
//  ViewController.swift
//  MyStory
//
//  Created by Yiyuan Zhang on 2/23/15.
//  Copyright (c) 2015 Yiyuan Zhang. All rights reserved.
//

import UIKit

class RootViewController: UIViewController,UIScrollViewDelegate{
    let transitionManager = TransitionManager()
    var Widget = [UIImageView]()
    
    @IBOutlet weak var ScrollRoot: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cancelBack(segue:UIStoryboardSegue) {        
        self.dismissViewControllerAnimated(true , completion: nil)
        
    }
    
    @IBAction func Addtext(segue:UIStoryboardSegue){
        self.addSubImageview()
        self.dismissViewControllerAnimated(true , completion: nil)
    }
    
    // begin -------------add subview
    func addSubImageview(){
        let existWidgetCount = self.Widget.count
        var positionY: CGFloat = 5
        
        for items in Widget{
            positionY += CGFloat(items.frame.size.height) + 5
        }

        var image:UIImage = UIImage(named: "Chat")!
        var nextRect:CGRect = CGRect(x: 20, y: positionY, width: image.size.width, height: image.size.width)
        var addedWidget:UIImageView = UIImageView(frame: nextRect)
        addedWidget.image = image
        addedWidget.userInteractionEnabled = true
        self.Widget.append(addedWidget)
       // addedWidget.addGestureRecognizer(gestureRecognizer: UIGestureRecognizer)
        self.ScrollRoot.addSubview(addedWidget as UIView)

    }
    // end -------------
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(segue.identifier == "ShowMenu"){
        // this gets a reference to the screen that we're about to transition to
        let toViewController = segue.destinationViewController as! MenuViewController
        
        // instead of using the default transition animation, we'll ask
        // the segue to use our custom TransitionManager object to manage the transition animation
        toViewController.transitioningDelegate = self.transitionManager
        }
    }
    

}

