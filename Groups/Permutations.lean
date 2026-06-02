import Groups.Functions

namespace Permutations

open Functions

def permutation (f : α -> α) := bijective f

theorem cancellation :
  permutation α ∧ permutation β ∧ permutation γ ∧
    ((α ∘ β = α ∘ γ) ∨ (β ∘ α = γ ∘ α)) → β = γ := by
  intro ⟨ha, hb, hc, h⟩
  cases h
  · sorry
  · sorry

end Permutations
