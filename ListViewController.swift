//
//  ListViewController.swift
//  点击tableView
//
//  Created by 方瑾 on 2019/2/7.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    

    @IBOutlet weak var listTableView: UITableView!
    var nameList : [(name:String,phone:String)] = [("翠花","01234"),
                                                   ("如花","56789"),
                                                   ("小花","16783")]
    override func viewDidLoad() {
        super.viewDidLoad()
        listTableView.delegate = self
        listTableView.dataSource = self

       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToNameSegue" {
            let nextPageVC = segue.destination as! NameViewController
            let row = sender as! Int
            nextPageVC.lastPageInfo = nameList[row]
        }
    }
    


    

}
extension ListViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath) as! NameTableViewCell
        cell.nameLable.text = nameList[indexPath.row].name
        return cell
    }
    //设置高
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(nameList[indexPath.row])
        performSegue(withIdentifier: "ToNameSegue", sender: indexPath.row)
    }
}
