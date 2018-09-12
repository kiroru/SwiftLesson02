//
//  DetailViewController.swift
//  SwiftLesson02
//
//  Created by ueda on 2018/08/24.
//  Copyright © 2018年 kohei.ueda. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // 問：labelを外して、titleやdescriptionと宣言するとどうなるだろうか？
    // 何故この様なことが起こるのだろうか？
    var labelTitle: String?
    var labelExplanation: String?
    
    @IBOutlet var tv1:UILabel?
    @IBOutlet var tv2:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tv1?.text = labelTitle
        tv2?.text = labelExplanation
    }

    @IBAction func close() {
        self.dismiss(animated: false, completion: nil)
    }
}
