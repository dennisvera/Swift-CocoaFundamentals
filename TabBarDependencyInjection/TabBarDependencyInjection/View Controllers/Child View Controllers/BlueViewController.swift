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
    
    @IBOutlet var titleLabel: UILabel!
    
    // MARK: -
    
    var viewModel: BlueViewModel?
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup View Model
        setupViewModel(with: viewModel)
    }
    
    // MARK: - Helper Methods
    
    private func setupViewModel(with viewModel: BlueViewModel?) {
        guard let viewModel = viewModel else { return }
        
        // Configure Label
        titleLabel.text = viewModel.title
        titleLabel.font = UIFont (name: "HelveticaNeue-Bold", size: 40)
        titleLabel.textColor = .white
        
        // Configure View Background Color
        view.backgroundColor = viewModel.color
    }
    
}
