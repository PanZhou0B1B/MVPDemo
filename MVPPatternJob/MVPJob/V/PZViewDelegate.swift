//
//  PZViewDelegate.swift
//  MVPPatternJob
//
//  Created by Erik on 17/3/25.
//  Copyright © 2017年 Erik. All rights reserved.
//

import Foundation

@objc protocol PZViewProtocol: NSObjectProtocol{
    
    @objc optional func renderView(model: Any) -> Void
    
    //loading view
    @objc optional func loading() -> Void
    @objc optional func finishLoading() -> Void
    @objc optional func endLoading(error: Error) -> Void
}
