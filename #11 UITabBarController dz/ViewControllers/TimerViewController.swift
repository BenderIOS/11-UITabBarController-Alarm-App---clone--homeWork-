//
//  TimerViewController.swift
//  #11 UITabBarController dz
//
//  Created by Andrew on 17/05/23.
//

import UIKit

class TimerViewController: UIViewController {
    
    @IBOutlet weak var timerPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createSettingButton()
        
        timerPicker.delegate = self
        timerPicker.dataSource = self
        timerPicker.tintColor = .white
    }
    
    private func createSettingButton () {
        let button = UIButton(type: .custom)

        button.frame = CGRect(x: 248, y: 378, width: 100, height: 100)
        button.backgroundColor = UIColor.clear
        button.layer.cornerRadius = button.frame.size.width / 2
        button.layer.borderWidth = 2.0
        button.layer.borderColor = #colorLiteral(red: 0.006788089406, green: 0.3030053973, blue: 0.07091411203, alpha: 1)

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

extension TimerViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int { 3 }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0: return 12
        case 1: return 60
        case 2: return 60
        default: return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(row)"
    }
}
