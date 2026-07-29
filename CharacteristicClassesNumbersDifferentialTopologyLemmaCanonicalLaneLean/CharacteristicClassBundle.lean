import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean

structure CharacteristicClassBundle where
  baseManifold : Type u
  baseTopology : TopologicalSpace baseManifold
  baseSmooth : Prop
  vectorBundle : Type v
  bundleTopology : TopologicalSpace vectorBundle
  bundleSmooth : Prop
  rank : Nat
  transitionFunctions : Type w
  transitionSmooth : Prop

structure CharacteristicClassBundleEvidence (B : CharacteristicClassBundle) where
  baseSmoothClosed : B.baseSmooth
  bundleSmoothClosed : B.bundleSmooth
  transitionSmoothClosed : B.transitionSmooth

def CharacteristicClassBundleClosed (B : CharacteristicClassBundle) : Prop :=
  B.baseSmooth ∧ B.bundleSmooth ∧ B.transitionSmooth

theorem characteristic_class_bundle_closed_from_evidence
    (B : CharacteristicClassBundle) (E : CharacteristicClassBundleEvidence B) :
    CharacteristicClassBundleClosed B := by
  exact And.intro E.baseSmoothClosed (And.intro E.bundleSmoothClosed E.transitionSmoothClosed)

end CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean
end HautevilleHouse