program signal
    use, intrinsic :: iso_c_binding
    implicit none
    include 'fftw3.f03'

    integer :: Fs,i
    real(c_double) :: t,pi,x
    type(c_ptr) :: planf
    real(kind=16) :: y
    complex(c_double_complex), allocatable:: xFreq(:)
    real(c_double), allocatable :: xs(:)

    open(unit = 1, file = "./res/originalFunction")
    open(unit = 2, file = "./res/freq")
    open(unit = 3, file = "./res/withoutNoize")

    i=1
    Fs=1024
    t=0.0
    pi=3.1415927
    x=sin(2*pi*t*200)+2*sin(2*pi*t*400)
    
    allocate(xs(Fs))
    allocate(xFreq(Fs/2+1))
    syncall()
    do while(t<=1.0)
        x=sin(2*pi*t*200)+2*sin(2*pi*t*400)
        xs(i)=x
        i=i+1
        t=t+1/real(Fs-1)
        write(1,"(F10.7,A,F10.7)") t," ",x
    enddo
    write(*,*) "---------------->",i
    planf = fftw_plan_dft_r2c_1d(size(xs), xs, xFreq, FFTW_ESTIMATE+FFTW_UNALIGNED)
    call fftw_execute_dft_r2c(planf, xs, xFreq)
    
    i=1
    do i=1,Fs/2+1
        y=abs(xFreq(i))
        write(2,"(I15,A,F14.7)") i, " ",y
        
    enddo
    
    write(*,*) ">>>>>>>>>>>>>   end 2"

    call fftw_destroy_plan(planf)
    
    close(2)
    close(3)
end program 
