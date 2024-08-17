//
//  ViewController.swift
//  NetflixApp
//
//  Created by Mahsa on 8/17/24.
//

import UIKit

class MainTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        
        setViewControllers([vc1 , vc2 , vc3 , vc4],
                           animated: true)
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.rectangle.on.rectangle.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass.circle")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.circle.fill")
        
        vc1.title = "Home"
        vc2.title = "Upcoming"
        vc3.title = "Search"
        vc4.title = "Downloads"
    }


}

