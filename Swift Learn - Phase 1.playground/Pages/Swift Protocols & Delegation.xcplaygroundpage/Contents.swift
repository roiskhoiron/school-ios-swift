// prtocols
protocol Penyapa {
    func sapa() -> String
}

struct Manusia: Penyapa {
    var name: String
    func sapa() -> String {
        "Halo, aku \(name)"
    }
}

struct Robot: Penyapa {
    func sapa() -> String {
        "Beep boop!"
    }
}

let orang = Manusia(name: "Rois")
print(orang.sapa())
let robot = Robot()
print(robot.sapa())

// delegations
protocol TugasDelegasi: AnyObject {
    func tugasSelesai(task: String)
}

class Bos {
    weak var delegate: TugasDelegasi?
    func mintaKerjakan(task: String) {
        print("Bos: kamu kerjain tugas \(task) sana!")
        delegate?.tugasSelesai(task: task)
    }
}

class Asisten: TugasDelegasi {
    func tugasSelesai(task: String) {
        print("Asisten: \(task) selesai nih Bos")
    }
}

let bob = Bos()
let catherin = Asisten()
bob.delegate = catherin
bob.mintaKerjakan(task: "Laporan Tahunan")

// protocol dikombinasikan dengan ektensi
extension Penyapa {
    func sapaFormal() -> String {
        "Selamat pagi, " + sapa()
    }
}

print(orang.sapaFormal())

