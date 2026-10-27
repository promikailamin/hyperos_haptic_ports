.class public Landroid/hardware/camera2/impl/CameraDeviceImpl;
.super Landroid/hardware/camera2/CameraDevice;
.source "CameraDeviceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraHandlerExecutor;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    }
.end annotation


# static fields
.field private static final greylist-max-o NANO_PER_SECOND:J = 0x3b9aca00L

.field private static final greylist-max-o REQUEST_ID_NONE:I = -0x1


# instance fields
.field private final greylist-max-o DEBUG:Z

.field private final greylist-max-o TAG:Ljava/lang/String;

.field private blacklist customOpMode:I

.field private final greylist-max-o mAppTargetSdkVersion:I

.field private blacklist mBatchOutputMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCallOnActive:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnBusy:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnClosed:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnDisconnected:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnIdle:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnOpened:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnUnconfigured:Ljava/lang/Runnable;

.field private final greylist-max-o mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

.field private final greylist-max-o mCameraId:Ljava/lang/String;

.field private greylist-max-o mCaptureCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/impl/CaptureCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final greylist-max-o mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private greylist-max-o mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractMap$SimpleEntry<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConfiguredOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

.field private blacklist mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

.field private greylist-max-o mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

.field private final greylist-max-o mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final greylist-max-o mDeviceExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mExposeFrontFlashListValid:Z

.field private blacklist mFailedRepeatingRequestId:I

