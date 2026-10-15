# Ekran Kontrol (2. Ekran Aç / Kapat)

Windows üzerinde 2. ekranı tek tıkla açıp kapatmaya (Toggle) yarayan Batch (`.bat`) betiği.

## Nasıl Çalışır?

`ekran-degistir.bat` çalıştırıldığında sistemdeki aktif ekran sayısını algılar:
- **2. ekran açıksa (Aktif ekran sayısı > 1):** `DisplaySwitch.exe /internal` komutu ile 2. ekranı kapatır ve yalnızca ana ekrana geçer.
- **2. ekran kapalıysa (Aktif ekran sayısı = 1):** `DisplaySwitch.exe /extend` komutu ile 2. ekranı açar (Uzat / Extend modu).

## Kullanım

`ekran-degistir.bat` dosyasına çift tıklayarak çalıştırabilirsiniz. Dilerseniz masaüstüne kısayol oluşturup kısayol tuşu (ör. `Ctrl + Alt + E`) atayabilirsiniz.
