//
//  NameViewController.swift
//  点击tableView
//
//  Created by 方瑾 on 2019/2/7.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {

   
    @IBOutlet weak var detailLabel: UILabel!
    var lastPageInfo:(name:String,phone:String) = ("","")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = "\(lastPageInfo.name),\(lastPageInfo.phone)"

       
    }
    

    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
