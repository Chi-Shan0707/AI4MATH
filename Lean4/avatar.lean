def main : IO Unit := do
  IO.println "Hello World!"
inductive Peano : Type where
  | zero : Peano
  | succ : Peano → Peano
def add : Peano → Peano → Peano
| x, Peano.zero => x
| x, Peano.succ y => Peano.succ (add x y)
