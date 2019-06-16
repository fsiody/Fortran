
# zad2

# uruchomic
make all

# Sprawozdanie
# 1)
sygnał
x = sin(2 ∗ π ∗ t ∗ 200) + 2 ∗ sin(2 ∗ π ∗ t ∗ 400)
xє[0,1]
![sygnał](https://github.com/fsiody/Fortran/blob/master/zad2/res/1.1.png)

wynik transformaty
wykres amplitudy od częstotliwości
częstotliwości sinusoid to 200Hz i 400Hz
![freq](https://github.com/fsiody/Fortran/blob/master/zad2/res/1.2.png)


# 2)
sygnałem wejściowym będzie x=cos(20*t). 
Jego wykres:
![sygnał zaburzony niewielkim ”szumem”](https://github.com/fsiody/Fortran/blob/master/zad2/res/2.1.png)

sygnał zaburzony niewielkim ”szumem”:
![ wykres zaszumionej funkcji](https://github.com/fsiody/Fortran/blob/master/zad2/res/2.2.png)

Wynik transformaty:
![FFT](https://github.com/fsiody/Fortran/blob/master/zad2/res/2.3.png)

Możemy widzieć jeden duży pok i dużo mniejszych(częstotliwości szumów).
"Odcinam" wszystkie wartości mniejsze od 50:
![FFT](https://github.com/fsiody/Fortran/blob/master/zad2/res/2.5.png)

wykres otrzymanej funkcji
Widzimy, że otrzymany wykres jest niemal identyczny do x=cos(20*t). Transformata Fouriera jest bardzo przydatnym narzędziem przy przetwarzaniu sygnałów. Używamy jej aby pozbyć się zakłóceń w sygnałach.
![wykres otrzymanej funkcji](https://github.com/fsiody/Fortran/blob/master/zad2/res/2.4.png)
