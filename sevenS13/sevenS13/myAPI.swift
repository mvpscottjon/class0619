//
//  myAPI.swift
//  sevenS13
//
//  Created by user on 2017/6/19.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation


class Brad01 {
    static var counter = 0
    init() {
        print("Brad01:init()")
        Brad01.counter += 1
    }
    deinit {   //解構式 沒有帶參數
        print("Brad01:deinit()")
        Brad01.counter -= 1
    }

}



class Brad02 {
    var obj3:Brad03?
    func m1(){print("Brad02:m1()")}
    deinit {
        print("Brad02:deinit")
    }
}

class Brad03 {
    weak var obj2:Brad02?  //加weak 死了 指向也死了
    func m1(){print("Brad03:m1()")}
    deinit {
        print("Brad03:deinit")
    }
}
