//
//  SensorSettingViewControllerProtocol.swift
//  openSensorApp
//
//  Created by ouba on 2016/04/05.
//  Copyright © 2016年 oubakiou. All rights reserved.
//

import Foundation
import UIKit

protocol SensorSettingViewControllerProtocol {
    func getSensorSettingDisplayName() -> String
    func saveEditingSensorSetting(editingSensorSetting: Dictionary<String, AnyObject>)
}

extension SensorSettingViewControllerProtocol {
    internal func saveEditingSensorSetting(editingSensorSetting: Dictionary<String, AnyObject>) {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.editingSensorSetting = editingSensorSetting
    }
}