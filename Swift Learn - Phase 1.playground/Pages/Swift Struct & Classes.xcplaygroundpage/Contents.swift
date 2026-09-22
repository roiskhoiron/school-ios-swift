
struct UserStruct{
    var name: String
}

var a = UserStruct(name: "Rois Khoiron")
var b = a
b.name = "Rois aja"
print(a.name)
print(b.name)

class UserClass {
    var name: String
    init(name: String) {
        self.name = name
    }
}
var c = UserClass(name: "Khoiron")
var d = c
d.name = "Khoironrois"
print(c.name)
print(d.name)
