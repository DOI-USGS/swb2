module disclaimers

  use constants_and_conversions, only  : TRUE
  use logfiles, only                   : LOGS, LOG_ALL
  implicit none

contains

  subroutine write_provisional_disclaimer()

    write(*,"(/,a)") ' Disclaimer'
    write(*,"(a,/)") '============'

    write(*,"(a)") 'This software has been approved for release by the U.S. Geological Survey (USGS). Although'
    write(*,"(a)") 'the software has been subjected to rigorous review, the USGS reserves the right to update'
    write(*,"(a)") 'the software as needed pursuant to further analysis and review. No warranty, expressed'
    write(*,"(a)") 'or implied, is made by the USGS or the U.S. Government as to the functionality of the'
    write(*,"(a)") 'software and related material nor shall the fact of release constitute any such warranty.'
    write(*,"(a)") 'Furthermore, the software is released on condition that neither the USGS nor the'
    write(*,"(a)") 'U.S. Government shall be held liable for any damages resulting from its authorized'
    write(*,"(a,/)") 'or unauthorized use.'


    ! write(*,"(a)") 'This software is preliminary or provisional and is subject to revision. It is'
    ! write(*,"(a)") 'being provided to meet the need for timely best science. The software has not'
    ! write(*,"(a)") 'received final approval by the U.S. Geological Survey (USGS). No warranty,'
    ! write(*,"(a)") 'expressed or implied, is made by the USGS or the U.S. Government as to the'
    ! write(*,"(a)") 'functionality of the software and related material nor shall the fact of release'
    ! write(*,"(a)") 'constitute any such warranty. The software is provided on the condition that'
    ! write(*,"(a)") 'neither the USGS nor the U.S. Government shall be held liable for any damages'
    ! write(*,"(a,/)") 'resulting from the authorized or unauthorized use of the software.'

  end subroutine write_provisional_disclaimer

!--------------------------------------------------------------------------------------------------

  subroutine log_provisional_disclaimer()

    call LOGS%write( sMessage=' Disclaimer', lEcho=TRUE)
    call LOGS%write( sMessage='============', lEcho=TRUE,iLinesAfter=1)

    call LOGS%write( sMessage='This software has been approved for release by the U.S. Geological Survey (USGS). Although', lEcho=TRUE)
    call LOGS%write( sMessage='the software has been subjected to rigorous review, the USGS reserves the right to update', lEcho=TRUE)
    call LOGS%write( sMessage='the software as needed pursuant to further analysis and review. No warranty, expressed', lEcho=TRUE)
    call LOGS%write( sMessage='or implied, is made by the USGS or the U.S. Government as to the functionality of the', lEcho=TRUE)
    call LOGS%write( sMessage='software and related material nor shall the fact of release constitute any such warranty.', lEcho=TRUE)
    call LOGS%write( sMessage='Furthermore, the software is released on condition that neither the USGS nor the', lEcho=TRUE)
    call LOGS%write( sMessage='U.S. Government shall be held liable for any damages resulting from its authorized', lEcho=TRUE)
    call LOGS%write( sMessage='or unauthorized use.', lEcho=TRUE, iLinesAfter=1)

    ! call LOGS%write( sMessage='This software is preliminary or provisional and is subject to revision. It is', lEcho=TRUE)
    ! call LOGS%write( sMessage='being provided to meet the need for timely best science. The software has not', lEcho=TRUE)
    ! call LOGS%write( sMessage='received final approval by the U.S. Geological Survey (USGS). No warranty,', lEcho=TRUE)
    ! call LOGS%write( sMessage='expressed or implied, is made by the USGS or the U.S. Government as to the', lEcho=TRUE)
    ! call LOGS%write( sMessage='functionality of the software and related material nor shall the fact of release', lEcho=TRUE)
    ! call LOGS%write( sMessage='constitute any such warranty. The software is provided on the condition that', lEcho=TRUE)
    ! call LOGS%write( sMessage='neither the USGS nor the U.S. Government shall be held liable for any damages', lEcho=TRUE)
    ! call LOGS%write( sMessage='resulting from the authorized or unauthorized use of the software.', lEcho=TRUE, ilinesAfter=1)

  end subroutine log_provisional_disclaimer

end module disclaimers