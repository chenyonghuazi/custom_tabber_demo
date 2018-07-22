//
//  ViewController.swift
//  custom_tabber_demo
//
//  Created by Edwin on 2018/6/10.
//  Copyright © 2018年 Edwin. All rights reserved.
//

import UIKit
import AZTabBar

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.title = "work"
//        self.title = "test"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func didSelectMiddleMenu(sender:UIButton){
        
    }


}
//extension ViewController: AZTabBarDelegate{
//
//    func tabBar(_ tabBar: AZTabBarController, didSetupButtonAtIndex index: Int, button: UIButton) {
//        if index == 2 {
//            button.isHidden = true
//            button.isEnabled = false
//        }
//    }
//    func didSelectMiddleMenu(sender: UIButton){
//        tabController.setIndex(2, animated: true)
//    }
//}
class RoundedButton: UIButton{
    
    override var backgroundColor: UIColor?{
        get{
            return UIColor(cgColor: layer.backgroundColor ?? UIColor.clear.cgColor)
        }set{
            layer.backgroundColor = newValue?.cgColor
        }
    }
    
    open var transformScale: CGFloat = 0.9
    
    private var didSetupDesign = false
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if !didSetupDesign{
            didSetupDesign = true
            design()
        }
    }
    
    func design(){
        layer.cornerRadius = frame.size.height/2
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowRadius = 7
        layer.shadowOpacity = 0.1
        layer.shadowColor = UIColor.black.cgColor
    }
    
    override var isHighlighted: Bool{
        set{
            UIView.animate(withDuration: 0.1) { [weak self] in
                let scale = self?.transformScale ?? 0.9
                self?.transform = newValue ? CGAffineTransform(scaleX: scale, y: scale) : .identity
            }
            super.isHighlighted = newValue
        }get{
            return super.isHighlighted
        }
    }
}


