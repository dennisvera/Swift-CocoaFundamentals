//
//  RedViewController.swift
//  TabBarDependencyInjection
//
//  Created by Dennis Vera on 9/16/18.
//  Copyright © 2018 Dennis Vera. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    
    // MARK: - Properties
    
    var color: UIColor = .white
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup View
        setupView()
    }
    
    // MARK: - View Methods
    
    private func setupView() {
        // Configure View
        view.backgroundColor = color
    }
    
}
