program main
  

  implicit none

  open(unit=1, file = 'script', status='unknown')
  write(1, '(a)') 'set term x11 '
  write(1, '(a)') 'set xlabel "X-axis" '
  write(1, '(a)') 'set ylabel "Y-axis" '
 
  write(1, '(a)') 'plot sin(x)'
  close(1)

  call execute_command_line('gnuplot --persist script')
  
  call execute_command_line('rm -f script')
  
end program main
