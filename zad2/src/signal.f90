program signal
    use, intrinsic :: iso_c_binding
    implicit none
    include 'fftw3.f03'

    integer :: Fs,i
    type(c_ptr) :: plan
    !integer*8 :: plan
    real(kind=8) :: t,pi,x
    complex(c_double_complex), allocatable:: xFreq(:)
    !double complex, allocatable:: xFreq(:)
    real(kind=8), allocatable :: xs(:)

    open(unit = 1, file = "./res/1_1_originalSignal")
    open(unit = 2, file = "./res/1_2_freq")

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

    plan = fftw_plan_dft_r2c_1d(size(xs), xs, xFreq, FFTW_ESTIMATE+FFTW_UNALIGNED)
    call fftw_execute_dft_r2c(plan, xs, xFreq)
    
    i=1
    do i=1,Fs/2+1
        write(2,"(I15,A,F14.7)") i, " ",abs(xFreq(i))
        
    enddo

    call fftw_destroy_plan(plan)
    close(1)
    close(2)
end program 
