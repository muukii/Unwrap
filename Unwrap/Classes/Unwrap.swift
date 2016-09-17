// Unwrap.swift
//
// Copyright (c) 2015 muukii
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

import OptionalProtocol

extension Optional {
    
    public func unwrap(error: Error = UnwrapError.FailedToUnwrap) throws -> Optional.Wrapped {
        return try Unwrap.unwrap(self, error)
    }
    
    public func unwrap(error: Error = UnwrapError.FailedToUnwrap, then: (Optional.Wrapped) -> Void) throws {
        then(try Unwrap.unwrap(self, error))
    }
}

public enum UnwrapError: Error {
    case FailedToUnwrap
}

@available(*, deprecated: 2.2.0, message: "use Optional.unwrap()")
public func unwrap<T: OptionalProtocol>(_ object: T, _ error: Error = UnwrapError.FailedToUnwrap) throws -> T.Wrapped {
    guard let object = object.value else{
        throw error
    }
    return object
}

@available(*, deprecated: 2.2.0, message: "use Optional.unwrap()")
public func unwrap<T: OptionalProtocol>(_ object: T, _ error: Error = UnwrapError.FailedToUnwrap, closure: (T.Wrapped) -> Void) throws {
    guard let object = object.value else{
        throw error
    }
    closure(object)
}
