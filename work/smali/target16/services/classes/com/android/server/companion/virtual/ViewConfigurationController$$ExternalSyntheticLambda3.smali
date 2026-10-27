.class public final synthetic Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/ViewConfigurationController;

.field public final synthetic f$1:Landroid/content/om/FabricatedOverlay;

.field public final synthetic f$2:Landroid/content/om/OverlayIdentifier;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/ViewConfigurationController;Landroid/content/om/FabricatedOverlay;Landroid/content/om/OverlayIdentifier;II)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/companion/virtual/ViewConfigurationController;

    iput-object p2, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda3;->f$1:Landroid/content/om/FabricatedOverlay;

    iput-object p3, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda3;->f$2:Landroid/content/om/OverlayIdentifier;

    iput p4, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda3;->f$3:I

    iput p5, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda3;->f$4:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/companion/virtual/ViewConfigurationController;

    iget-object v1, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda3;->f$1:Landroid/content/om/FabricatedOverlay;

    iget-object v2, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda3;->f$2:Landroid/content/om/OverlayIdentifier;

    iget v3, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda3;->f$3:I

    iget p0, p0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda3;->f$4:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/companion/virtual/ViewConfigurationController;->$r8$lambda$1Zg6uqEdFNsh1yhCPbZk-EQnUds(Lcom/android/server/companion/virtual/ViewConfigurationController;Landroid/content/om/FabricatedOverlay;Landroid/content/om/OverlayIdentifier;II)V

    return-void
.end method
