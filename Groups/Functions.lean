namespace Functions

def injective (f : α → β) := ∀ ⦃ x₁ x₂ ⦄, f x₁ = f x₂ → x₁ = x₂
def surjective (f : α → β) := ∀y : β, ∃x : α, f x = y
def bijective (f : α → β) := injective f ∧ surjective f
def ident : α -> α := fun x => x
def has_inverse (f : α → β) := ∃g : β -> α, f ∘ g = ident ∧ g ∘ f = ident

theorem has_inverse_implies_bijection :
  (∀ f: α → β, has_inverse f → bijective f) := by
  intro f hi
  apply And.intro
  · intro x₁ x₂ hf
    cases hi with
    | intro w hw =>
      have h' : (w ∘ f) x₁ = (w ∘ f) x₂ := by
        change w (f x₁) = w (f x₂)
        rw [hf]
      rw [hw.2] at h'
      exact h'
  · intro y
    cases hi with
    | intro w hw =>
      · exists w y
        change (f ∘ w) y = y
        rw [hw.1]
        rfl

end Functions
