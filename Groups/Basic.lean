structure Group (α : Type) where
  (G : Type)
  (mul : G → G → G)
  (e : G)
  (inv : G → G)
  (mul_assoc : ∀ a b c : G, mul (mul a b) c = mul a (mul b c))
  (mul_e : ∀ a : G, mul a e = a ∧ mul e a = a)
  (mul_inv : ∀ a : G, mul a (inv a) = e ∧ mul (inv a) a = e)
