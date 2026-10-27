#include <iostream>
#include <conio.h>
using namespace std;

int main(){

    int pilihan, pil_a, pil_b, A;
    float bangun_datar, bangun_ruang;




do { cout << "Menghitung Bangun Datar dan Ruang :" << endl;
    cout << "===================================" << endl;
    cout << "1. Bangun Datar" << endl;
    cout << "2. Bangun Ruang" << endl;
    cout << "3. Keluar" << endl;
    cout << "Pilihan : "; cin >> pilihan;
    

    switch (pilihan){
            case 1:
            do {
        system("cls");
        float luas, keliling, A, B, R;
            cout << "Menghitung Bangun Datar" << endl;
            cout << "-----------------------" << endl;
            cout << "1. Persegi" << endl;
            cout << "2. Persegi Panjang" << endl;
            cout << "3. Segitiga" << endl;
            cout << "4. Lingkaran" << endl;
            cout << "5. Kembali Ke awal" << endl;
            cout << "Pilih : "; cin >> pil_a;
                switch (pil_a) {
                    case 1:
                        cout << "Persegi :" << endl;
                        cout << "---------" << endl;
                        cout << "Input sisi : "; cin >> A;
                            luas = A * A;
                            keliling = A * 4;
                        cout << "Luas Persegi     = " << luas << endl;
                        cout << "Keliling Persegi = " << keliling << endl;
                        cout << "Tekan sembarang agar mengulagi......" << endl;
                        cin.get();
                        cin.clear();
                        _getch();
                    break;
                    case 2:
                        cout << "Persegi Panjang :" << endl;
                        cout << "---------" << endl;
                        cout << "Input lebar : "; cin >> A;
                        cout << "Input Panjang : "; cin >> B;
                            luas = A * B;
                            keliling = (A * 2) + (B * 2);
                        cout << "Luas Persegi Panjang   = " << luas << endl;
                        cout << "Keliling Persegi Panjang = " << keliling << endl;
                        cout << "Tekan sembarang agar mengulagi......" << endl;
                        cin.get();
                        cin.clear();
                        _getch();
                        break;
                    case 3:
                        cout << "Segitiga :" << endl;
                        cout << "---------" << endl;
                        cout << "Input Alas : "; cin >> A;
                        cout << "Input Tinggi : "; cin >> B;
                            luas = 0.5 * A * B;
                        cout << "Luas segitiga   = " << luas << endl;
                        cout << "Tekan sembarang agar mengulagi......" << endl;
                        cin.get();
                        cin.clear();
                        _getch();
                        break;
                    case 4:
                        cout << "lingkaran :" << endl;
                        cout << "---------" << endl;
                        cout << "Input jari-jari : "; cin >> R;
                            luas = 3.14 * R * R;
                            keliling = 2 * 3.14 * R;
                        cout << "Luas Lingkaran   = " << luas << endl;
                        cout << "Keliling Lingkaran = " << keliling << endl;
                        cout << "Tekan sembarang agar mengulagi......" << endl;
                        cin.get();
                        cin.clear();
                        _getch();
                        break;
                    case 5:
                        cout << "Tekan sembarang agar mengulagi......" << endl;
                        cin.get();
                        _getch();
                        break;
                        default:
                            while(true){
                                cout << "Error : masukkan berupa angka" << endl;
                                cin.clear();
                                cin.ignore();
                                cout << "Pilih : " << endl;
                                if(cin >> pil_a) {
                                    break;
                                }
                            }
                            system("cls");
                    break;
                        } 
            } while (pil_a != 5);
            break;
        
        case 2:
        do 
        {
        system("cls");
        float A, B, luas, volume, C;
            cout << "Menghitung Bangun Ruang" << endl;
            cout << "~~~~~~~~~~~~~~~~~~~~~~~" << endl;
            cout << "1. Kubus" << endl;
            cout << "2. Balok" << endl;
            cout << "3. Tabung" << endl;
            cout << "4. Bola" << endl;
            cout << "5. Kembali Ke awal" << endl;
            cout << "Pilih : "; cin >> pil_b;
                switch (pil_b){
                    case 1:
                        cout << "Kubus : " << endl;
                        cout << "~~~~~~~~~" << endl;
                        cout << "Input Sisi = "; cin >> A;
                        luas = 6 * A * A;
                        volume = A * A * A;
                        cout << "Luas Kubus   = " << luas << endl;
                        cout << "Volume Kubus = " << volume << endl;
                        cout << "Tekan sembarang agar mengulagi......" << endl;
                        cin.get();
                        cin.clear();
                        _getch();
                        break;
                    case 2:
                        cout << "Balok : " << endl;
                        cout << "~~~~~~~~~" << endl;
                        cout << "Input Panjang = "; cin >> A;
                        cout << "Input Lebar = "; cin >> B;
                        cout << "Input Tinggi = "; cin >> C;
                        luas = 2 * (A*C + A*B + B*C);
                        volume = A * B * C;
                        cout << "Luas Balok   = " << luas << endl;
                        cout << "Volume Balok = " << volume << endl;
                        cout << "Tekan sembarang agar mengulagi......" << endl;
                        cin.get();
                        cin.clear();
                        _getch();
                        break;
                    case 3:
                        cout << "Tabung : " << endl;
                        cout << "~~~~~~~~~" << endl;
                        cout << "Input Jari-Jari = "; cin >> A;
                        cout << "Input Tinggi = "; cin >> C;
                        luas = 2 * 3.14 * (A*(A+C));
                        volume = 3.14 * C * A * A;
                        cout << "Luas Tabung   = " << luas << endl;
                        cout << "Volume Tabung = " << volume << endl;
                        cout << "Tekan sembarang agar mengulagi......" << endl;
                        cin.get();
                        cin.clear();
                        _getch();
                        break;
                    case 4:
                        cout << "Bola endl";
                        cout << "~~~~~~~~~" << endl;
                        cout << "Input Jari-Jari = "; cin >> A;
                        luas = 4 * 3.14 * A * A;
                        volume = 1.33 * 3.14 * A * A * A;
                        cout << "Luas Bola   = " << luas << endl;
                        cout << "Volume Bola = " << volume << endl;
                        cout << "Tekan sembarang agar mengulagi......" << endl;
                        cin.get();
                        cin.clear();
                        _getch();
                        break;
                    case 5:
                        cout << "Tekan sembarang agar mengulagi......" << endl;
                        cin.get();
                        _getch();
                        break;
                    default:
                            while(true){
                                cout << "Error : masukkan berupa angka" << endl;
                                cin.clear();
                                cin.ignore();
                                cout << "Pilih : " << endl;
                                if(cin >> pil_a) {
                                    break;
                                }
                            }
                                    system("cls");
                }
                    } while (pil_b != 5);
            break;
        case 3:
        system("cls");
            cout << "Terimakasih ......." << endl;
            cin.get();
            cin.clear();
            _getch();
            system("cls");
        break;
        default:
            while(true){
                    cout << "Error : masukkan berupa angka" << endl;
                    cin.clear();
                    cin.ignore();
                    cout << "Pilih : " << endl;
                    if(cin >> pilihan) {
                        break;
                    }
                            }
        }
        system("cls");
    } while ( pilihan != 3);
    system("cls");
}