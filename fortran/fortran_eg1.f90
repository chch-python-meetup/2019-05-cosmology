!**********************************************************************
! Resources: 
! https://www.tutorialspoint.com/fortran/fortran_loops.htm
! *********************************************************************
! Fortran90 has data types Integer, Real, Complex, Logical, Character
! integer(kind = 2) :: shortval
! integer(kind = 4) :: longval  
! eight byte integer
! integer(kind = 8) :: verylongval 
! sixteen byte integer
! integer(kind = 16) :: veryverylongval
! character (len = 40) :: name
! *********************************************************************
! Arrays:
! integer, dimension (5,5) :: matrix, index starts from 1. column-major
! *********************************************************************
! Derived types:
! type Books
!   character(len = 50) :: title
!   character(len = 50) :: author
!   character(len = 150) :: subject
!   integer :: book_id
! end type Books
! type(Books) :: book1 
! accessing the components of the structure 
! book1%title = "You love Fortran90"
!**********************************************************************
function add(x, y)
	use precision
	implicit none
	
	real(dl), intent(in) :: x, y
	real(dl) :: add
	add = x+y
end function add



PROGRAM MAIN
	!This is a comment in Fortran90. In Fortran77 a comment starts with cc. Fortran77 allows a fixed line width.
	use precision
	use eg2
	implicit none
	real(dl) add, z
	integer :: i, j
	
	print *, "Hello world!"
	
	!Call a function. case insensitive
	print *, aDd(3.0_dl, 4.0_dl)
	
	!Call a subroutine
	call multiple(3.0_dl, 4.0_dl, z)
	print *, z
	
	!Named loops
	outer : do i=1,3
		inner: do j=1, 2
			print *, 'sum(i=', i, ',j=', j ,')=',  i+j
		end do inner
	end do outer
   
END PROGRAM 
