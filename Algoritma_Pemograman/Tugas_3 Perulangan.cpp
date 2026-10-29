#include <iostream>
using namespace std;
int main (){
    int jenis_penonton, hari, harga, jumlah, total, pil1;
    do {
    cout << "===================" << endl;
    cout << "   Biaya Bioskop   " << endl;
    cout << "===================" << endl;
    cout << "   Hari   " << endl;
    cout << "1. Senin - Kamis " << endl;
    cout << "2. Jumat " << endl;
    cout << "3. Sabtu - Minggu " << endl;
    cout << "===================" << endl;
    cout << "  Jenis Penonton   " << endl;
    cout << "1. Anak-Anak " << endl;
    cout << "2. Dewasa " << endl;
    cout << "===================" << endl;
    cout << "Pilih Hari            : "; cin >> hari;
    cout << "Pilih Jenis Penonton  : "; cin >> jenis_penonton;
    cout << "jumlah Ticket         : "; cin >> jumlah;
    switch(jenis_penonton){
        case 1:
        harga = 30000;
        if (hari == 3){
        harga = harga + 10000;
        }
        break;
        case 2:
        harga = 45000;
        if (hari == 3){
        harga = harga + 10000;
        }
        break;
        default:
        cout << "Hanya 1-2 saja pilihannya" << endl;
        break;
    }
    total = harga * jumlah;
    cout << "======================" << endl;
    cout << "   Total harga : Rp." << total << endl;
    cout << "======================" << endl;
    cout << "1. Tambahan " << endl;
    cout << "2. Keluar " << endl;
    cout << "Pilihan : "; cin >> pil1;
    system("cls");
} while(pil1 != 2);
return 0;
}
