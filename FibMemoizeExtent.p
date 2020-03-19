define input parameter n as integer no-undo.
define output parameter o as integer no-undo.

define variable m as integer extent 41 no-undo.

run Fib in this-procedure(input n, output o).

procedure Fib:
  define input parameter x as integer no-undo.
  define output parameter y as integer no-undo.
  
  define variable t as integer no-undo.
  
  if m[x] > 0 then do:
    
    y = m[x].

  end.

  else if x < 3 then do:
  
    y = 1.

    m[x] = y.
    
  end.
  else do:
    
    run Fib in this-procedure(input x - 1, output t).
    y = t.
    
    run Fib in this-procedure(input x - 2, output t).
    y = y + t.

    m[x] = y.
    
  end.
  
end procedure.