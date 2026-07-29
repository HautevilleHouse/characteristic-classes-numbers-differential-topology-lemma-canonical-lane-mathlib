import canonicalLaneMathlib.AdmissibleClass
import CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean.CharacteristicClassBundle

namespace HautevilleHouse
namespace CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean

structure ChernWeilConstruction (B : CharacteristicClassBundle) where
  connection : Type u
  curvature : Type v
  invariantPolynomial : Type w
  chernClass : Type x
  connectionDefined : Prop
  curvatureDefined : Prop
  invariantPolynomialClosed : Prop
  chernClassConstructed : Prop
  chernClassMatchesFundamentalClass : Prop

structure ChernWeilConstructionEvidence {B : CharacteristicClassBundle} (C : ChernWeilConstruction B) where
  connectionDefinedClosed : C.connectionDefined
  curvatureDefinedClosed : C.curvatureDefined
  invariantPolynomialClosed : C.invariantPolynomialClosed
  chernClassConstructedClosed : C.chernClassConstructed
  chernClassMatchesFundamentalClassClosed : C.chernClassMatchesFundamentalClass

def ChernWeilConstructionClosed {B : CharacteristicClassBundle} (C : ChernWeilConstruction B) : Prop :=
  C.connectionDefined ∧ C.curvatureDefined ∧ C.invariantPolynomialClosed ∧ C.chernClassConstructed ∧ C.chernClassMatchesFundamentalClass

theorem chern_weil_construction_closed_from_evidence
    {B : CharacteristicClassBundle} (C : ChernWeilConstruction B)
    (E : ChernWeilConstructionEvidence C) : ChernWeilConstructionClosed C := by
  exact And.intro E.connectionDefinedClosed
    (And.intro E.curvatureDefinedClosed
      (And.intro E.invariantPolynomialClosed
        (And.intro E.chernClassConstructedClosed E.chernClassMatchesFundamentalClassClosed)))

end CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean
end HautevilleHouse