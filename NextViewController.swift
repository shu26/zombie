//
//  NextViewController.swift
//  zombie
//

import UIKit

class NextViewController: UIViewController{
    
    
    // MARK: Property
    
    /// ネクストビュー
    var nextView: UIView!
    /// タイマー
    var timer: Timer!
    /// 経過時間を表示するラベル
    var label: UILabel!
    /// 経過時間をカウント
    var count = 0
    
    
    // MARK: Function
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // ネクストビュー
        nextView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        nextView.backgroundColor = UIColor.white
        self.view.addSubview(nextView)
        
        // 0.5秒ごとにstartTimer()を呼ぶ
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.startTimer), userInfo: nil, repeats: true)

        // ラベル
        label = UILabel(frame: CGRect(x: 200 / 2, y: 300 / 2, width: 200 / 2, height: 100 / 2))
        label.text = String(count)
        nextView.addSubview(label)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// 経過時間をカウントして表示
    /// 0.5秒ごとに呼び出される
    @objc func startTimer() {
        count+=1
        label.text = String(count)
    }
        
    /// 画面が閉じる直前に呼ばれる
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // タイマーを停止する
        if let workingTimer = timer{
            workingTimer.invalidate()
        }
        
        print("NextViewControllerを閉じる")
    }
    
    /// クラスのインスタンスが破棄されたときに呼ばれる
    /// この部分が呼ばれていないとメモリ解放が適切に行われていない可能性が高い
    deinit {
        print("NextViewControllerがdeinitされました")
    }
    
    
    
}
