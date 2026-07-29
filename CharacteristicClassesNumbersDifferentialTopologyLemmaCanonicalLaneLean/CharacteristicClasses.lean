import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean

structure CharacteristicClassPackage where
  baseManifold : Type u
  topology : TopologicalSpace baseManifold
  smoothStructure : Prop
  vectorBundle : Type v
  bundleRank : Nat
  chernClassesDefined : Prop
  pontryaginClassesDefined : Prop
  eulerClassDefined : Prop
  chernCharacterDefined : Prop
  toddClassDefined : Prop
  chernClassesDefinedClosed : chernClassesDefined
  pontryaginClassesDefinedClosed : pontryaginClassesDefined
  eulerClassDefinedClosed : eulerClassDefined
  chernCharacterDefinedClosed : chernCharacterDefined
  toddClassDefinedClosed : toddClassDefined

structure CharacteristicClassEvidence (P : CharacteristicClassPackage) where
  chernClassesDefinedClosed : P.chernClassesDefined
  pontryaginClassesDefinedClosed : P.pontryaginClassesDefined
  eulerClassDefinedClosed : P.eulerClassDefined
  chernCharacterDefinedClosed : P.chernCharacterDefined
  toddClassDefinedClosed : P.toddClassDefined

def CharacteristicClassClosed (P : CharacteristicClassPackage) : Prop :=
  P.chernClassesDefined ∧ P.pontryaginClassesDefined ∧
  P.eulerClassDefined ∧ P.chernCharacterDefined ∧ P.toddClassDefined

theorem characteristic_class_closed_from_evidence (P : CharacteristicClassPackage)
    (E : CharacteristicClassEvidence P) : CharacteristicClassClosed P := by
  exact And.intro E.chernClassesDefinedClosed
    (And.intro E.pontryaginClassesDefinedClosed
      (And.intro E.eulerClassDefinedClosed
        (And.intro E.chernCharacterDefinedClosed E.toddClassDefinedClosed)))

end CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean
end HautevilleHouse