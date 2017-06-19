//
//  ViewController.swift
//  MyApp01
//
//  Created by user on 2017/6/19.
//  Copyright © 2017年 seven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    
    
    @IBOutlet weak var labelMesg: UILabel!
    
    @IBOutlet weak var btnClick: UIButton!
    
    @IBAction func sayYa(_ sender: Any) {
       createLottery()
        
    }
    
  
    
    @IBOutlet weak var L1: UILabel!
    @IBOutlet weak var L2: UILabel!
    
    
    @IBOutlet weak var L3: UILabel!
    
    
    @IBOutlet weak var L4: UILabel!
    
    
    @IBOutlet weak var L5: UILabel!
    
    @IBOutlet weak var L6: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //出樂透
    private func createLottery() ->String {
        var rand:Int
        var lottle:Set<Int> = []
        while lottle.count < 6 {
            var rand:Int = Int(arc4random_uniform(49))+1
            lottle.insert(rand)
        }
        
        var strLottery = ""
        for lottery in lottle {
            strLottery.append("\(lottery) ")
        }
        
        //要轉陣列  弄到六個位置
        let arrayLottery = Array(lottle)
        L1.text = String(arrayLottery[0])
        L2.text = String(arrayLottery[1])
        L3.text = String(arrayLottery[2])
        L4.text = String(arrayLottery[3])
        L5.text = String(arrayLottery[4])
        L6.text = String(arrayLottery[5])
        labelMesg.text = strLottery

        return strLottery
        
    }
    
    
    
}






