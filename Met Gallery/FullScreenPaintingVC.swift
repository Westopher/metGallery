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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paintingScrollView.contentSize = CGSize(width: paintingImageView.frame.width, height: paintingImageView.frame.height)
        paintingScrollView.bounces = false
        paintingScrollView.bouncesZoom = true
        paintingScrollView.minimumZoomScale = 0.3
        paintingScrollView.maximumZoomScale = 2
        paintingScrollView.addSubview(paintingImageView)
    }

    @IBAction func dismissToPaintingDetail(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return paintingImageView
    }
    
}
