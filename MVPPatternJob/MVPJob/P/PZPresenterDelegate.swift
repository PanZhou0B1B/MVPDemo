//
//  PZPresenterDelegate.swift
//  MVPPatternJob
//
//  Created by Erik on 17/3/27.
//  Copyright © 2017年 Erik. All rights reserved.
//

import Foundation

@objc protocol PZPresenterDelegate: NSObjectProtocol {

    @objc optional func attachViewDelegate(view: PZViewProtocol)
    @objc optional func detachViewDelete()
}
