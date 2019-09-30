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
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var explanationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel?.text = labelTitle
        explanationLabel?.text = labelExplanation
    }

    @IBAction func close() {
        self.dismiss(animated: false, completion: nil)
    }
}
