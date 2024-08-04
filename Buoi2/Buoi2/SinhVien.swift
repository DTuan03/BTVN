//
//  SinhVien.swift
//  ClassAndStructDemo
//
//  Created by Tuấn on 3/8/24.
//

import Foundation


class SinhVien {
    var id: String
    var ten: String?
    var gioiTinh: String?
    var tuoi: Int?
    var diemToan: Float?
    var diemVan: Float?
    var diemAnh: Float?
    var diemTrungBinh: Float? {
        guard let diemToan = diemToan else {
            return nil
        }
        guard let diemVan = diemVan else {
            return nil
        }
        guard let diemAnh = diemAnh else {
            return nil
        }
        return (((diemToan + diemVan + diemAnh) / 3 ) * 100).rounded() / 100
        
    }
    var hocLuc : String? {
        guard let diemTrungBinh = diemTrungBinh else {
            return nil
        }
        switch diemTrungBinh {
        case 0..<4:
            return "Yeu"
        case 4..<7:
            return "Trung binh"
        case 7..<8:
            return "Kha"
        case 8...10:
            return "Gioi"
        default:
            return nil
        }
    }
    
    init(id: String, ten: String? = nil, gioiTinh: String? = nil, tuoi: Int? = nil, diemToan: Float? = nil, diemVan: Float? = nil, diemAnh: Float? = nil) {
        self.id = id
        self.ten = ten
        self.gioiTinh = gioiTinh
        self.tuoi = tuoi
        self.diemToan = diemToan
        self.diemVan = diemVan
        self.diemAnh = diemAnh
    }
    
    func hienThiSV() {
        print("Ten sinh vien: \(ten ?? ""), Gioi tinh: \(gioiTinh ?? ""), Tuoi: \(tuoi ?? 0)", terminator: ", ")
        if let diemToan = diemToan {
            print("Diem toan: \(diemToan)", terminator: ", ")
        }else {
            print("Diem toan: ", terminator: ", ")
        }
        if let diemVam = diemVan{
            print("Diem van: \(diemVam)", terminator: ", ")
        }else {
            print("Diem van: ", terminator: ", ")
        }
        if let diemAnh = diemAnh {
            print("Diem anh: \(diemAnh)", terminator: ", ")
        }else {
            print("Diem anh: ", terminator: ", ")
        }
        if let diemTrungBinh = diemTrungBinh {
            print("Diem TB: \(diemTrungBinh)", terminator: ", ")
        }else {
            print("Diem TB: ", terminator: ", ")
        }
        if let hocLuc = hocLuc {
            print("Hoc luc: \(hocLuc)")
        }else {
            print("Hoc luc: ")
        }
        
    }
    
}
