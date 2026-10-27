.class public final synthetic Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Landroid/companion/AssociationInfo;

.field public final synthetic f$1:Landroid/companion/ActionRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda4;->f$0:Landroid/companion/AssociationInfo;

    iput-object p2, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda4;->f$1:Landroid/companion/ActionRequest;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda4;->f$0:Landroid/companion/AssociationInfo;

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda4;->f$1:Landroid/companion/ActionRequest;

    check-cast p1, Landroid/companion/ICompanionDeviceService;

    invoke-static {v0, p0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->$r8$lambda$YHf_O50cuNRHpXs2V0QOVHt8hoA(Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;Landroid/companion/ICompanionDeviceService;)V

    return-void
.end method
