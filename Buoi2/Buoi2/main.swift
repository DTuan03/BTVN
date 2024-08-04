//
//  main.swift
//  ClassAndStructDemo
//
//  Created by Tuấn on 2/8/24.
//

import Foundation

/**
 Viết chương trình quản lý lớp học, quản lý sinh viên.
 Mỗi lớp học có các thuộc tính: id, tên lớp, tên GVCN, danh sách sinh viên (mảng sinh viên)
 Mỗi đối tượng sinh viên có các thuộc tính: id, tên, giới tính, tuổi, điểm toán, điểm văn, điểm anh, điểm trung bình và học lực.
 
 Các chức năng::
 - Thêm sinh viên
 - Cập nhật thông tin sinh viên theo ID.
 - Xoá 1 sinh viên theo ID.
 - Xoa nhieu sinh vien theo ID.
 - Tìm kiếm sinh viên theo tên.
 - Sắp xếp sinh viên theo điểm trung bình.
 - Hiển thị danh sách sinh viên
 */
var lop = Lop(id: "A",tenLop: "cntt", tenGVCN: "Quynh")

var choose: Int = 0

repeat {
    print("|---------------------------------------------|")
    print("| Chon chuc nang:                             |")
    print("| 1. Thêm sinh viên                           |")
    print("| 2. Cập nhật thông tin sinh viên theo ID.    |")
    print("| 3. Xoá 1 sinh viên theo ID.                 |")
    print("| 4. Xoa nhieu sinh vien theo ID.             |")
    print("| 5. Tìm kiếm sinh viên theo tên.             |")
    print("| 6. Sắp xếp sinh viên theo điểm trung bình.  |")
    print("| 7. Hiển thị danh sách sinh viên             |")
    print("| 8. Thoát                                    |")
    print("|---------------------------------------------|")
    print("Nhap chuc nang ban chon: ", terminator: "")
    choose = Int(readLine() ?? "") ?? 0
    
    switch choose {
    case 1:
        print("Nhap MSV: ", terminator: "")
        let id = readLine() ?? ""
        print("Nhap ten SV: ", terminator: "")
        let ten = readLine() ?? ""
        print("Nhap gioi tinh: ", terminator: "")
        let gioiTinh = readLine() ?? ""
        print("Nhap tuoi: ", terminator: "")
        let tuoi = Int(readLine() ?? "") ?? nil
        print("Nhap diem Toan: ", terminator: "")
        let diemToan = Float(readLine() ?? "") ?? nil
        print("Nhap diem Van: ", terminator: "")
        let diemVan = Float(readLine() ?? "") ?? nil
        print("Nhap diem Anh: ", terminator: "")
        let diemAnh = Float(readLine() ?? "") ?? nil
        let sinhVien = SinhVien(id: id, ten: ten, gioiTinh: gioiTinh, tuoi: tuoi, diemToan: diemToan, diemVan: diemVan, diemAnh: diemAnh)
        lop.themSV(sinhVien: [sinhVien])
    case 2:
        print("Nhap MSV can cap nhat: ")
        let id = readLine() ?? ""
        print("Bo qua thong tin neu ban khong muon cap nhap thong tin do")
        print("Nhap ten SV: ", terminator: "")
        let ten = readLine() ?? ""
        print("Nhap gioi tinh: ", terminator: "")
        let gioiTinh = readLine() ?? nil
        print("Nhap tuoi: ", terminator: "")
        let tuoi = Int(readLine() ?? "") ?? nil
        print("Nhap diem Toan: ", terminator: "")
        let diemToan = Float(readLine() ?? "") ?? nil
        print("Nhap diem Van: ", terminator: "")
        let diemVan = Float(readLine() ?? "") ?? nil
        print("Nhap diem Anh: ", terminator: "")
        let diemAnh = Float(readLine() ?? "") ?? nil
        lop.capNhat(id: id, ten: ten, gioiTinh: gioiTinh, tuoi: tuoi, diemToan: diemToan, diemVan: diemVan, diemAnh: diemAnh)
    case 3:
        print("Nhap ma sinh vien muon xoa:")
        let id = readLine() ?? ""
        lop.xoaSV(id: id)
    case 4:
        print("Nhap so luong sinh vien ban muon xoa: ", terminator: "")
        var soLuong = Int(readLine() ?? "") ?? 0
        
        var arrayId: [String] = []
        print("Nhap cac ma sinh vien muon xoa:")
        while soLuong > 0 {
            let id = readLine() ?? ""
            arrayId.append(id)
            soLuong -= 1
        }
        lop.xoaNhieuSV(id: arrayId)
    case 5:
        print("Nhap ten sinh vien muon tim: ", terminator: "")
        let tenSV = readLine() ?? ""
        lop.timKiem(ten: tenSV)
    case 6:
        print("Sinh vien duoc sap xep giam theo diem trung binh")
        lop.sapXepSV()
    case 7:
        print("Danh sach sinh vien: ")
        lop.hienThiSV()
    case 8:
        print("Cam on ban da su dung.")
    default:
        print("Khong co chuc nang.")
    }
} while(choose != 8)
