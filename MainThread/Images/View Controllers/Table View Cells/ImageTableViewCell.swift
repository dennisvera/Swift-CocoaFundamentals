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
    @IBOutlet private var activityIndicatorView: UIActivityIndicatorView!
    
    // MARK: - Properties
    
    private var dataTask: URLSessionDataTask?
    
    // MARK: - Public API
    
    func configure(with title: String, url: URL?, session: URLSession) {
        // Configure Title Label
        titleLabel.text = title
        
        print(Date())
        print(Thread.isMainThread)
        
        if let url = url {
            activityIndicatorView.startAnimating()
            
            let dataTask = session.dataTask(with: url) { [weak self] (data, response, error) in
                guard let data = data else { return }
                // Initialize Image
                let image = UIImage(data: data)?.resizedImage(with: CGSize(width: 200.0, height: 200.0))
                
                DispatchQueue.main.async {
                    // Configure Thumbnail Image View
                    self?.thumbnailImageView.image = image
                }
            }
            
            dataTask.resume()
            
            self.dataTask = dataTask
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        dataTask?.cancel()
        
        dataTask = nil
        
        // Reset Thumnail Image View
        thumbnailImageView.image = nil
    }
    
}
