import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CharacteristicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean
end HautevilleHouse