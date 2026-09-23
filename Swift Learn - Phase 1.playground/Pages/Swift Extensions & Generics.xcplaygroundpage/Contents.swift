
// extension
extension String {
    var isValidEmail: Bool {
        self.contains("@") && self.contains(".")
    }
    func sapa() -> String {
        "Halo \(self)"
    }
}

print("rois@mail.com".isValidEmail)
print("Rois".sapa())

// generics
func tukar<T>(a: T, b: T) -> (T, T) { 
    return (b, a)
}
print(tukar(a: 10, b: 20))
print(tukar(a: "Gibran", b: "Prabowo"))

func sum<T: Numeric>(a: T, b: T) -> T {a + b}
print(sum(a: 123, b: 321))
print(sum(a: 1.384293784, b: 0.1238164))
