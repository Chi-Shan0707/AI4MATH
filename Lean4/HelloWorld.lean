-- Lean 4 Hello World 示例

-- 方法1: 使用 IO.println
def main : IO Unit := do
  IO.println "Hello, World!"
  IO.println "欢迎使用 Lean 4！"

-- 方法2: 定义一个简单的函数
def greet (name : String) : String :=
  s!"你好, {name}!"

-- 方法3: 简单的数学证明示例
theorem hello_theorem : 2 + 2 = 4 := rfl

#eval greet "Lean"  -- 在编辑器中查看结果
