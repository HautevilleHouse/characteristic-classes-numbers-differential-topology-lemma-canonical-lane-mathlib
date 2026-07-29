import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean

structure PontryaginNumbersPackage where
  realVectorBundle : Type u
  baseManifold : Type v
  pontryaginClasses : Type w
  pontryaginNumbersDefined : Prop
  hirzebruchSignatureRelation : Prop
  cobordismInvariance : Prop

structure PontryaginNumbersEvidence (P : PontryaginNumbersPackage) where
  pontryaginNumbersDefinedClosed : P.pontryaginNumbersDefined
  hirzebruchSignatureRelationClosed : P.hirzebruchSignatureRelation
  cobordismInvarianceClosed : P.cobordismInvariance

def PontryaginNumbersClosed (P : PontryaginNumbersPackage) : Prop :=
  P.pontryaginNumbersDefined ∧ P.hirzebruchSignatureRelation ∧ P.cobordismInvariance

theorem pontryagin_numbers_closed_from_evidence (P : PontryaginNumbersPackage) (E : PontryaginNumbersEvidence P) : PontryaginNumbersClosed P := by
  exact And.intro E.pontryaginNumbersDefinedClosed (And.intro E.hirzebruchSignatureRelationClosed E.cobordismInvarianceClosed)

end CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean
end HautevilleHouse