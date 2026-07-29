import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean

structure PontryaginClassesPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  tangentBundle : Type v
  pontryaginClass : Nat → Prop
  pontryaginClassWellDefined : Prop
  pontryaginClassIntegrality : Prop

structure PontryaginClassesEvidence (P : PontryaginClassesPackage) where
  smoothStructureClosed : P.smoothStructure
  pontryaginClassWellDefinedClosed : P.pontryaginClassWellDefined
  pontryaginClassIntegralityClosed : P.pontryaginClassIntegrality

def PontryaginClassesClosed (P : PontryaginClassesPackage) : Prop :=
  P.smoothStructure ∧ P.pontryaginClassWellDefined ∧ P.pontryaginClassIntegrality

theorem pontryagin_classes_closed_from_evidence (P : PontryaginClassesPackage)
    (E : PontryaginClassesEvidence P) : PontryaginClassesClosed P := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.pontryaginClassWellDefinedClosed E.pontryaginClassIntegralityClosed)

end CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean
end HautevilleHouse
