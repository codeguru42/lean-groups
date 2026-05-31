namespace Functions

def injective (f : α → β) := ∀ ⦃ x₁ x₂ ⦄, f x₁ = f x₂ → x₁ = x₂
def surjective (f : α → β) := ∀y : β, ∃x : α, f x = y
def bijective (f : α → β) := injective f ∧ surjective f

end Functions
