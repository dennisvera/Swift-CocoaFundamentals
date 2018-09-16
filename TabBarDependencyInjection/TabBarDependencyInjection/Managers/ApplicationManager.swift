//
//  ApplicationManager.swift
//  TabBarDependencyInjection
//
//  Created by Dennis Vera on 9/16/18.
//  Copyright © 2018 Dennis Vera. All rights reserved.
//

import Foundation

class ApplicationManager {
    
    var versionAsString: String {
        guard let infoDictionary = Bundle.main.infoDictionary else {
            return "-"
        }
        
        return infoDictionary["CFBundleShortVersionString"] as? String ?? "-"
    }
    
}
