.class public Lcom/android/server/ondeviceintelligence/BundleUtil$1;
.super Landroid/app/ondeviceintelligence/IStreamingResponseCallback$Stub;
.source "BundleUtil.java"


# instance fields
.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

.field public final synthetic val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic val$shouldForwardInferenceInfo:Z

.field public final synthetic val$streamingResponseCallback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;


# direct methods
.method public static synthetic $r8$lambda$6B0WDwc5V9JAbtHLA5neXu0avp0(Landroid/os/Bundle;)V
    .registers 1

    .line 197
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bo3aWDhUkWiPrgV-VPhFJVp8vdo(Landroid/os/Bundle;)V
    .registers 1

    .line 208
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MH_fyJYbguKPhYMoZkc7vcbrTBA(Landroid/os/Bundle;)V
    .registers 1

    .line 242
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QXA-bxaeSwDy8b37-DmPWysqUhc(Landroid/os/Bundle;)V
    .registers 1

    .line 238
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wOTgICwbHEI92xiGWmKn3OWVTPQ(Landroid/os/RemoteCallback;Ljava/util/concurrent/Executor;Landroid/os/Bundle;)V
    .registers 4

    .line 234
    :try_start_0
    invoke-static {p2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    .line 235
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_f

    .line 237
    new-instance p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda4;

    invoke-direct {p0, p2}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda4;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_f
    move-exception p0

    new-instance v0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda4;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 239
    throw p0
.end method

.method public constructor <init>(Landroid/app/ondeviceintelligence/IStreamingResponseCallback;Ljava/util/concurrent/Executor;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Lcom/android/internal/infra/AndroidFuture;Z)V
    .registers 6

    .line 190
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$streamingResponseCallback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    iput-object p4, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    iput-boolean p5, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$shouldForwardInferenceInfo:Z

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAugmentRequest(Landroid/os/Bundle;Landroid/os/RemoteCallback;)V
    .registers 7

    .line 228
    :try_start_0
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeResponseParams(Landroid/os/Bundle;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$streamingResponseCallback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    new-instance v1, Landroid/os/RemoteCallback;

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, p2, v2}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;-><init>(Landroid/os/RemoteCallback;Ljava/util/concurrent/Executor;)V

    invoke-direct {v1, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;->onDataAugmentRequest(Landroid/os/Bundle;Landroid/os/RemoteCallback;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_1f

    .line 242
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda3;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1f
    move-exception p2

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda3;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 243
    throw p2
.end method

.method public onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 6

    const/4 v0, 0x0

    .line 217
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$streamingResponseCallback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 218
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    invoke-virtual {p1, p3}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->addInferenceInfoFromBundle(Landroid/os/PersistableBundle;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    .line 220
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :catchall_11
    move-exception p1

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 221
    throw p1
.end method

.method public onInferenceInfo(Landroid/app/ondeviceintelligence/InferenceInfo;)V
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    invoke-virtual {v0, p1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->add(Landroid/app/ondeviceintelligence/InferenceInfo;)V

    .line 249
    iget-boolean v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$shouldForwardInferenceInfo:Z

    if-eqz v0, :cond_e

    .line 250
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$streamingResponseCallback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    invoke-interface {p0, p1}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;->onInferenceInfo(Landroid/app/ondeviceintelligence/InferenceInfo;)V

    :cond_e
    return-void
.end method

.method public onNewContent(Landroid/os/Bundle;)V
    .registers 4

    .line 194
    :try_start_0
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeResponseParams(Landroid/os/Bundle;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$streamingResponseCallback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    invoke-interface {v0, p1}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;->onNewContent(Landroid/os/Bundle;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_13

    .line 197
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_13
    move-exception v0

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 198
    throw v0
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 6

    const/4 v0, 0x0

    .line 204
    :try_start_1
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeResponseParams(Landroid/os/Bundle;)V

    .line 205
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$streamingResponseCallback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    invoke-interface {v1, p1}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1e

    .line 207
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    invoke-virtual {v1, p1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->addInferenceInfoFromBundle(Landroid/os/Bundle;)V

    .line 208
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 209
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :catchall_1e
    move-exception v1

    .line 207
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    invoke-virtual {v2, p1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->addInferenceInfoFromBundle(Landroid/os/Bundle;)V

    .line 208
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 209
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 210
    throw v1
.end method