.field private blacklist mFailedRepeatingRequestTypes:[I

.field private blacklist mFlashMode:I

.field private blacklist mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

.field private greylist-max-o mIdle:Z

.field private greylist-max-o mInError:Z

.field final greylist-max-o mInterfaceLock:Ljava/lang/Object;

.field private blacklist mIsPrivilegedApp:Z

.field private greylist-max-o mNextSessionId:I

.field private blacklist mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

.field private final blacklist mOfflineSupport:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

.field private final blacklist mPhysicalIdsToChars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

.field private greylist-max-o mRepeatingRequestId:I

.field private blacklist mRepeatingRequestTypes:[I

.field private final greylist-max-o mRequestLastFrameNumbersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile greylist-max-o mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

.field private final greylist-max-o mTotalPartialCount:I


# direct methods
.method public static synthetic blacklist $r8$lambda$KBQCqQRdhVVn7uHI9Xdha6OqnsU(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->notifyError(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetDEBUG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetTAG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptureCallbackMap(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfiguredOutputs(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFailedRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFailedRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;)[I
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestTypes:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameNumberTracker(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/FrameNumberTracker;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;)[I
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionStateCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalPartialCount(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFailedRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)V
    .registers 2

    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFailedRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;[I)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestTypes:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)V
    .registers 2

    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;[I)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckAndFireSequenceComplete(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckEarlyTriggerSequenceCompleteLocked(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJ[I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceCompleteLocked(IJ[I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCharacteristics(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isClosed()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveCompletedCallbackHolderLocked(Landroid/hardware/camera2/impl/CameraDeviceImpl;JJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->removeCompletedCallbackHolderLocked(JJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateTracker(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJILandroid/hardware/camera2/CaptureResult;Z)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->updateTracker(IJILandroid/hardware/camera2/CaptureResult;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/Map;ILandroid/content/Context;)V
    .registers 14
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p6, "appTargetSdkVersion"    # I
    .param p7, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraDevice$StateCallback;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 298
    .local p5, "physicalIdsToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice;-><init>()V

    .line 96
    const-string v0, "debug.camera.enable_log_framework"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_18

    .line 97
    const-string v0, "debug.camera.enable_log_device"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    move v0, v1

    goto :goto_19

    :cond_18
    :goto_18
    move v0, v2

    :goto_19
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    .line 100
    iput v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->customOpMode:I

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 106
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 114
    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 128
    iput v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestId:I

    .line 132
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 134
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    .line 148
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mExposeFrontFlashListValid:Z

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    .line 164
    new-instance v0, Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    .line 169
    iput v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    .line 174
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrivilegedApp:Z

    .line 182
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    .line 198
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    .line 213
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    .line 228
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    .line 243
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    .line 263
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    .line 278
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    .line 299
    if-eqz p1, :cond_103

    if-eqz p2, :cond_103

    if-eqz p3, :cond_103

    if-eqz p4, :cond_103

    .line 302
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    .line 303
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 304
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 305
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 306
    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mPhysicalIdsToChars:Ljava/util/Map;

    .line 307
    iput p6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mAppTargetSdkVersion:I

    .line 308
    iput-object p7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mContext:Landroid/content/Context;

    .line 311
    iput v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFlashMode:I

    .line 312
    const-string v0, "camera_front_flash_package_list"

    invoke-static {v0}, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->isWhiteListValid(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mExposeFrontFlashListValid:Z

    .line 315
    const/16 v0, 0x17

    .line 316
    .local v0, "MAX_TAG_LEN":I
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string v4, "CameraDevice-JV-%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x17

    if-le v4, v5, :cond_e0

    .line 318
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 320
    :cond_e0
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    .line 322
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 323
    invoke-virtual {p4, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 324
    .local v1, "partialCount":Ljava/lang/Integer;
    if-nez v1, :cond_ef

    .line 326
    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    goto :goto_f5

    .line 328
    :cond_ef
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    .line 332
    :goto_f5
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtStub;->isPrivilegedApp(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrivilegedApp:Z

    .line 334
    invoke-static {p0, p1}, Landroid/hardware/camera2/impl/CameraExtStub;->initCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V

    .line 336
    return-void

    .line 300
    .end local v0    # "MAX_TAG_LEN":I
    .end local v1    # "partialCount":Ljava/lang/Integer;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkAndFireSequenceComplete()V
    .registers 27

    .line 1735
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedFrameNumber()J

    move-result-wide v2

    .line 1736
    .local v2, "completedFrameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedReprocessFrameNumber()J

    move-result-wide v4

    .line 1737
    .local v4, "completedReprocessFrameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedZslStillFrameNumber()J

    move-result-wide v6

    .line 1739
    .local v6, "completedZslStillFrameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1740
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;>;"
    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_122

    .line 1741
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    .line 1742
    .local v9, "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v10

    .line 1744
    .local v10, "requestId":I
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v0, :cond_37

    .line 1745
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v11, "Camera closed while checking sequences"

    invoke-static {v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    return-void

    .line 1748
    :cond_37
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_e7

    .line 1749
    nop

    .line 1750
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v13

    .line 1751
    .local v13, "lastRegularFrameNumber":J
    nop

    .line 1752
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v15

    .line 1753
    .local v15, "lastReprocessFrameNumber":J
    nop

    .line 1754
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastZslStillFrameNumber()J

    move-result-wide v17

    .line 1755
    .local v17, "lastZslStillFrameNumber":J
    cmp-long v0, v13, v2

    if-gtz v0, :cond_a4

    cmp-long v0, v15, v4

    if-gtz v0, :cond_a4

    cmp-long v0, v17, v6

    if-gtz v0, :cond_a4

    .line 1758
    iget-boolean v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v0, :cond_a1

    .line 1759
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    .line 1762
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v12, v11

    .line 1763
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v19, 0x1

    aput-object v20, v12, v19

    const/16 v20, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v12, v20

    const/16 v20, 0x3

    .line 1764
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v12, v20

    const/16 v20, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v12, v20

    const/16 v20, 0x5

    .line 1765
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v12, v20

    const/16 v20, 0x6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v12, v20

    .line 1759
    const-string v11, "Mark requestId %d as completed, because lastRegularFrame %d is <= %d, lastReprocessFrame %d is <= %d, lastZslStillFrame %d is <= %d"

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    :cond_a1
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->markSequenceCompleted()V

    .line 1771
    :cond_a4
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v11

    .line 1772
    .local v11, "index":I
    if-ltz v11, :cond_b5

    .line 1773
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    goto :goto_b6

    :cond_b5
    const/4 v0, 0x0

    :goto_b6
    move-object v12, v0

    .line 1774
    .local v12, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    if-eqz v12, :cond_e4

    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 1775
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;

    invoke-direct {v0, v1, v10, v12, v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;)V

    move-object/from16 v21, v0

    .line 1792
    .local v21, "resultDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1794
    .local v22, "ident":J
    :try_start_ca
    invoke-virtual {v12}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0
    :try_end_ce
    .catchall {:try_start_ca .. :try_end_ce} :catchall_db

    move-wide/from16 v24, v2

    move-object/from16 v2, v21

    .end local v21    # "resultDispatch":Ljava/lang/Runnable;
    .local v2, "resultDispatch":Ljava/lang/Runnable;
    .local v24, "completedFrameNumber":J
    :try_start_d2
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d9

    .line 1796
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1797
    goto :goto_e9

    .line 1796
    :catchall_d9
    move-exception v0

    goto :goto_e0

    .end local v24    # "completedFrameNumber":J
    .local v2, "completedFrameNumber":J
    .restart local v21    # "resultDispatch":Ljava/lang/Runnable;
    :catchall_db
    move-exception v0

    move-wide/from16 v24, v2

    move-object/from16 v2, v21

    .end local v21    # "resultDispatch":Ljava/lang/Runnable;
    .local v2, "resultDispatch":Ljava/lang/Runnable;
    .restart local v24    # "completedFrameNumber":J
    :goto_e0
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1797
    throw v0

    .line 1774
    .end local v22    # "ident":J
    .end local v24    # "completedFrameNumber":J
    .local v2, "completedFrameNumber":J
    :cond_e4
    move-wide/from16 v24, v2

    .end local v2    # "completedFrameNumber":J
    .restart local v24    # "completedFrameNumber":J
    goto :goto_e9

    .line 1748
    .end local v11    # "index":I
    .end local v12    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v13    # "lastRegularFrameNumber":J
    .end local v15    # "lastReprocessFrameNumber":J
    .end local v17    # "lastZslStillFrameNumber":J
    .end local v24    # "completedFrameNumber":J
    .restart local v2    # "completedFrameNumber":J
    :cond_e7
    move-wide/from16 v24, v2

    .line 1801
    .end local v2    # "completedFrameNumber":J
    .restart local v24    # "completedFrameNumber":J
    :goto_e9
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 1802
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isInflightCompleted()Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 1803
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1804
    .local v0, "index":I
    if-ltz v0, :cond_102

    .line 1805
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1807
    :cond_102
    iget-boolean v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v2, :cond_11b

    .line 1808
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 1809
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v3, v12

    .line 1808
    const-string v11, "Remove holder for requestId %d"

    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :cond_11b
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 1813
    .end local v0    # "index":I
    .end local v9    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    .end local v10    # "requestId":I
    :cond_11e
    move-wide/from16 v2, v24

    goto/16 :goto_1a

    .line 1814
    .end local v24    # "completedFrameNumber":J
    .restart local v2    # "completedFrameNumber":J
    :cond_122
    return-void
.end method

.method public static greylist-max-o checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;
    .registers 3
    .param p0, "handler"    # Landroid/os/Handler;

    .line 2527
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraHandlerExecutor;

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraHandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method private blacklist checkEarlyTriggerSequenceCompleteLocked(IJ[I)V
    .registers 12
    .param p1, "requestId"    # I
    .param p2, "lastFrameNumber"    # J
    .param p4, "repeatingRequestTypes"    # [I

    .line 1177
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_7b

    .line 1179
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1180
    .local v0, "index":I
    if-ltz v0, :cond_17

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 1181
    .local v1, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :goto_18
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_40

    .line 1182
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1183
    iget-boolean v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v4, :cond_40

    .line 1184
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 1187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    .line 1184
    const-string/jumbo v6, "remove holder for requestId %d, because lastFrame is %d."

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_40
    if-eqz v1, :cond_67

    .line 1192
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v2, :cond_4d

    .line 1193
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v3, "immediately trigger onCaptureSequenceAborted because request did not reach HAL"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_4d
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;

    invoke-direct {v2, p0, p1, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CaptureCallbackHolder;)V

    .line 1212
    .local v2, "resultDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1214
    .local v3, "ident":J
    :try_start_56
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_62

    .line 1216
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1217
    nop

    .line 1218
    .end local v2    # "resultDispatch":Ljava/lang/Runnable;
    .end local v3    # "ident":J
    goto :goto_7a

    .line 1216
    .restart local v2    # "resultDispatch":Ljava/lang/Runnable;
    .restart local v3    # "ident":J
    :catchall_62
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1217
    throw v5

    .line 1219
    .end local v2    # "resultDispatch":Ljava/lang/Runnable;
    .end local v3    # "ident":J
    :cond_67
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    .line 1221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 1219
    const-string v2, "did not register callback to request %d"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    .end local v0    # "index":I
    .end local v1    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :goto_7a
    goto :goto_88

    .line 1226
    :cond_7b
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    new-instance v1, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;-><init>(IJ[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    .line 1233
    :goto_88
    return-void
.end method

.method static greylist-max-o checkExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .registers 2
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .line 2505
    if-nez p0, :cond_8

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    return-object v0
.end method

.method public static greylist-max-o checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "TT;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 2514
    .local p1, "callback":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_7

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p0

    :goto_8
    return-object v0
.end method

.method static greylist-max-o checkHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 4
    .param p0, "handler"    # Landroid/os/Handler;

    .line 2539
    if-nez p0, :cond_17

    .line 2540
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2541
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_f

    .line 2545
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p0, v1

    goto :goto_17

    .line 2542
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No handler given, and current thread has no looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2547
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_17
    :goto_17
    return-object p0
.end method

.method static greylist-max-o checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;
    .registers 3
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "TT;)",
            "Landroid/os/Handler;"
        }
    .end annotation

    .line 2556
    .local p1, "callback":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_7

    .line 2557
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0

    .line 2559
    :cond_7
    return-object p0
.end method

.method private greylist-max-o checkIfCameraClosedOrInError()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2563
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-eqz v0, :cond_12

    .line 2566
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-nez v0, :cond_9

    .line 2570
    return-void

    .line 2567
    :cond_9
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    const-string v2, "The camera device has encountered a serious error"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2564
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraDevice was already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V
    .registers 14
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .line 1626
    if-nez p1, :cond_3

    .line 1627
    return-void

    .line 1629
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v0

    .line 1630
    .local v0, "inputFormat":I
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->isMultiResolution()Z

    move-result v1

    const-string/jumbo v2, "x"

    const/4 v3, 0x0

    if-eqz v1, :cond_aa

    .line 1631
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 1634
    .local v1, "configMap":Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getInputFormats()[I

    move-result-object v4

    .line 1635
    .local v4, "inputFormats":[I
    const/4 v5, 0x0

    .line 1636
    .local v5, "validFormat":Z
    array-length v6, v4

    :goto_21
    if-ge v3, v6, :cond_2b

    aget v7, v4, v3

    .line 1637
    .local v7, "format":I
    if-ne v7, v0, :cond_28

    .line 1638
    const/4 v5, 0x1

    .line 1636
    .end local v7    # "format":I
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 1642
    :cond_2b
    const-string v3, " is not valid"

    if-eqz v5, :cond_8c

    .line 1647
    const/4 v6, 0x0

    .line 1648
    .local v6, "validSize":Z
    nop

    .line 1649
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getInputInfo(I)Ljava/util/Collection;

    move-result-object v7

    .line 1650
    .local v7, "inputStreamInfo":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_39
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 1651
    .local v9, "info":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v11

    if-ne v10, v11, :cond_5a

    .line 1652
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v10

    invoke-virtual {v9}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v11

    if-ne v10, v11, :cond_5a

    .line 1653
    const/4 v6, 0x1

    .line 1655
    .end local v9    # "info":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    :cond_5a
    goto :goto_39

    .line 1657
    :cond_5b
    if-eqz v6, :cond_5f

    .line 1661
    .end local v1    # "configMap":Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
    .end local v4    # "inputFormats":[I
    .end local v5    # "validFormat":Z
    .end local v6    # "validSize":Z
    .end local v7    # "inputStreamInfo":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    goto/16 :goto_105

    .line 1658
    .restart local v1    # "configMap":Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
    .restart local v4    # "inputFormats":[I
    .restart local v5    # "validFormat":Z
    .restart local v6    # "validSize":Z
    .restart local v7    # "inputStreamInfo":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    :cond_5f
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Multi-resolution input size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1659
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1643
    .end local v6    # "validSize":Z
    .end local v7    # "inputStreamInfo":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    :cond_8c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "multi-resolution input format "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1664
    .end local v1    # "configMap":Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
    .end local v4    # "inputFormats":[I
    .end local v5    # "validFormat":Z
    :cond_aa
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isPrivilegedApp()Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 1665
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v2, "ignore input format/size check for white listed app"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    return-void

    .line 1669
    :cond_b8
    invoke-direct {p0, p1, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfigurationWithStreamConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Z)Z

    move-result v1

    if-nez v1, :cond_105

    .line 1670
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfigurationWithStreamConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Z)Z

    move-result v1

    if-eqz v1, :cond_c6

    goto :goto_105

    .line 1671
    :cond_c6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input config with format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1672
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1673
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported by camera id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1676
    :cond_105
    :goto_105
    return-void
.end method

.method private blacklist checkInputConfigurationWithStreamConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Z)Z
    .registers 9
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p2, "maxResolution"    # Z

    .line 1593
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1596
    .local v0, "ck":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<Landroid/hardware/camera2/params/StreamConfigurationMap;>;"
    if-eqz p2, :cond_6

    .line 1597
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1600
    :cond_6
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1602
    .local v1, "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const/4 v2, 0x1

    if-eqz v1, :cond_18

    .line 1603
    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfigurationWithStreamConfigurationsAs(Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1604
    return v2

    .line 1607
    :cond_18
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mPhysicalIdsToChars:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1608
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1610
    if-eqz v1, :cond_44

    .line 1611
    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfigurationWithStreamConfigurationsAs(Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 1613
    return v2

    .line 1615
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    :cond_44
    goto :goto_22

    .line 1616
    :cond_45
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist checkInputConfigurationWithStreamConfigurationsAs(Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;)Z
    .registers 14
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p2, "configMap"    # Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1547
    invoke-virtual {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v0

    .line 1548
    .local v0, "inputFormats":[I
    const/4 v1, 0x0

    .line 1549
    .local v1, "validFormat":Z
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v2

    .line 1550
    .local v2, "inputFormat":I
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_c
    if-ge v5, v3, :cond_16

    aget v6, v0, v5

    .line 1551
    .local v6, "format":I
    if-ne v6, v2, :cond_13

    .line 1552
    const/4 v1, 0x1

    .line 1550
    .end local v6    # "format":I
    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 1556
    :cond_16
    if-nez v1, :cond_21

    .line 1560
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v3, p1}, Landroid/hardware/camera2/impl/CameraExtStub;->isInputConfigurationFormatValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 1562
    return v4

    .line 1567
    :cond_21
    const/4 v3, 0x0

    .line 1568
    .local v3, "validSize":Z
    invoke-virtual {p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v5

    .line 1569
    .local v5, "inputSizes":[Landroid/util/Size;
    array-length v6, v5

    move v7, v4

    :goto_28
    if-ge v7, v6, :cond_44

    aget-object v8, v5, v7

    .line 1570
    .local v8, "s":Landroid/util/Size;
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v10

    if-ne v9, v10, :cond_41

    .line 1571
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v10

    if-ne v9, v10, :cond_41

    .line 1572
    const/4 v3, 0x1

    .line 1569
    .end local v8    # "s":Landroid/util/Size;
    :cond_41
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    .line 1576
    :cond_44
    if-nez v3, :cond_4f

    .line 1580
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v6, p1}, Landroid/hardware/camera2/impl/CameraExtStub;->isInputConfigurationSizeValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z

    move-result v6

    if-nez v6, :cond_4f

    .line 1582
    return v4

    .line 1586
    :cond_4f
    const/4 v4, 0x1

    return v4
.end method

.method private greylist-max-o createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V
    .registers 29
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "operatingMode"    # I
    .param p6, "sessionParams"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 738
    .local p2, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    move-object/from16 v9, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 739
    .local v10, "createSessionStartTime":J
    iget-object v12, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v12

    .line 740
    :try_start_9
    iget-boolean v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v0, :cond_14

    .line 741
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v1, "createCaptureSessionInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_14
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_102

    .line 746
    const/4 v0, 0x0

    const/4 v8, 0x1

    move/from16 v13, p5

    if-ne v13, v8, :cond_1f

    move v1, v8

    goto :goto_20

    :cond_1f
    move v1, v0

    :goto_20
    move v14, v1

    .line 748
    .local v14, "isConstrainedHighSpeed":Z
    if-eqz v14, :cond_2e

    if-nez p1, :cond_26

    goto :goto_2e

    .line 749
    :cond_26
    :try_start_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constrained high speed session doesn\'t support input configuration yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10    # "createSessionStartTime":J
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p2    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "operatingMode":I
    .end local p6    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    throw v0

    .line 755
    .restart local v10    # "createSessionStartTime":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p2    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "operatingMode":I
    .restart local p6    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    :cond_2e
    :goto_2e
    iget-object v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    if-eqz v1, :cond_35

    .line 756
    invoke-interface {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->replaceSessionClose()V

    .line 759
    :cond_35
    iget-object v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    const/4 v15, 0x0

    if-eqz v1, :cond_3f

    .line 760
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->release(Z)V

    .line 761
    iput-object v15, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 764
    :cond_3f
    iget-object v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    if-eqz v1, :cond_48

    .line 765
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->release(Z)V

    .line 766
    iput-object v15, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    :try_end_48
    .catchall {:try_start_26 .. :try_end_48} :catchall_107

    .line 770
    :cond_48
    const/16 v16, 0x1

    .line 771
    .local v16, "configureSuccess":Z
    const/16 v17, 0x0

    .line 772
    .local v17, "pendingException":Landroid/hardware/camera2/CameraAccessException;
    const/16 v18, 0x0

    .line 775
    .local v18, "input":Landroid/view/Surface;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-wide v6, v10

    :try_start_59
    invoke-virtual/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CaptureRequest;J)Z

    move-result v0
    :try_end_5d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_59 .. :try_end_5d} :catch_71
    .catchall {:try_start_59 .. :try_end_5d} :catchall_107

    move v1, v0

    .line 777
    .end local v16    # "configureSuccess":Z
    .local v1, "configureSuccess":Z
    if-ne v1, v8, :cond_6f

    if-eqz p1, :cond_6f

    .line 778
    :try_start_62
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->getInputSurface()Landroid/view/Surface;

    move-result-object v0
    :try_end_68
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_62 .. :try_end_68} :catch_6b
    .catchall {:try_start_62 .. :try_end_68} :catchall_107

    move-object/from16 v18, v0

    goto :goto_6f

    .line 780
    :catch_6b
    move-exception v0

    move/from16 v16, v1

    goto :goto_72

    .line 787
    :cond_6f
    :goto_6f
    move v0, v1

    goto :goto_83

    .line 780
    .end local v1    # "configureSuccess":Z
    .restart local v16    # "configureSuccess":Z
    :catch_71
    move-exception v0

    .line 781
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_72
    const/4 v1, 0x0

    .line 782
    .end local v16    # "configureSuccess":Z
    .restart local v1    # "configureSuccess":Z
    move-object/from16 v17, v0

    .line 783
    const/16 v18, 0x0

    .line 784
    :try_start_77
    iget-boolean v2, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v2, :cond_82

    .line 785
    iget-object v2, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v3, "createCaptureSession - failed with exception "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_82
    move v0, v1

    .end local v1    # "configureSuccess":Z
    .local v0, "configureSuccess":Z
    :goto_83
    const/16 v16, 0x0

    .line 791
    .local v16, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    if-eqz v14, :cond_dc

    .line 792
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v1

    .line 793
    .local v8, "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_95
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_aa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 794
    .local v2, "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    nop

    .end local v2    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_95

    .line 796
    :cond_aa
    nop

    .line 797
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-object v7, v1

    .line 798
    .local v7, "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {v8, v15, v7}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkConstrainedHighSpeedSurfaces(Ljava/util/Collection;Landroid/util/Range;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    .line 800
    new-instance v15, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;

    iget v2, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    iget-object v6, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object v1, v15

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v19, v5

    move-object/from16 v5, p0

    move-object/from16 v20, v7

    .end local v7    # "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .local v20, "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    move v7, v0

    move-object/from16 v21, v8

    .end local v8    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    .local v21, "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    move-object/from16 v8, v19

    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;-><init>(ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;ZLandroid/hardware/camera2/CameraCharacteristics;)V

    move-object v1, v15

    .line 803
    .end local v16    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .end local v20    # "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v21    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    .local v1, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    goto :goto_f4

    .line 804
    .end local v1    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .restart local v16    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    :cond_dc
    new-instance v15, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    iget v2, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    iget-object v7, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    move-object v1, v15

    move-object/from16 v3, v18

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p0

    move v8, v0

    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;-><init>(ILandroid/view/Surface;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Z)V

    move-object v1, v15

    .line 809
    .end local v16    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .restart local v1    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    :goto_f4
    iput-object v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    .line 811
    if-nez v17, :cond_100

    .line 815
    invoke-interface {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v2

    iput-object v2, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .line 816
    .end local v0    # "configureSuccess":Z
    .end local v1    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .end local v14    # "isConstrainedHighSpeed":Z
    .end local v17    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    .end local v18    # "input":Landroid/view/Surface;
    monitor-exit v12

    .line 817
    return-void

    .line 812
    .restart local v0    # "configureSuccess":Z
    .restart local v1    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .restart local v14    # "isConstrainedHighSpeed":Z
    .restart local v17    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    .restart local v18    # "input":Landroid/view/Surface;
    :cond_100
    nop

    .end local v10    # "createSessionStartTime":J
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p2    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "operatingMode":I
    .end local p6    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    throw v17

    .line 816
    .end local v0    # "configureSuccess":Z
    .end local v1    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .end local v14    # "isConstrainedHighSpeed":Z
    .end local v17    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    .end local v18    # "input":Landroid/view/Surface;
    .restart local v10    # "createSessionStartTime":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p2    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "operatingMode":I
    .restart local p6    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    :catchall_102
    move-exception v0

    move/from16 v13, p5

    :goto_105
    monitor-exit v12
    :try_end_106
    .catchall {:try_start_77 .. :try_end_106} :catchall_107

    throw v0

    :catchall_107
    move-exception v0

    goto :goto_105
.end method

.method private greylist-max-o getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .registers 2

    .line 2578
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method private blacklist getRequestTypes([Landroid/hardware/camera2/CaptureRequest;)[I
    .registers 5
    .param p1, "requestArray"    # [Landroid/hardware/camera2/CaptureRequest;

    .line 1236
    array-length v0, p1

    new-array v0, v0, [I

    .line 1237
    .local v0, "requestTypes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 1238
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v2

    aput v2, v0, v1

    .line 1237
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1240
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method private blacklist hasBatchedOutputs(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)Z"
        }
    .end annotation

    .line 1244
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const/4 v0, 0x1

    .line 1245
    .local v0, "hasBatchedOutputs":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 1246
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 1247
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->isPartOfCRequestList()Z

    move-result v3

    if-nez v3, :cond_16

    .line 1248
    const/4 v0, 0x0

    .line 1249
    goto :goto_28

    .line 1251
    :cond_16
    if-nez v1, :cond_25

    .line 1252
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v3

    .line 1253
    .local v3, "targets":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_25

    .line 1254
    const/4 v0, 0x0

    .line 1255
    goto :goto_28

    .line 1245
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "targets":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1259
    .end local v1    # "i":I
    :cond_28
    :goto_28
    return v0
.end method

.method private greylist-max-o isClosed()Z
    .registers 2

    .line 2574
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private blacklist notifyError(I)V
    .registers 3
    .param p1, "code"    # I

    .line 1940
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1941
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v0, p0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    .line 1943
    :cond_b
    return-void
.end method

.method private blacklist onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .registers 26
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 1950
    move-object/from16 v8, p0

    move/from16 v9, p1

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v15

    .line 1951
    .local v15, "requestId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v14

    .line 1952
    .local v14, "subsequenceId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v10

    .line 1953
    .local v10, "frameNumber":J
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getErrorPhysicalCameraId()Ljava/lang/String;

    move-result-object v18

    .line 1954
    .local v18, "errorPhysicalCameraId":Ljava/lang/String;
    iget-object v0, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 1956
    .local v12, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    const/4 v0, 0x0

    const/4 v13, 0x1

    if-nez v12, :cond_35

    .line 1957
    iget-object v1, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-array v2, v13, [Ljava/lang/Object;

    .line 1958
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1957
    const-string v0, "Receive capture error on unknown request ID %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    return-void

    .line 1962
    :cond_35
    invoke-virtual {v12, v14}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    .line 1964
    .local v6, "request":Landroid/hardware/camera2/CaptureRequest;
    const/4 v1, 0x0

    .line 1965
    .local v1, "failureDispatch":Ljava/lang/Runnable;
    const/4 v2, 0x5

    if-ne v9, v2, :cond_d4

    .line 1968
    iget-object v2, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 1969
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getErrorStreamId()I

    move-result v3

    .line 1968
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1970
    .local v16, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    if-nez v16, :cond_65

    .line 1971
    iget-object v2, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-array v3, v13, [Ljava/lang/Object;

    .line 1973
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getErrorStreamId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1971
    const-string v0, "Stream %d has been removed. Skipping buffer lost callback"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    return-void

    .line 1976
    :cond_65
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v19, v1

    .end local v1    # "failureDispatch":Ljava/lang/Runnable;
    .local v19, "failureDispatch":Ljava/lang/Runnable;
    :goto_6f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/view/Surface;

    .line 1977
    .local v7, "surface":Landroid/view/Surface;
    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v1

    if-nez v1, :cond_83

    .line 1978
    goto :goto_6f

    .line 1980
    :cond_83
    iget-boolean v1, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v1, :cond_9d

    .line 1981
    iget-object v1, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1983
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    aput-object v7, v2, v13

    .line 1981
    const-string v3, "Lost output buffer reported for frame %d, target %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_9d
    new-instance v20, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-object v3, v12

    move-object v4, v6

    move-object v5, v7

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .end local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v7    # "surface":Landroid/view/Surface;
    .local v21, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v22, "surface":Landroid/view/Surface;
    move-wide v6, v10

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    .line 1995
    .end local v19    # "failureDispatch":Ljava/lang/Runnable;
    .restart local v1    # "failureDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1997
    .local v2, "ident":J
    :try_start_b2
    invoke-virtual {v12}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_b9
    .catchall {:try_start_b2 .. :try_end_b9} :catchall_c2

    .line 1999
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2000
    nop

    .line 2001
    .end local v2    # "ident":J
    .end local v22    # "surface":Landroid/view/Surface;
    move-object/from16 v19, v1

    move-object/from16 v6, v21

    goto :goto_6f

    .line 1999
    .restart local v2    # "ident":J
    .restart local v22    # "surface":Landroid/view/Surface;
    :catchall_c2
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2000
    throw v0

    .line 1976
    .end local v1    # "failureDispatch":Ljava/lang/Runnable;
    .end local v2    # "ident":J
    .end local v21    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v22    # "surface":Landroid/view/Surface;
    .restart local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v19    # "failureDispatch":Ljava/lang/Runnable;
    :cond_c7
    move-object/from16 v21, v6

    .line 2002
    .end local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v16    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .restart local v21    # "request":Landroid/hardware/camera2/CaptureRequest;
    move-wide v5, v10

    move-object v4, v12

    move v7, v14

    move-object/from16 v1, v19

    move-object/from16 v11, v21

    move/from16 v19, v15

    goto/16 :goto_16a

    .line 2003
    .end local v19    # "failureDispatch":Ljava/lang/Runnable;
    .end local v21    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v1    # "failureDispatch":Ljava/lang/Runnable;
    .restart local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_d4
    move-object/from16 v21, v6

    .end local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v21    # "request":Landroid/hardware/camera2/CaptureRequest;
    const/4 v2, 0x4

    if-ne v9, v2, :cond_db

    move v2, v13

    goto :goto_dc

    :cond_db
    move v2, v0

    :goto_dc
    move v3, v13

    move v13, v2

    .line 2009
    .local v13, "mayHaveBuffers":Z
    iget-object v2, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    if-eqz v2, :cond_ea

    invoke-interface {v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->isAborting()Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 2010
    move v2, v3

    goto :goto_eb

    .line 2011
    :cond_ea
    move v2, v0

    :goto_eb
    move-object v4, v12

    .end local v12    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .local v4, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    move v12, v2

    .line 2013
    .local v12, "reason":I
    new-instance v2, Landroid/hardware/camera2/CaptureFailure;

    move-wide v5, v10

    .end local v10    # "frameNumber":J
    .local v5, "frameNumber":J
    move-object v10, v2

    move-object/from16 v11, v21

    move v7, v14

    .end local v14    # "subsequenceId":I
    .local v7, "subsequenceId":I
    move v14, v15

    move/from16 v19, v15

    .end local v15    # "requestId":I
    .local v19, "requestId":I
    move-wide v15, v5

    move-object/from16 v17, v18

    invoke-direct/range {v10 .. v17}, Landroid/hardware/camera2/CaptureFailure;-><init>(Landroid/hardware/camera2/CaptureRequest;IZIJLjava/lang/String;)V

    .line 2021
    .local v2, "failure":Landroid/hardware/camera2/CaptureFailure;
    new-instance v10, Landroid/hardware/camera2/impl/CameraDeviceImpl$13;

    .end local v21    # "request":Landroid/hardware/camera2/CaptureRequest;
    .local v11, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-direct {v10, v8, v4, v11, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$13;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    move-object v1, v10

    .line 2036
    iget-object v10, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-array v14, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v0

    const-string v0, "got error frame %d"

    invoke-static {v0, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    iget-object v0, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 2040
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_123
    iget-object v10, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v0, v10, :cond_14a

    .line 2041
    iget-object v10, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    sub-int v14, v7, v0

    int-to-long v14, v14

    sub-long v14, v5, v14

    .line 2042
    move-object/from16 v16, v2

    .end local v2    # "failure":Landroid/hardware/camera2/CaptureFailure;
    .local v16, "failure":Landroid/hardware/camera2/CaptureFailure;
    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v2

    .line 2041
    invoke-virtual {v10, v14, v15, v3, v2}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JZI)V

    .line 2040
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v16

    goto :goto_123

    .end local v16    # "failure":Landroid/hardware/camera2/CaptureFailure;
    .restart local v2    # "failure":Landroid/hardware/camera2/CaptureFailure;
    :cond_14a
    move-object/from16 v16, v2

    .end local v0    # "i":I
    .end local v2    # "failure":Landroid/hardware/camera2/CaptureFailure;
    .restart local v16    # "failure":Landroid/hardware/camera2/CaptureFailure;
    goto :goto_158

    .line 2045
    .end local v16    # "failure":Landroid/hardware/camera2/CaptureFailure;
    .restart local v2    # "failure":Landroid/hardware/camera2/CaptureFailure;
    :cond_14d
    move-object/from16 v16, v2

    .end local v2    # "failure":Landroid/hardware/camera2/CaptureFailure;
    .restart local v16    # "failure":Landroid/hardware/camera2/CaptureFailure;
    iget-object v0, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    .line 2046
    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v2

    .line 2045
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JZI)V

    .line 2049
    :goto_158
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    .line 2052
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2054
    .local v2, "ident":J
    :try_start_15f
    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_166
    .catchall {:try_start_15f .. :try_end_166} :catchall_16b

    .line 2056
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2057
    nop

    .line 2060
    .end local v2    # "ident":J
    .end local v12    # "reason":I
    .end local v13    # "mayHaveBuffers":Z
    .end local v16    # "failure":Landroid/hardware/camera2/CaptureFailure;
    :goto_16a
    return-void

    .line 2056
    .restart local v2    # "ident":J
    .restart local v12    # "reason":I
    .restart local v13    # "mayHaveBuffers":Z
    .restart local v16    # "failure":Landroid/hardware/camera2/CaptureFailure;
    :catchall_16b
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2057
    throw v0
.end method

.method private greylist-max-o overrideEnableZsl(Landroid/hardware/camera2/impl/CameraMetadataNative;Z)V
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "newValue"    # Z

    .line 840
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 841
    .local v0, "enableZsl":Ljava/lang/Boolean;
    if-nez v0, :cond_b

    .line 843
    return-void

    .line 846
    :cond_b
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 847
    return-void
.end method

.method private blacklist removeCompletedCallbackHolderLocked(JJJ)V
    .registers 26
    .param p1, "lastCompletedRegularFrameNumber"    # J
    .param p3, "lastCompletedReprocessFrameNumber"    # J
    .param p5, "lastCompletedZslStillFrameNumber"    # J

    .line 1818
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_2a

    .line 1819
    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-array v6, v5, [Ljava/lang/Object;

    .line 1823
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    .line 1824
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    .line 1825
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    .line 1819
    const-string/jumbo v7, "remove completed callback holders for lastCompletedRegularFrameNumber %d, lastCompletedReprocessFrameNumber %d, lastCompletedZslStillFrameNumber %d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :cond_2a
    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1829
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;>;"
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ee

    .line 1830
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    .line 1831
    .local v6, "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    invoke-virtual {v6}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v7

    .line 1833
    .local v7, "requestId":I
    iget-object v8, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v8, :cond_4c

    .line 1834
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v3, "Camera closed while removing completed callback holders"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    return-void

    .line 1838
    :cond_4c
    nop

    .line 1839
    invoke-virtual {v6}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v8

    .line 1840
    .local v8, "lastRegularFrameNumber":J
    nop

    .line 1841
    invoke-virtual {v6}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v10

    .line 1842
    .local v10, "lastReprocessFrameNumber":J
    nop

    .line 1843
    invoke-virtual {v6}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastZslStillFrameNumber()J

    move-result-wide v12

    .line 1845
    .local v12, "lastZslStillFrameNumber":J
    cmp-long v14, v8, p1

    if-gtz v14, :cond_e7

    cmp-long v14, v10, p3

    if-gtz v14, :cond_e7

    cmp-long v14, v12, p5

    if-gtz v14, :cond_e7

    .line 1849
    invoke-virtual {v6}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v14

    if-eqz v14, :cond_c5

    .line 1850
    iget-object v14, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v14

    .line 1851
    .local v14, "index":I
    if-ltz v14, :cond_7a

    .line 1852
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1854
    :cond_7a
    iget-boolean v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v15, :cond_bf

    .line 1855
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    .line 1858
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v5, v4

    .line 1859
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v5, v3

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v5, v2

    .line 1860
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v16, 0x3

    aput-object v17, v5, v16

    const/16 v17, 0x4

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v5, v17

    const/16 v17, 0x5

    .line 1861
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v5, v17

    const/16 v17, 0x6

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v5, v17

    .line 1855
    const-string v2, "Remove holder for requestId %d, because lastRegularFrame %d is <= %d, lastReprocessFrame %d is <= %d, lastZslStillFrame %d is <= %d"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1

    .line 1854
    :cond_bf
    move/from16 v16, v5

    .line 1863
    :goto_c1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1864
    .end local v14    # "index":I
    goto :goto_e9

    .line 1865
    :cond_c5
    move/from16 v16, v5

    iget-boolean v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v2, :cond_e3

    .line 1866
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sequence not yet completed for request id "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    :cond_e3
    invoke-virtual {v6}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->markInflightCompleted()V

    goto :goto_e9

    .line 1845
    :cond_e7
    move/from16 v16, v5

    .line 1871
    .end local v6    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    .end local v7    # "requestId":I
    .end local v8    # "lastRegularFrameNumber":J
    .end local v10    # "lastReprocessFrameNumber":J
    .end local v12    # "lastZslStillFrameNumber":J
    :goto_e9
    move/from16 v5, v16

    const/4 v2, 0x2

    goto/16 :goto_30

    .line 1872
    :cond_ee
    return-void
.end method

.method private blacklist scheduleNotifyError(I)V
    .registers 7
    .param p1, "code"    # I

    .line 1929
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 1930
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1932
    .local v0, "ident":J
    :try_start_7
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 1933
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1932
    invoke-static {v3, p0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 1933
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 1932
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_22

    .line 1935
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1936
    nop

    .line 1937
    return-void

    .line 1935
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1936
    throw v2
.end method

.method private blacklist submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I
    .registers 23
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "repeating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CaptureCallback;",
            "Ljava/util/concurrent/Executor;",
            "Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1283
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p4

    move-object/from16 v0, p3

    invoke-static {v0, v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;

    move-result-object v11

    .line 1285
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .local v11, "executor":Ljava/util/concurrent/Executor;
    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1286
    :try_start_11
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1289
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_191

    const/4 v3, 0x1

    const/4 v13, 0x0

    if-eqz v2, :cond_9b

    :try_start_20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 1292
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_64

    .line 1293
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1294
    .local v4, "packageName":Ljava/lang/String;
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1295
    .local v5, "flashMode":I
    iget-boolean v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mExposeFrontFlashListValid:Z

    if-eqz v6, :cond_64

    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    iget v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFlashMode:I

    if-eq v6, v5, :cond_64

    const-string v6, "com.android.camera"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_64

    .line 1296
    iput v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFlashMode:I

    .line 1297
    const/4 v6, 0x2

    if-ne v5, v6, :cond_61

    .line 1298
    invoke-static {v3}, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->boostScreenBrightness(Z)V

    goto :goto_64

    .line 1300
    :cond_61
    invoke-static {v13}, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->boostScreenBrightness(Z)V

    .line 1306
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "flashMode":I
    :cond_64
    :goto_64
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8e

    .line 1311
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_76
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    .line 1312
    .local v4, "surface":Landroid/view/Surface;
    if-eqz v4, :cond_85

    .line 1315
    .end local v4    # "surface":Landroid/view/Surface;
    goto :goto_76

    .line 1313
    .restart local v4    # "surface":Landroid/view/Surface;
    :cond_85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null Surface targets are not allowed"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v11    # "executor":Ljava/util/concurrent/Executor;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local p2    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    .end local p4    # "repeating":Z
    throw v0

    .line 1316
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v4    # "surface":Landroid/view/Surface;
    .restart local v11    # "executor":Ljava/util/concurrent/Executor;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .restart local p2    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    .restart local p4    # "repeating":Z
    :cond_8d
    goto :goto_18

    .line 1307
    .restart local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Each request must have at least one Surface target"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v11    # "executor":Ljava/util/concurrent/Executor;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local p2    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    .end local p4    # "repeating":Z
    throw v0

    .line 1376
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v11    # "executor":Ljava/util/concurrent/Executor;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .restart local p2    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    .restart local p4    # "repeating":Z
    :catchall_96
    move-exception v0

    move-object/from16 v17, v11

    goto/16 :goto_194

    .line 1318
    :cond_9b
    if-eqz v10, :cond_a0

    .line 1319
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_a0
    .catchall {:try_start_20 .. :try_end_a0} :catchall_96

    .line 1324
    :cond_a0
    :try_start_a0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/camera2/CaptureRequest;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/CaptureRequest;

    .line 1326
    .local v0, "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    array-length v2, v0
    :try_end_ad
    .catchall {:try_start_a0 .. :try_end_ad} :catchall_191

    move v4, v13

    :goto_ae
    if-ge v4, v2, :cond_ba

    :try_start_b0
    aget-object v5, v0, v4

    .line 1327
    .local v5, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest;->convertSurfaceToStreamId(Landroid/util/SparseArray;)V
    :try_end_b7
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_96

    .line 1326
    .end local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    add-int/lit8 v4, v4, 0x1

    goto :goto_ae

    .line 1330
    :cond_ba
    :try_start_ba
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v0, v10}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v2

    move-object v14, v2

    .line 1331
    .local v14, "requestInfo":Landroid/hardware/camera2/utils/SubmitInfo;
    iget-boolean v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z
    :try_end_c3
    .catchall {:try_start_ba .. :try_end_c3} :catchall_191

    if-eqz v2, :cond_e1

    .line 1332
    :try_start_c5
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last frame number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catchall {:try_start_c5 .. :try_end_e1} :catchall_96

    .line 1335
    :cond_e1
    :try_start_e1
    array-length v2, v0
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_191

    move v4, v13

    :goto_e3
    if-ge v4, v2, :cond_ed

    :try_start_e5
    aget-object v5, v0, v4

    .line 1336
    .restart local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest;->recoverStreamIdToSurface()V
    :try_end_ea
    .catchall {:try_start_e5 .. :try_end_ea} :catchall_96

    .line 1335
    .end local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    add-int/lit8 v4, v4, 0x1

    goto :goto_e3

    .line 1341
    :cond_ed
    :try_start_ed
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->hasBatchedOutputs(Ljava/util/List;)Z

    move-result v2
    :try_end_f1
    .catchall {:try_start_ed .. :try_end_f1} :catchall_191

    move v15, v2

    .line 1342
    .local v15, "hasBatchedOutputs":Z
    if-eqz v15, :cond_109

    .line 1343
    :try_start_f4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1344
    .local v2, "requestCount":I
    iget-object v4, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_109
    .catchall {:try_start_f4 .. :try_end_109} :catchall_96

    .line 1347
    .end local v2    # "requestCount":I
    :cond_109
    if-eqz v9, :cond_12d

    .line 1348
    :try_start_10b
    iget-object v7, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v6

    new-instance v5, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    iget v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I
    :try_end_115
    .catchall {:try_start_10b .. :try_end_115} :catchall_191

    add-int/lit8 v16, v2, -0x1

    move-object v2, v5

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object v13, v5

    move-object v5, v11

    move v9, v6

    move/from16 v6, p4

    move-object/from16 v17, v11

    move-object v11, v7

    .end local v11    # "executor":Ljava/util/concurrent/Executor;
    .local v17, "executor":Ljava/util/concurrent/Executor;
    move/from16 v7, v16

    :try_start_126
    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;-><init>(Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/List;Ljava/util/concurrent/Executor;ZI)V

    invoke-virtual {v11, v9, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_155

    .line 1352
    .end local v17    # "executor":Ljava/util/concurrent/Executor;
    .restart local v11    # "executor":Ljava/util/concurrent/Executor;
    :cond_12d
    move-object/from16 v17, v11

    .end local v11    # "executor":Ljava/util/concurrent/Executor;
    .restart local v17    # "executor":Ljava/util/concurrent/Executor;
    iget-boolean v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v2, :cond_155

    .line 1353
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listen for request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_155
    :goto_155
    if-eqz v10, :cond_173

    .line 1358
    iget v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_166

    .line 1359
    nop

    .line 1360
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v3

    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1359
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceCompleteLocked(IJ[I)V

    .line 1363
    :cond_166
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v2

    iput v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1364
    invoke-direct {v1, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getRequestTypes([Landroid/hardware/camera2/CaptureRequest;)[I

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    goto :goto_17d

    .line 1366
    :cond_173
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    new-instance v3, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    invoke-direct {v3, v8, v14}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;-><init>(Ljava/util/List;Landroid/hardware/camera2/utils/SubmitInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1370
    :goto_17d
    iget-boolean v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz v2, :cond_188

    .line 1371
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1373
    :cond_188
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 1375
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v2

    monitor-exit v12

    return v2

    .line 1376
    .end local v0    # "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    .end local v14    # "requestInfo":Landroid/hardware/camera2/utils/SubmitInfo;
    .end local v15    # "hasBatchedOutputs":Z
    .end local v17    # "executor":Ljava/util/concurrent/Executor;
    .restart local v11    # "executor":Ljava/util/concurrent/Executor;
    :catchall_191
    move-exception v0

    move-object/from16 v17, v11

    .end local v11    # "executor":Ljava/util/concurrent/Executor;
    .restart local v17    # "executor":Ljava/util/concurrent/Executor;
    :goto_194
    monitor-exit v12
    :try_end_195
    .catchall {:try_start_126 .. :try_end_195} :catchall_196

    throw v0

    :catchall_196
    move-exception v0

    goto :goto_194
.end method

.method private blacklist updateTracker(IJILandroid/hardware/camera2/CaptureResult;Z)V
    .registers 15
    .param p1, "requestId"    # I
    .param p2, "frameNumber"    # J
    .param p4, "requestType"    # I
    .param p5, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p6, "isPartialResult"    # Z

    .line 1264
    const/4 v0, 0x1

    .line 1266
    .local v0, "requestCount":I
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1267
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1268
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_31

    .line 1269
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, v1

    int-to-long v3, v3

    sub-long v3, p2, v3

    move-object v5, p5

    move v6, p6

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZI)V

    .line 1268
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .end local v1    # "i":I
    :cond_31
    goto :goto_3b

    .line 1273
    :cond_32
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    move-wide v3, p2

    move-object v5, p5

    move v6, p6

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZI)V

    .line 1276
    :goto_3b
    return-void
.end method

.method private greylist-max-o waitUntilIdle()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1432
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1434
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitUntilIdle: E. id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1438
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_37

    .line 1442
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->waitUntilIdle()V

    .line 1444
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "waitUntilIdle: X"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    monitor-exit v0

    .line 1446
    return-void

    .line 1439
    :cond_37
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Active repeating request ongoing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    throw v1

    .line 1445
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 5

    .line 2588
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " died unexpectedly"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v0, :cond_25

    .line 2591
    return-void

    .line 2594
    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 2595
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$14;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$14;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    .line 2604
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2606
    .local v1, "ident":J
    :try_start_31
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_3b

    .line 2608
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2609
    nop

    .line 2610
    return-void

    .line 2608
    :catchall_3b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2609
    throw v3
.end method

.method public blacklist capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1143
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 1144
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v1, "calling capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result v1

    return v1
.end method

.method public blacklist captureBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I
    .registers 6
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CaptureCallback;",
            "Ljava/util/concurrent/Executor;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1153
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result v0

    return v0

    .line 1154
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one request must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 8

    .line 1481
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1482
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/hardware/camera2/impl/CameraExtStub;->releaseCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V

    .line 1487
    :cond_b
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1488
    .local v0, "packageName":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mExposeFrontFlashListValid:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFlashMode:I

    if-eqz v1, :cond_2f

    const-string v1, "com.android.camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1489
    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFlashMode:I

    .line 1490
    invoke-static {v2}, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->boostScreenBrightness(Z)V

    .line 1494
    :cond_2f
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1495
    :try_start_32
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1496
    monitor-exit v1

    return-void

    .line 1500
    :cond_3d
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close: E. id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

    const/4 v5, 0x0

    if-eqz v3, :cond_63

    .line 1503
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1504
    iput-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

    .line 1507
    :cond_63
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-eqz v3, :cond_6f

    .line 1508
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->disconnect()V

    .line 1509
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v3, p0, v2}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1512
    :cond_6f
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    if-eqz v2, :cond_78

    .line 1513
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->release(Z)V

    .line 1514
    iput-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 1517
    :cond_78
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    if-eqz v2, :cond_81

    .line 1518
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->release(Z)V

    .line 1519
    iput-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    .line 1525
    :cond_81
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v2, :cond_89

    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v2, :cond_90

    .line 1526
    :cond_89
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1529
    :cond_90
    iput-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    .line 1531
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v3, "close: X"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    monitor-exit v1

    .line 1533
    return-void

    .line 1532
    :catchall_9b
    move-exception v2

    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_32 .. :try_end_9d} :catchall_9b

    throw v2
.end method

.method public greylist-max-o configureOutputs(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 440
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 441
    .local v0, "outputConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 442
    .local v2, "s":Landroid/view/Surface;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v2    # "s":Landroid/view/Surface;
    goto :goto_d

    .line 444
    :cond_22
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 446
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 444
    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CaptureRequest;J)Z

    .line 448
    return-void
.end method

.method public blacklist configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CaptureRequest;J)Z
    .registers 24
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "operatingMode"    # I
    .param p4, "sessionParams"    # Landroid/hardware/camera2/CaptureRequest;
    .param p5, "createSessionStartTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;I",
            "Landroid/hardware/camera2/CaptureRequest;",
            "J)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 478
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p5

    if-nez p2, :cond_f

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .end local p2    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .local v0, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    goto :goto_11

    .line 478
    .end local v0    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p2    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_f
    move-object/from16 v5, p2

    .line 481
    .end local p2    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .local v5, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :goto_11
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_22

    if-nez v2, :cond_1a

    goto :goto_22

    .line 482
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "cannot configure an input stream without any output streams"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_22
    :goto_22
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    .line 488
    const/4 v6, 0x0

    .line 490
    .local v6, "success":Z
    iget-object v7, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v7

    .line 492
    :try_start_29
    iget-boolean v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v0, :cond_49

    .line 493
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "configureStreamsChecked: E. id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_49
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 498
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v8, v0

    .line 500
    .local v8, "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 503
    .local v9, "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_59
    iget-object v10, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v0, v10, :cond_8a

    .line 504
    iget-object v10, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 505
    .local v10, "streamId":I
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 507
    .local v11, "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-interface {v5, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_80

    invoke-virtual {v11}, Landroid/hardware/camera2/params/OutputConfiguration;->isDeferredConfiguration()Z

    move-result v12

    if-eqz v12, :cond_7c

    goto :goto_80

    .line 513
    :cond_7c
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_87

    .line 511
    :cond_80
    :goto_80
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    .end local v10    # "streamId":I
    .end local v11    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    :goto_87
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 517
    .end local v0    # "i":I
    :cond_8a
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v10, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-interface {v0, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 518
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_94
    .catchall {:try_start_29 .. :try_end_94} :catchall_21c

    .line 521
    :try_start_94
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->waitUntilIdle()V

    .line 523
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->beginConfigure()V

    .line 526
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/InputConfiguration;

    .line 527
    .local v0, "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    const/4 v11, 0x0

    if-eq v2, v0, :cond_f1

    if-eqz v2, :cond_af

    .line 528
    invoke-virtual {v2, v0}, Landroid/hardware/camera2/params/InputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f1

    .line 529
    :cond_af
    if-eqz v0, :cond_ce

    .line 530
    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v13}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->deleteStream(I)V

    .line 531
    new-instance v12, Ljava/util/AbstractMap$SimpleEntry;

    const/4 v13, -0x1

    .line 532
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v13, v11}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 534
    :cond_ce
    if-eqz v2, :cond_f1

    .line 535
    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v13

    .line 536
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v15

    .line 537
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->isMultiResolution()Z

    move-result v10

    .line 535
    invoke-virtual {v12, v13, v14, v15, v10}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createInputStream(IIIZ)I

    move-result v10

    .line 538
    .restart local v10    # "streamId":I
    new-instance v12, Ljava/util/AbstractMap$SimpleEntry;

    .line 539
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 544
    .end local v10    # "streamId":I
    :cond_f1
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_f5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_114

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 545
    .local v12, "streamId":Ljava/lang/Integer;
    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->deleteStream(I)V

    .line 546
    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->delete(I)V

    .line 547
    .end local v12    # "streamId":Ljava/lang/Integer;
    goto :goto_f5

    .line 550
    :cond_114
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_118
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_136

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 551
    .local v12, "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v8, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_135

    .line 552
    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v13, v12}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v13

    .line 553
    .local v13, "streamId":I
    iget-object v14, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v14, v13, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 555
    .end local v12    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v13    # "streamId":I
    :cond_135
    goto :goto_118

    .line 556
    :cond_136
    iget v10, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->customOpMode:I
    :try_end_138
    .catch Ljava/lang/IllegalArgumentException; {:try_start_94 .. :try_end_138} :catch_1c8
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_94 .. :try_end_138} :catch_1b4
    .catchall {:try_start_94 .. :try_end_138} :catchall_1b0

    shl-int/lit8 v10, v10, 0x10

    or-int v10, p3, v10

    .line 559
    .end local p3    # "operatingMode":I
    .local v10, "operatingMode":I
    if-eqz p4, :cond_149

    .line 560
    :try_start_13e
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    .line 561
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v12

    .line 560
    invoke-virtual {v11, v10, v12, v3, v4}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;J)[I

    move-result-object v11

    .local v11, "offlineStreamIds":[I
    goto :goto_14f

    .line 563
    .end local v11    # "offlineStreamIds":[I
    :cond_149
    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v12, v10, v11, v3, v4}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;J)[I

    move-result-object v11

    .line 567
    .restart local v11    # "offlineStreamIds":[I
    :goto_14f
    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashSet;->clear()V

    .line 568
    if-eqz v11, :cond_173

    array-length v12, v11

    if-lez v12, :cond_173

    .line 569
    array-length v12, v11

    const/4 v13, 0x0

    :goto_15b
    if-ge v13, v12, :cond_170

    aget v14, v11, v13

    .line 570
    .local v14, "offlineStreamId":I
    iget-object v15, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    move-object/from16 v16, v0

    .end local v0    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .local v16, "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_16a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13e .. :try_end_16a} :catch_1ae
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_13e .. :try_end_16a} :catch_1ac
    .catchall {:try_start_13e .. :try_end_16a} :catchall_202

    .line 569
    nop

    .end local v14    # "offlineStreamId":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    goto :goto_15b

    .end local v16    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v0    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    :cond_170
    move-object/from16 v16, v0

    .end local v0    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v16    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    goto :goto_175

    .line 568
    .end local v16    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v0    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    :cond_173
    move-object/from16 v16, v0

    .line 574
    .end local v0    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v16    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    :goto_175
    const/4 v6, 0x1

    .line 587
    .end local v11    # "offlineStreamIds":[I
    .end local v16    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    if-eqz v6, :cond_186

    :try_start_178
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_186

    .line 588
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v0, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_18e

    .line 591
    :cond_186
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v0, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 593
    nop

    .line 595
    :goto_18e
    iget-boolean v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v0, :cond_1aa

    .line 596
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "configureStreamsChecked: X. success = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    .end local v8    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v9    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1aa
    monitor-exit v7
    :try_end_1ab
    .catchall {:try_start_178 .. :try_end_1ab} :catchall_221

    .line 601
    return v6

    .line 580
    .restart local v8    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v9    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_1ac
    move-exception v0

    goto :goto_1b7

    .line 575
    :catch_1ae
    move-exception v0

    goto :goto_1cb

    .line 587
    .end local v10    # "operatingMode":I
    .restart local p3    # "operatingMode":I
    :catchall_1b0
    move-exception v0

    move/from16 v10, p3

    goto :goto_203

    .line 580
    :catch_1b4
    move-exception v0

    move/from16 v10, p3

    .line 581
    .end local p3    # "operatingMode":I
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v10    # "operatingMode":I
    :goto_1b7
    :try_start_1b7
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_1c6

    .line 582
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "The camera is currently busy. You must wait until the previous operation completes."

    invoke-direct {v11, v12, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v6    # "success":Z
    .end local v8    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v9    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "operatingMode":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p4    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .end local p5    # "createSessionStartTime":J
    throw v11

    .line 585
    .restart local v5    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v6    # "success":Z
    .restart local v8    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v9    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "operatingMode":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p4    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .restart local p5    # "createSessionStartTime":J
    :cond_1c6
    nop

    .end local v5    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v6    # "success":Z
    .end local v8    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v9    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "operatingMode":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p4    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .end local p5    # "createSessionStartTime":J
    throw v0

    .line 575
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v5    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v6    # "success":Z
    .restart local v8    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v9    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p3    # "operatingMode":I
    .restart local p4    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .restart local p5    # "createSessionStartTime":J
    :catch_1c8
    move-exception v0

    move/from16 v10, p3

    .line 578
    .end local p3    # "operatingMode":I
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "operatingMode":I
    :goto_1cb
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Stream configuration failed due to: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e7
    .catchall {:try_start_1b7 .. :try_end_1e7} :catchall_202

    .line 579
    nop

    .line 587
    if-eqz v6, :cond_1f8

    :try_start_1ea
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1f8

    .line 588
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1ff

    .line 591
    :cond_1f8
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1ff
    monitor-exit v7

    .line 579
    const/4 v7, 0x0

    return v7

    .line 587
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_202
    move-exception v0

    :goto_203
    if-eqz v6, :cond_213

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_213

    .line 588
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_21a

    .line 591
    :cond_213
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 593
    :goto_21a
    nop

    .end local v5    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v6    # "success":Z
    .end local v10    # "operatingMode":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p4    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .end local p5    # "createSessionStartTime":J
    throw v0

    .line 599
    .end local v8    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v9    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v6    # "success":Z
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p3    # "operatingMode":I
    .restart local p4    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .restart local p5    # "createSessionStartTime":J
    :catchall_21c
    move-exception v0

    move/from16 v10, p3

    .end local p3    # "operatingMode":I
    .restart local v10    # "operatingMode":I
    :goto_21f
    monitor-exit v7
    :try_end_220
    .catchall {:try_start_1ea .. :try_end_220} :catchall_221

    throw v0

    :catchall_221
    move-exception v0

    goto :goto_21f
.end method

.method public whitelist createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 11
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 884
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 885
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 887
    const/4 v1, 0x0

    .line 889
    .local v1, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    move-object v1, v2

    .line 893
    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mAppTargetSdkVersion:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_17

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1b

    .line 895
    :cond_17
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->overrideEnableZsl(Landroid/hardware/camera2/impl/CameraMetadataNative;Z)V

    .line 898
    :cond_1b
    new-instance v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 900
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    .line 902
    .local v2, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    monitor-exit v0

    return-object v2

    .line 903
    .end local v1    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v2    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public whitelist createCaptureRequest(ILjava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 12
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/camera2/CaptureRequest$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 853
    .local p2, "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 854
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 856
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 857
    .local v2, "physicalId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1d

    .line 860
    .end local v2    # "physicalId":Ljava/lang/String;
    goto :goto_a

    .line 858
    .restart local v2    # "physicalId":Ljava/lang/String;
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Physical id matches the logical id!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "templateType":I
    .end local p2    # "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    throw v1

    .line 862
    .end local v2    # "physicalId":Ljava/lang/String;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "templateType":I
    .restart local p2    # "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_25
    const/4 v1, 0x0

    .line 864
    .local v1, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    move-object v1, v2

    .line 868
    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mAppTargetSdkVersion:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_36

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3a

    .line 870
    :cond_36
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->overrideEnableZsl(Landroid/hardware/camera2/impl/CameraMetadataNative;Z)V

    .line 873
    :cond_3a
    new-instance v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 875
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v7

    move-object v3, v2

    move-object v4, v1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    .line 877
    .local v2, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    monitor-exit v0

    return-object v2

    .line 878
    .end local v1    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v2    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public whitelist createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    .registers 10
    .param p1, "config"    # Landroid/hardware/camera2/params/SessionConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 718
    if-eqz p1, :cond_38

    .line 722
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v7

    .line 723
    .local v7, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-eqz v7, :cond_30

    .line 726
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 729
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getInputConfiguration()Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v1

    .line 730
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getSessionType()I

    move-result v5

    .line 731
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getSessionParameters()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    .line 729
    move-object v0, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 732
    return-void

    .line 727
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid executor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid output configurations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    .end local v7    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid session configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 13
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 608
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 609
    .local v0, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 610
    .local v2, "surface":Landroid/view/Surface;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    .end local v2    # "surface":Landroid/view/Surface;
    goto :goto_d

    .line 612
    :cond_22
    const/4 v3, 0x0

    .line 613
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 612
    move-object v2, p0

    move-object v4, v0

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 615
    return-void
.end method

.method public whitelist createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 13
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 622
    .local p1, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 623
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v1, "createCaptureSessionByOutputConfigurations"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 629
    .local v4, "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    const/4 v3, 0x0

    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 631
    return-void
.end method

.method public whitelist createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 13
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 687
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3f

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 692
    .local v0, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 693
    .local v2, "surface":Landroid/view/Surface;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    .end local v2    # "surface":Landroid/view/Surface;
    goto :goto_1c

    .line 695
    :cond_31
    const/4 v3, 0x0

    .line 696
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 695
    move-object v2, p0

    move-object v4, v0

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 699
    return-void

    .line 688
    .end local v0    # "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output surface list must not be null and the size must be no more than 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createCustomCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 14
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "operatingMode"    # I
    .param p4, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;I",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 707
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v0, "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 709
    .local v2, "output":Landroid/hardware/camera2/params/OutputConfiguration;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    .end local v2    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_9

    .line 711
    :cond_1e
    nop

    .line 712
    invoke-static {p5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v5

    const/4 v7, 0x0

    .line 711
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p4

    move v6, p3

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 713
    return-void
.end method

.method public whitelist createExtensionSession(Landroid/hardware/camera2/params/ExtensionSessionConfiguration;)V
    .registers 5
    .param p1, "extensionConfiguration"    # Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2633
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2634
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    .line 2635
    invoke-static {p0, v0, p1, v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->createCameraAdvancedExtensionSession(Landroid/hardware/camera2/CameraDevice;Landroid/content/Context;Landroid/hardware/camera2/params/ExtensionSessionConfiguration;I)Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    goto :goto_23

    .line 2638
    :cond_15
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    invoke-static {p0, v0, p1, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createCameraExtensionSession(Landroid/hardware/camera2/CameraDevice;Landroid/content/Context;Landroid/hardware/camera2/params/ExtensionSessionConfiguration;I)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_25

    .line 2643
    :goto_23
    nop

    .line 2644
    return-void

    .line 2641
    :catch_25
    move-exception v0

    .line 2642
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1
.end method

.method public whitelist createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 10
    .param p1, "inputResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 909
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 910
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 912
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 913
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 915
    .local v2, "resultMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v7, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v3, 0x1

    .line 916
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getSessionId()I

    move-result v4

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    monitor-exit v0

    .line 915
    return-object v7

    .line 917
    .end local v2    # "resultMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 14
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 637
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 638
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v1, "createReprocessableCaptureSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_b
    if-eqz p1, :cond_3e

    .line 645
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 646
    .local v0, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 647
    .local v2, "surface":Landroid/view/Surface;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    .end local v2    # "surface":Landroid/view/Surface;
    goto :goto_1a

    .line 649
    :cond_2f
    nop

    .line 650
    invoke-static {p4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 649
    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 652
    return-void

    .line 642
    .end local v0    # "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputConfig cannot be null when creating a reprocessable capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 13
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 659
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 660
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v1, "createReprocessableCaptureSessionWithConfigurations"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_b
    if-eqz p1, :cond_44

    .line 668
    if-eqz p2, :cond_3c

    .line 674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .local v0, "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 676
    .local v2, "output":Landroid/hardware/camera2/params/OutputConfiguration;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    .end local v2    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_18

    .line 678
    :cond_2d
    nop

    .line 679
    invoke-static {p4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 678
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 681
    return-void

    .line 669
    .end local v0    # "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output configurations cannot be null when creating a reprocessable capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputConfig cannot be null when creating a reprocessable capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1538
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 1541
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1542
    nop

    .line 1543
    return-void

    .line 1541
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1542
    throw v0
.end method

.method public greylist-max-o finalizeOutputConfigs(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1109
    .local p1, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-eqz p1, :cond_83

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_83

    .line 1113
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1114
    :try_start_b
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1117
    .local v2, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    const/4 v3, -0x1

    .line 1118
    .local v3, "streamId":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3f

    .line 1121
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/params/OutputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 1122
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    move v3, v5

    .line 1123
    goto :goto_3f

    .line 1118
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1126
    .end local v4    # "i":I
    :cond_3f
    :goto_3f
    const/4 v4, -0x1

    if-eq v3, v4, :cond_76

    .line 1131
    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_57

    .line 1135
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v4, v3, v2}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 1136
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1137
    .end local v2    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v3    # "streamId":I
    goto :goto_12

    .line 1132
    .restart local v2    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .restart local v3    # "streamId":I
    :cond_57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The final config for stream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must have at least 1 surface"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    throw v1

    .line 1127
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Deferred config is not part of this session"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    throw v1

    .line 1138
    .end local v2    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v3    # "streamId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_7e
    monitor-exit v0

    .line 1139
    return-void

    .line 1138
    :catchall_80
    move-exception v1

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_b .. :try_end_82} :catchall_80

    throw v1

    .line 1110
    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deferred config is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o flush()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1449
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1451
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flush: E. id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1454
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1458
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz v1, :cond_41

    .line 1459
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1460
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v1, :cond_3f

    .line 1461
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v2, "flush: X. Camera is idle."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_3f
    monitor-exit v0

    return-void

    .line 1466
    :cond_41
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->flush()J

    move-result-wide v1

    .line 1467
    .local v1, "lastFrameNumber":J
    iget v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_56

    .line 1468
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    invoke-direct {p0, v3, v1, v2, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceCompleteLocked(IJ[I)V

    .line 1470
    iput v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1471
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1474
    :cond_56
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v4, "flush: X"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    nop

    .end local v1    # "lastFrameNumber":J
    monitor-exit v0

    .line 1476
    return-void

    .line 1475
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public greylist-max-o getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .registers 2

    .line 339
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    return-object v0
.end method

.method public whitelist getCameraAudioRestriction()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2623
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2624
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 2625
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->getGlobalAudioRestriction()I

    move-result v1

    monitor-exit v0

    return v1

    .line 2626
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 435
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isPrivilegedApp()Z
    .registers 2

    .line 1621
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrivilegedApp:Z

    return v0
.end method

.method public whitelist isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z
    .registers 4
    .param p1, "sessionConfig"    # Landroid/hardware/camera2/params/SessionConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 823
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 824
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 826
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 827
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .registers 9
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 1882
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v1, "Device error received, code %d, frame number %d, request ID %d, subseq ID %d"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    .line 1884
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 1885
    invoke-virtual {p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 1882
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1889
    :try_start_39
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v1, :cond_3f

    .line 1890
    monitor-exit v0

    return-void

    .line 1895
    :cond_3f
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    if-eqz v1, :cond_4c

    .line 1896
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 1897
    monitor-exit v0

    return-void

    .line 1900
    :cond_4c
    packed-switch p1, :pswitch_data_94

    .line 1922
    :pswitch_4f
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    goto :goto_74

    .line 1919
    :pswitch_52
    invoke-direct {p0, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->scheduleNotifyError(I)V

    .line 1920
    goto :goto_8e

    .line 1913
    :pswitch_56
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 1914
    goto :goto_8e

    .line 1916
    :pswitch_5a
    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->scheduleNotifyError(I)V

    .line 1917
    goto :goto_8e

    .line 1902
    :pswitch_5e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_62
    .catchall {:try_start_39 .. :try_end_62} :catchall_90

    .line 1904
    .local v1, "ident":J
    :try_start_62
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_6e

    .line 1906
    :try_start_69
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1907
    nop

    .line 1908
    goto :goto_8e

    .line 1906
    :catchall_6e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1907
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "errorCode":I
    .end local p2    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    throw v3

    .line 1922
    .end local v1    # "ident":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "errorCode":I
    .restart local p2    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :goto_74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error from camera device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->scheduleNotifyError(I)V

    .line 1925
    :goto_8e
    monitor-exit v0

    .line 1926
    return-void

    .line 1925
    :catchall_90
    move-exception v1

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_69 .. :try_end_92} :catchall_90

    throw v1

    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_5a
        :pswitch_4f
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_52
    .end packed-switch
.end method

.method public blacklist onDeviceIdle()V
    .registers 10

    .line 2063
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 2064
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v1, "Camera now idle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_b
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2067
    :try_start_e
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v1, :cond_14

    monitor-exit v0

    return-void

    .line 2071
    :cond_14
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    if-eqz v1, :cond_21

    .line 2072
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onDeviceIdle()V

    .line 2073
    monitor-exit v0

    return-void

    .line 2077
    :cond_21
    const-wide v3, 0x7fffffffffffffffL

    const-wide v5, 0x7fffffffffffffffL

    const-wide v7, 0x7fffffffffffffffL

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->removeCompletedCallbackHolderLocked(JJJ)V

    .line 2082
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-nez v1, :cond_4d

    .line 2083
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_3c
    .catchall {:try_start_e .. :try_end_3c} :catchall_52

    .line 2085
    .local v1, "ident":J
    :try_start_3c
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_47

    .line 2087
    :try_start_43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2088
    goto :goto_4d

    .line 2087
    :catchall_47
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2088
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    throw v3

    .line 2090
    .end local v1    # "ident":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :cond_4d
    :goto_4d
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 2091
    monitor-exit v0

    .line 2092
    return-void

    .line 2091
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public greylist-max-o prepare(ILandroid/view/Surface;)V
    .registers 7
    .param p1, "maxCount"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 942
    if-eqz p2, :cond_5b

    .line 943
    if-lez p1, :cond_42

    .line 946
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 947
    :try_start_7
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 948
    const/4 v1, -0x1

    .line 949
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 950
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-ne p2, v3, :cond_2a

    .line 951
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move v1, v3

    .line 952
    goto :goto_2d

    .line 949
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 955
    .end local v2    # "i":I
    :cond_2d
    :goto_2d
    const/4 v2, -0x1

    if-eq v1, v2, :cond_37

    .line 959
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, p1, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->prepare2(II)V

    .line 960
    .end local v1    # "streamId":I
    monitor-exit v0

    .line 961
    return-void

    .line 956
    .restart local v1    # "streamId":I
    :cond_37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Surface is not part of this session"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "maxCount":I
    .end local p2    # "surface":Landroid/view/Surface;
    throw v2

    .line 960
    .end local v1    # "streamId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "maxCount":I
    .restart local p2    # "surface":Landroid/view/Surface;
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_3f

    throw v1

    .line 943
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid maxCount given: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 942
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o prepare(Landroid/view/Surface;)V
    .registers 7
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 921
    if-eqz p1, :cond_44

    .line 923
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 924
    :try_start_5
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 925
    const/4 v1, -0x1

    .line 926
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 927
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v3

    .line 928
    .local v3, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 929
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move v1, v4

    .line 930
    goto :goto_2f

    .line 926
    .end local v3    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 933
    .end local v2    # "i":I
    :cond_2f
    :goto_2f
    const/4 v2, -0x1

    if-eq v1, v2, :cond_39

    .line 937
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->prepare(I)V

    .line 938
    .end local v1    # "streamId":I
    monitor-exit v0

    .line 939
    return-void

    .line 934
    .restart local v1    # "streamId":I
    :cond_39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Surface is not part of this session"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "surface":Landroid/view/Surface;
    throw v2

    .line 938
    .end local v1    # "streamId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "surface":Landroid/view/Surface;
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_41

    throw v1

    .line 921
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCameraAudioRestriction(I)V
    .registers 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2615
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2616
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 2617
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->setCameraAudioRestriction(I)V

    .line 2618
    monitor-exit v0

    .line 2619
    return-void

    .line 2618
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public greylist-max-o setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    .registers 8
    .param p1, "remoteDevice"    # Landroid/hardware/camera2/ICameraDeviceUser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 355
    :cond_9
    new-instance v1, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-direct {v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;-><init>(Landroid/hardware/camera2/ICameraDeviceUser;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    .line 357
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v1, :cond_31

    .line 358
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRemoteDevice: id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_31
    invoke-interface {p1}, Landroid/hardware/camera2/ICameraDeviceUser;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_5d

    .line 365
    .local v1, "remoteDeviceBinder":Landroid/os/IBinder;
    if-eqz v1, :cond_4d

    .line 367
    const/4 v2, 0x0

    :try_start_38
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3b} :catch_3c
    .catchall {:try_start_38 .. :try_end_3b} :catchall_5d

    .line 373
    goto :goto_4d

    .line 368
    :catch_3c
    move-exception v2

    .line 369
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3d
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 371
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const/4 v4, 0x2

    const-string v5, "The camera device has encountered a serious error"

    invoke-direct {v3, v4, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "remoteDevice":Landroid/hardware/camera2/ICameraDeviceUser;
    throw v3

    .line 376
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "remoteDevice":Landroid/hardware/camera2/ICameraDeviceUser;
    :cond_4d
    :goto_4d
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 377
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 378
    .end local v1    # "remoteDeviceBinder":Landroid/os/IBinder;
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3d .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method public greylist-max-o setRemoteFailure(Landroid/os/ServiceSpecificException;)V
    .registers 9
    .param p1, "failure"    # Landroid/os/ServiceSpecificException;

    .line 388
    const/4 v0, 0x4

    .line 389
    .local v0, "failureCode":I
    const/4 v1, 0x1

    .line 391
    .local v1, "failureIsError":Z
    iget v2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v2, :pswitch_data_4c

    .line 408
    :pswitch_7
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected failure in opening camera device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 409
    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 405
    :pswitch_2a
    const/4 v0, 0x4

    .line 406
    goto :goto_34

    .line 396
    :pswitch_2c
    const/4 v0, 0x2

    .line 397
    goto :goto_34

    .line 393
    :pswitch_2e
    const/4 v0, 0x1

    .line 394
    goto :goto_34

    .line 399
    :pswitch_30
    const/4 v0, 0x3

    .line 400
    goto :goto_34

    .line 402
    :pswitch_32
    const/4 v1, 0x0

    .line 403
    nop

    .line 412
    :goto_34
    move v2, v0

    .line 413
    .local v2, "code":I
    move v3, v1

    .line 414
    .local v3, "isError":Z
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 415
    const/4 v5, 0x1

    :try_start_3a
    iput-boolean v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 416
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;

    invoke-direct {v6, p0, v3, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ZI)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 426
    monitor-exit v4

    .line 427
    return-void

    .line 426
    :catchall_48
    move-exception v5

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_48

    throw v5

    nop

    :pswitch_data_4c
    .packed-switch 0x4
        :pswitch_32
        :pswitch_7
        :pswitch_30
        :pswitch_2e
        :pswitch_2c
        :pswitch_7
        :pswitch_2a
    .end packed-switch
.end method

.method public blacklist setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I
    .registers 6
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CaptureCallback;",
            "Ljava/util/concurrent/Executor;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1388
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1391
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result v0

    return v0

    .line 1389
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one request must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1382
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1383
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result v1

    return v1
.end method

.method public greylist-max-o setSessionListener(Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;)V
    .registers 4
    .param p1, "sessionCallback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .line 834
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_3
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .line 836
    monitor-exit v0

    .line 837
    return-void

    .line 836
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist setVendorStreamConfigMode(I)V
    .registers 2
    .param p1, "fpsrange"    # I

    .line 430
    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->customOpMode:I

    .line 431
    return-void
.end method

.method public greylist-max-o stopRepeating()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1396
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1397
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1398
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_45

    .line 1400
    nop

    .line 1401
    .local v1, "requestId":I
    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1402
    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestId:I

    .line 1403
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1404
    .local v2, "requestTypes":[I
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1405
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestTypes:[I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_47

    .line 1409
    :try_start_17
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v3, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->cancelRequest(I)J

    move-result-wide v3
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1d} :catch_22
    .catchall {:try_start_17 .. :try_end_1d} :catchall_47

    .line 1423
    .local v3, "lastFrameNumber":J
    nop

    .line 1425
    :try_start_1e
    invoke-direct {p0, v1, v3, v4, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceCompleteLocked(IJ[I)V

    goto :goto_45

    .line 1410
    .end local v3    # "lastFrameNumber":J
    :catch_22
    move-exception v3

    .line 1411
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    iget-boolean v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v4, :cond_3f

    .line 1412
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Repeating request was already stopped for request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_3f
    iput v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestId:I

    .line 1419
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestTypes:[I

    .line 1422
    monitor-exit v0

    return-void

    .line 1427
    .end local v1    # "requestId":I
    .end local v2    # "requestTypes":[I
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_45
    :goto_45
    monitor-exit v0

    .line 1428
    return-void

    .line 1427
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_1e .. :try_end_49} :catchall_47

    throw v1
.end method

.method public blacklist supportsOfflineProcessing(Landroid/view/Surface;)Z
    .registers 6
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1069
    if-eqz p1, :cond_42

    .line 1071
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1072
    const/4 v1, -0x1

    .line 1073
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    :try_start_7
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 1074
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-ne p1, v3, :cond_25

    .line 1075
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move v1, v3

    .line 1076
    goto :goto_28

    .line 1073
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1079
    .end local v2    # "i":I
    :cond_28
    :goto_28
    const/4 v2, -0x1

    if-eq v1, v2, :cond_37

    .line 1083
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1080
    :cond_37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Surface is not part of this session"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "surface":Landroid/view/Surface;
    throw v2

    .line 1084
    .end local v1    # "streamId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "surface":Landroid/view/Surface;
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_3f

    throw v1

    .line 1069
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist switchToOffline(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;)Landroid/hardware/camera2/CameraOfflineSession;
    .registers 22
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;",
            ")",
            "Landroid/hardware/camera2/CameraOfflineSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 987
    .local p1, "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10d

    .line 991
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v2, v0

    .line 992
    .local v2, "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v14, v0

    .line 996
    .local v14, "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    iget-object v15, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v15

    .line 997
    :try_start_17
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 998
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    if-nez v0, :cond_102

    .line 1002
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v13, -0x1

    if-eqz v3, :cond_9b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 1003
    .local v3, "surface":Landroid/view/Surface;
    const/4 v4, -0x1

    .line 1004
    .local v4, "streamId":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_31
    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_5d

    .line 1005
    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v6}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v6

    if-ne v3, v6, :cond_5a

    .line 1006
    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    move v4, v6

    .line 1007
    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v14, v4, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1008
    goto :goto_5d

    .line 1004
    :cond_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 1011
    .end local v5    # "i":I
    :cond_5d
    :goto_5d
    if-eq v4, v13, :cond_93

    .line 1016
    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 1021
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1022
    nop

    .end local v3    # "surface":Landroid/view/Surface;
    .end local v4    # "streamId":I
    goto :goto_22

    .line 1017
    .restart local v3    # "surface":Landroid/view/Surface;
    .restart local v4    # "streamId":I
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Surface: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not  support offline mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v14    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    throw v0

    .line 1012
    .restart local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v14    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    :cond_93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Offline surface is not part of this session"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v14    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    throw v0

    .line 1023
    .end local v3    # "surface":Landroid/view/Surface;
    .end local v4    # "streamId":I
    .restart local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v14    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    :cond_9b
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V

    .line 1025
    new-instance v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    iget-object v4, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v9, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    iget-object v10, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    iget-object v8, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    move-object v3, v0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v16, v8

    move-object v8, v14

    move/from16 v17, v13

    move-object/from16 v13, v16

    invoke-direct/range {v3 .. v13}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;Landroid/util/SparseArray;Ljava/util/AbstractMap$SimpleEntry;Landroid/util/SparseArray;Landroid/hardware/camera2/impl/FrameNumberTracker;Landroid/util/SparseArray;Ljava/util/List;)V

    iput-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    .line 1029
    nop

    .line 1031
    .local v0, "ret":Landroid/hardware/camera2/CameraOfflineSession;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

    .line 1032
    iget-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1033
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 1034
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 1035
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    .line 1036
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    .line 1037
    new-instance v3, Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-direct {v3}, Landroid/hardware/camera2/impl/FrameNumberTracker;-><init>()V

    iput-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    .line 1039
    iget-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    invoke-interface {v3}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->closeWithoutDraining()V

    .line 1040
    iput-object v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    .line 1041
    monitor-exit v15
    :try_end_f7
    .catchall {:try_start_17 .. :try_end_f7} :catchall_10a

    .line 1043
    iget-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;

    invoke-direct {v4, v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/HashSet;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1065
    return-object v0

    .line 999
    .end local v0    # "ret":Landroid/hardware/camera2/CameraOfflineSession;
    :cond_102
    :try_start_102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Switch to offline mode already in progress"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v14    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    throw v0

    .line 1041
    .restart local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v14    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    :catchall_10a
    move-exception v0

    monitor-exit v15
    :try_end_10c
    .catchall {:try_start_102 .. :try_end_10c} :catchall_10a

    throw v0

    .line 988
    .end local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v14    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_10d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid offline surfaces!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o tearDown(Landroid/view/Surface;)V
    .registers 6
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1088
    if-eqz p1, :cond_40

    .line 1090
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1091
    :try_start_5
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1092
    const/4 v1, -0x1

    .line 1093
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 1094
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-ne p1, v3, :cond_28

    .line 1095
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move v1, v3

    .line 1096
    goto :goto_2b

    .line 1093
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1099
    .end local v2    # "i":I
    :cond_2b
    :goto_2b
    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    .line 1103
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->tearDown(I)V

    .line 1104
    .end local v1    # "streamId":I
    monitor-exit v0

    .line 1105
    return-void

    .line 1100
    .restart local v1    # "streamId":I
    :cond_35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Surface is not part of this session"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "surface":Landroid/view/Surface;
    throw v2

    .line 1104
    .end local v1    # "streamId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "surface":Landroid/view/Surface;
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_3d

    throw v1

    .line 1088
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o updateOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 7
    .param p1, "config"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 965
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 966
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 967
    const/4 v1, -0x1

    .line 968
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 969
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v4

    if-ne v3, v4, :cond_2a

    .line 970
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move v1, v3

    .line 971
    goto :goto_2d

    .line 968
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 974
    .end local v2    # "i":I
    :cond_2d
    :goto_2d
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3c

    .line 978
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->updateOutputConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 979
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 980
    .end local v1    # "streamId":I
    monitor-exit v0

    .line 981
    return-void

    .line 975
    .restart local v1    # "streamId":I
    :cond_3c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid output configuration"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    throw v2

    .line 980
    .end local v1    # "streamId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v1
.end method
