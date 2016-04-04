//
//  main.swift
//  SimpleCal
//
//  Created by chelseaGJW on 16/4/2.
//  Copyright © 2016年 chelseaGJW. All rights reserved.
//

import Foundation



//basic math operation

 print("Enter an experssion seperated by returns : ")
let response_a = readLine(stripNewline: true)!
var numArray = response_a.componentsSeparatedByString(" ")
var operation = ""
var result = 1

if numArray.count < 2 {
let numA = Int.init(response_a)!
 operation = readLine(stripNewline: true)!
let response_b = readLine(stripNewline: true)!
let numB = Int.init(response_b)!
switch operation {
    case "/" : result = numA / numB
                print ("Result: \(result)")
    case "*" : result = numA * numB
                print ("Result: \(result)")
    case "-" : result = numA - numB
                print ("Result: \(result)")
    case "+" : result = numA + numB
                print ("Result: \(result)")
    default: print(0)
    }
}
else {
    operation = numArray.removeLast()
switch operation {
    case "count" : result = numArray.count
                    print(result)
    case "avg" : for index in 0 ..< numArray.count {
                result = result + Int.init(numArray[index])! }
                print(result/numArray.count)
    case "fact" : let intNum = Int.init(numArray[0])!
                    for index in 1...intNum {
                         result = result * index }
                    print(result)
  default: print(0)
}

}



