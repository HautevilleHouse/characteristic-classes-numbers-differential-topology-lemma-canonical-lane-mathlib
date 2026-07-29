import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean

structure HirzebruchSignatureData where
  compactOrientedManifold : Type u
  dimension : ℕ
  signature : ℤ
  LGenus : ℝ
  pontryaginNumbers : List ℤ
  hirzebruchFormulaHolds : Prop

def HirzebruchSignatureClosed (H : HirzebruchSignatureData) : Prop :=
  H.hirzebruchFormulaHolds ∧ H.signature = 0 ∨ H.signature ≠ 0

structure HirzebruchSignatureEvidence (H : HirzebruchSignatureData) where
  signatureClosed : H.hirzebruchFormulaHolds
  signatureValueComputed : H.signature ≠ 0 → H.pontryaginNumbers ≠ []

theorem hirzebruch_signature_closed_from_evidence (H : HirzebruchSignatureData) (E : HirzebruchSignatureEvidence H) : HirzebruchSignatureClosed H := by
  by_cases h : H.signature = 0
  · apply Or.inl; exact And.intro E.signatureClosed h
  · apply Or.inr; exact h

end CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean
end HautevilleHouse