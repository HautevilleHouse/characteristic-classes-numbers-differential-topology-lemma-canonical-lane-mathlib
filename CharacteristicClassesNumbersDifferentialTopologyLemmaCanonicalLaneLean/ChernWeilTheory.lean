import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean

structure CharacteristicClassData where
  baseManifold : Type u
  topology : TopologicalSpace baseManifold
  smoothStructure : Prop
  vectorBundle : Type v
  rank : ℕ
  chernClass : ℤ → Prop
  pontryaginClass : ℕ → Prop
  eulerClass : Prop
  chernCharacter : Prop
  toddClass : Prop

def CharacteristicClassClosed (C : CharacteristicClassData) : Prop :=
  C.chernClass 1 ∧ C.pontryaginClass 1 ∧ C.eulerClass ∧ C.chernCharacter ∧ C.toddClass

structure ChernWeilEvidence (C : CharacteristicClassData) where
  curvatureForm : Prop
  chernWeilHomomorphism : Prop
  chernClassClosed : C.chernClass 1
  pontryaginClassClosed : C.pontryaginClass 1
  eulerClassClosed : C.eulerClass
  chernCharacterClosed : C.chernCharacter
  toddClassClosed : C.toddClass

theorem chern_weil_closed_from_evidence (C : CharacteristicClassData) (E : ChernWeilEvidence C) : CharacteristicClassClosed C := by
  exact And.intro E.chernClassClosed
    (And.intro E.pontryaginClassClosed
      (And.intro E.eulerClassClosed
        (And.intro E.chernCharacterClosed E.toddClassClosed)))

end CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean
end HautevilleHouse