//
//  customTabbar.swift
//  custom_tabber_demo
//
//  Created by Edwin on 2018/6/10.
//  Copyright © 2018年 Edwin. All rights reserved.
//

import UIKit

class customTabbar: UITabBarController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tabBar.heightAnchor.constraint(equalToConstant: 60)
//        let centerButton = createCenterButton()
//        centerButton.translatesAutoresizingMaskIntoConstraints = false
        
//        self.tabBar.addSubview(centerButton)
//        self.view.addSubview(centerButton)
//        self.tabBarController?.tabBar.tintColor = UIColor.red
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = UIColor.white
        viewControllers = [createViewController(title: "Wallet", imageName: "home"),createViewController(title: "PointsCard", imageName: "mail"),createViewController(title: "", imageName: "example",enable: "false"),createViewController(title: "Promotion", imageName: "mail"),createViewController(title: "Event", imageName: "speaker")]
        // Do any additional setup after loading the view.
                tabBar.shadowImage = UIImage(named: "Transparent")
                tabBar.backgroundImage = UIImage(named: "background_dark")
//        tabBar.barStyle = .black
        
        setupMiddleButton()
//        tabBar
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    private func createViewController(title:String,imageName:String,enable:String = "true") -> UINavigationController{
        
    
        let viewController = UIViewController()
        if enable == "false"{
            let navController = UINavigationController(rootViewController: ViewController())
            navController.tabBarItem.title = title
            let image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
//            navController.tabB/
            navController.tabBarItem.image = image
            navController.tabBarItem.selectedImage = UIImage(named: "account")?.withRenderingMode(.alwaysTemplate)
            return navController
        }
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(.alwaysTemplate)
        navController.tabBarItem.selectedImage = UIImage(named: "account")?.withRenderingMode(.alwaysTemplate)
        return navController
    }
    
    private func createCenterButton() -> UIButton{
        let image = #imageLiteral(resourceName: "account")
        let button = UIButton()
        
        button.frame = CGRect(x: self.tabBar.center.x - image.size.width/2, y: self.tabBar.center.y - image.size.height/2, width: image.size.width, height: image.size.height)
        
        let heightDifference = image.size.height - self.tabBar.frame.height
        if heightDifference < 0{
            button.center = self.tabBar.center
        }else{
            var center = self.tabBar.center
            center.y = center.y - heightDifference/2.0
            button.center = center
        }
        button.setImage(image, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        
        return button
        
    }
    func setupMiddleButton() {
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
        
        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = view.bounds.height - menuButtonFrame.height - 10
        menuButtonFrame.origin.x = view.bounds.width/2 - menuButtonFrame.size.width/2
        menuButton.frame = menuButtonFrame
        
//        menuButton.backgroundColor = UIColor.white
        menuButton.layer.cornerRadius = menuButtonFrame.height/2
        view.addSubview(menuButton)
        menuButton.layer.borderWidth = 2
        menuButton.layer.borderColor = UIColor.white.cgColor
        menuButton.setImage(UIImage(named: "account"), for: .normal)
        menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)
        menuButton.backgroundColor = UIColor.green
        
        view.layoutIfNeeded()
    }
    @objc func menuButtonAction(sender:UIButton){
        selectedIndex = 2
        let animation = CAKeyframeAnimation(keyPath: "transform.scale")
        animation.values = [1.0,1.3,0.9,1.15,0.95,1.02,1.0]
        animation.duration = 1;
        animation.calculationMode = kCAAnimationCubic;
        sender.layer.add(animation, forKey: nil)
    }
}
