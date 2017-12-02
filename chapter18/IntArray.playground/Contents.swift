//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

fileprivate class IntArrayBuffer {
    var storage: [Int]
    
    init() {
        storage = []
    }
    
    init(buffer: IntArrayBuffer) {
        storage = buffer.storage
    }
}

struct IntArray {
    private var buffer: IntArrayBuffer
    
    init() {
        buffer = IntArrayBuffer()
    }
    
    func describe() {
        print(buffer.storage)
    }
    
    func insert(_ value: Int, at index: Int) {
        buffer.storage.insert(value, at: index)
    }
    
    func append(_ value: Int) {
        buffer.storage.append(value)
    }
    
    func remove(at index: Int) {
        buffer.storage.remove(at: index)
    }
}

var integers = IntArray()
integers.append(1)
integers.append(2)
integers.append(4)
integers.describe()
var ints = integers
ints.insert(3, at: 2)
integers.describe()
ints.describe()
