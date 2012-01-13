!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!
! Computer Science 2208a/b
! Lab 1
!
! Author: Jeff Shantz
!
! Simple program that prints out the number 1.  Note that the comments in this
! program are not examples of good assembly comments.  They are simply here to
! help you understand what this program is doing.  We will go over good
! commenting later in the course.
!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

        EOL = 10                        ! End of line character (ASCII value 10)

.global main
main:   save    %sp, -96, %sp           ! Magic line -- we'll discuss this later

        mov     1, %o0                  ! Move 1 into the %o0 register
        call    writeInt                ! Call the function 'writeInt' to 
        nop                             ! print the value in register %o0

        mov     EOL, %o0                ! Move the end of line char into %o0
        call    writeChar               ! Call the function 'writeChar' to
        nop                             ! print the value in register %o0 

        ret                             ! Exit..
        restore
