# iOS engineering — Learning Notes

> _This handbook records each learning session with theory summaries and practice notes._

---

## 2026-09-21 12:04:30

**Topic:** Swift Variables & Constants

**Theory:**
- `var` = mutable (whiteboard) bisa diubah kapan saja. `let` = immutable (ukiran batu) tidak bisa diubah setelah di-set. Analogi: var = papan tulis, let = batu.
- Best practice Swift: selalu pakai `let` dulu, baru ganti ke `var` kalau butuh mutable.
- Type inference: Swift tebak tipe otomatis (`let pi = 3.14` -> Double), tapi bisa explicit (`var skor: Int = 100`).
- Mirip Kotlin `var`/`val` dan Dart `var`/`final`.

**Practice:**
- Berhasil run di Xcode Playgrounds: `Learn 1- Swift Variables & Constants.playground/Contents.swift`
- Code:
```swift
import UIKit
var nama = "Rois"
let umur = 28
var skor: Int = 100
print("Awal \(nama) \(umur) \(skor)")
```
- Eksperimen: coba `nama = "Rois Hoiron"` berhasil (var), coba `umur = 29` error (let immutable) -> Xcode kasih error "Cannot assign to value: 'umur' is a 'let' constant".
- Fix run disabled: pindah dari Other project ke Playgrounds agar tombol Run aktif.

**Progress:** 100% complete

---
## 2026-09-21 13:56:05

**Topic:** Data Types

**Theory:**
- Data Types seperti wadah dapur: String (kotak label), Int (tempat telur bulat), Double (gelas takar desimal), Bool (saklar true/false), Array (rak buku urut), Dictionary (lemari berlabel key:value), Set (keranjang unik tanpa duplikat).
- Type safety Swift: sekali tipe ditentukan tidak bisa ganti sembarangan (beda dari Dart yang lebih longgar). Mencegah crash.
- Analogi: Array = index+value, Dictionary = key+value (cepat cari), Set = unik.

**Practice:**
- Playground code:
```swift
let nama: String = "Rois"
let umur: Int = 28
let tinggi: Double = 175.5
let isPro: Bool = true
var hobi: [String] = ["coding","ngopi","gaming"]
var skorMap: [String: Int] = ["Rois": 100]
var angkaUnik: Set<Int> = [1,2,2,3]
print("Halo \(nama) \(tinggi)cm \(isPro)")
```
- Diskusi: daftar kontak pakai Dictionary dengan key=nama, value=nomor, karena butuh pencarian cepat by key dan key otomatis unik. Array lambat & boleh duplikat, Set cuma value tanpa pasangan.
- Error demo: `let x: Int = 3.14` error type mismatch.

**Progress:** 100% complete

---
## 2026-09-21 14:08:19

**Topic:** Optionals

**Theory:**
- Optional = kotak kado `String?` bisa ada isi atau `nil` (kosong). `String` biasa pasti ada isi.
- Tujuan: cegah crash NullPointer, Swift memaksa buka kotak dulu.
- Cara aman: `if let` (optional binding), `??` (nil coalescing kasih default), optional chaining `?.`. Force unwrap `!` bahaya (crash kalau nil).
- Mirip Kotlin `String?` dan Dart null safety.

**Practice:**
```swift
var nickname: String? = nil
nickname = "Roy"
if let panggilan = nickname { print(panggilan) }
let displayName = nickname ?? "Anonymous"
var kontak: [String:String] = ["Rois":"08123"]
let nomorBudi = kontak["Budi"] // nil, String?
print(nomorBudi?.count)
```
- Diskusi: untuk kontak yang mungkin nil, pilih `if let` atau `??` jangan `!` karena memaksa buka kotak kosong = crash.

**Progress:** 100% complete

---
## 2026-09-21 14:30:59

**Topic:** Control Flow

**Theory:**
- Control Flow = rambu jalan: `if/else` (pertigaan), `guard` (satpam pintu early exit), `switch` (bundaran exhaustive, no break needed), `for/while` (ngiterin komplek).
- `guard let` vs `if let`: guard = cegah di awal, wajib exit (return/break) kalau gagal, bikin kode flat tidak pyramid. `if let` = branching alternatif (if ada isi jalan A, else jalan B).
- Swift switch harus exhaustive, pakai `default` jika belum semua case.

