.class public Lcom/android/server/ondeviceintelligence/BundleUtil$2;
.super Landroid/app/ondeviceintelligence/IResponseCallback$Stub;
.source "BundleUtil.java"


# instance fields
.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

.field public final synthetic val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic val$responseCallback:Landroid/app/ondeviceintelligence/IResponseCallback;

.field public final synthetic val$shouldForwardInferenceInfo:Z


# direct methods
.method public static synthetic $r8$lambda$PV-2D1G17EGkK0qStjK0pRbJZ2g(Landroid/os/RemoteCallback;Ljava/util/concurrent/Executor;Landroid/os/Bundle;)V
    .registers 4

    .line 296
    :try_start_0
    invoke-static {p2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    .line 297
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_f

    .line 299
    new-instance p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2$$ExternalSyntheticLambda3;

    invoke-direct {p0, p2}, Lcom/android/server/ondeviceintelligence/BundleUtil$2$$ExternalSyntheticLambda3;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_f
    move-exception p0

    new-instance v0, Lcom/android/server/ondeviceintelligence/BundleUtil$2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/android/server/ondeviceintelligence/BundleUtil$2$$ExternalSyntheticLambda3;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 301
    throw p0
.end method

.method public static synthetic $r8$lambda$RfTaB0ZJoPbn8O0LTIcx3BV7erY(Landroid/os/Bundle;)V
    .registers 1

    .line 304
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U1ptxK_cE_ZZaF2CYFzzC4OxM3U(Landroid/os/Bundle;)V
    .registers 1

    .line 300
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iy3swrfQYidJ5DvVNadfsJ3wtAA(Landroid/os/Bundle;)V
    .registers 1

    .line 270
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/ondeviceintelligence/IResponseCallback;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Ljava/util/concurrent/Executor;Lcom/android/internal/infra/AndroidFuture;Z)V
    .registers 6

    .line 262
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$responseCallback:Landroid/app/ondeviceintelligence/IResponseCallback;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$future:Lcom/android/internal/infra/AndroidFuture;

    iput-boolean p5, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$shouldForwardInferenceInfo:Z

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IResponseCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAugmentRequest(Landroid/os/Bundle;Landroid/os/RemoteCallback;)V
    .registers 7

    .line 290
    :try_start_0
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeResponseParams(Landroid/os/Bundle;)V

    .line 291
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$responseCallback:Landroid/app/ondeviceintelligence/IResponseCallback;

    new-instance v1, Landroid/os/RemoteCallback;

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/ondeviceintelligence/BundleUtil$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2, v2}, Lcom/android/server/ondeviceintelligence/BundleUtil$2$$ExternalSyntheticLambda0;-><init>(Landroid/os/RemoteCallback;Ljava/util/concurrent/Executor;)V

    invoke-direct {v1, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Landroid/app/ondeviceintelligence/IResponseCallback;->onDataAugmentRequest(Landroid/os/Bundle;Landroid/os/RemoteCallback;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_1f

    .line 304
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/server/ondeviceintelligence/BundleUtil$2$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$2$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1f
    move-exception p2

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/ondeviceintelligence/BundleUtil$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$2$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 305
    throw p2
.end method

.method public onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 6

    const/4 v0, 0x0

    .line 279
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$responseCallback:Landroid/app/ondeviceintelligence/IResponseCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/ondeviceintelligence/IResponseCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 280
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    invoke-virtual {p1, p3}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->addInferenceInfoFromBundle(Landroid/os/PersistableBundle;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    .line 282
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :catchall_11
    move-exception p1

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 283
    throw p1
.end method

.method public onInferenceInfo(Landroid/app/ondeviceintelligence/InferenceInfo;)V
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    invoke-virtual {v0, p1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->add(Landroid/app/ondeviceintelligence/InferenceInfo;)V

    .line 311
    iget-boolean v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$shouldForwardInferenceInfo:Z

    if-eqz v0, :cond_e

    .line 312
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$responseCallback:Landroid/app/ondeviceintelligence/IResponseCallback;

    invoke-interface {p0, p1}, Landroid/app/ondeviceintelligence/IResponseCallback;->onInferenceInfo(Landroid/app/ondeviceintelligence/InferenceInfo;)V

    :cond_e
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 6

    const/4 v0, 0x0

    .line 266
    :try_start_1
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeResponseParams(Landroid/os/Bundle;)V

    .line 267
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$responseCallback:Landroid/app/ondeviceintelligence/IResponseCallback;

    invoke-interface {v1, p1}, Landroid/app/ondeviceintelligence/IResponseCallback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1e

    .line 269
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    invoke-virtual {v1, p1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->addInferenceInfoFromBundle(Landroid/os/Bundle;)V

    .line 270
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/ondeviceintelligence/BundleUtil$2$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$2$$ExternalSyntheticLambda2;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 271
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :catchall_1e
    move-exception v1

    .line 269
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    invoke-virtual {v2, p1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->addInferenceInfoFromBundle(Landroid/os/Bundle;)V

    .line 270
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/ondeviceintelligence/BundleUtil$2$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$2$$ExternalSyntheticLambda2;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 271
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 272
    throw v1
.end method
