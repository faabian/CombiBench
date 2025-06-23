import Mathlib


/--
A ferry with a capacity of 10 people takes a group of 13 men and 7 women across a river. Find the number of ways in which the group may be taken across the if all women go on the first group.
-/
theorem hackmath_8 (sols : Finset ((Fin 13 → Fin 2) × (Fin 7 → Fin 2)))
    (h_sols : ∀ f, f ∈ sols ↔ (∀ i, f.2 i = 0) ∧ ∀ k, ((List.ofFn f.1).count k  + (List.ofFn f.2).count k = 10)) :
    sols.card = ((286) : ℕ ) := by sorry
