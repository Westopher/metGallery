//
//  HomeVC.swift
//  Met Gallery
//
//  Created by West Kraemer on 7/26/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() { super.viewDidLoad() }
       
        @IBAction func launchArtGallery(_ sender: Any) {
            let galleryVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "GalleryVC") as! GalleryVC
            let activityIndicatorView = UIActivityIndicatorView()
            activityIndicatorView.activityIndicatorViewStyle = .whiteLarge
            activityIndicatorView.center = CGPoint(x: view.center.x, y: view.center.y)
            activityIndicatorView.startAnimating()
            view.addSubview(activityIndicatorView)
            
            present(galleryVC, animated: true, completion: {
                activityIndicatorView.stopAnimating()
                activityIndicatorView.removeFromSuperview()
            })
    }
    
}
