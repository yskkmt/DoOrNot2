
//
//  ResultViewController.swift
//  DoOrNot
//
//  Created by yusuke_kimoto on 2015/11/09.
//  Copyright © 2015年 yusuke kimoto. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    //引くor引かないを決める
    let judgeLabel = UILabel()

    //ビューが表示された時の処理
    override func viewDidLoad() {
        super.viewDidLoad()
        //戻るボタンの設定
        backButton.layer.cornerRadius = 6
        //戻るボタンを利用不可に設定
        backButton.enabled = false
        //背景を設定
        //self.view.backgroundColor = UIColor(red: 1.0, green: 153.0 / 255, blue: 0.0, alpha: 1.0)
        
        //1秒後にlabelを表示させる
        NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "showLabel:", userInfo: nil, repeats: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    //フェードインの処理
    func fadein(){
        print("処理実行")
        UIView.animateWithDuration(5, animations: { () -> Void in
            self.view.backgroundColor = UIColor.greenColor()
        })
    }
*/
    
    //ビューが表示されてから数秒後にLabelを表示する処理
    func showLabel(sender: NSTimer){
        print("1秒後に処理をしました")
        //ランダム関数を使用して２つの数をつくる
        let number = arc4random() % 2
        print("\(number)")
        
        // numberが0の時に1「やる！」を表示
        if number == 0 {
            makeLabel("引く!")
        } else {
            makeLabel("引かない!")
        }
        
        /*
//戻るボタンの作成
        let button = UIButton()
        button.setTitle("戻る", forState: UIControlState.Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        button.sizeToFit()
        button.center = CGPoint(x: self.view.center.x, y: judgeLabel.frame.maxY + 60)
        button.addTarget(self, action: "didTouchButton:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
*/
        
        //戻るボタンを押せるようにする
        backButton.enabled = true
        backButton.addTarget(self, action: "didTouchButton:", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    //戻るボタンが押された時の処理
    func didTouchButton(sender: UIButton){
        self.dismissViewControllerAnimated(true) { () -> Void in
            print("戻るボタンが押されました")
        }
    }
    
    //ラベルの作成
    func makeLabel(text: String){
        judgeLabel.text = text
        judgeLabel.textColor = UIColor.whiteColor()
        judgeLabel.font = UIFont(name: "HiraKakuProN-W6", size: 50)
        judgeLabel.sizeToFit()
        judgeLabel.center = self.view.center
        self.view.addSubview(judgeLabel)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
