.class Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;
.super Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedCallback"
.end annotation


# instance fields
.field private blacklist mCallback:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

.field private blacklist mHandler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/os/Handler;Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    .line 1302
    invoke-direct {p0}, Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;-><init>()V

    .line 1303
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;->mHandler:Landroid/os/Handler;

    .line 1304
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;->mCallback:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    .line 1305
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onCredentialVerified$0$com-android-internal-widget-LockPatternUtils$WrappedCallback()V
    .registers 2

    .line 1316
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;->mCallback:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;->onEarlyMatched()V

    .line 1317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;->mCallback:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    .line 1318
    return-void
.end method

.method public blacklist onCredentialVerified()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1309
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 1310
    const-string v0, "LockPatternUtils"

    const-string v1, "Handler is null during callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;->mHandler:Landroid/os/Handler;

    .line 1320
    return-void
.end method
