//
//  Bai1.swift
//  
//
//  Created by Tuấn on 1/8/24.
//

import Foundation

func bai1() {
    
    print("Nhap gia tri nguyen N: ", terminator: "")
    
    let n = Int(readLine() ?? "") ?? 0
    
    func kiemTraNguyenTo(n: Int) -> Bool {
        
        if n <= 1 {
            return false
        }
        
        if n == 2 {
            return true
        }
        
        for i in 2...n/2 {
            if n % i == 0 {
                return false
            }
        }
        
        return true
    }
    
    if kiemTraNguyenTo(n: n) {
        print("\(n) la so nguyen to")
    }else {
        print("\(n) khong phai so nguyen to")
    }
}
