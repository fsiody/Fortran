all:
	make clean
	@echo '************************'
	@echo '   '
	@echo '************************'
	make clean_res
	@echo '************************'
	@echo '   '
	@echo '************************'
	make compile
	@echo '************************'
	@echo '   '
	@echo '   '
	@echo '   '
	@echo '************************'
	./signal
	@echo '************************'
	@echo '   '
	@echo '************************'
	./noize
	@echo '************************'
	@echo '   '
	@echo '************************'
	make plot
	@echo '************************'
	@echo '   '
	@echo '************************'
	make clean

compile:
	ifort -coarray=single -O0 -g -traceback -check all -debug extended -debug-parameters all -o signal ./src/signal.f90 -lfftw3
	ifort -coarray=single -O0 -g -traceback -check all -debug extended -debug-parameters all -o noize ./src/noize.f90 -lfftw3
	#gfortran -o signal ./src/signal.f90 -lfftw3

plot:
	gnuplot ./src/plot1.p

clean_res:
	rm -f ./res/*

clean:
	rm -f *.o *.mod *.i90 *~ *.tmp *.s *.dbg *.out
	rm -f -r *.dSYM
	rm -f ./src/*.o ./src/*.mod ./src/*.i90 ./src/*~ ./src*.tmp ./src/*.s ./src/*.dbg
	rm -f -r ./src/*.dSYM