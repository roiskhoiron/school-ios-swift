// basic enum
enum StatusPesanan {
    case menunggu, diproses, dikirim, selesai
}

let status: StatusPesanan = .dikirim
print("paket sedang \(status)")

// enum dengan asociated values
enum Hasil {
    case sukses(pesan: String)
    case gagal(error: String, kode: Int)
    case loading
}
let hasil1: Hasil = .sukses(pesan: "Data Terkirim")
let hasil2: Hasil = .gagal(error: "Timeout", kode: 404)

switch hasil1 {
case .loading: print("Loading...")
case .sukses(let pesan): print("Sukses: \(pesan)")
case .gagal(let error, let kode): print("Gagal \(kode): \(error)")
}

// enum dengan raw value
enum Arah: String {
    case utara = "U"
    case selatan = "S"
    case timur = "T"
    case barat = "B"
}
print("Arah \(Arah.barat.rawValue)")

// enum punya method
enum Cuaca {
    case cerah, hujan(curah: Int)
    func saran() -> String {
        switch self {
        case .cerah: return "Pakai kaos"
        case .hujan(let curah) where curah > 50: return "Bawa payung besar!"
        case .hujan: return "Bawa payung"
        }
    }
}
print(Cuaca.hujan(curah: 40).saran())
print(Cuaca.cerah.saran())



