//
//  AdvertiseViewController.swift
//  TodayNewsFirst
//
//  Created by lalala on 2017/10/23.
//  Copyright © 2017年 吕山虎. All rights reserved.
//

import UIKit

class AdvertiseViewController: UIViewController {
    //延迟几秒
    private var time: TimeInterval = 4.0
    
    private var countDownTimer: Timer?
    
    @IBOutlet weak var timeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        countDownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        
        
    }
    @objc func updateTime() {
        if time == 0 {
             countDownTimer?.invalidate()
            
            
        } else {
            time -= 1
            timeButton.setTitle(String.init(format: "%.0f s 跳过", time), for: .normal)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
