.class Lcom/android/server/trust/TrustAgentWrapper$5;
.super Ljava/lang/Object;
.source "TrustAgentWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .line 422
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 425
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrustAgent started : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustAgentWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_22
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p2}, Landroid/service/trust/ITrustAgentService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentService;)V

    .line 428
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/trust/TrustArchive;->logAgentConnected(ILandroid/content/ComponentName;)V

    .line 429
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmCallback(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$msetCallback(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentServiceCallback;)V

    .line 430
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->updateDevicePolicyFeatures()Z

    .line 432
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmPendingSuccessfulUnlock(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 433
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockAttempt(Z)V

    .line 434
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmPendingSuccessfulUnlock(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 437
    :cond_68
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 438
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceLocked()V

    goto :goto_85

    .line 440
    :cond_80
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceUnlocked()V

    .line 442
    :goto_85
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 446
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrustAgent disconnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustAgentWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_22
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentService;)V

    .line 448
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmManagingTrust(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 449
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmSetTrustAgentFeaturesToken(Lcom/android/server/trust/TrustAgentWrapper;Landroid/os/IBinder;)V

    .line 450
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/trust/TrustArchive;->logAgentDied(ILandroid/content/ComponentName;)V

    .line 451
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 452
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmBound(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 453
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$mscheduleRestart(Lcom/android/server/trust/TrustAgentWrapper;)V

    .line 456
    :cond_5b
    return-void
.end method
