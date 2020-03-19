define input parameter c as character no-undo.
define input parameter n as integer no-undo.
define output parameter o as integer no-undo.

if c = '' or c = 'base' then do:
  message 'No memoization'.
  run FibBase.p(input n, output o).
end.
else if c = 'memoize_extent' then do:
  message 'Memoizing using extent'.
  run FibMemoizeExtent.p(input n, output o).
end.
else if c = 'memoize_temp_table' then do:
  message 'Memoizing using temp-table'.
  run FibMemoizeTempTable.p(input n, output o).
end.
else do:
  message ('Invalid command: ' + c).
end.
