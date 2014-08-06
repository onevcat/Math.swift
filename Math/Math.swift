//
// Math.swift
// Copyright (c) 2014 Wei Wang (http://onevcat,com)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

// MARK: -Misc
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

public func productOf<T: Multipliable>(input : T...) -> T {
    return productOf(input);
}

public func productOf<T: Multipliable>(input : Slice<T>) -> T {
    return productOf([] + input);
}

public func productOf<T: Multipliable>(var input : [T]) -> T {
    return input.count == 0 ? T() : reduce(input[1..<input.count], input[0]) {$0 * $1}
}

// MARK: 

