define input parameter n as integer no-undo.
define output parameter o as integer no-undo.

run Fib in this-procedure(input n, output o).

procedure Fib:
  define input parameter x as integer no-undo.
  define output parameter y as integer no-undo.
  
  define variable t as integer no-undo.

  if x < 3 then do:
  
    y = 1.
    
  end.
  else do:
    
    run Fib in this-procedure(input x - 1, output t).
    y = t.
    
    run Fib in this-procedure(input x - 2, output t).
    y = y + t.

  end.
  
end procedure.
