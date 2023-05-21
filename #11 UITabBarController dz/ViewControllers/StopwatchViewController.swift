//
//  StopwatchViewController.swift
//  #11 UITabBarController dz
//
//  Created by Andrew on 17/05/23.
//

import UIKit

class StopwatchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: .custom)

        button.frame = CGRect(x: 248, y: 378, width: 100, height: 100)
        button.backgroundColor = UIColor.clear
        button.layer.cornerRadius = button.frame.size.width / 2
        button.layer.borderWidth = 2.0
        button.layer.borderColor = #colorLiteral(red: 0.006788089406, green: 0.3030053973, blue: 0.07091411203, alpha: 1)

//        let ringPath = UIBezierPath(ovalIn: CGrRect(x: 10, y: 10, width: button.frame.size.width - 20, height: button.frame.size.height - 20))
//        let ringLayer = CAShapeLayer()
//        ringLayer.path = ringPath.cgPath
//        ringLayer.fillColor = UIColor.clear.cgColor
//        button.layer.addSublayer(ringLayer)

        view.addSubview(button)
        
        let button1 = UIButton(type: .custom)

        button1.frame = CGRect(x: 51, y: 378, width: 100, height: 100)
        button1.backgroundColor = UIColor.clear
        button1.layer.cornerRadius = button.frame.size.width / 2
        button1.layer.borderWidth = 2.0
        //button.layer.borderColor = UIColor.white.cgColor
        button1.layer.borderColor = #colorLiteral(red: 0.366443038, green: 0.3565276861, blue: 0.3350855112, alpha: 1)
        view.addSubview(button1)
    }
}
