// Сформировать массив B из элементов массива A перестановкой
// местами минимального и первого элементов.

#include <stdio.h>

// Функция для заполнения массива А.
void zapolnimMas(int* a, int n) {
    for (int i = 0; i < n; i++) {
        scanf("%d", &a[i]);
    }
}

// Функция для ввода числа.
int vvod(void){
    int q;
    scanf("%d", &q);
    return q;
}
 
// Функция для поиска позиции минимального элемента.
int posElem(const int* a, int n) {
    int minim = a[0];
    int pos = 0;
    for (int i = 1; i < n; ++i) {
        if(a[i] < minim) {
            minim = a[i];
            pos = i;
        }
    }
    return pos;
}
 
// Функция для заполнения массива B.
// Принимаемые параметры: массив А, массив В, позиция минимального элемента и размер массива.
void zapolnimB(const int* a, int* b, int pos, int n){
    for (int i = 0; i < n; i++) {
        if (i == 0) {
            b[i] = a[pos];
        } else {
            if (i == pos) {
                b[i] = a[0];
            } else {
                b[i] = a[i];
            }
        }
    }
}
 
// Функция для вывода массива.
void print(const int* b, int n) {
    for (int i = 0; i < n; i++) {
        printf("%d ", b[i]);
    }
}

// Функция main, откуда происходит запуск программы. 
int main(void) {
    int n = vvod();
    int a[n];
    zapolnimMas(a, n);
    int b[n];
    int pos = posElem(a, n);
    zapolnimB(a, b, pos, n);
    print(b, n);
    return 0;
}

