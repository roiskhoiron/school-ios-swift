// Enum untuk definisi error agar mudah maping handlernya
enum BiayaError: Error {
    case saldoKurang(butuh: Int)
    case akunBlokir
}

func tarikUang(saldo: Int, jumlah: Int) throws -> Int {
    guard jumlah <= saldo else {
        throw BiayaError.saldoKurang(butuh: jumlah - saldo)
    }
    return saldo - jumlah
}

// do-try-catch tim siap tanggap
do {
    let sisa = try tarikUang(saldo: 100, jumlah: 500)
    print("Sisa \(sisa)")
} catch BiayaError.saldoKurang(let butuh) {
    print("Kurang \(butuh)")
} catch {
    print("Error lain: \(error)")
}

// Try jadi acuan ada kemungkinan nil gara-gara error terjadi
let berhasil = try? tarikUang(saldo: 500, jumlah: 50)
let gagal = try? tarikUang(saldo: 50, jumlah: 100)
print(berhasil as Any, gagal as Any)

// Result Type biar jelas sukses atau gagal
func tarikResult(saldo: Int, jumlah: Int) -> Result<Int, BiayaError> {
    if jumlah > saldo { return .failure(.saldoKurang(butuh: jumlah - saldo))}
    return .success(saldo - jumlah)
}
let r = tarikResult(saldo: 1000, jumlah: 150)
switch r {
case .success(let s): print("Sukses sisa \(s)")
case.failure(let e): print("Gagal \(e)")
}



