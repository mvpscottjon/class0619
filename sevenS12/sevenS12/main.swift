//
//  main.swift
//  sevenS12
//
//  Created by user on 2017/6/19.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation


//＊＊＊＊＊矛盾現象 這不會過
//var Obj1 = Tes101()
//Obj1.m1()
//Obj1.m1()


//shape  myapi2

func needShape(s: Shape){
    print(s.calLen())
    print(s.calArea())

}


var s1:Circle = Circle()
var s2:Rect = Rect()
s1.r = 4
s2.w = 2
s2.h = 3


needShape(s: s1)
needShape(s: s2)

print("------")

//myapi1  

var Obj2 = Brad07(x:4)
print(Obj2.x)
print(Obj2.y)
Obj2.y = 100
print(Obj2.y)

//test01 02  myapi2
// 繼承protocol 型別是否一樣
var Obj3 = Test02()
if Obj3 is p1 {
    print("OK")
}else {
    print("XX")
}

