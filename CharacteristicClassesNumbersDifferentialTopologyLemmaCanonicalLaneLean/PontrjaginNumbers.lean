import canonicalLaneMathlib.AdmissibleClass
import CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean.ChernWeilConstruction

namespace HautevilleHouse
namespace CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean

structure PontrjaginNumbers (B : CharacteristicClassBundle) where
  pontrjaginClasses : Type u
  pontrjaginNumbers : Type v
  topPontrjaginClass : Prop
  pontrjaginNumbersDefined : Prop
  signatureRelation : Prop
  hirzebruchSignatureTheorem : Prop

structure PontrjaginNumbersEvidence {B : CharacteristicClassBundle} (P : PontrjaginNumbers B) where
  topPontrjaginClassClosed : P.topPontrjaginClass
  pontrjaginNumbersDefinedClosed : P.pontrjaginNumbersDefined
  signatureRelationClosed : P.signatureRelation
  hirzebruchSignatureTheoremClosed : P.hirzebruchSignatureTheorem

def PontrjaginNumbersClosed {B : CharacteristicClassBundle} (P : PontrjaginNumbers B) : Prop :=
  P.topPontrjaginClass ∧ P.pontrjaginNumbersDefined ∧ P.signatureRelation ∧ P.hirzebruchSignatureTheorem

theorem pontrjagin_numbers_closed_from_evidence
    {B : CharacteristicClassBundle} (P : PontrjaginNumbers B)
    (E : PontrjaginNumbersEvidence P) : PontrjaginNumbersClosed P := by
  exact And.intro E.topPontrjaginClassClosed
    (And.intro E.pontrjaginNumbersDefinedClosed
      (And.intro E.signatureRelationClosed E.hirzebruchSignatureTheoremClosed))

end CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean
end HautevilleHouse