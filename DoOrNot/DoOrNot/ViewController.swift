//
//  ViewController.swift
//  DoOrNot
//
//  Created by yusuke_kimoto on 2015/11/09.
//  Copyright © 2015年 yusuke kimoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var doOrNotLabel: UILabel!
    @IBOutlet weak var judgeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // ラベルの作成
        doOrNotLabel.textColor = UIColor.whiteColor()
        //doOrNotLabel.font = UIFont(name: "HiraKakuProN-w6", size: 20)
        
        //ボタンの設定
        judgeButton.layer.cornerRadius = 6
        judgeButton.addTarget(self, action: "didTouchButton:", forControlEvents: UIControlEvents.TouchUpInside)
        
        //背景の設定
        //self.view.backgroundColor = UIColor(red: 0.0, green: 102.0 / 255, blue: 204.0 / 255, alpha: 1.0)
        //ラベルの作成
        /*
        let label = UILabel()
        label.text = "やるorやらない"
        label.textColor = UIColor.whiteColor()
        label.font = UIFont(name: "HiraKakuProN-W6", size: 20)
        label.sizeToFit()
        label.center = self.view.center
        self.view.addSubview(label)
*/
        
        //ボタンの作成
        /*
        let button = UIButton()
        button.setTitle("決める！", forState: UIControlState.Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        button.sizeToFit()
        button.center = CGPoint(x: self.view.center.x, y: doOrNotLabel.frame.maxY + 30)
        button.addTarget(self, action: "didTouchButton:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
*/
    }
    
    //決めるボタンが押された時のメソッド
    func didTouchButton(sender: UIButton){
        self.performSegueWithIdentifier("ModalSegue", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

