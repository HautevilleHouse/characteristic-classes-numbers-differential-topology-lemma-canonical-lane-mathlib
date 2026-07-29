import canonicalLaneMathlib.AdmissibleClass
import CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean.CharacteristicClassBundle

namespace HautevilleHouse
namespace CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean

structure EulerClass (B : CharacteristicClassBundle) where
  eulerClass : Type u
  eulerNumber : Type v
  eulerClassConstructed : Prop
  eulerNumberComputed : Prop
  poincareHopfRelation : Prop
  gaussBonnetChernTheorem : Prop

structure EulerClassEvidence {B : CharacteristicClassBundle} (E : EulerClass B) where
  eulerClassConstructedClosed : E.eulerClassConstructed
  eulerNumberComputedClosed : E.eulerNumberComputed
  poincareHopfRelationClosed : E.poincareHopfRelation
  gaussBonnetChernTheoremClosed : E.gaussBonnetChernTheorem

def EulerClassClosed {B : CharacteristicClassBundle} (E : EulerClass B) : Prop :=
  E.eulerClassConstructed ∧ E.eulerNumberComputed ∧ E.poincareHopfRelation ∧ E.gaussBonnetChernTheorem

theorem euler_class_closed_from_evidence
    {B : CharacteristicClassBundle} (E : EulerClass B)
    (Ev : EulerClassEvidence E) : EulerClassClosed E := by
  exact And.intro Ev.eulerClassConstructedClosed
    (And.intro Ev.eulerNumberComputedClosed
      (And.intro Ev.poincareHopfRelationClosed Ev.gaussBonnetChernTheoremClosed))

end CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean
end HautevilleHouse