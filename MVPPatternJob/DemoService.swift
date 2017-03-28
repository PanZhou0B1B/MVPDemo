//
//  DemoService.swift
//  MVPPatternJob
//
//  Created by Erik on 17/3/25.
//  Copyright © 2017年 Erik. All rights reserved.
//

import UIKit

extension DemoModel {

    static func requestUsers(block:@escaping ([DemoModel]?, _ error: Error?) -> Void) {
        let models =
            [DemoModel(firstName:"pan",lastName:"zhow",email:"233@gmail.com,age",age:"20"),
             DemoModel(firstName:"pan",lastName:"zhow",email:"233@gmail.com,age",age:"20")];
        let deadlineTime = DispatchTime.now() + .seconds(2)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
            block(models,nil)
        }
    }
}
