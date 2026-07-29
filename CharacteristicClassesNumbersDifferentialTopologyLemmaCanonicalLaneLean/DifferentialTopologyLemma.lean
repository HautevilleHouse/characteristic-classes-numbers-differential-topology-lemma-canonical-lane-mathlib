import canonicalLaneMathlib.AdmissibleClass
import CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean.PontrjaginNumbers
import CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean.EulerClass
import CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean.StiefelWhitneyNumbers

namespace HautevilleHouse
namespace CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean

structure DifferentialTopologyLemma (B : CharacteristicClassBundle) where
  pontrjaginNumbers : PontrjaginNumbers B
  eulerClass : EulerClass B
  stiefelWhitneyClasses : StiefelWhitneyClasses B
  characteristicNumbersClassify : Prop
  cobordismInvariant : Prop
  homotopyInvariant : Prop

structure DifferentialTopologyLemmaEvidence {B : CharacteristicClassBundle}
    (L : DifferentialTopologyLemma B) where
  pontrjaginNumbersClosed : PontrjaginNumbersClosed L.pontrjaginNumbers
  eulerClassClosed : EulerClassClosed L.eulerClass
  stiefelWhitneyClassesClosed : StiefelWhitneyClassesClosed L.stiefelWhitneyClasses
  characteristicNumbersClassifyClosed : L.characteristicNumbersClassify
  cobordismInvariantClosed : L.cobordismInvariant
  homotopyInvariantClosed : L.homotopyInvariant

def DifferentialTopologyLemmaClosed {B : CharacteristicClassBundle}
    (L : DifferentialTopologyLemma B) : Prop :=
  PontrjaginNumbersClosed L.pontrjaginNumbers ∧ EulerClassClosed L.eulerClass ∧
  StiefelWhitneyClassesClosed L.stiefelWhitneyClasses ∧ L.characteristicNumbersClassify ∧
  L.cobordismInvariant ∧ L.homotopyInvariant

theorem differential_topology_lemma_closed_from_evidence
    {B : CharacteristicClassBundle} (L : DifferentialTopologyLemma B)
    (E : DifferentialTopologyLemmaEvidence L) : DifferentialTopologyLemmaClosed L := by
  exact And.intro E.pontrjaginNumbersClosed
    (And.intro E.eulerClassClosed
      (And.intro E.stiefelWhitneyClassesClosed
        (And.intro E.characteristicNumbersClassifyClosed
          (And.intro E.cobordismInvariantClosed E.homotopyInvariantClosed))))

end CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean
end HautevilleHouse