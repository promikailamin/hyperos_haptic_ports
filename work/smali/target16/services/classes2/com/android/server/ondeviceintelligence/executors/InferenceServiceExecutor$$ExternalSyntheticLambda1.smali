.class public final synthetic Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$RemoteCallRunner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$RemoteCallRunner;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$RemoteCallRunner;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$RemoteCallRunner;

    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;

    invoke-interface {p0, p1}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$RemoteCallRunner;->run(Landroid/os/IInterface;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method
