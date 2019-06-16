program signal
    use, intrinsic :: iso_c_binding
    implicit none
    include 'fftw3.f03'

    integer :: Fs,i
    real :: t, pi,x
    character(len=100) :: fkind
    i=0
    Fs=1024
    t=0.0
    pi=3.14
    x=sin(2*pi*t*200)+2*sin(2*pi*t*400)
    fkind="(F10.7,A,F10.7)"

    open(unit = 1, file = "./res/originalFunction")
    open(unit = 2, file = "./res/Fourier")
    open(unit = 3, file = "./res/withoutNoize")


    do while(t<1.0)
        x=sin(2*pi*t*200)+2*sin(2*pi*t*400)
        t=t+1/real(Fs-1)
        write(1,fkind) t," ",x
    enddo



    close(1)
    close(2)
    close(3)
end program 
