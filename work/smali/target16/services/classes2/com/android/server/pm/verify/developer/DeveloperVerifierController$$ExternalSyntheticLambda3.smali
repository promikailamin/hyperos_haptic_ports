.class public final synthetic Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/content/pm/verify/developer/IDeveloperVerifierService;

    invoke-static {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->$r8$lambda$FVd7csmZmF7xSj2CmmW5T8S8V10(Ljava/lang/String;Landroid/content/pm/verify/developer/IDeveloperVerifierService;)V

    return-void
.end method
