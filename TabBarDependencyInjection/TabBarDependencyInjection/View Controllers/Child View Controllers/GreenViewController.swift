//
//  GreenViewController.swift
//  TabBarDependencyInjection
//
//  Created by Dennis Vera on 9/16/18.
//  Copyright © 2018 Dennis Vera. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet var titleLabel: UILabel!
    
    // MARK: -
    
    var viewModel: GreenViewModel?
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup View Model
        setupViewModel(with: viewModel)
    }
    
    // MARK: - Helper Methods
    
    private func setupViewModel(with viewModel: GreenViewModel?) {
        guard let viewModel = viewModel else {
            return
        }
        
        // Configure Title Label
        titleLabel.text = viewModel.title
    }
    

}
