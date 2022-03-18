//
//  ViewController.swift
//  CFiAdBottomScrollViewSwiftSample
//
//  Created by Eric Chen on 2022/3/18.
//

import UIKit
import iMFAD
class ViewController: UIViewController {
    
    var adbottomscrollview: MFAdBottomScrollView?
    var scroll:UIScrollView!
    var fullsize:CGSize!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scroll = UIScrollView()
        fullsize = UIScreen.main.bounds.size
        scroll.frame = CGRect(x: 0, y: 20, width: fullsize.width, height: fullsize.height - 20);
        scroll.contentSize = CGSize(width: fullsize.width, height: fullsize.height*3);
        scroll.isScrollEnabled = true;
        self.view.addSubview(scroll);
        
        adbottomscrollview = MFAdBottomScrollView.init()
        adbottomscrollview?.bannerId = "13148"
        adbottomscrollview?.delegate = self
        adbottomscrollview?.debugInfo(true)
        adbottomscrollview?.setScrollview(scroll)
        adbottomscrollview?.requestAd()
        self.view.addSubview(adbottomscrollview!)
    }
}


extension ViewController:MFAdBottomScrollViewDelegate{
    func onSuccessToMFAdBottomScrollView() {
        print("onSuccessToMFAdBottomScrollView");
        adbottomscrollview?.show()
        
    }
    
    func onFailToMFAdBottomScrollView() {
        print("onFailToMFAdBottomScrollView");
    }
    
    func onClickToMFAdBottomScrollView() {
        print("onClickToMFAdBottomScrollView");
    }
    
    func onCloseToMFAdBottomScrollView() {
        print("onCloseToMFAdBottomScrollView");
    }
}