**Practice:**
```swift
func sapa(nama: String?) {
  guard let namaAsli = nama else { print("Nama kosong"); return }
  print("Halo \(namaAsli)")
}
let cuaca="hujan"
switch cuaca { case "cerah": print("kaos"); case "hujan": print("payung"); default: print("aneh") }
for item in ["coding","ngopi"] { print(item) }
```
- Diskusi: guard let = handle exception di awal (precondition), if let = alternatif eksekusi. Contoh `kirimPesan(nomorHP: String?)` lebih bersih pakai guard untuk early exit jika nomor nil.

**Progress:** 100% complete

---
## 2026-09-21 15:11:55

**Topic:** Functions

**Theory:**
- Functions = mesin resep: input parameter -> proses -> output return. First-class citizen bisa disimpan di var, oper sebagai parameter.
- Swift unik: argument labels (`sapa(nama:umur:)`), default values (`jumlah: Int = 1`), variadic (`String...`), closures `{a,b in}` + shorthand `$0`.
- Mirip Kotlin `fun` dan Dart `()=>` tapi Swift lebih ekspresif untuk readability.

**Practice:**
- File: `Swift Learn - Phase 1.playground/Pages/Swift Functions.xcplaygroundpage/Contents.swift`
```swift
func sapa(nama: String, umur: Int) -> String { return "Halo \(nama) \(umur)" }
func ngopi(jumlah: Int = 1, tambah: String...) -> String { return "Ngopi \(jumlah) + \(tambah.joined(separator:", "))" }
let hitungSkor: (Int,Int)->Int = {a,b in return a+b}
func prosesData(data:[Int], akse:(Int)->Int)->[Int]{ return data.map(akse) }
func prosesPesan(pesan:String?, ke:String)->String { if let m=pesan {return "\(ke) \(m)"} else {return "Halo!"} }
let kirimPesan:(String?,String)->String = {a,b in return prosesPesan(pesan:a, ke:b)}
```
- Hasil run berhasil, polish disarankan pakai default param atau `??` untuk lebih ringkas.

**Progress:** 100% complete

---
## 2026-09-21 15:27:27

**Topic:** Enums & Associated Values

**Theory:**
- Enum = buku menu, hanya pilihan yang ada di enum yang valid. Associated Values = pesanan custom tiap case bisa bawa data beda.
- Swift enum super power: bisa punya raw value, associated values, method, dan switch exhaustive.
- Beda Kotlin enum yang statis, Swift enum tiap case bisa bawa payload berbeda.

**Practice:**
```swift
enum Hasil { case sukses(pesan:String); case gagal(error:String,kode:Int); case loading }
let h = Hasil.sukses(pesan:"OK")
switch h { case .sukses(let p): print(p); case .gagal(let e,let k): print(e); case .loading: print("load") }
enum Arah:String { case utara="U" }
enum Cuaca { case cerah; case hujan(curah:Int); func saran()->String{ switch self{case .cerah:return "kaos"; case .hujan(let c) where c>50:return "payung besar"; case .hujan:return "payung"}}}
```
- Diskusi: status chat `terkirim`, `dibaca(waktu:String)`, `gagal(alasan:String)` pakai associated values + switch untuk render UI, karena switch exhaustive dan bisa pattern matching per case.

**Progress:** 100% complete

---
## 2026-09-22 06:06:55

**Topic:** Structs vs Classes

**Theory:**
- Struct = value semantics (fotokopi) -> copy independen, aman, tidak saling mempengaruhi. Class = reference semantics (share Google Docs link) -> satu objek di-share, ubah satu ubah semua.
- Struct: no inheritance, auto init, cepat, dipakai 90% di SwiftUI (View adalah struct). Class: inheritance, manual init, butuh deinit, untuk shared mutable state (ViewModel/Manager).
- Miskonsepsi awal: class dianggap jamin keaslian, padahal struct yang jamin karena copy tidak merusak original.

**Practice:**
```swift
struct UserStruct { var nama:String }
var a=UserStruct(nama:"Rois"); var b=a; b.nama="Budi" // a tetap Rois
class UserClass { var nama:String; init(nama:String){self.nama=nama} }
var c=UserClass(nama:"Rois"); var d=c; d.nama="Budi" // c ikut jadi Budi
```
- Diskusi: Model `Task` untuk List pilih `struct` karena sering di-copy/filter/sort, aman & SwiftUI-optimized. `class` untuk single source of truth reactive seperti TaskManager/ViewModel.

**Progress:** 100% complete

---
## 2026-09-22 06:36:11

**Topic:** Protocols & Delegation

