import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean

structure EulerClassPackage where
  orientedBundle : Type u
  baseManifold : Type v
  eulerForm : Type w
  eulerClassDefined : Prop
  poincareHopfRelation : Prop
  eulerClassViaChern : Prop

structure EulerClassEvidence (E : EulerClassPackage) where
  eulerClassDefinedClosed : E.eulerClassDefined
  poincareHopfRelationClosed : E.poincareHopfRelation
  eulerClassViaChernClosed : E.eulerClassViaChern

def EulerClassClosed (E : EulerClassPackage) : Prop :=
  E.eulerClassDefined ∧ E.poincareHopfRelation ∧ E.eulerClassViaChern

theorem euler_class_closed_from_evidence (E : EulerClassPackage) (Ev : EulerClassEvidence E) : EulerClassClosed E := by
  exact And.intro Ev.eulerClassDefinedClosed (And.intro Ev.poincareHopfRelationClosed Ev.eulerClassViaChernClosed)

end CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean
end HautevilleHouse