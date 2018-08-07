//
//  FullScreenPaintingVC.swift
//  Met Gallery
//
//  Created by West Kraemer on 7/26/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class FullScreenPaintingVC: UIViewController, UIScrollViewDelegate {
    
    var paintingImageView: UIImageView!

    @IBOutlet weak var paintingScrollView: UIScrollView!
    
    var screenOrientationIsPortrait: Bool!
    var imageOrientationIsPortrait: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegate.allowedScreenOrientations = UIInterfaceOrientationMask.all
        
        screenOrientationIsPortrait = view.frame.height > view.frame.width
        imageOrientationIsPortrait = paintingImageView.frame.height > paintingImageView.frame.width
        
        paintingScrollView.contentSize = CGSize(width: paintingImageView.frame.width, height: paintingImageView.frame.height)
        paintingScrollView.bounces = false
        paintingScrollView.bouncesZoom = true
        paintingScrollView.minimumZoomScale = 0.3
        paintingScrollView.maximumZoomScale = 2
        
        switch (imageOrientationIsPortrait, screenOrientationIsPortrait) {
            case (true, true): paintingScrollView.zoomScale = view.frame.height / paintingImageView.frame.height
            case (true, false): paintingScrollView.zoomScale = view.frame.width / paintingImageView.frame.width
            case (false, true): paintingScrollView.zoomScale = view.frame.height / paintingImageView.frame.height
            case (false, false): paintingScrollView.zoomScale = view.frame.width / paintingImageView.frame.width
            default: break
        }
        
        paintingScrollView.addSubview(paintingImageView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let contentSizeHOverSize = paintingScrollView.contentSize.width - paintingScrollView.frame.width > 0 ? paintingScrollView.contentSize.width - paintingScrollView.frame.width: 0
        let contentSizeVOverSize = paintingScrollView.contentSize.height - paintingScrollView.frame.height > 0 ? paintingScrollView.contentSize.height - paintingScrollView.frame.height : 0
        switch(imageOrientationIsPortrait, screenOrientationIsPortrait) {
            case (true, true): paintingScrollView.setContentOffset(CGPoint(x: 0, y: contentSizeVOverSize / 4), animated: true)
            case (true, false): paintingScrollView.setContentOffset(CGPoint(x: contentSizeHOverSize / 4, y: 0), animated: true)
            case (false, true): paintingScrollView.setContentOffset(CGPoint(x: contentSizeHOverSize / 4, y: 0), animated: true)
            case (false, false): paintingScrollView.setContentOffset(CGPoint(x: contentSizeVOverSize, y: 0), animated: true)
            default: break
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        appDelegate.allowedScreenOrientations = UIInterfaceOrientationMask.portrait
        device.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
    }

    @IBAction func dismissToPaintingDetail(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return paintingImageView
    }
    
}
