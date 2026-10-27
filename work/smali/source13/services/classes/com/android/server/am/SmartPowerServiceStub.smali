.class public interface abstract Lcom/android/server/am/SmartPowerServiceStub;
.super Ljava/lang/Object;
.source "SmartPowerServiceStub.java"


# static fields
.field public static final ADUIO_FOCUS_STATUS_ABANDONED:I = 0x1

.field public static final ADUIO_FOCUS_STATUS_LOSSED:I = 0x2

.field public static final ADUIO_FOCUS_STATUS_REQUEST:I = 0x0

.field public static final SERVICE_EXECUTION_TYPE_BIND:I = 0x1

.field public static final SERVICE_EXECUTION_TYPE_CREATE:I = 0x2

.field public static final SERVICE_EXECUTION_TYPE_DESTROY:I = 0x4

.field public static final SERVICE_EXECUTION_TYPE_END:I = 0x0

.field public static final SERVICE_EXECUTION_TYPE_START:I = 0x3

.field public static final SERVICE_EXECUTION_TYPE_UNBIND:I = 0x5


# direct methods
.method public static getInstance()Lcom/android/server/am/SmartPowerServiceStub;
    .registers 1

    .line 34
    const-class v0, Lcom/android/server/am/SmartPowerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SmartPowerServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract isUidIdle(I)Z
.end method

.method public abstract onAcquireLocation(IILandroid/location/ILocationListener;)V
.end method

.method public abstract onAcquireWakelock(Landroid/os/IBinder;ILjava/lang/String;II)V
.end method

.method public abstract onActivityStartUnchecked(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;Z)V
.end method

.method public abstract onActivityVisibilityChanged(ILjava/lang/String;Lcom/android/server/wm/ActivityRecord;Z)V
.end method

.method public abstract onAlarmStatusChanged(IZ)V
.end method

.method public abstract onAppTransitionStartLocked(J)V
.end method

.method public abstract onBackupChanged(ZLcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract onBroadcastStatusChanged(Lcom/android/server/am/ProcessRecord;ZLandroid/content/Intent;)V
.end method

.method public abstract onContentProviderStatusChanged(ILcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)V
.end method

.method public abstract onDisplayDeviceStateChangeLocked(I)V
.end method

.method public abstract onExternalAudioRegister(II)V
.end method

.method public abstract onFocusedWindowChangeLocked(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onHoldScreenUidChanged(IZ)V
.end method

.method public abstract onInputMethodShow(I)V
.end method

.method public abstract onInsetAnimationHide(I)V
.end method

.method public abstract onInsetAnimationShow(I)V
.end method

.method public abstract onMediaKey(I)V
.end method

.method public abstract onMediaKey(II)V
.end method

.method public abstract onPlayerEvent(IIII)V
.end method

.method public abstract onPlayerRlease(III)V
.end method

.method public abstract onPlayerTrack(IIII)V
.end method

.method public abstract onProcessKill(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract onProcessStart(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract onProviderConnectionChanged(Lcom/android/server/am/ContentProviderConnection;Z)V
.end method

.method public abstract onRecentsAnimationEnd()V
.end method

.method public abstract onRecentsAnimationStart(Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract onRecorderEvent(III)V
.end method

.method public abstract onRecorderRlease(II)V
.end method

.method public abstract onRecorderTrack(III)V
.end method

.method public abstract onReleaseLocation(IILandroid/location/ILocationListener;)V
.end method

.method public abstract onReleaseWakelock(Landroid/os/IBinder;I)V
.end method

.method public abstract onRemoteAnimationEnd()V
.end method

.method public abstract onRemoteAnimationStart([Landroid/view/RemoteAnimationTarget;)V
.end method

.method public abstract onServiceConnectionChanged(Lcom/android/server/am/AppBindRecord;Z)V
.end method

.method public abstract onServiceStatusChanged(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ServiceRecord;I)V
.end method

.method public abstract onUsbStateChanged(ZJLandroid/content/Intent;)V
.end method

.method public abstract onVpnChanged(ZILjava/lang/String;)V
.end method

.method public abstract onWallpaperChanged(ZILjava/lang/String;)V
.end method

.method public abstract onWindowAnimationStartLocked(JLandroid/view/SurfaceControl;)V
.end method

.method public abstract onWindowVisibilityChanged(IILcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)V
.end method

.method public abstract playbackStateChanged(IIII)V
.end method

.method public abstract recordAudioFocus(IILjava/lang/String;Z)V
.end method

.method public abstract recordAudioFocusLoss(ILjava/lang/String;I)V
.end method

.method public abstract shouldInterceptAlarm(II)Z
.end method

.method public abstract shouldInterceptBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
.end method

.method public abstract shouldInterceptProvider(ILcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)Z
.end method

.method public abstract shouldInterceptUpdateDisplayModeSpecs(ILcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)Z
.end method

.method public abstract uidAudioStatusChanged(IZ)V
.end method

.method public abstract uidVideoStatusChanged(IZ)V
.end method

.method public abstract updateActivitiesVisibility()V
.end method

.method public abstract updateProcess(Lcom/android/server/am/ProcessRecord;)V
.end method
