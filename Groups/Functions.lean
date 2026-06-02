namespace Functions

def injective (f : α → β) := ∀ ⦃ x₁ x₂ ⦄, f x₁ = f x₂ → x₁ = x₂
def surjective (f : α → β) := ∀y : β, ∃x : α, f x = y
def bijective (f : α → β) := injective f ∧ surjective f
def ident : α -> α := fun x => x
def has_inverse (f : α → β) := ∃g : β -> α, f ∘ g = ident

theorem bijection_iff_has_inverse :
  (∀ f: α → β, bijective f ↔ has_inverse f) := by
  intro f
  apply Iff.intro
  · intro hb
    sorry
  · intro hi
    sorry

end Functions
