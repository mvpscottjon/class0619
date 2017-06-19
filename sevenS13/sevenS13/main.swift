//
//  main.swift
//  sevenS13
//
//  Created by user on 2017/6/19.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation

//ARC

var Obj1:Brad01? = Brad01()
var Obj2:Brad01? = Brad01()
var Obj3:Brad01? = Brad01()
print(Brad01.counter)

// 4的指向跟1 一樣 不會多物件實體
var Obj4 = Obj1
print(Brad01.counter)

//2解構 去死了  剩兩個
//Obj2 = nil
print(Brad01.counter)

//有人指向的話 不會回收掉  deinit不會執行
//Obj1 = nil
//Obj4 = nil
print(Brad01.counter)
print(Obj2 == nil)
print(Obj1 == nil)  //變nil了

var Brad01s = [Obj1, Obj2, Obj3] //[Brad01]

func m1() {
    let obj5:Brad01? = Brad01()  //區域變數  結束完 死掉
    
    Brad01s += [obj5]  //給陣列 則不會死掉
    print("m1")
    print("m1:\(Brad01.counter)")
}





print("before:\(Brad01.counter)")
m1()
print("after:\(Brad01.counter)")

print("-----")

//各自擁有
var brad2:Brad02? = Brad02()
var brad3:Brad03? = Brad03()
brad2!.obj3 = brad3
brad3!.obj2 = brad2


brad2 = nil
print(brad2 == nil) //brad2 die
print(brad3!.obj2 == nil) //brad3.obj2 doesn't die 
//brad2!.m1()  //已經nil
brad3?.obj2?.m1()
