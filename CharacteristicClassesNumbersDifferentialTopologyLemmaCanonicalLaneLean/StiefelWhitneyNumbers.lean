import canonicalLaneMathlib.AdmissibleClass
import CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean.CharacteristicClassBundle

namespace HautevilleHouse
namespace CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean

structure StiefelWhitneyClasses (B : CharacteristicClassBundle) where
  stiefelWhitneyClasses : Type u
  topStiefelWhitneyClass : Prop
  stiefelWhitneyNumbersDefined : Prop
  wuFormula : Prop
  mod2PoincareDuality : Prop

structure StiefelWhitneyClassesEvidence {B : CharacteristicClassBundle} (S : StiefelWhitneyClasses B) where
  topStiefelWhitneyClassClosed : S.topStiefelWhitneyClass
  stiefelWhitneyNumbersDefinedClosed : S.stiefelWhitneyNumbersDefined
  wuFormulaClosed : S.wuFormula
  mod2PoincareDualityClosed : S.mod2PoincareDuality

def StiefelWhitneyClassesClosed {B : CharacteristicClassBundle} (S : StiefelWhitneyClasses B) : Prop :=
  S.topStiefelWhitneyClass ∧ S.stiefelWhitneyNumbersDefined ∧ S.wuFormula ∧ S.mod2PoincareDuality

theorem stiefel_whitney_classes_closed_from_evidence
    {B : CharacteristicClassBundle} (S : StiefelWhitneyClasses B)
    (E : StiefelWhitneyClassesEvidence S) : StiefelWhitneyClassesClosed S := by
  exact And.intro E.topStiefelWhitneyClassClosed
    (And.intro E.stiefelWhitneyNumbersDefinedClosed
      (And.intro E.wuFormulaClosed E.mod2PoincareDualityClosed))

end CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean
end HautevilleHouse