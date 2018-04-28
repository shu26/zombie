//
//  TopViewController.swift
//  zombie
//

import UIKit

class TopViewController: UIViewController {
    
    
    // MARK: Property
    
    /// トップビュー
    var topView: UIView!
    /// 進むボタン
    var nextButton: UIButton!
    
    
    // MARK: Function

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // トップビュー
        topView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        topView.backgroundColor = UIColor.white
        self.view.addSubview(topView)
       
        // 進むボタン
        nextButton = UIButton(frame: CGRect(x: 200 / 2, y: 600 / 2, width: 200 / 2, height: 100 / 2))
        nextButton.setTitle("進む", for: .normal)
        nextButton.backgroundColor = UIColor.red
        nextButton.addTarget(self, action: #selector(goToNext), for: .touchUpInside)
        topView.addSubview(nextButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// 進むボタンを押した時の処理
    @objc func goToNext(){
        
        let nextViewController = NextViewController()
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }


}

