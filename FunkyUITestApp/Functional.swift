//
//  Functional.swift
//  FunkyUI
//
//  Created by Tóth Balázs on 2018. 10. 28..
//  Copyright © 2018. tthbalazs. All rights reserved.
//

// MARK: - Precedence groups

precedencegroup ForwardApplication {
    associativity: left
}

precedencegroup ForwardComposition {
    associativity: left
    higherThan: ForwardApplication
}

precedencegroup SingleTypeComposition {
    associativity: left
    higherThan: ForwardApplication
}

infix operator |>   : ForwardApplication
infix operator >>>  : ForwardComposition
infix operator <>   : SingleTypeComposition

// MARK: - Implementations

// MARK: - |> Operator

public func |> <A,B>(a: A, f: (A) -> B) -> B {
    return f(a)
}

public func |> <A>(a: inout A, f: (inout A) -> Void) -> Void {
    f(&a)
}

// MARK: - >>> Operator

public func >>> <A, B, C>(f: @escaping (A) -> B, g: @escaping (B) -> C) -> (A) -> C {
    return { a in
        return g(f(a))
    }
}

// MARK: - <> Operator

public func <> <A>(f: @escaping (A) -> A, g: @escaping (A) -> A) -> ((A) -> A) {
    return f >>> g
}

public func <> <A>(f: @escaping (inout A) -> Void, g: @escaping (inout A) -> Void) -> ((inout A) -> Void) {
    return { a in
        f(&a)
        g(&a)
    }
}

public func <> <A: AnyObject>(f: @escaping (A) -> Void, g: @escaping (A) -> Void) -> (A) -> Void {
    return { a in
        f(a)
        g(a)
    }
}
