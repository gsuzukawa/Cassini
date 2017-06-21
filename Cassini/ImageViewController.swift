//
//  ImageViewController.swift
//  Cassini
//
//  Created by Gregg on 6/21/17.
//  Copyright © 2017 Suzukawa Solutions. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    var imageURL: URL? {
        didSet {
            image = nil
            fetchImage()
        }
    }
    
    private func fetchImage() {
        if let url = imageURL {
            let urlContents = try? Data(contentsOf: url)
            if let imageData = urlContents {
                image = UIImage(data: imageData)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        imageURL = 
    }
    
    private var imageView = UIImageView()
    
    private var image: UIImage? {
        get {
            return imageView.image
        }
        
        set {
            imageView.image = newValue
            imageView.sizeToFit()
        }
    }

}
