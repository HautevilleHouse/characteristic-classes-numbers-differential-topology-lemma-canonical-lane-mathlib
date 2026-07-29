import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean.CharacteristicClasses

namespace HautevilleHouse
namespace CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean

structure CharacteristicNumbersPackage {P : CharacteristicClassPackage} where
  chernNumbersDefined : Prop
  pontryaginNumbersDefined : Prop
  eulerCharacteristicDefined : Prop
  signaturesDefined : Prop
  chernNumbersDefinedClosed : chernNumbersDefined
  pontryaginNumbersDefinedClosed : pontryaginNumbersDefined
  eulerCharacteristicDefinedClosed : eulerCharacteristicDefined
  signaturesDefinedClosed : signaturesDefined

structure CharacteristicNumbersEvidence {P : CharacteristicClassPackage}
    (N : CharacteristicNumbersPackage P) where
  chernNumbersDefinedClosed : N.chernNumbersDefined
  pontryaginNumbersDefinedClosed : N.pontryaginNumbersDefined
  eulerCharacteristicDefinedClosed : N.eulerCharacteristicDefined
  signaturesDefinedClosed : N.signaturesDefined

def CharacteristicNumbersClosed {P : CharacteristicClassPackage}
    (N : CharacteristicNumbersPackage P) : Prop :=
  N.chernNumbersDefined ∧ N.pontryaginNumbersDefined ∧
  N.eulerCharacteristicDefined ∧ N.signaturesDefined

theorem characteristic_numbers_closed_from_evidence
    {P : CharacteristicClassPackage} (N : CharacteristicNumbersPackage P)
    (E : CharacteristicNumbersEvidence N) : CharacteristicNumbersClosed N := by
  exact And.intro E.chernNumbersDefinedClosed
    (And.intro E.pontryaginNumbersDefinedClosed
      (And.intro E.eulerCharacteristicDefinedClosed E.signaturesDefinedClosed))

end CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean
end HautevilleHouse