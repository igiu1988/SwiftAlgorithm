//
//  File.swift
//  
//
//  Created by wangyang on 2020/9/2.
//

import Foundation

extension Array {
    
}

class QuickSort<E: Equatable & Comparable> {
    public func quickSort(_ arr: inout Array<E>) {
        quickSortCore(&arr, 0, arr.count - 1)
    }
    func quickSortCore(_ arr: inout Array<E>, _ p: Int, _ r: Int) {
        if p >= r {
            return
        }
        let q = partition(&arr, p, r)
        quickSortCore(&arr, p, q-1)
        quickSortCore(&arr, q+1, r)
        
    }
    func partition(_ arr: inout Array<E>, _ p: Int, _ r: Int) -> Int {
        let pivot = arr[r]
        var i = p
        var j = p
        while j < r {
            if arr[j] < pivot {
                arr.swapAt(i, j)
                i += 1
            }
            
            j += 1
        }
        arr.swapAt(i, r)
        return i
    }
}
