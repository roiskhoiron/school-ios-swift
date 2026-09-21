// basic
func sapa(nama: String, umur: Int) -> String {
    return "Halo \(nama), umur \(umur)"
}
print(sapa(nama: "Tian", umur: 24))

// default value & variadic
func ngopi(jumlah: Int = 1, tambah: String...) -> String {
    return "Ngopi \(jumlah) gelas + \(tambah.joined(separator: ", "))"
}
print(ngopi())
print(ngopi(jumlah: 2, tambah: "gula", "susu", "jahe"))

// closure / function tanpa nama yang bisa disimpa di variable
let hitungSkor: (Int, Int) -> Int = {a, b in return a + b}
print(hitungSkor(123, 164))

// closure as parameter
func prosesData(data: [Int], akse: (Int) -> Int) -> [Int] {
    return data.map(akse)
}
let double = prosesData(data: [1,2,3]) { $0 * 2}
print(double)



// closure as parameter
func kirimPesan(pesan: String = "Halo", ke: String) -> String {
    return "\(ke) \(pesan)"
}

// closure / function tanpa nama yang bisa disimpa di variable
let kirim: (String, String) -> String = {a, b in return kirimPesan(pesan: a, ke: b)}

let pesan = kirimPesan(ke: "Dian")
let pesan2 = kirim("Kita jadian yuk","Dian")
print(pesan)
print(pesan2)
