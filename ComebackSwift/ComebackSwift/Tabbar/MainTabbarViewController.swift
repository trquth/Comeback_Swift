//
//  MainTabbarViewController.swift
//  projectX_Swift
//
//  Created by mac on 1/4/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class MainTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = UIColor.white
        
       configController()
    }
    
    func configController(){
        
        let compassVC = UINavigationController(rootViewController: CompassViewController())
        compassVC.tabBarItem.image = UIImage(named: "compass")?.withRenderingMode(.alwaysOriginal)
        compassVC.tabBarItem.selectedImage = UIImage(named: "compass-selected")?.withRenderingMode(.alwaysOriginal)
        
        let locationVC = UINavigationController(rootViewController: LocationViewController())
        locationVC.tabBarItem.image = UIImage(named: "location")?.withRenderingMode(.alwaysOriginal)
        locationVC.tabBarItem.selectedImage = UIImage(named: "location-selected")?.withRenderingMode(.alwaysOriginal)
        
        let home = UINavigationController(rootViewController: HomeViewController())
        home.tabBarItem.image = UIImage(named: "home")?.withRenderingMode(.alwaysOriginal)
        home.tabBarItem.selectedImage = UIImage(named: "home-selected")?.withRenderingMode(.alwaysOriginal)
        
        let articleVC = UINavigationController(rootViewController: ArticleViewController())
        articleVC.tabBarItem.image = UIImage(named: "news")?.withRenderingMode(.alwaysOriginal)
        articleVC.tabBarItem.selectedImage = UIImage(named: "news-selected")?.withRenderingMode(.alwaysOriginal)
        
        let favourVC = UINavigationController(rootViewController: FavourViewController())
        favourVC.tabBarItem.image = UIImage(named: "heart")?.withRenderingMode(.alwaysOriginal)
        favourVC.tabBarItem.selectedImage = UIImage(named: "heart-selected")?.withRenderingMode(.alwaysOriginal)
        
        viewControllers  = [compassVC, locationVC, home, articleVC, favourVC]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
