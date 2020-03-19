define input parameter n as integer no-undo.
define output parameter o as integer no-undo.

define temp-table m no-undo
    field i as integer
    field v as integer
    index ix_i is unique i.

run Fib in this-procedure(input n, output o).

procedure Fib:
  define input parameter x as integer no-undo.
  define output parameter y as integer no-undo.
  
  define variable t as integer no-undo.
  
  find first m
  where m.i = x
  no-lock no-error.
  
  if available( m ) then do:

    y = m.v.

  end.
  
  else if x < 3 then do:
  
    y = 1.

    create m.
    m.i = x.
    m.v = y.
    release m.
    
  end.
  else do:
    
    run Fib in this-procedure(input x - 1, output t).
    y = t.
    
    run Fib in this-procedure(input x - 2, output t).
    y = y + t.
    
    create m.
    m.i = x.
    m.v = y.
    release m.
    
  end.
  
end procedure.