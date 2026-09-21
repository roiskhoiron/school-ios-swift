// Numbers & String
let nama: String = "Rois Hoiron"
let umur: Int = 28
let tinggi: Double = 175.5
let isPro: Bool = true

// Collections
var hobies: [String] = ["coding", "ngopi", "gaming"]
var skorMap: [String: Int] = ["Rois": 100, "Dian": 300]
var angkaUnik: Set<Int> = [1,2,2,3,4,4]

print("Halo \(nama), tinggi \(tinggi)cm, pro? \(isPro)")
print("Hobi: \(hobies)")
print("Skor Rois: \(skorMap["Rois"]!)") // ! nanti kita bahas di Optionals
print("Set unik: \(angkaUnik)")
