//
//  Lop.swift
//  ClassAndStructDemo
//
//  Created by Tuấn on 3/8/24.
//

import Foundation

class Lop {
    var id: String
    var tenLop: String?
    var tenGVCN: String?
    var sinhVien: [SinhVien]?
    
    init(id: String, tenLop: String? = nil, tenGVCN: String? = nil, sinhVien: [SinhVien]? = nil) {
        self.id = id
        self.tenLop = tenLop
        self.tenGVCN = tenGVCN
        self.sinhVien = sinhVien
    }
    
    func themSV(sinhVien: [SinhVien]) {
        if self.sinhVien == nil {
            self.sinhVien = []
        }
        self.sinhVien?.append(contentsOf: sinhVien)
        print("Ban da them sinh vien thanh cong")
    }
    
    func hienThiSV() {
        guard let sinhVien = self.sinhVien else {
            print("Lop khong co sinh vien nao")
            return
        }
        for i in sinhVien {
            i.hienThiSV()
        }
    }
    
    func xoaSV(id: String) {
        guard let sinhVien = self.sinhVien else {
            print("Lop khong co sinh vien nao de xoa")
            return
        }
        
        if let index = sinhVien.firstIndex(where: {$0.id == id}) {
            self.sinhVien?.remove(at: index)
            print("Ban da xoa thanh cong")
        } else {
            print("Khong co sinh vien nao co ma \(id)")
        }
        
    }
    
    func xoaNhieuSV(id: [String]) {
        guard let sinhVien = self.sinhVien else {
            print("Lop khong co sinh vien nao de xoa")
            return
        }
        
        var arrayIndex: [Int] = []
        
        for i in id {
            if let index = sinhVien.firstIndex(where: {$0.id == i}) {
                arrayIndex.append(index)
            } else {
                print("Khong co sinh vien nao co ma \(i)")
            }
        }
        
        if arrayIndex.count != 0 {
            for i in arrayIndex.sorted(by: >) {
                self.sinhVien?.remove(at: i)
                print("Ban da xoa thanh cong")
            }
        }
        
    }
    
    func sapXepSV() {
        guard var sinhVien = self.sinhVien else {
            print("Lop khong co sinh vien nao")
            return
        }
        
        sinhVien.sort {
            ($0.diemTrungBinh ?? 0) > ($1.diemTrungBinh ?? 0)
        }
        print("Danh sach sinh vien sau khi sap xep giam dan")
        for i in sinhVien {
            i.hienThiSV()
        }
    }
    
    func timKiem(ten: String) {
        guard let sinhVien = self.sinhVien else {
            print("Lop khong co sinh vien nao")
            return
        }
        
        for i in sinhVien {
            if i.ten == ten {
                i.hienThiSV()
            }
        }
    }
    
    func capNhat(id: String, ten: String?, gioiTinh: String?, tuoi: Int?, diemToan: Float?, diemVan: Float?, diemAnh: Float?) {
        guard let sinhVien = self.sinhVien else {
            print("Lop khong co sinh vien nao")
            return
        }
        
        if let index = sinhVien.firstIndex(where: { $0.id == id }) {
            
            if let ten = ten {
                if !ten.isEmpty {
                    sinhVien[index].ten = ten
                }
            }
            if let gioiTinh = gioiTinh {
                if !gioiTinh.isEmpty {
                    sinhVien[index].gioiTinh = gioiTinh
                }
            }
            if let tuoi = tuoi { sinhVien[index].tuoi = tuoi }
            if let diemToan = diemToan { sinhVien[index].diemToan = diemToan }
            if let diemVan = diemVan { sinhVien[index].diemVan = diemVan }
            if let diemAnh = diemAnh { sinhVien[index].diemAnh = diemAnh }
            
            print("Cap nhat thong tin sinh vien thanh cong")
        } else {
            print("Khong tim thay sinh vien")
        }
    }
}
