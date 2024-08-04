//
//  Bai2.swift
//  B1
//
//  Created by Tuấn on 1/8/24.
//

import Foundation

func bai2() {
    print("Nhap so m: ", terminator: "")
    
    let m = Int(readLine() ?? "") ?? 0
    
    var giaiThua: Int = 1
    var n:Int = 0
    
    while(giaiThua < m) {
        n += 1
        giaiThua *= n
    }
    
    print("So can tim la: \(n)")
}


