//
//  MyNavigationViewController.swift
//  TodayNewsFirst
//
//  Created by lalala on 2017/10/23.
//  Copyright © 2017年 吕山虎. All rights reserved.
//

import UIKit

class MyNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let navBar = UINavigationBar.appearance()
        navBar.barTintColor = UIColor.white
        navBar.tintColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.7)
        navBar.titleTextAttributes = [.font: UIFont.systemFont(ofSize: 17)]
        //创建全局的手势
        initGlobalPan()
    }
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "lefterbackicon_titlebar_24x24_"), style: .plain, target: self, action: #selector(navigationBack))
        }
        super.pushViewController(viewController, animated: true)
    }
    @objc private func navigationBack() {
        popViewController(animated: true)
    }
    @objc override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension MyNavigationViewController: UIGestureRecognizerDelegate {
    //全局拖拽手势
    fileprivate func initGlobalPan(){
        //创建pan 手势
        let target = interactivePopGestureRecognizer?.delegate
        let globalPan = UIPanGestureRecognizer.init(target: target, action: Selector(("handleNavigationTransition:")))
        globalPan.delegate = self
        self.view.addGestureRecognizer(globalPan)
        //禁止系统的手势
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
    }
    //什么时候支持全屏手势
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
         return self.childViewControllers.count != 1
    }
}
