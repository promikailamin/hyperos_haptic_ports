.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$RemoteCallRunner;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/app/ondeviceintelligence/Feature;

.field public final synthetic f$4:I

.field public final synthetic f$5:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic f$6:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic f$7:Landroid/app/ondeviceintelligence/IResponseCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;Landroid/os/Bundle;ILandroid/app/ondeviceintelligence/Feature;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;->f$1:Landroid/os/Bundle;

    iput p3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;->f$2:I

    iput-object p4, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;->f$3:Landroid/app/ondeviceintelligence/Feature;

    iput p5, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;->f$4:I

    iput-object p6, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;->f$5:Lcom/android/internal/infra/AndroidFuture;

    iput-object p7, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;->f$6:Lcom/android/internal/infra/AndroidFuture;

    iput-object p8, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;->f$7:Landroid/app/ondeviceintelligence/IResponseCallback;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)Lcom/android/internal/infra/AndroidFuture;
    .registers 11

    .line 0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;->f$1:Landroid/os/Bundle;

    iget v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;->f$2:I

    iget-object v3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;->f$3:Landroid/app/ondeviceintelligence/Feature;

    iget v4, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;->f$4:I

    iget-object v5, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;->f$5:Lcom/android/internal/infra/AndroidFuture;

    iget-object v6, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;->f$6:Lcom/android/internal/infra/AndroidFuture;

    iget-object v7, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;->f$7:Landroid/app/ondeviceintelligence/IResponseCallback;

    move-object v8, p1

    check-cast v8, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;

    invoke-static/range {v0 .. v8}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->$r8$lambda$gmfbX0JIJ3hrxBTQrFscum4alYA(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;Landroid/os/Bundle;ILandroid/app/ondeviceintelligence/Feature;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method
