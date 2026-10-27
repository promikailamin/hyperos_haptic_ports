.class Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "HotwordDetectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/voice/IHotwordDetectionService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBindingFlags:I

.field private final mInstanceNumber:I

.field private final mIntent:Landroid/content/Intent;

.field private mIsBound:Z

.field private mIsLoggedFirstConnect:Z

.field private final mLock:Ljava/lang/Object;

.field private mRespectServiceConnectionStatusChanged:Z

.field final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;I)V
    .registers 14
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "bindingFlags"    # I
    .param p5, "userId"    # I
    .param p7, "instanceNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "II",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "Landroid/service/voice/IHotwordDetectionService;",
            ">;I)V"
        }
    .end annotation

    .line 986
    .local p6, "binderAsInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;Landroid/service/voice/IHotwordDetectionService;>;"
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 987
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 973
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mLock:Ljava/lang/Object;

    .line 979
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mRespectServiceConnectionStatusChanged:Z

    .line 980
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIsBound:Z

    .line 981
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIsLoggedFirstConnect:Z

    .line 988
    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIntent:Landroid/content/Intent;

    .line 989
    iput p4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mBindingFlags:I

    .line 990
    iput p7, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mInstanceNumber:I

    .line 991
    return-void
.end method


# virtual methods
.method protected bindService(Landroid/content/ServiceConnection;)Z
    .registers 12
    .param p1, "serviceConnection"    # Landroid/content/ServiceConnection;

    .line 1041
    const/4 v0, 0x3

    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget v3, v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    invoke-static {v1, v2, v3}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 1044
    iget-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIntent:Landroid/content/Intent;

    const v1, 0x4000001

    iget v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mBindingFlags:I

    or-int v6, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hotword_detector_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mInstanceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v1

    .line 1050
    .local v1, "bindResult":Z
    if-nez v1, :cond_45

    .line 1051
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget v3, v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    invoke-static {v2, v0, v3}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_45} :catch_46

    .line 1055
    :cond_45
    return v1

    .line 1056
    .end local v1    # "bindResult":Z
    :catch_46
    move-exception v1

    .line 1057
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget v3, v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    invoke-static {v2, v0, v3}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 1060
    const-string v0, "HotwordDetectionConnection"

    const-string v2, "Can\'t bind to the hotword detection service!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1061
    const/4 v0, 0x0

    return v0
.end method

.method public binderDied()V
    .registers 6

    .line 1021
    invoke-super {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    .line 1022
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1023
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mRespectServiceConnectionStatusChanged:Z

    if-nez v1, :cond_13

    .line 1024
    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Ignored #binderDied event"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    monitor-exit v0

    return-void

    .line 1028
    :cond_13
    const-string v1, "HotwordDetectionConnection"

    const-string v2, "binderDied"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_40

    .line 1030
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmCallback(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onError(I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_24} :catch_25
    .catchall {:try_start_1a .. :try_end_24} :catchall_40

    .line 1033
    goto :goto_3e

    .line 1031
    :catch_25
    move-exception v1

    .line 1032
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_26
    const-string v2, "HotwordDetectionConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to report onError status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3e
    monitor-exit v0

    .line 1035
    return-void

    .line 1034
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_40

    throw v1
.end method

.method protected getAutoDisconnectTimeoutMs()J
    .registers 3

    .line 1016
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method ignoreConnectionStatusEvents()V
    .registers 3

    .line 1072
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1073
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mRespectServiceConnectionStatusChanged:Z

    .line 1074
    monitor-exit v0

    .line 1075
    return-void

    .line 1074
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method isBound()Z
    .registers 3

    .line 1066
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1067
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIsBound:Z

    monitor-exit v0

    return v1

    .line 1068
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 3

    .line 972
    check-cast p1, Landroid/service/voice/IHotwordDetectionService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->onServiceConnectionStatusChanged(Landroid/service/voice/IHotwordDetectionService;Z)V

    return-void
.end method

.method protected onServiceConnectionStatusChanged(Landroid/service/voice/IHotwordDetectionService;Z)V
    .registers 7
    .param p1, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .param p2, "connected"    # Z

    .line 999
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1000
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mRespectServiceConnectionStatusChanged:Z

    if-nez v1, :cond_10

    .line 1001
    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Ignored onServiceConnectionStatusChanged event"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    monitor-exit v0

    return-void

    .line 1004
    :cond_10
    iput-boolean p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIsBound:Z

    .line 1005
    if-eqz p2, :cond_29

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIsLoggedFirstConnect:Z

    if-nez v1, :cond_29

    .line 1006
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIsLoggedFirstConnect:Z

    .line 1007
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget v3, v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    invoke-static {v1, v2, v3}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 1011
    :cond_29
    monitor-exit v0

    .line 1012
    return-void

    .line 1011
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method
