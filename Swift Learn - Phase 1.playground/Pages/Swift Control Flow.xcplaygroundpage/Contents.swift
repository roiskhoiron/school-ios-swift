
let umur = 28
let punyaKTP = true
let hobi = ["ngodig", "ngopi", "gaming"]

// if else biasa
if umur >= 25 && punyaKTP {
    print("Boleh bikin Sim")
} else {
    print("Belum boleh bikin sim")
}

// guard 
func sapa(nama: String?) {
    guard let namaAsli = nama else {
        print("Nama kosong, stop!")
        return
    }
    print("nama asli saya \(namaAsli)")
}

sapa(nama: nil)
sapa(nama: "Khoiron Rois")

// switch
let cuaca = "hujan"
switch cuaca {
    case "panas":
        print("pake sunscreen")
    case "hujan":
        print("Bawa payung") 
default:
        print("Berangkat aja")
}


// for in loop
for item in hobi {
    print ("Hobinya: \(hobi)")
}

for i in 1...3 {
    print ("Hitung.. \(i)")
}

func kirimPesan(nomorHp: String?) {
    if let target = nomorHp {
          print("kirim pesan ke \(nomorHp)")
        } else {
          print("Kamu mau nyari kontak, isi dulu!")
        }
    guard let kontak = nomorHp else {
        print("Kamu mau nyari kontak, isi dulu!")
        return
    }
    
    
    
    print("kirim pesan ke \(kontak)")
}

kirimPesan(nomorHp: nil)
kirimPesan(nomorHp: "Rois")
