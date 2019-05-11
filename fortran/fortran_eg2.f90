module Precision
	implicit none
    integer, parameter :: dl = KIND(1.d0)
    integer, parameter :: sp = KIND(1.0)
end module Precision

module Constants
    use precision
    implicit none

    real(dl), parameter :: const_pi = 3.1415926535897932384626433832795_dl
end module Constants

module eg2
	use precision
	implicit none

contains 
	subroutine multiple(x, y, z)
	real(dl), intent(in) :: x, y
	real(dl), intent(inout) :: z
	
	z = x*y
	
	end subroutine multiple
end module eg2
