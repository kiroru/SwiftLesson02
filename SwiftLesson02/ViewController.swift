//
//  ViewController.swift
//  SwiftLesson02
//
//  Created by ueda on 2018/08/24.
//  Copyright © 2018年 kohei.ueda. All rights reserved.
//

// Image Viewの画像は適当な物を使ってください。

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    class Item : NSObject {
        let title: String
        let explanation: String
        
        init(title:String, explanation:String) {
            self.title = title
            self.explanation = explanation
        }
    }
    
    var items:[Item] = []
    
    @IBOutlet var tableView:UITableView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ダミーデータ作成
        for i in 1...20 {
            items.append(Item(title: "タイトル\(i)", explanation: "説明\(i)"))
        }
        
        tableView?.dataSource = self
        tableView?.delegate = self
    }
    
    // データを渡す
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detail" {
            let row = (tableView?.indexPathForSelectedRow?.row)!
            let item = items[row]
            let controller = segue.destination as! DetailViewController
            controller.labelTitle = item.title
            controller.labelExplanation = item.explanation
        }
    }
    
    
    // MARK: - UITableViewDatasource
    
    // Sectionの数を決める
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // 一つのSectionの中に入れるCellの数を決める
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    // Cellの内容を決める
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell")!
        let item = items[indexPath.row]
        
        let titleLabel = cell.viewWithTag(2) as! UILabel
        titleLabel.text = item.title
        
        let explanationLabel = cell.viewWithTag(3) as! UILabel
        explanationLabel.text = item.explanation
        
        return cell
    }
    
    
    // MARK: - UITableViewDelegate
    
    // Cellの高さを決める
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
}


