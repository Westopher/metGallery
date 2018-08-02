//
//  PaintingDetailVC.swift
//  Met Gallery
//
//  Created by West Kraemer on 7/26/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class PaintingDetailVC: UIViewController {
    
    var paintingIndex: Int!
    var painting: Painting!
    
    @IBOutlet weak var paintingImageView: UIImageView!
    @IBOutlet weak var paintingTitleLabel: UILabel!
    @IBOutlet weak var paintingArtistLabel: UILabel!
    @IBOutlet weak var paintingDateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func dismissToGallery(_ sender: Any) {
    }
    
    @IBAction func lookupOnlineReference(_ sender: Any) {
    }
    
    @IBAction func presentFullScreenPaintingVC(_ sender: Any) {
    }
    
    @IBAction func swipeToNextPainting(_ sender: Any) {
    }
    
    @IBOutlet var swipeToPreviousPainting: UISwipeGestureRecognizer!
    
}

