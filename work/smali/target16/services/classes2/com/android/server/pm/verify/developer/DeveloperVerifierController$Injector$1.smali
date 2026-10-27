.class Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector$1;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "DeveloperVerifierController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/content/pm/verify/developer/IDeveloperVerifierService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;Landroid/os/Handler;)V
    .registers 8

    .line 764
    iput-object p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector$1;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

    iput-object p7, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector$1;->val$handler:Landroid/os/Handler;

    move-object p1, p2

    move-object p2, p3

    move p3, p4

    move p4, p5

    move-object p5, p6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method public getAutoDisconnectTimeoutMs()J
    .registers 3

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getJobHandler()Landroid/os/Handler;
    .registers 1

    .line 767
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector$1;->val$handler:Landroid/os/Handler;

    return-object p0
.end method

.method public getRequestTimeoutMs()J
    .registers 3

    .line 772
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector$1;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;->getVerificationRequestTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method
