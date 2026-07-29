import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean

structure ChernClassesPackage where
  complexManifold : Type u
  complexTopology : TopologicalSpace complexManifold
  complexStructure : Prop
  chernClass : Nat → Prop
  chernClassDefined : Prop
  chernClassNaturality : Prop

structure ChernClassesEvidence (C : ChernClassesPackage) where
  complexStructureClosed : C.complexStructure
  chernClassDefinedClosed : C.chernClassDefined
  chernClassNaturalityClosed : C.chernClassNaturality

def ChernClassesClosed (C : ChernClassesPackage) : Prop :=
  C.complexStructure ∧ C.chernClassDefined ∧ C.chernClassNaturality

theorem chern_classes_closed_from_evidence (C : ChernClassesPackage)
    (E : ChernClassesEvidence C) : ChernClassesClosed C := by
  exact And.intro E.complexStructureClosed
    (And.intro E.chernClassDefinedClosed E.chernClassNaturalityClosed)

end CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean
end HautevilleHouse
