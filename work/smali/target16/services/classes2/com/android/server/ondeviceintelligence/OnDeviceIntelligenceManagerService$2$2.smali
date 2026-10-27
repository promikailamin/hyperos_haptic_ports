.class public Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$2;
.super Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub;
.source "OnDeviceIntelligenceManagerService.java"


# instance fields
.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic val$listFeaturesCallback:Landroid/app/ondeviceintelligence/IListFeaturesCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;Landroid/app/ondeviceintelligence/IListFeaturesCallback;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4

    .line 366
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$2;->val$listFeaturesCallback:Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$2;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 5

    .line 378
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$2;->val$listFeaturesCallback:Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/IListFeaturesCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 380
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$2;->val$future:Lcom/android/internal/infra/AndroidFuture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .registers 3

    .line 370
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$2;->val$listFeaturesCallback:Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    invoke-interface {v0, p1}, Landroid/app/ondeviceintelligence/IListFeaturesCallback;->onSuccess(Ljava/util/List;)V

    .line 371
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$2;->val$future:Lcom/android/internal/infra/AndroidFuture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
