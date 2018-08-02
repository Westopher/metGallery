//
//  GalleryVC.swift
//  Met Gallery
//
//  Created by West Kraemer on 7/26/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class GalleryVC: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
 
    

    override func viewDidLoad() { super.viewDidLoad() }
    
    @IBAction func dismissToHome(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
        
        // MARK: - CollectionView DataSource Methods --------
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
 return paintings.count }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let paintingCVCell = collectionView.dequeueReusableCell(withReuseIdentifier: "GalleryCVCell", for: indexPath) as! GalleryCVCell
            paintingCVCell.paintingThumbnailImageView.image = UIImage(named: paintings[indexPath.item].thumbName)
            paintingCVCell.layer.borderColor = UIColor.black.cgColor
            paintingCVCell.layer.borderWidth = 1
            paintingCVCell.layer.cornerRadius = paintingCVCell.frame.width / 14
            paintingCVCell.clipsToBounds = true
            return paintingCVCell
        }
        
        // MARK: - CollectionViewDelegateFlowLayout Methods --------
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: view.frame.width / 3.15, height: view.frame.width / 3.15)
        }
        
        
        // MARK: - CollectionView Delegate Methods --------
    
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            let paintingDetailVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PaintingDetailVC") as! PaintingDetailVC
            paintingDetailVC.paintingIndex = indexPath.item
            paintingDetailVC.modalTransitionStyle = .flipHorizontal
            present(paintingDetailVC, animated: true, completion: nil)
        }
        
        
}
