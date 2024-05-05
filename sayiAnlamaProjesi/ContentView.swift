import SwiftUI

struct ContentView: View {
    
    // Durum değişkenleri
    @State private var number: Int = 1

    var body: some View {
        VStack {
            // Sayıya bağlı olarak metni görüntüle
            Text("\(number)")
                .font(.title)
            // Düğme için yatay yığın
            HStack {
                // Sayıyı artırma düğmesi
                Button(action: {
                    self.number += 1
                }) {
                    Text("Artır")
                }
                // Sayıyı sıfırlama düğmesi
                Button(action: {
                    self.number = 1
                }) {
                    Image(systemName: "arrow.counterclockwise") // Sıfırla simgesi
                    Text("Sıfırla") // Simge yanındaki metin
                }
            }
            // Sayının çift mi tek mi olduğunu kontrol et
            if number % 2 == 0 {
                Text("Çift Sayı")
                    .foregroundColor(.blue)
            } else {
                Text("Tek Sayı")
                    .foregroundColor(.red)
            }
        }
        .font(.title)
    }
}

#Preview {
    ContentView()
}
