//
//  ViewController.swift
//  calculator
//
//  Created by s20151104708 on 17/3/8.
//  Copyright © 2017年 s20151104708. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var flag = 0
    var s:String = ""

    @IBOutlet weak var x: UITextField!
   
    @IBAction func one(_ sender: UIButton) {

        x.text = x.text! + "1"
    }

    @IBAction func two(_ sender: UIButton) {
        x.text = x.text! + "2"
    }
    @IBAction func three(_ sender: UIButton) {
        x.text = x.text! + "3"
    }
    @IBAction func four(_ sender: UIButton) {
        x.text = x.text! + "4"
    }
    @IBAction func five(_ sender: UIButton) {
        x.text = x.text! + "5"
    }
    @IBAction func six(_ sender: UIButton) {
        x.text = x.text! + "6"
    }
    @IBAction func seven(_ sender: UIButton) {
        x.text = x.text! + "7"
    }
    @IBAction func eight(_ sender: UIButton) {
        x.text = x.text! + "8"
    }
    @IBAction func nine(_ sender: UIButton) {
        x.text = x.text! + "9"
    }
    @IBAction func zero(_ sender: UIButton) {
        x.text = x.text! + "0"
    }
    @IBAction func add(_ sender: UIButton) {
        s = x.text!
        x.text=""
        flag = 1
    }
    @IBAction func subtract(_ sender: UIButton) {
        s = x.text!
        x.text=""
        flag = 2
    }
    @IBAction func multiply(_ sender: UIButton) {
        s = x.text!
        x.text=""
        flag = 3
    }
    @IBAction func divide(_ sender: UIButton) {
        s = x.text!
        x.text=""
        flag = 4
    }
    @IBAction func value(_ sender: UIButton) {
        switch flag {
        case 1:
            var temp:Int
            temp = Int(s)! + Int(x.text!)!
            x.text="\(temp)"
        
        case 2:
            var temp: Int
            temp = Int(s)! - Int(x.text!)!
            x.text = "\(temp)"
            
        case 3:
            var temp: Int
            temp = Int(s)! * Int(x.text!)!
            x.text = "\(temp)"
            
        case 4:
            var temp: Int
            temp = Int(s)! / Int(x.text!)!
            x.text = "\(temp)"
        default:
            x.text = x.text
        }
    }

    @IBAction func del(_ sender: UIButton) {
          x.text = ""
    }



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

