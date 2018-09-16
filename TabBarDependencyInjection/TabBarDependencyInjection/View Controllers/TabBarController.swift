//
//  TabBarController.swift
//  TabBarDependencyInjection
//
//  Created by Dennis Vera on 9/16/18.
//  Copyright © 2018 Dennis Vera. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    // MARK: - Properties
    
    var rootTabBarController: TabBarController?
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupChildViewControllers()
    }
    
    private func setupChildViewControllers() {
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            var childViewController: UIViewController?
            
            if let navigationController = viewController as? UINavigationController {
                childViewController = navigationController.viewControllers.first
            } else {
                childViewController = viewController
            }
            
            switch childViewController {
            case let viewController as RedViewController:
                viewController.title = "Red"
                viewController.color = .red
            case let viewController as GreenViewController:
                viewController.title = "Green"
                 let viewModel = GreenViewModel()
                viewController.viewModel = viewModel
            case let viewController as BlueViewController:
                viewController.title = "Blue"
                let viewModel = BlueViewModel()
                viewController.viewModel = viewModel
            default:
                break
            }
        }
    }

}
