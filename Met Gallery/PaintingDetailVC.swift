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
        loadPaintingInfo()
    }
    
    func loadPaintingInfo() {
        paintingImageView.image = UIImage(named: painting.imageName)
        paintingTitleLabel.text = painting.title
        paintingArtistLabel.text = painting.artist
        paintingDateLabel.text = painting.date
    }
    
    @IBAction func dismissToGallery(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func lookupOnlineReference(_ sender: Any) {
    }
    
    @IBAction func presentFullScreenPaintingVC(_ sender: Any) {
    }
    
    @IBAction func swipeToNextPainting(_ sender: Any) {
    }
    
    @IBOutlet var swipeToPreviousPainting: UISwipeGestureRecognizer!
    
}

