.class public Lcom/android/server/ondeviceintelligence/BundleUtil$3;
.super Landroid/app/ondeviceintelligence/ITokenInfoCallback$Stub;
.source "BundleUtil.java"


# instance fields
.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

.field public final synthetic val$responseCallback:Landroid/app/ondeviceintelligence/ITokenInfoCallback;


# direct methods
.method public constructor <init>(Landroid/app/ondeviceintelligence/ITokenInfoCallback;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4

    .line 322
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$responseCallback:Landroid/app/ondeviceintelligence/ITokenInfoCallback;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/ITokenInfoCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 6

    const/4 v0, 0x0

    .line 339
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$responseCallback:Landroid/app/ondeviceintelligence/ITokenInfoCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/ondeviceintelligence/ITokenInfoCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 340
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    invoke-virtual {p1, p3}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->addInferenceInfoFromBundle(Landroid/os/PersistableBundle;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    .line 342
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :catchall_11
    move-exception p1

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 343
    throw p1
.end method

.method public onSuccess(Landroid/app/ondeviceintelligence/TokenInfo;)V
    .registers 4

    const/4 v0, 0x0

    .line 326
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$responseCallback:Landroid/app/ondeviceintelligence/ITokenInfoCallback;

    invoke-interface {v1, p1}, Landroid/app/ondeviceintelligence/ITokenInfoCallback;->onSuccess(Landroid/app/ondeviceintelligence/TokenInfo;)V

    .line 327
    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/TokenInfo;->getInfoParams()Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 328
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/TokenInfo;->getInfoParams()Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->addInferenceInfoFromBundle(Landroid/os/PersistableBundle;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_16

    goto :goto_18

    :catchall_16
    move-exception p1

    goto :goto_1e

    .line 331
    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 332
    throw p1
.end method
