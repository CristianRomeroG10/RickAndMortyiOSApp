//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Cristian guillermo Romero garcia on 25/01/23.
//

import UIKit

/// Controller to house tabs and root controllers
final class RMTabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViewControllers()
    }
    
    
    private func setUpViewControllers(){
       
        //MARK: Character
        let charactersVC = RMCharacterViewController()
        let charactersNavigation = UINavigationController(rootViewController: charactersVC)
        charactersNavigation.tabBarItem.title = "Characters"
        charactersNavigation.tabBarItem.image = UIImage(systemName: "person.circle")
        charactersNavigation.tabBarItem.selectedImage = UIImage(systemName: "person.circle.fill")
        //MARK: Location
        let locationVC = RMLocationViewController()
        let locationNavigation = UINavigationController(rootViewController: locationVC)
        locationNavigation.tabBarItem.title = "Location"
        locationNavigation.tabBarItem.image = UIImage(systemName: "globe.desk")
        locationNavigation.tabBarItem.selectedImage = UIImage(systemName: "globe.desk.fill")
        //MARK: Episode
        let episodeVC = RMEpisodeViewController()
        let episodeNavigation = UINavigationController(rootViewController: episodeVC)
        episodeNavigation.tabBarItem.title = "Episode"
        episodeNavigation.tabBarItem.image = UIImage(systemName: "tv.circle")
        episodeNavigation.tabBarItem.selectedImage = UIImage(systemName: "tv.circle.fill")
        //MARK:Settings
        let settingsVC = RMSettingsViewController()
        let settingsNavigation = UINavigationController(rootViewController: settingsVC)
        settingsNavigation.tabBarItem.title = "Settings"
        settingsNavigation.tabBarItem.image = UIImage(systemName: "gear.circle")
        settingsNavigation.tabBarItem.selectedImage = UIImage(systemName: "gear.circle.fill")
        
        charactersVC.title = "Characters"
        locationVC.title = "Location"
        episodeVC.title = "Episodes"
        settingsVC.title = "Settings"
        
        
        
        
        
        for nav in [charactersNavigation, locationNavigation, episodeNavigation, settingsNavigation]{
            nav.navigationBar.prefersLargeTitles = true
        }
        
        let homeViewControllers: [UIViewController] = [charactersNavigation, locationNavigation, episodeNavigation, settingsNavigation]
        self.viewControllers = homeViewControllers
        self.selectedIndex = 0
    }


}

