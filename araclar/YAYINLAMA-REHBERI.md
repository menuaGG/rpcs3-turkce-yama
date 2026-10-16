# Yayınlama Rehberi (her sürümde yapılacaklar)

1. **Dosyaları hazırla:** `RPCS3-Turkce-Yama.exe` + `RPCS3-Turkce-Yama.zip`.
2. **Hash al:** `araclar/hash-hesapla.bat` dosyasının üzerine önce exe'yi, sonra zip'i sürükle-bırak. SHA-256 ve VirusTotal linkini verir (panoya da kopyalar).
3. **VirusTotal'e bir kez yükle:** <https://www.virustotal.com/gui/home/upload>
   - Raporda "0/xx" (temiz) sonucu görünce linki tabloya koy. Link formatı hash'ten otomatik oluşur: `https://www.virustotal.com/gui/file/<sha256>`
4. **GitHub Release oluştur:** exe + zip'i ekle; açıklamaya sürüm notlarını **SHA-256 tablosuyla** yaz (v1.1 açıklaması şablon olarak kullanılabilir).
5. **README'yi güncelle:** "Dosya doğrulama (SHA-256 + VirusTotal)" tablosuna yeni sürümün satırlarını ekle.
6. **Commit + push.**

> ⚠️ Dosyaları yayınladıktan sonra değiştirme — değişirse hash değişir, tablo ve VirusTotal linkleri geçersiz olur. Değiştirdiysen: yeni hash al, tabloyu ve Release notunu güncelle, dosyayı VirusTotal'e yeniden yükle.
