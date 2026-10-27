.class public final Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;
.super Ljava/lang/Object;
.source "RecordingActivityMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;


# instance fields
.field public final mRecorderToken:Landroid/os/IBinder;

.field public final mRiid:I


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;)V
    .registers 3

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->mRiid:I

    .line 567
    iput-object p2, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->mRecorderToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 571
    sget-object v0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    iget p0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->mRiid:I

    invoke-virtual {v0, p0}, Lcom/android/server/audio/RecordingActivityMonitor;->releaseRecorder(I)V

    return-void
.end method

.method public init()Z
    .registers 4

    const/4 v0, 0x0

    .line 576
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->mRecorderToken:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    const/4 p0, 0x1

    return p0

    :catch_8
    move-exception p0

    .line 579
    const-string v1, "AudioService.RecordingActivityMonitor"

    const-string v2, "Could not link to recorder death"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public release()V
    .registers 3

    .line 585
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->mRecorderToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
