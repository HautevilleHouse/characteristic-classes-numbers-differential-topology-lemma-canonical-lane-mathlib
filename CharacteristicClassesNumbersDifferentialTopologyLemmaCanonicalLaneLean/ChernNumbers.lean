import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean

structure ChernNumbersPackage where
  complexManifold : Type u
  topology : TopologicalSpace complexManifold
  complexStructure : Prop
  chernNumbers : List ℕ → Prop
  chernNumbersDefined : Prop
  chernNumbersInvariant : Prop

structure ChernNumbersEvidence (C : ChernNumbersPackage) where
  complexStructureClosed : C.complexStructure
  chernNumbersDefinedClosed : C.chernNumbersDefined
  chernNumbersInvariantClosed : C.chernNumbersInvariant

def ChernNumbersClosed (C : ChernNumbersPackage) : Prop :=
  C.complexStructure ∧ C.chernNumbersDefined ∧ C.chernNumbersInvariant

theorem chern_numbers_closed_from_evidence (C : ChernNumbersPackage)
    (E : ChernNumbersEvidence C) : ChernNumbersClosed C := by
  exact And.intro E.complexStructureClosed
    (And.intro E.chernNumbersDefinedClosed E.chernNumbersInvariantClosed)

end CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean
end HautevilleHouse
