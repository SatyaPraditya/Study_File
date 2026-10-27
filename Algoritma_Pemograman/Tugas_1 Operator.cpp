#include <iostream>
using namespace std;

int main() {
    // Program A (b--)
    {
        int b = 10, a = b--;

        cout << "===== Program b-- =====" << endl;
        cout << "Program b--" << endl;
        cout << "ciri utama pada b-- adalah dipakai dulu variable b nya baru dikurangi seperti = " << a << endl;
        cout << "pada saat variable b di output atau dipanggil maka nilai variable b sudah di kurangi 1 karena proses pengurangan sudah terjadi yaitu = " << b << endl;
        cout << " " << endl;
    }

    // Program B (--b)
    {
        int b = 10, a = --b;

        cout << "===== Program --b =====" << endl;
        cout << "Program --b" << endl;
        cout << "ciri utama pada --b adalah dikurangi dulu variable b nya baru dicetak seperti = " << a << endl;
        cout << "pada saat variable b di output atau dipanggil maka nilai variable b sudah di kurangi 1 karena proses pengurangan sudah terjadi yaitu = " << b << endl;
    }

    return 0;
}
