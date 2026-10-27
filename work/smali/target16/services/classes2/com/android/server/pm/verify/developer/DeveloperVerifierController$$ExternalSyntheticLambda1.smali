.class public final synthetic Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda1;->f$0:I

    check-cast p1, Landroid/content/pm/verify/developer/IDeveloperVerifierService;

    invoke-static {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->$r8$lambda$4BJOiK371dQ3O3vWn6l1_3Prxro(ILandroid/content/pm/verify/developer/IDeveloperVerifierService;)V

    return-void
.end method
