.class public final synthetic Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/pm/verify/developer/DeveloperVerificationSession;


# direct methods
.method public synthetic constructor <init>(ZILandroid/content/pm/verify/developer/DeveloperVerificationSession;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda5;->f$0:Z

    iput p2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda5;->f$2:Landroid/content/pm/verify/developer/DeveloperVerificationSession;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-boolean v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda5;->f$0:Z

    iget v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda5;->f$1:I

    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda5;->f$2:Landroid/content/pm/verify/developer/DeveloperVerificationSession;

    check-cast p1, Landroid/content/pm/verify/developer/IDeveloperVerifierService;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->$r8$lambda$7mCOOla8rISYPs9m38zV5ryHHtI(ZILandroid/content/pm/verify/developer/DeveloperVerificationSession;Landroid/content/pm/verify/developer/IDeveloperVerifierService;)V

    return-void
.end method
