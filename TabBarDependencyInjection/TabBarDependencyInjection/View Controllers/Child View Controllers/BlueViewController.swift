//
//  BlueViewController.swift
//  TabBarDependencyInjection
//
//  Created by Dennis Vera on 9/16/18.
//  Copyright © 2018 Dennis Vera. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {
    
    // MARK: - Outlets

    @IBOutlet var versionLabel: UILabel!
    
    // MARK: -
    
    var applicationManager: ApplicationManager?
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup View
        setupView()
    }
    
    // MARK: - View Methods
    
    private func setupView() {
        // Configure Version Label
        versionLabel.text = applicationManager?.versionAsString
    }

}
