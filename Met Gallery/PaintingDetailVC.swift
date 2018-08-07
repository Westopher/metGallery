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
    
    override func viewWillAppear(_ animated: Bool) {
        roundImageViewCorners(imageView: paintingImageView)
    }
    
    func loadPaintingInfo() {
        paintingImageView.image = UIImage(named: painting.imageName)
        paintingTitleLabel.text = painting.title
        paintingArtistLabel.text = painting.artist
        paintingDateLabel.text = painting.date
    }
    
    func roundImageViewCorners(imageView: UIImageView) {
        
        imageView.layer.borderColor = UIColor(displayP3Red: 150/255, green: 150/255, blue: 150/255, alpha: 1).cgColor
        imageView.layer.borderWidth = 1
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = paintingImageView.frame.width / 28
        
    }
    
    @IBAction func dismissToGallery(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func lookupOnlineReference(_ sender: Any) {
        application.open(URL(string: painting.onlineReference)!, options: [:], completionHandler: nil)
    }
    
    @IBAction func presentFullScreenPaintingVC(_ sender: Any) {
    }
    
    @IBAction func swipeToNextPainting(_ sender: Any) {
    }
    
    @IBOutlet var swipeToPreviousPainting: UISwipeGestureRecognizer!
    
}

