import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean

def ConstrainedCharacteristicClassesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_characteristic_classes_endgame (A : AdmissibleClass) :
    ConstrainedCharacteristicClassesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean
end HautevilleHouse