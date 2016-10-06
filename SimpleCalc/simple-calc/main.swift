//
//  main.swift
//  simple-calc
//
//  Created by sam wahbeh on 10/6/16.
//  Copyright © 2016 sam wahbeh. All rights reserved.
//

import Foundation


//math functions
func avg (numSet: [Double]) -> Double {
    var answer: Double = 0
    for index in 0...numSet.count - 1 {
        answer += numSet[index]
    }
    answer /= Double(numSet.count)
    return answer
}

func fact (numSet: [Double]) -> Double {
    var answer = numSet[0]
    var number = numSet[0]
    while (number > 1) {
        number -= 1
        answer *= number
        
    }
    return answer
}



var inputs = [Double]()

var firstNumInput = readLine(strippingNewline: true)!
var inputNum = Double.init(firstNumInput)!
inputs.append(inputNum)
var mathOp = ""
var flag = true

while flag == true {
    firstNumInput = readLine(strippingNewline: true)!
    if (firstNumInput == "+" || firstNumInput == "-" || firstNumInput == "*" || firstNumInput == "/" || firstNumInput == "%" || firstNumInput == "avg" || firstNumInput == "count" || firstNumInput == "fact") {
        flag = false
        mathOp = firstNumInput
    } else {
        inputNum = Double.init(firstNumInput)!
        inputs.append(inputNum)
    }
}

if (firstNumInput == "+" || firstNumInput == "-" || firstNumInput == "*" || firstNumInput == "/" || firstNumInput == "%") {
    firstNumInput = readLine(strippingNewline: true)!
    inputNum = Double.init(firstNumInput)!
}


if mathOp == "+" {
    print(inputs[0] + inputNum)
} else if mathOp == "-" {
    print(inputs[0] - inputNum)
} else if mathOp == "/" {
    print(inputs[0] / inputNum)
} else if mathOp == "*"{
    print(inputs[0] * inputNum)
} else if mathOp == "%" {
    print(fmod(inputs[0], inputNum))
} else if mathOp == "count" {
    print(inputs.count)
} else if mathOp == "avg" {
    print(avg(numSet: inputs))
} else if mathOp == "fact" {
    if inputs.count > 1 {
        print("this function only takes one number")
    } else {
    print(fact(numSet: inputs))
    }
} else {
    print("operation not supported")
}



