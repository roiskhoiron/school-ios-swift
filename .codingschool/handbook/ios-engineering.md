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
