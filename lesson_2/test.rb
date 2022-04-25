def fix(value)
  value[1] = 'x'
  value
end
s = 'abc'
t = fix(s)
p s            # "axc"
p t            # "axc"
p s.object_id  # 70349153406320
p t.object_id  # 70349153406320
