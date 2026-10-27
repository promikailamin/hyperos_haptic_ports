.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$RemoteCallRunner;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/PersistableBundle;

.field public final synthetic f$3:Landroid/app/ondeviceintelligence/IListFeaturesCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;ILandroid/os/PersistableBundle;Landroid/app/ondeviceintelligence/IListFeaturesCallback;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;

    iput p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda13;->f$1:I

    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda13;->f$2:Landroid/os/PersistableBundle;

    iput-object p4, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda13;->f$3:Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)Lcom/android/internal/infra/AndroidFuture;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;

    iget v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda13;->f$1:I

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda13;->f$2:Landroid/os/PersistableBundle;

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda13;->f$3:Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->$r8$lambda$h60wyudDaoUhCBTBpJCB2TGT61o(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;ILandroid/os/PersistableBundle;Landroid/app/ondeviceintelligence/IListFeaturesCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method
