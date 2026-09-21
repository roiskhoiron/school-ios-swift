
var name: String = "Rois Hoiron"
var nickname: String? = nil

nickname = "khoironrois"
print("nama saya \(name)")


if let panggilan = nickname {
    print("panggil saja saya \(panggilan)")
} else {
    print("panggil saja saya semaumu")
}

// nil coaliscing
let displayName = nickname ?? "Anonymous"
print(displayName)

// force
print(nickname!)

var kontak: [String: String] = ["Rois": "0823446627689"]
let nomorRois = kontak["Rois"]
let nomorBUdi = kontak["Budi"]

print(nomorRois?.count)
