//
//  Math.swift
//  Math
//
//  Created by 王 巍 on 14-7-8.
//  Copyright (c) 2014年 OneV's Den. All rights reserved.
//

import Foundation

//Protocols
public protocol Addable {
    func +(lhs: Self, rhs: Self) -> Self
    init()
}

public protocol Multipliable {
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

// MARK: -Sum

prefix operator ∑ {}

public prefix func ∑<T: Addable>(input: [T]) -> T {
    return sumOf(input)
}

public prefix func ∑<T: Addable>(input : Slice<T>) -> T {
    return sumOf(input)
}

public func Σ<T: Addable>(input : T...) -> T {
    return sumOf(input)
}

public func Σ<T: Addable>(input : [T]) -> T {
    return sumOf(input)
}

public func Σ<T: Addable>(input : Slice<T>) -> T {
    return sumOf(input)
}

public func sumOf<T: Addable>(input : T...) -> T {
    return sumOf(input)
}

public func sumOf<T: Addable>(input : Slice<T>) -> T {
    return sumOf([] + input)
}

public func sumOf<T: Addable>(input : [T]) -> T {
    return reduce(input, T()) {$0 + $1}
}

// MARK: -Factorial
postfix operator ~! {}

postfix public func ~! <T: IntegerType>(var num: T) -> T {
    assert(num > 0, "Factorial function can not receive a number less than 1")
    var result: T = 1
    while (num > 1) {
        result = result * num
        num--
    }
    return result
}

// MARK: -Product
prefix operator ∏ {}

public prefix func ∏<T: Multipliable>(input: [T]) -> T {
    return productOf(input)
}

public prefix func ∏<T: Multipliable>(input : Slice<T>) -> T {
    return productOf(input)
}

public func Π<T: Multipliable>(input : T...) -> T {
    return productOf(input);
}

public func Π<T: Multipliable>(input : [T]) -> T {
    return productOf(input);
}

public func Π<T: Multipliable>(input : Slice<T>) -> T {
    return productOf(input);
}

public func productOf<T: Multipliable>(input : T...) -> T {
    return productOf(input);
}

public func productOf<T: Multipliable>(input : Slice<T>) -> T {
    return productOf([] + input);
}

public func productOf<T: Multipliable>(var input : [T]) -> T {
    return input.count == 0 ? T() : reduce(input[1..<input.count], input[0]) {$0 * $1}
}



