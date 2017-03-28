//
//  ViewController.swift
//  MVPPatternJob
//
//  Created by Erik on 17/3/25.
//  Copyright © 2017年 Erik. All rights reserved.
//

import UIKit

class ViewController: UIViewController, PZViewProtocol,UITableViewDelegate,UITableViewDataSource {

    var tableView:UITableView?
    
    var demoPresenter: DemoPresenter?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView = UITableView.init(frame:CGRect(x:0, y:0,width:200,height:400))
        tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        tableView?.delegate = self
        tableView?.dataSource = self
        
        self.view.addSubview(tableView!)
        
        demoPresenter = DemoPresenter.init()
        demoPresenter?.attachViewDelegate(view: self);
        demoPresenter?.requestModels();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension ViewController{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = demoPresenter?.demoModels?.count {
            return count
        }
        return 0
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
        let cell:UITableViewCell = self.tableView!.dequeueReusableCell(withIdentifier: "cellId") as UITableViewCell!
        
        // set the text from the data model
        let model = demoPresenter?.demoModels?[indexPath.row] as! DemoModel
        
        cell.textLabel?.text = model.firstName + model.lastName
        
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
}


extension ViewController{
    func renderView(model: Any) -> Void{
        let retModel = model as! Array<Any>
        
        demoPresenter?.demoModels = retModel;
        tableView?.reloadData()
    }
    
    //loading view
    func loading() -> Void{
        print("loading")
    }
    func finishLoading() -> Void{
        print("finishi-====loading")
    }
    func endLoading(error: Error) -> Void{
        print("end-====loading")
    }
}
