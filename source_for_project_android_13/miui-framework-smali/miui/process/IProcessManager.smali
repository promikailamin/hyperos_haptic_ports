.class public interface abstract Lmiui/process/IProcessManager;
.super Ljava/lang/Object;
.source "IProcessManager.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final blacklist ADD_MIUI_APPLICATION_THREAD_TRANSACTION:I = 0xd

.field public static final blacklist BEGIN_SCHED_THREADS_TRANSACTION:I = 0x1d

.field public static final blacklist BOOST_CAMERA_BY_THRESHOLD_TRANSACTION:I = 0x19

.field public static final blacklist BOOST_CAMERA_TRANSACTION:I = 0x12

.field public static final blacklist CAMERA_POSTPROCESS_TRANSACTION:I = 0x23

.field public static final blacklist ENABLE_HOME_SCHED_BOOST_TRANSACTION:I = 0x1a

.field public static final blacklist GET_ACTIVE_UID_INFO_TRANSACTION:I = 0x14

.field public static final blacklist GET_FOREGROUND_APPLICATION_TRANSACTION:I = 0xe

.field public static final blacklist GET_FOREGROUND_INFO_TRANSACTION:I = 0xc

.field public static final blacklist GET_LOCKED_APPLICATION:I = 0x4

.field public static final blacklist GET_PRELOAD_DISPLAY_ID_TRANSACTION:I = 0x1b

.field public static final blacklist GET_RENDER_THREAD_TID_TRANSACTION:I = 0x24

.field public static final blacklist GET_RUNNING_PROCESS_INFO:I = 0x11

.field public static final blacklist IS_LOCKED_APPLICATION_TRANSACTION:I = 0x9

.field public static final blacklist KILL_PRELOAD_APP_TRANSACTION:I = 0x1c

.field public static final blacklist KILL_TRANSACTION:I = 0x2

.field public static final blacklist NOTIFY_BLUETOOTH_EVENT_TRANSACTION:I = 0x1f

.field public static final blacklist PROCESS_ADJ_BOOST_TRANSACTION:I = 0x13

.field public static final blacklist PROTECT_CURRENT_PROCESS_TRANSACTION:I = 0x7

.field public static final blacklist RECLAIM_MEMORY_FOR_CAMERA_TRANSACTION:I = 0x1e

.field public static final blacklist REGISTER_ACTIVITY_CHANGE_TRANSACTION:I = 0xf

.field public static final blacklist REGISTER_FOREGROUND_INFO_LISTENER:I = 0xa

.field public static final blacklist REGISTER_FOREGROUND_WINDOW_LISTENER:I = 0x15

.field public static final blacklist REGISTER_PRELOAD_CALL_BACK:I = 0x18

.field public static final blacklist REPORT_GAME_SCENE_TRANSACTION:I = 0x20

.field public static final blacklist REPORT_TRACK_STATUS_TRANSACTION:I = 0x22

.field public static final blacklist START_PRELOAD_APP_TRANSACTION:I = 0x17

.field public static final blacklist START_PROCESSES_TRANSACTION:I = 0x6

.field public static final blacklist UNREGISTER_ACTIVITY_CHANGE_TRANSACTION:I = 0x10

.field public static final blacklist UNREGISTER_FOREGROUND_INFO_LISTENER:I = 0xb

.field public static final blacklist UNREGISTER_FOREGROUND_WINDOW_LISTENER:I = 0x16

.field public static final blacklist UPDATE_APPLICATION_LOCKED_STATE:I = 0x3

.field public static final blacklist UPDATE_CAMERA_BOOSTER_CLOUD_DATA:I = 0x21

.field public static final blacklist UPDATE_CLOUD_DATA_TRANSACTION:I = 0x8

.field public static final blacklist UPDATE_CONFIG_TRANSACTION:I = 0x5

.field public static final blacklist descriptor:Ljava/lang/String; = "miui.IProcessManager"


# virtual methods
.method public abstract blacklist addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist adjBoost(Ljava/lang/String;IJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist beginSchedThreads([IJII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist boostCameraByThreshold(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist enableHomeSchedBoost(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getActiveUidInfo(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/process/ActiveUidInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getForegroundInfo()Lmiui/process/ForegroundInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getLockedApplication(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getRenderThreadTidByPid(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isLockedApplication(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist kill(Lmiui/process/ProcessConfig;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist killPreloadApp(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyBluetoothEvent(ZIIILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyCameraForegroundState(Ljava/lang/String;ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyCameraPostProcessState()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist protectCurrentProcess(ZI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist reclaimMemoryForCamera(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/process/IActivityChangeListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerPreloadCallback(Lmiui/process/IPreloadCallback;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist reportGameScene(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist reportTrackStatus(IIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startPreloadApp(Ljava/lang/String;ZZLmiui/process/LifecycleConfig;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startProcesses(Ljava/util/List;IZII)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/process/PreloadProcessData;",
            ">;IZII)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateApplicationLockedState(Ljava/lang/String;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateCameraBoosterCloudData(DLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateCloudData(Lmiui/process/ProcessCloudData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateConfig(Lmiui/process/ProcessConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
