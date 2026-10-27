.class public interface abstract Landroid/uwb/RangingSession$Callback;
.super Ljava/lang/Object;
.source "RangingSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/RangingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/RangingSession$Callback$DataFailureReason;,
        Landroid/uwb/RangingSession$Callback$ControleeFailureReason;,
        Landroid/uwb/RangingSession$Callback$Reason;
    }
.end annotation


# static fields
.field public static final whitelist CONTROLEE_FAILURE_REASON_MAX_CONTROLEE_REACHED:I = 0x0

.field public static final whitelist DATA_FAILURE_REASON_DATA_SIZE_TOO_LARGE:I = 0xa

.field public static final whitelist REASON_BAD_PARAMETERS:I = 0x3

.field public static final whitelist REASON_GENERIC_ERROR:I = 0x4

.field public static final whitelist REASON_LOCAL_REQUEST:I = 0x1

.field public static final whitelist REASON_MAX_RR_RETRY_REACHED:I = 0x9

.field public static final whitelist REASON_MAX_SESSIONS_REACHED:I = 0x5

.field public static final whitelist REASON_PROTOCOL_SPECIFIC_ERROR:I = 0x7

.field public static final whitelist REASON_REMOTE_REQUEST:I = 0x2

.field public static final whitelist REASON_SERVICE_CONNECTION_FAILURE:I = 0xb

.field public static final whitelist REASON_SERVICE_DISCOVERY_FAILURE:I = 0xa

.field public static final whitelist REASON_SE_INTERACTION_FAILURE:I = 0xd

.field public static final whitelist REASON_SE_NOT_SUPPORTED:I = 0xc

.field public static final whitelist REASON_SYSTEM_POLICY:I = 0x6

.field public static final whitelist REASON_UNKNOWN:I


# virtual methods
.method public abstract whitelist onClosed(ILandroid/os/PersistableBundle;)V
.end method

.method public whitelist onControleeAddFailed(ILandroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "reason"    # I
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 307
    return-void
.end method

.method public whitelist onControleeAdded(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p1, "parameters"    # Landroid/os/PersistableBundle;

    .line 298
    return-void
.end method

.method public whitelist onControleeRemoveFailed(ILandroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "reason"    # I
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 323
    return-void
.end method

.method public whitelist onControleeRemoved(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p1, "parameters"    # Landroid/os/PersistableBundle;

    .line 314
    return-void
.end method

.method public whitelist onDataReceiveFailed(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 397
    return-void
.end method

.method public whitelist onDataReceived(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V
    .registers 4
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .param p3, "data"    # [B

    .line 387
    return-void
.end method

.method public whitelist onDataSendFailed(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 374
    return-void
.end method

.method public whitelist onDataSent(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 363
    return-void
.end method

.method public abstract whitelist onOpenFailed(ILandroid/os/PersistableBundle;)V
.end method

.method public abstract whitelist onOpened(Landroid/uwb/RangingSession;)V
.end method

.method public whitelist onPauseFailed(ILandroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "reason"    # I
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 338
    return-void
.end method

.method public whitelist onPaused(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p1, "parameters"    # Landroid/os/PersistableBundle;

    .line 330
    return-void
.end method

.method public abstract whitelist onReconfigureFailed(ILandroid/os/PersistableBundle;)V
.end method

.method public abstract whitelist onReconfigured(Landroid/os/PersistableBundle;)V
.end method

.method public abstract whitelist onReportReceived(Landroid/uwb/RangingReport;)V
.end method

.method public whitelist onResumeFailed(ILandroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "reason"    # I
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 353
    return-void
.end method

.method public whitelist onResumed(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p1, "parameters"    # Landroid/os/PersistableBundle;

    .line 345
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p1, "parameters"    # Landroid/os/PersistableBundle;

    .line 419
    return-void
.end method

.method public whitelist onServiceDiscovered(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p1, "parameters"    # Landroid/os/PersistableBundle;

    .line 408
    return-void
.end method

.method public abstract whitelist onStartFailed(ILandroid/os/PersistableBundle;)V
.end method

.method public abstract whitelist onStarted(Landroid/os/PersistableBundle;)V
.end method

.method public abstract whitelist onStopFailed(ILandroid/os/PersistableBundle;)V
.end method

.method public abstract whitelist onStopped(ILandroid/os/PersistableBundle;)V
.end method
