//
//  DemoPresenter.swift
//  MVPPatternJob
//
//  Created by Erik on 17/3/25.
//  Copyright © 2017年 Erik. All rights reserved.
//

import Foundation
class DemoPresenter: PZBasePresenter{
    private var demoModel: DemoModel?
    public var demoModels: Array<Any>?
    
   
    
    override init() {
        super.init()
    }
    init(demoModel:DemoModel) {
        self.demoModel = demoModel
        super.init();
    }
    
    func requestModels() -> Void {
        viewDelegate?.loading!()
        DemoModel.requestUsers { (response,error) in
            if let ret = response{
                self.viewDelegate?.finishLoading!()
                self.viewDelegate?.renderView!(model: ret)
            }else{
                self.viewDelegate?.endLoading!(error: error!)
            }
        }
    }
}
