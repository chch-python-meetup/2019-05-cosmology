#! /bin/bash
#
gfortran -c -Wall -fopenmp prime_openmp.f90
if [ $? -ne 0 ]; then
  echo "Compile error."
  exit
fi
#
gfortran -fopenmp prime_openmp.o
if [ $? -ne 0 ]; then
  echo "Load error."
  exit
fi
rm prime_openmp.o
mv a.out prime_openmp
#
echo "Run with 1 thread."
export OMP_NUM_THREADS=1
time ./prime_openmp > prime_openmp.txt
#
echo "Run with 2 threads."
export OMP_NUM_THREADS=2
time ./prime_openmp >> prime_openmp.txt
#
echo "Run with 4 threads."
export OMP_NUM_THREADS=4
time ./prime_openmp >> prime_openmp.txt
#
rm prime_openmp
#
echo "Normal end of execution."
