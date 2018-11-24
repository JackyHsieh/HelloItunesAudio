//
//  MainTabBarController.swift
//  HelloItunesAudio
//
//  Created by Jacky Hsieh on 2018/11/22.
//  Copyright © 2018 Jacky Hsieh. All rights reserved.
//

import UIKit

class MainTabBarController:UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UINavigationBar.appearance().prefersLargeTitles = true
        tabBar.tintColor = .orange
        setupViewController()
    }
    
    //MARK:- Setup Function
    
    func setupViewController() {
        let favoritesNavController = generateNavigationController(for: PodcastsSearchController(), title: "收藏", imageName: "favorites")
        
        let searchNavController = generateNavigationController(for: UIViewController(), title: "搜尋", imageName: "search")
        
        let downloadsNavController = generateNavigationController(for: UIViewController(), title: "下載", imageName: "downloads")
        
        viewControllers = [favoritesNavController ,searchNavController, downloadsNavController]

    }
    
    //MARK:- Helper Functions
    
    fileprivate func generateNavigationController(for rootViewController: UIViewController, title: String, imageName:String) -> UIViewController {
        
        let navController = UINavigationController(rootViewController: rootViewController)
//        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
    }
    
    
}
