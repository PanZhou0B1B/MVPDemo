//
//  PZBasePresenter.swift
//  MVPPatternJob
//
//  Created by Erik on 17/3/25.
//  Copyright © 2017年 Erik. All rights reserved.
//

import UIKit

class PZBasePresenter: NSObject {

    //var model: Any? //-->model layer
    public weak var viewDelegate: PZViewProtocol?//--->View layer
}

extension PZBasePresenter: PZPresenterDelegate{
    func attachViewDelegate(view: PZViewProtocol) {
        viewDelegate = view
    }
    func detachViewDelete(){
        viewDelegate = nil
    }
}
