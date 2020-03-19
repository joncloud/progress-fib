define variable o as integer no-undo.

message session:parameter.

define variable e as integer no-undo.
e = num-entries(session:parameter).

define variable c as character no-undo.
define variable n as integer no-undo.

if e = 0 then do:
  c = ''.
  n = 40.
end.
else if e = 1 then do:
  c = session:parameter.
  n = 40.
end.
else do:
  c = entry(1, session:parameter).
  n = integer(entry(2, session:parameter)).
end.

etime(true).
run FibSwitcher.p(
  input c,
  input n,
  output o
  ).

message substitute('Time: &1ms, Output: &2', etime, o).
