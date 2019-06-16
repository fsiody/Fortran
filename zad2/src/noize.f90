program noize
    use, intrinsic :: iso_c_binding
    implicit none
    include 'fftw3.f03'

    integer :: Fs,i
    real(kind=16) :: t,x,y,random

    real(c_double), allocatable :: inSig(:)
    complex(c_double_complex), allocatable :: outSig(:)
    type(c_ptr) :: plan1, plan2

    t=0.0
    Fs=1024

    open(unit=1, file = "./res/2_1_cosClear")
    open(unit=2, file = "./res/2_2_cosWithNoize")
    open(unit=3, file = "./res/2_3_FFTCosWithNoize")
    open(unit=4, file = "./res/2_4_FFTCos")
    open(unit=5, file = "./res/2_5_cosClear2")

    allocate(inSig(Fs))
    allocate(outSig(Fs/2 +1))

    do i=1, Fs
        t=t+1/real(Fs-1)
        x=cos(t*20)
        write(1,"(F15.7,A,F15.7)") t," ",x
        call random_number(random)
        inSig(i)= cos(t*20) + random*0.25
        write(2,"(F15.7,A,F15.7)") t," ",inSig(i)
    enddo
    close(1)
    close(2)

    plan1 = fftw_plan_dft_r2c_1d(size(inSig), inSig, outSig, FFTW_ESTIMATE+FFTW_UNALIGNED)
    plan2 = fftw_plan_dft_c2r_1d(size(inSig), outSig, inSig, FFTW_ESTIMATE+FFTW_UNALIGNED)
    call fftw_execute_dft_r2c(plan1, inSig, outSig)

    do i = 1, size(outSig)
        write(3,  "(I15,A,F15.7)") i," ",abs(outSig(i))
    enddo
    close(3)
    
    do i=1, fs/2 +1
        if(abs(outSig(i))<50) outSig(i)=(0.0,0.0)
        write(4, "(I15,A,F15.7)") i," ",abs(outSig(i))
    enddo
    close(4)

    call fftw_execute_dft_c2r(plan2, outSig, inSig)

    t=0.0
    do i=1, Fs
        t=t+1/real(Fs-1)
        write(5,"(F15.7,A,F15.7)") t," ",inSig(i)/Fs
    enddo

    call fftw_destroy_plan(plan1)
    call fftw_destroy_plan(plan2)
    close(5)
  
end program

