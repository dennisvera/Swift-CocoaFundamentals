//
//  ImageTableViewCell.swift
//  Images
//
//  Created by Bart Jacobs on 31/07/2018.
//  Copyright © 2018 Cocoacasts. All rights reserved.
//

import UIKit

final class ImageTableViewCell: UITableViewCell {
    
    // MARK: - Static Properties
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    // MARK: - Outlets
    
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var thumbnailImageView: UIImageView!
    
    // MARK: - Public API
    
    func configure(with title: String, url: URL?) {
        // Configure Title Label
        titleLabel.text = title
        
        print(Date())
        print(Thread.isMainThread)
        
        // Load Data
        if let url = url {
            DispatchQueue.global(qos: .background).async {
                if let data = try? Data(contentsOf: url) {
                    let image = UIImage(data: data)
                    
                    DispatchQueue.main.async {
                        // Configure Thumbnail Image View
                        self.thumbnailImageView.image = image
                    }
                }
            }
        }
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        // Reset Thumnail Image View
        thumbnailImageView.image = nil
    }
    
}