**Theory:**
- Protocol = kontrak/blueprint (mirip interface Dart) berisi daftar requirement yang wajib diimplementasi. Bisa dipakai struct & class, bisa default impl via extension.
- Delegation = pola Bos->Asisten: Bos punya `weak var delegate: Protocol?` untuk minta tolong, Asisten conform `class Asisten: Protocol` untuk kerjakan. Beda dengan protocol biasa yang hanya blueprint polymorphic.
- Kenapa `weak`? Cegah retain cycle (bos kuat ke asisten, asisten kuat ke bos = memory leak). Delegation adalah komunikasi one-to-one.
- Beda inheritance class Induk: inheritance = "adalah" (is-a), protocol = "bisa" (can-do), lebih fleksibel multi-conform.

**Practice:**
```swift
protocol Penyapa { func sapa()->String }
struct Manusia:Penyapa { var nama:String; func sapa()->String{"Halo \(nama)"} }
protocol TugasDelegate:AnyObject { func tugasSelesai(nama:String) }
class Bos { weak var delegate:TugasDelegate?; func mintaKerjakan(){delegate?.tugasSelesai(nama:"Laporan")} }
class Asisten:TugasDelegate{ func tugasSelesai(nama:String){print("\(nama) selesai")} }
extension Penyapa { func sapaFormal()->String{"Selamat pagi, "+sapa()} }
```
- Diskusi: protocol mirip interface Dart, delegate = defining side (`weak var`) vs implementing side (`class A: Protocol`), protocol tanpa delegation hanya blueprint generik polymorphic.

**Progress:** 100% complete

---
## 2026-09-23 13:29:34

**Topic:** Extensions & Generics

**Theory:**
- Extensions = stiker tambahan: tempel kemampuan baru ke type existing (String, Int, Array) tanpa subclassing. Contoh `extension String { var isValidEmail }`.
- Generics = charger universal: satu function/type untuk banyak tipe `func tukar<T>(a:T,b:T)`. Array sendiri adalah `Array<Element>` generic, makanya bisa simpan String/Int apapun + punya method generic seperti map/filter.
- Kombinasi: `extension Array { func safeGet(index:Int)->Element? }` pakai generic Element.

**Practice:**
```swift
extension String { var isValidEmail:Bool{contains("@")}; func sapa()->String{"Halo \(self)!"} }
extension Int { var isGenap:Bool{self%2==0} }
func tukar<T>(a:T,b:T)->(T,T){(b,a)}
func jumlahkan<T:Numeric>(a:T,b:T)->T{a+b}
extension Array { func safeGet(index:Int)->Element? { indices.contains(index) ? self[index] : nil } }
```
- Diskusi: safeGet pakai extension karena Array sudah generic, tinggal tambah method yang return Element? agar aman out of bounds.

**Progress:** 100% complete

---
## 2026-09-23 13:44:50

**Topic:** Error Handling

**Theory:**
- Error Handling = prosedur darurat: `throw` teriak darurat, `throws` tanda pintu bisa darurat, `try` coba lakukan, `do-catch` tim UGD tangkap per jenis, `Result` amplop success/failure.
- Swift wajib tandai `throws` dan pemanggil wajib `try`, ada `try?` (jadi Optional nil kalau error) dan `try!` (force crash). Beda Kotlin try/catch biasa yang bisa diam-diam kelewat.
- `Result<Success,Failure>` = Either type, rapih untuk async.

**Practice:**
```swift
enum BiayaError:Error{case saldoKurang(butuh:Int); case akunBlokir}
func tarikUang(saldo:Int,jumlah:Int)throws->Int{guard jumlah<=saldo else{throw BiayaError.saldoKurang(butuh:jumlah-saldo)};return saldo-jumlah}
do{let s=try tarikUang(saldo:100,jumlah:150)}catch BiayaError.saldoKurang(let b){print("kurang \(b)")}
let h1=try? tarikUang(saldo:100,jumlah:50) // Optional
func tarikResult(saldo:Int,jumlah:Int)->Result<Int,BiayaError>{if jumlah>saldo{return .failure(.saldoKurang(butuh:jumlah-saldo))};return .success(saldo-jumlah)}
```
- Diskusi: `try?` untuk tampung nullable langsung (backup nil), `do-catch` untuk branching error spesifik (mirip enum Result), `Result` lebih rapih & ramah learner karena Either sudah tersedia.

**Progress:** 100% complete

---
