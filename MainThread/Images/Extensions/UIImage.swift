//
//  UIImage.swift
//  Images
//
//  Created by Dennis Vera on 10/1/18.
//  Copyright © 2018 Cocoacasts. All rights reserved.
//

import UIKit

extension UIImage {
    
    func resizedImage(with size: CGSize) -> UIImage? {
        // Create Graphics Context
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        // Draw Image in Grpahics Context
        draw(in: CGRect(origin: .zero, size: size))
        
        // Create Image from Current Graphics Context
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
        
        // Clean Up Graphics Context
        UIGraphicsEndImageContext()
        
        return resizedImage
    }
    
}
