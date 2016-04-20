//
//  ProximitySettingViewController.swift
//  openSensorApp
//
//  Created by ouba on 2016/04/08.
//  Copyright © 2016年 oubakiou. All rights reserved.
//

import UIKit

@objc(ProximitySettingViewController)
class ProximitySettingViewController: UIViewController, SensorSettingViewControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func selectActionButtonTapped() {
        saveEditingSensorSetting(ProximitySettings(
            sensorName: "Proximity",
            sensorSettingDisplayName: getSensorSettingDisplayName()
        ))
        navigationController?.pushViewController(SelectActionViewController(), animated: true)
    }
    
    internal func getSensorSettingDisplayName() -> String {
        return "Proximity"
    }

}
