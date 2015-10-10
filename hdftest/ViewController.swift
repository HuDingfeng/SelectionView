//
//  ViewController.swift
//  hdftest
//
//  Created by 胡定锋Mac on 15/10/10.
//  Copyright © 2015年 hdf-mac. All rights reserved.
//

import UIKit

var selectview = SelectionView()
var haveSelectview = false
class ViewController: UIViewController,SelectionViewDelegate {


    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()
        creatSegmentControl()
        creatSelect()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func creatSegmentControl(){
        var array = ["1","2","3"]
        var colorArr = [UIColor.redColor(),UIColor.greenColor(),UIColor.blueColor()]
//        let button1:UIButton = UIButton(frame: CGRectMake(0, 40, self.view.frame.size.width/3, 40))
////        button1.titleLabel!.text = array[0];
//        button1.setTitle(array[0], forState: UIControlState.Normal)
//        button1.backgroundColor = UIColor.redColor()
//        button1.addTarget(self, action: "click:", forControlEvents: UIControlEvents.TouchUpInside)
//
//        let button2:UIButton = UIButton(frame: CGRectMake(self.view.frame.size.width/3, 40, self.view.frame.size.width/3, 40))
//        button2.setTitle(array[1], forState: UIControlState.Normal)
//        button2.backgroundColor = UIColor.blackColor()
//        
//        let button3:UIButton = UIButton(frame: CGRectMake(self.view.frame.size.width*2/3,40, self.view.frame.size.width/3, 40))
//        button3.setTitle(array[2], forState: UIControlState.Normal)
//        button3.backgroundColor = UIColor.blueColor()
//        
//        self.view.addSubview(button1)
//        self.view.addSubview(button2)
//        self.view.addSubview(button3)
        for var i = 0 ; i<array.count ;i++ {
            
            let button:UIButton = UIButton(frame: CGRectMake(CGFloat(i)*self.view.frame.size.width/3, 40, self.view.frame.size.width/3, 40))
            button.setTitle(array[i], forState: UIControlState.Normal)
            button.backgroundColor = colorArr[i]
            button.addTarget(self, action: "click:", forControlEvents: UIControlEvents.TouchUpInside)
            
            self.view.addSubview(button)
        }
    }
    func creatSelect(){
        selectview = NSBundle.mainBundle().loadNibNamed("SelectionView", owner: nil , options: nil)[0] as! SelectionView
        selectview.delegate = self
        selectview.frame = CGRectMake(0, -1000, self.view.frame.size.width, 250)
        self.view.addSubview(selectview)
    }
    //func click
    
    func click(sender:UIButton!){
        if !haveSelectview {
            showSelectView()
        }else{
            hideSelectView()
        }
    }
    func hideSelectView(){
        haveSelectview = false
        selectview.frame = CGRectMake(0, -1000, self.view.frame.size.width, 250)
    }
    func showSelectView(){
        haveSelectview = true
        selectview.frame = CGRectMake(0, 80, self.view.frame.size.width, 250);
    }
    
    func choose(info: String!) {
        let alert = UIAlertView()
        alert.title = "提示"
        alert.message = "选择了\(info)"
        alert.addButtonWithTitle("确定")
        alert.show()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

