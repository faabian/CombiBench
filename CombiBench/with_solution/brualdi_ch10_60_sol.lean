import Mathlib

structure LatinSquare (n : ℕ) where
  carrier : Matrix (Fin n) (Fin n) (ZMod n)
  pairwise_1 : ∀ i j1 j2, j1 ≠ j2 → carrier i j1 ≠ carrier i j2
  pairwise_2 : ∀ j i1 i2, i1 ≠ i2 → carrier i1 j ≠ carrier i2 j

def IsIdempotent {n : ℕ} (L : LatinSquare n) : Prop :=
  ∀ i, L.carrier i i = i

/--
Prove that a symmetric, idempotent Latin square has odd order.
-/
theorem brualdi_ch10_60 {n : ℕ} (hn : n > 0) (L : LatinSquare n) :
    IsIdempotent L ∧ L.1.IsSymm → Odd n := by sorry
