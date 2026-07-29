import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean

structure StiefelWhitneyClassesPackage where
  realVectorBundle : Type u
  baseManifold : Type v
  stiefelWhitneyClasses : Type w
  whitneySumFormula : Prop
  steenrodSquareRelation : Prop
  thomIsomorphismUsed : Prop

structure StiefelWhitneyClassesEvidence (S : StiefelWhitneyClassesPackage) where
  whitneySumFormulaClosed : S.whitneySumFormula
  steenrodSquareRelationClosed : S.steenrodSquareRelation
  thomIsomorphismUsedClosed : S.thomIsomorphismUsed

def StiefelWhitneyClassesClosed (S : StiefelWhitneyClassesPackage) : Prop :=
  S.whitneySumFormula ∧ S.steenrodSquareRelation ∧ S.thomIsomorphismUsed

theorem stiefel_whitney_closed_from_evidence (S : StiefelWhitneyClassesPackage) (E : StiefelWhitneyClassesEvidence S) : StiefelWhitneyClassesClosed S := by
  exact And.intro E.whitneySumFormulaClosed (And.intro E.steenrodSquareRelationClosed E.thomIsomorphismUsedClosed)

end CharacteristicClassesNumbersDifferentialTopologyLemmaCanonicalLaneLean
end HautevilleHouse