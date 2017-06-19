//
//  MyAPI.swift
//  sevenS12
//
//  Created by user on 2017/6/19.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation


//協定 沒有實作  所以func 沒有{}
protocol Brad01 {
    func m1()
    func m2() -> Int
    func m3(x:Int) ->Double
}

protocol Brad02 {
 //參數 回傳值 方法 皆為規格
    func m4()
    func m5() -> Int
    func m6(x:Int) ->Double
}


class Super1 {


}


//protocol的類別 與 繼承父類別(一定要擺第一個)
class Brad03 : Super1,Brad01,Brad02 {
    func m1() {}
    func m2() -> Int { return
        1}
    func m3(x:Int) ->Double {return 1.0}
    func m4(){}
    func m5() -> Int {return 1}
    func m6(x:Int) ->Double { return 1.0}
}


//繼承 protocol 可以多重繼承protocol (類別的話只能單一)
protocol Brad04: Brad01, Brad02 {
    func m7()
    
}

//此類別須符合 Brad04的protocol協定
class Brad05 : Brad04 {
    func m1() {}
    func m2() -> Int { return
        1}
    func m3(x:Int) ->Double {return 1.0}
    func m4(){}
    func m5() -> Int {return 1}
    func m6(x:Int) ->Double { return 1.0}
    func m7(){}

}


protocol Brad06 {
//    var x :Int = 1 //不能給值
    var x : Int {get set} //屬性的定義
    var y : Int {get}
    
}

class Brad07 : Brad06 {
    var x:Int
    init(x:Int){self.x = x}
    var y:Int = 4

}
