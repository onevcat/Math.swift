//
//  Math.swift
//  Math
//
//  Created by 王 巍 on 14-7-8.
//  Copyright (c) 2014年 OneV's Den. All rights reserved.
//

import Foundation

//Protocols
protocol Addable {
    func +(lhs: Self, rhs: Self) -> Self
    init()
}

protocol Multipliable {
    func *(lhs: Self, rhs: Self) -> Self
    init()
}

extension Int: Addable, Multipliable {
}
extension String: Addable {
}
extension Float: Addable, Multipliable {
}
extension Double: Addable, Multipliable {
}
extension UInt8: Addable, Multipliable {
}
extension Int8: Addable, Multipliable {
}
extension UInt16: Addable, Multipliable {
}
extension Int16: Addable, Multipliable {
}
extension UInt32: Addable, Multipliable {
}
extension Int32: Addable, Multipliable {
}
extension UInt64: Addable, Multipliable {
}
extension Int64: Addable, Multipliable {
}
extension UInt: Addable, Multipliable {
}

func _trueCondition<T>(t: T) -> Bool {
    return true
}

//Sum
func Σ<T: Addable>(input : T...) -> T {
    return sumOf(input)
}

func Σ<T: Addable>(input : [T]) -> T {
    return sumOf(input)
}

func Σ<T: Addable>(input : Slice<T>) -> T {
    return sumOf(input)
}

func sumOf<T: Addable>(input : T...) -> T {
    return sumOf(input)
}

func sumOf<T: Addable>(input : Slice<T>) -> T {
    return sumOf([] + input)
}

func sumOf<T: Addable>(input : [T]) -> T {
    return reduce(input, T()) {$0 + $1}
}

//Factorial
operator postfix ~! {

}

@postfix func ~! <T: Integer>(var num: T) -> T {
    assert(num > 0, "Factorial function can not receive a number less than 1")
    var result: T = 1
    while (num > 1) {
        result = result * num
        num--
    }
    return result
}

//Product
func Π<T: Multipliable>(input : T...) -> T {
    return productOf(input);
}

func Π<T: Multipliable>(input : [T]) -> T {
    return productOf(input);
}

func Π<T: Multipliable>(input : Slice<T>) -> T {
    return productOf(input);
}

func productOf<T: Multipliable>(input : T...) -> T {
    return productOf(input);
}

func productOf<T: Multipliable>(input : Slice<T>) -> T {
    return productOf(input);
}

func productOf<T: Multipliable>(var input : [T]) -> T {
    return input.count == 0 ? T() : reduce(input[1..<input.count], input[0]) {$0 * $1}
}



