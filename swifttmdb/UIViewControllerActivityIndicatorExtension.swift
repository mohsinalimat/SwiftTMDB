//
//  UIViewControllerProgressExtensions.swift
//  swifttmdb
//
//  Created by Christopher Jimenez on 7/7/15.
//  Copyright (c) 2015 greenpixels. All rights reserved.
//

import UIKit
import DTIActivityIndicator
// MARK: - Wraper of activity indicators
extension UIViewController {
    
    /**
    Shows the progress indicator in the view of the view controller
    */
    func showActivityIndicator() {
        
        let myActivityIndicatorView: DTIActivityIndicatorView = DTIActivityIndicatorView(frame: CGRect(x:0.0, y:0.0, width:80.0, height:80.0))
        myActivityIndicatorView.center = CGPointMake(self.view.frame.size.width * 0.5, self.view.frame.size.height * 0.5)
        
        self.view.addSubview(myActivityIndicatorView)
        myActivityIndicatorView.indicatorColor = UIColor.tintColor()
        myActivityIndicatorView.indicatorStyle = "spotify"
        
        myActivityIndicatorView.startActivity()
        
    }
    
    
    /**
    Hides the activity indicator previewsly shown
    */
    func hideActivityIndicator() {
        
        //TODO: Fix this!!
        for view in self.view.subviews as [AnyObject] {
            if view.isKindOfClass(DTIActivityIndicatorView) {
                view.stopActivity()
                view.removeFromSuperview();
            }
        }
    }
    
    /**
    Shows the network indicator on the status bar
    */
    func showNetworkIndicator()
    {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
        
    }
    /**
    Hides the network indicator on the status bar
    */
    func hideNetworkIndicator()
    {
         UIApplication.sharedApplication().networkActivityIndicatorVisible = false
    }
    
    
}
