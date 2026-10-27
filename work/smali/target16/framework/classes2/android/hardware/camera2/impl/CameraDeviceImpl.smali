.class public Landroid/hardware/camera2/impl/CameraDeviceImpl;
.super Landroid/hardware/camera2/CameraDevice;
.source "CameraDeviceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraHandlerExecutor;
    }
.end annotation


# static fields
.field static final blacklist CHECK_PARAMS_IN_IS_SESSION_CONFIGURATION_SUPPORTED:J = 0x131e218fL

.field private static final greylist-max-o NANO_PER_SECOND:J = 0x3b9aca00L

.field private static final greylist-max-o REQUEST_ID_NONE:I = -0x1

.field private static final blacklist sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final greylist-max-o DEBUG:Z

.field private final greylist-max-o TAG:Ljava/lang/String;

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

.field private final blacklist mCallOnOpenedInSharedMode:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnUnconfigured:Ljava/lang/Runnable;

.field private final greylist-max-o mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

.field private final blacklist mCameraDeviceSetup:Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

.field private final greylist-max-o mCameraId:Ljava/lang/String;

.field private final blacklist mCameraManager:Landroid/hardware/camera2/CameraManager;

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

.field private blacklist mFMQReader:J

.field private blacklist mFailedRepeatingRequestId:I

.field private blacklist mFailedRepeatingRequestTypes:[I

.field private blacklist mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

.field private greylist-max-o mIdle:Z

.field private greylist-max-o mInError:Z

.field final greylist-max-o mInterfaceLock:Ljava/lang/Object;

.field private blacklist mIsPrimaryClient:Z

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

.field private blacklist mPhysicalIdsToChars:Ljava/util/Map;
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

.field private blacklist mRemoteDeviceInit:Z

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

.field private blacklist mSharedMode:Z

.field private final greylist-max-o mTotalPartialCount:I


# direct methods
.method public static synthetic blacklist $r8$lambda$rQjdWE7R1mrbFM85yUKYqEVN9Os(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->notifyError(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xo_9-sEzfUo5YLY0z2ZXoA7vub8(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->notifyClientSharedAccessPriorityChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetTAG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatchOutputMap(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

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

.method static bridge synthetic blacklist -$$Nest$fgetmFMQReader(Landroid/hardware/camera2/impl/CameraDeviceImpl;)J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFMQReader:J

    return-wide v0
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

.method static bridge synthetic blacklist -$$Nest$fgetmIsPrimaryClient(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrimaryClient:Z

    return p0
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

.method static bridge synthetic blacklist -$$Nest$mgetPhysicalIdToChars(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/util/Map;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getPhysicalIdToChars()Ljava/util/Map;

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

.method static bridge synthetic blacklist -$$Nest$smnativeReadResultMetadata(JJ)J
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->nativeReadResultMetadata(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 104
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraManager;ILandroid/content/Context;Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;Z)V
    .registers 15

    .line 422
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    .line 129
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDeviceInit:Z

    .line 135
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 136
    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    .line 144
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 145
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 146
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 149
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    .line 153
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    .line 155
    const/4 v2, -0x1

    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 160
    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestId:I

    .line 164
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    .line 165
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 166
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 170
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    .line 185
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    .line 192
    new-instance v2, Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/FrameNumberTracker;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    .line 197
    iput v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    .line 200
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrivilegedApp:Z

    .line 210
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    .line 226
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpenedInSharedMode:Ljava/lang/Runnable;

    .line 245
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    .line 260
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    .line 275
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    .line 290
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    .line 310
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    .line 325
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    .line 423
    if-eqz p1, :cond_f6

    if-eqz p2, :cond_f6

    if-eqz p3, :cond_f6

    if-eqz p4, :cond_f6

    if-eqz p5, :cond_f6

    .line 427
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    .line 428
    new-instance p1, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;

    invoke-direct {p1, p0, p3, p2, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/hardware/camera2/impl/CameraDeviceImpl-IA;)V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 429
    sget-object p1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 430
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 431
    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 432
    iput p6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mAppTargetSdkVersion:I

    .line 433
    iput-object p7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mContext:Landroid/content/Context;

    .line 434
    iput-object p8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraDeviceSetup:Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    .line 435
    iput-boolean p9, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSharedMode:Z

    .line 438
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "CameraDevice-JV-%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 439
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x17

    if-le p2, p3, :cond_d8

    .line 440
    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 442
    :cond_d8
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    .line 444
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 445
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 446
    if-nez p1, :cond_e9

    .line 448
    iput v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    goto :goto_ef

    .line 450
    :cond_e9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    .line 452
    :goto_ef
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkPrivilegedAppList()Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrivilegedApp:Z

    .line 453
    return-void

    .line 425
    :cond_f6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument given"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o checkAndFireSequenceComplete()V
    .registers 16

    .line 2035
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedFrameNumber()J

    move-result-wide v0

    .line 2036
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedReprocessFrameNumber()J

    move-result-wide v2

    .line 2037
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v4}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedZslStillFrameNumber()J

    move-result-wide v4

    .line 2039
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2040
    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a9

    .line 2041
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    .line 2042
    invoke-virtual {v7}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v8

    .line 2044
    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v9, :cond_34

    .line 2045
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v1, "Camera closed while checking sequences"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    return-void

    .line 2048
    :cond_34
    invoke-virtual {v7}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v9

    if-nez v9, :cond_8b

    .line 2049
    nop

    .line 2050
    invoke-virtual {v7}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v9

    .line 2051
    nop

    .line 2052
    invoke-virtual {v7}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v11

    .line 2053
    nop

    .line 2054
    invoke-virtual {v7}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastZslStillFrameNumber()J

    move-result-wide v13

    .line 2055
    cmp-long v9, v9, v0

    if-gtz v9, :cond_58

    cmp-long v9, v11, v2

    if-gtz v9, :cond_58

    cmp-long v9, v13, v4

    if-gtz v9, :cond_58

    .line 2067
    invoke-virtual {v7}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->markSequenceCompleted()V

    .line 2071
    :cond_58
    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    .line 2072
    if-ltz v9, :cond_69

    .line 2073
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    goto :goto_6a

    :cond_69
    const/4 v9, 0x0

    .line 2074
    :goto_6a
    if-eqz v9, :cond_8b

    invoke-virtual {v7}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v10

    if-eqz v10, :cond_8b

    .line 2075
    new-instance v10, Landroid/hardware/camera2/impl/CameraDeviceImpl$13;

    invoke-direct {v10, p0, v8, v9, v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$13;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;)V

    .line 2092
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 2094
    :try_start_7b
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_86

    .line 2096
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2097
    goto :goto_8b

    .line 2096
    :catchall_86
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2097
    throw v0

    .line 2101
    :cond_8b
    :goto_8b
    invoke-virtual {v7}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v9

    if-eqz v9, :cond_a7

    .line 2102
    invoke-virtual {v7}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isInflightCompleted()Z

    move-result v7

    if-eqz v7, :cond_a7

    .line 2103
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    .line 2104
    if-ltz v7, :cond_a4

    .line 2105
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2111
    :cond_a4
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 2113
    :cond_a7
    goto/16 :goto_18

    .line 2114
    :cond_a9
    return-void
.end method

.method public static greylist-max-o checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;
    .registers 2

    .line 2924
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraHandlerExecutor;

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraHandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method private blacklist checkEarlyTriggerSequenceCompleteLocked(IJ[I)V
    .registers 7

    .line 1415
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_4d

    .line 1417
    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    .line 1418
    if-ltz p2, :cond_17

    iget-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    goto :goto_18

    :cond_17
    const/4 p3, 0x0

    .line 1419
    :goto_18
    if-eqz p3, :cond_39

    .line 1420
    iget-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1431
    new-instance p2, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;

    invoke-direct {p2, p0, p1, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CaptureCallbackHolder;)V

    .line 1446
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1448
    :try_start_28
    invoke-virtual {p3}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_34

    .line 1450
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1451
    nop

    .line 1452
    goto :goto_4c

    .line 1450
    :catchall_34
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1451
    throw p1

    .line 1453
    :cond_39
    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    .line 1455
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1453
    const-string p3, "did not register callback to request %d"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :goto_4c
    goto :goto_5a

    .line 1460
    :cond_4d
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    new-instance v1, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;-><init>(IJ[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1465
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    .line 1467
    :goto_5a
    return-void
.end method

.method static greylist-max-o checkExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 2902
    if-nez p0, :cond_7

    const/4 p0, 0x0

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object p0

    :cond_7
    return-object p0
.end method

.method public static greylist-max-o checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;
    .registers 2
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

    .line 2911
    if-eqz p1, :cond_6

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method static greylist-max-o checkHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    .line 2936
    if-nez p0, :cond_17

    .line 2937
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    .line 2938
    if-eqz p0, :cond_f

    .line 2942
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p0, v0

    goto :goto_17

    .line 2939
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No handler given, and current thread has no looper!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2944
    :cond_17
    :goto_17
    return-object p0
.end method

.method static greylist-max-o checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;
    .registers 2
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

    .line 2953
    if-eqz p1, :cond_7

    .line 2954
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p0

    return-object p0

    .line 2956
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

    .line 2960
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-eqz v0, :cond_12

    .line 2963
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-nez v0, :cond_9

    .line 2967
    return-void

    .line 2964
    :cond_9
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    const-string v2, "The camera device has encountered a serious error"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2961
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraDevice was already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V
    .registers 12

    .line 1919
    if-nez p1, :cond_3

    .line 1920
    return-void

    .line 1922
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v0

    .line 1923
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->isMultiResolution()Z

    move-result v1

    const-string v2, "x"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_b2

    .line 1924
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 1927
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getInputFormats()[I

    move-result-object v5

    .line 1928
    nop

    .line 1929
    array-length v6, v5

    move v7, v4

    move v8, v7

    :goto_23
    if-ge v7, v6, :cond_2d

    aget v9, v5, v7

    .line 1930
    if-ne v9, v0, :cond_2a

    .line 1931
    move v8, v3

    .line 1929
    :cond_2a
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 1936
    :cond_2d
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isRawFormat(I)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1937
    return-void

    .line 1940
    :cond_34
    const-string v5, " is not valid"

    if-eqz v8, :cond_95

    .line 1945
    nop

    .line 1946
    nop

    .line 1947
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getInputInfo(I)Ljava/util/Collection;

    move-result-object v0

    .line 1948
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 1949
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_63

    .line 1950
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v6

    invoke-virtual {v1}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v1

    if-ne v6, v1, :cond_63

    .line 1951
    move v4, v3

    .line 1953
    :cond_63
    goto :goto_42

    .line 1955
    :cond_64
    if-eqz v4, :cond_68

    .line 1959
    goto/16 :goto_10c

    .line 1956
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multi-resolution input size "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1957
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1941
    :cond_95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multi-resolution input format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1964
    :cond_b2
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isPrivilegedApp()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 1965
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v0, "ignore input format/size check for white listed app"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    return-void

    .line 1969
    :cond_c0
    invoke-direct {p0, p1, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfigurationWithStreamConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Z)Z

    move-result v1

    if-nez v1, :cond_10c

    .line 1970
    invoke-direct {p0, p1, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfigurationWithStreamConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Z)Z

    move-result v1

    if-eqz v1, :cond_cd

    goto :goto_10c

    .line 1971
    :cond_cd
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input config with format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and size "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1972
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1973
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " not supported by camera id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1976
    :cond_10c
    :goto_10c
    return-void
.end method

.method private blacklist checkInputConfigurationWithStreamConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Z)Z
    .registers 6

    .line 1855
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1858
    if-eqz p2, :cond_6

    .line 1859
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1862
    :cond_6
    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1864
    const/4 v1, 0x1

    if-eqz p2, :cond_18

    .line 1865
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfigurationWithStreamConfigurationsAs(Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 1866
    return v1

    .line 1869
    :cond_18
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getPhysicalIdToChars()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1870
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1872
    if-eqz v2, :cond_45

    .line 1873
    invoke-direct {p0, p1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfigurationWithStreamConfigurationsAs(Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1875
    return v1

    .line 1877
    :cond_45
    goto :goto_24

    .line 1878
    :cond_46
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist checkInputConfigurationWithStreamConfigurationsAs(Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;)Z
    .registers 11

    .line 1818
    invoke-virtual {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v0

    .line 1819
    nop

    .line 1820
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v1

    .line 1821
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_d
    const/4 v6, 0x1

    if-ge v4, v2, :cond_18

    aget v7, v0, v4

    .line 1822
    if-ne v7, v1, :cond_15

    .line 1823
    move v5, v6

    .line 1821
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1828
    :cond_18
    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isRawFormat(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1829
    return v6

    .line 1832
    :cond_1f
    if-nez v5, :cond_22

    .line 1833
    return v3

    .line 1836
    :cond_22
    nop

    .line 1837
    invoke-virtual {p2, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object p2

    .line 1838
    array-length v0, p2

    move v1, v3

    move v2, v1

    :goto_2a
    if-ge v1, v0, :cond_46

    aget-object v4, p2, v1

    .line 1839
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-ne v5, v7, :cond_43

    .line 1840
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-ne v5, v4, :cond_43

    .line 1841
    move v2, v6

    .line 1838
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 1845
    :cond_46
    if-nez v2, :cond_49

    .line 1846
    return v3

    .line 1848
    :cond_49
    return v6
.end method

.method private blacklist checkPrivilegedAppList()Z
    .registers 5

    .line 1882
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1883
    const-string v1, "persist.vendor.camera.privapp.list"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1885
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_33

    .line 1886
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1887
    invoke-interface {v2, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 1888
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1889
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1890
    const/4 v0, 0x1

    return v0

    .line 1892
    :cond_32
    goto :goto_1e

    .line 1895
    :cond_33
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist checkSharedOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)Z
    .registers 9

    .line 863
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraMultiClient()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 864
    return v1

    .line 866
    :cond_8
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SHARED_SESSION_CONFIGURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 867
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/SharedSessionConfiguration;

    .line 868
    if-nez v0, :cond_15

    .line 869
    return v1

    .line 872
    :cond_15
    nop

    .line 873
    invoke-virtual {v0}, Landroid/hardware/camera2/params/SharedSessionConfiguration;->getOutputStreamsInformation()Ljava/util/List;

    move-result-object v0

    .line 874
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;

    .line 875
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaceGroupId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_91

    .line 876
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getMirrorMode()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->getMirrorMode()I

    move-result v4

    if-ne v3, v4, :cond_91

    .line 877
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->isReadoutTimestampEnabled()Z

    move-result v3

    .line 878
    invoke-virtual {v2}, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->isReadoutTimestampEnabled()Z

    move-result v4

    if-ne v3, v4, :cond_91

    .line 879
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getTimestampBase()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->getTimestampBase()I

    move-result v4

    if-ne v3, v4, :cond_91

    .line 880
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getStreamUseCase()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->getStreamUseCase()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_91

    .line 881
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_91

    .line 883
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v3

    .line 884
    invoke-virtual {v2}, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v2

    .line 883
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 885
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSensorPixelModes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 886
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->isMultiResolution()Z

    move-result v2

    if-nez v2, :cond_91

    .line 887
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->isDeferredConfiguration()Z

    move-result v2

    if-nez v2, :cond_91

    .line 888
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->isShared()Z

    move-result v2

    if-nez v2, :cond_91

    .line 890
    const/4 p1, 0x1

    return p1

    .line 892
    :cond_91
    goto :goto_1e

    .line 893
    :cond_92
    return v1
.end method

.method private blacklist checkSharedSessionConfiguration(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)Z"
        }
    .end annotation

    .line 897
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 898
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkSharedOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 899
    const/4 p1, 0x0

    return p1

    .line 901
    :cond_18
    goto :goto_4

    .line 902
    :cond_19
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist checkSurfaceSizesCompatible(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)Z"
        }
    .end annotation

    .line 1903
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1904
    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getConfiguredSize()Landroid/util/Size;

    move-result-object v1

    .line 1905
    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 1906
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v2

    .line 1907
    invoke-virtual {v2, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 1908
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surface size not compatible with  outputConfiguration, configured size "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " surface size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    const/4 p1, 0x0

    return p1

    .line 1913
    :cond_56
    goto :goto_1c

    .line 1914
    :cond_57
    goto :goto_4

    .line 1915
    :cond_58
    const/4 p1, 0x1

    return p1
.end method

.method private greylist-max-o createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V
    .registers 21
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

    .line 928
    move/from16 v0, p5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 929
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v8

    .line 934
    :try_start_9
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 936
    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v0, v1, :cond_13

    move v11, v10

    goto :goto_14

    :cond_13
    move v11, v9

    .line 937
    :goto_14
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraMultiClient()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSharedMode:Z

    if-eqz v1, :cond_43

    .line 938
    if-eqz v11, :cond_3b

    .line 941
    move-object/from16 v3, p2

    invoke-direct {p0, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkSharedSessionConfiguration(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 944
    if-nez p1, :cond_2b

    goto :goto_45

    .line 945
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shared capture session doesn\'t support input configuration yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 942
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid output configurations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 939
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid session type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 937
    :cond_43
    move-object/from16 v3, p2

    .line 950
    :goto_45
    if-ne v0, v10, :cond_49

    move v12, v10

    goto :goto_4a

    :cond_49
    move v12, v9

    .line 952
    :goto_4a
    if-eqz v12, :cond_57

    if-nez p1, :cond_4f

    goto :goto_57

    .line 953
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constrained high speed session doesn\'t support input configuration yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :cond_57
    :goto_57
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    if-eqz v1, :cond_60

    .line 958
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->commitStats()V

    .line 961
    :cond_60
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    if-eqz v1, :cond_69

    .line 962
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->commitStats()V

    .line 967
    :cond_69
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    if-eqz v1, :cond_72

    .line 968
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    invoke-interface {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->replaceSessionClose()V

    .line 971
    :cond_72
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    const/4 v13, 0x0

    if-eqz v1, :cond_7e

    .line 972
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-virtual {v1, v9}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->release(Z)V

    .line 973
    iput-object v13, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 976
    :cond_7e
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    if-eqz v1, :cond_89

    .line 977
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-virtual {v1, v9}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->release(Z)V

    .line 978
    iput-object v13, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    :try_end_89
    .catchall {:try_start_9 .. :try_end_89} :catchall_12b

    .line 982
    :cond_89
    nop

    .line 983
    nop

    .line 984
    nop

    .line 987
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p6

    move v4, v0

    :try_start_91
    invoke-virtual/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CaptureRequest;J)Z

    move-result v0

    .line 989
    if-ne v0, v10, :cond_a0

    if-eqz p1, :cond_a0

    .line 990
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->getInputSurface()Landroid/view/Surface;

    move-result-object v1
    :try_end_9f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_91 .. :try_end_9f} :catch_a5
    .catchall {:try_start_91 .. :try_end_9f} :catchall_12b

    goto :goto_a1

    .line 999
    :cond_a0
    move-object v1, v13

    :goto_a1
    move v6, v0

    move-object v2, v1

    move-object v9, v13

    goto :goto_ab

    .line 992
    :catch_a5
    move-exception v0

    .line 993
    nop

    .line 994
    nop

    .line 995
    move v6, v9

    move-object v2, v13

    move-object v9, v0

    .line 1002
    :goto_ab
    nop

    .line 1003
    if-eqz v12, :cond_f4

    .line 1004
    :try_start_ae
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1005
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1006
    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    goto :goto_bb

    .line 1008
    :cond_cf
    nop

    .line 1009
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1010
    invoke-static {v0, v13, v1}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkConstrainedHighSpeedSurfaces(Ljava/util/Collection;Landroid/util/Range;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    .line 1012
    new-instance v0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;

    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object v4, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v7}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;-><init>(ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;ZLandroid/hardware/camera2/CameraCharacteristics;)V

    .line 1015
    goto :goto_11c

    :cond_f4
    if-eqz v11, :cond_109

    .line 1016
    new-instance v0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;

    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    move-object v4, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;-><init>(ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Z)V

    goto :goto_11c

    .line 1019
    :cond_109
    new-instance v0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    move v7, v6

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    move-object v5, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v7}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;-><init>(ILandroid/view/Surface;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Z)V

    .line 1024
    :goto_11c
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    .line 1026
    if-nez v9, :cond_12a

    .line 1030
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    invoke-interface {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .line 1031
    monitor-exit v8

    .line 1032
    return-void

    .line 1027
    :cond_12a
    throw v9

    .line 1031
    :catchall_12b
    move-exception v0

    monitor-exit v8
    :try_end_12d
    .catchall {:try_start_ae .. :try_end_12d} :catchall_12b

    throw v0
.end method

.method public static blacklist disableZslIfNeeded(Landroid/hardware/camera2/impl/CameraMetadataNative;II)V
    .registers 4

    .line 1064
    const/16 v0, 0x1a

    if-lt p1, v0, :cond_8

    const/4 p1, 0x2

    if-ne p2, p1, :cond_8

    .line 1066
    return-void

    .line 1069
    :cond_8
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 1070
    if-nez p1, :cond_13

    .line 1072
    return-void

    .line 1075
    :cond_13
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1076
    return-void
.end method

.method private greylist-max-o getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .registers 2

    .line 2975
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method private blacklist getPhysicalIdToChars()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mPhysicalIdsToChars:Ljava/util/Map;

    if-nez v0, :cond_17

    .line 468
    :try_start_4
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getPhysicalIdToCharsMap(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mPhysicalIdsToChars:Ljava/util/Map;
    :try_end_e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_e} :catch_f

    .line 471
    goto :goto_17

    .line 469
    :catch_f
    move-exception v0

    .line 470
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v1, "Unable to query the physical characteristics map!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mPhysicalIdsToChars:Ljava/util/Map;

    return-object v0
.end method

.method private blacklist getRequestTypes([Landroid/hardware/camera2/CaptureRequest;)[I
    .registers 5

    .line 1470
    array-length v0, p1

    new-array v0, v0, [I

    .line 1471
    const/4 v1, 0x0

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 1472
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v2

    aput v2, v0, v1

    .line 1471
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1474
    :cond_12
    return-object v0
.end method

.method private blacklist hasBatchedOutputs(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)Z"
        }
    .end annotation

    .line 1478
    nop

    .line 1479
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 1480
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 1481
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->isPartOfCRequestList()Z

    move-result v3

    if-nez v3, :cond_17

    .line 1482
    nop

    .line 1483
    goto :goto_2a

    .line 1485
    :cond_17
    if-nez v1, :cond_26

    .line 1486
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v2

    .line 1487
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_26

    .line 1488
    nop

    .line 1489
    goto :goto_2a

    .line 1479
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_29
    const/4 v0, 0x1

    .line 1493
    :goto_2a
    return v0
.end method

.method private greylist-max-o isClosed()Z
    .registers 2

    .line 2971
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private blacklist isRawFormat(I)Z
    .registers 3

    .line 2979
    const/16 v0, 0x24

    if-eq p1, v0, :cond_13

    const/16 v0, 0x25

    if-eq p1, v0, :cond_13

    const/16 v0, 0x26

    if-eq p1, v0, :cond_13

    const/16 v0, 0x20

    if-ne p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private static native blacklist nativeClose(J)V
.end method

.method private static native blacklist nativeCreateFMQReader(Landroid/os/Parcel;)J
.end method

.method private static native blacklist nativeReadResultMetadata(JJ)J
.end method

.method private blacklist notifyClientSharedAccessPriorityChanged(Z)V
    .registers 3

    .line 2201
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2202
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrimaryClient:Z

    .line 2203
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v0, p0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClientSharedAccessPriorityChanged(Landroid/hardware/camera2/CameraDevice;Z)V

    .line 2206
    :cond_d
    return-void
.end method

.method private blacklist notifyError(I)V
    .registers 3

    .line 2268
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2269
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v0, p0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    .line 2271
    :cond_b
    return-void
.end method

.method private blacklist onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .registers 18

    .line 2278
    move/from16 v0, p1

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v4

    .line 2279
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v8

    .line 2280
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v5

    .line 2281
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getErrorPhysicalCameraId()Ljava/lang/String;

    move-result-object v7

    .line 2282
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 2284
    if-nez v2, :cond_30

    .line 2285
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    .line 2286
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 2285
    const-string v2, "Receive capture error on unknown request ID %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    return-void

    .line 2290
    :cond_30
    invoke-virtual {v2, v8}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 2292
    nop

    .line 2293
    const/4 v9, 0x5

    if-ne v0, v9, :cond_9b

    .line 2296
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 2297
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getErrorStreamId()I

    move-result v4

    .line 2296
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 2298
    if-nez v0, :cond_5e

    .line 2299
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    .line 2301
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getErrorStreamId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 2299
    const-string v2, "Stream %d has been removed. Skipping buffer lost callback"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    return-void

    .line 2304
    :cond_5e
    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_66
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/Surface;

    .line 2305
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 2306
    goto :goto_66

    .line 2313
    :cond_7a
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$14;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl$14;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    .line 2323
    move-object v10, v2

    move-object v1, v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2325
    :try_start_86
    invoke-virtual {v10}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_94

    .line 2327
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2328
    nop

    .line 2329
    move-object v3, v1

    move-object v2, v10

    goto :goto_66

    .line 2327
    :catchall_94
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2328
    throw v0

    .line 2330
    :cond_99
    goto/16 :goto_10b

    .line 2331
    :cond_9b
    move-object v10, v2

    move-object v1, v3

    const/4 v2, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v0, v2, :cond_a4

    move v3, v12

    goto :goto_a5

    :cond_a4
    move v3, v11

    .line 2337
    :goto_a5
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    if-eqz v0, :cond_b3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    invoke-interface {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->isAborting()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 2338
    move v2, v12

    goto :goto_b4

    .line 2339
    :cond_b3
    move v2, v11

    .line 2341
    :goto_b4
    new-instance v0, Landroid/hardware/camera2/CaptureFailure;

    invoke-direct/range {v0 .. v7}, Landroid/hardware/camera2/CaptureFailure;-><init>(Landroid/hardware/camera2/CaptureRequest;IZIJLjava/lang/String;)V

    .line 2349
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$15;

    invoke-direct {v2, p0, v10, v1, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$15;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2365
    if-nez v7, :cond_fc

    .line 2367
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 2368
    nop

    :goto_cd
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v11, v0, :cond_f9

    .line 2369
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    sub-int v3, v8, v11

    int-to-long v13, v3

    sub-long v13, v5, v13

    .line 2370
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v3

    .line 2369
    invoke-virtual {v0, v13, v14, v12, v3}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JZI)V

    .line 2368
    add-int/lit8 v11, v11, 0x1

    goto :goto_cd

    .line 2373
    :cond_f0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    .line 2374
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v1

    .line 2373
    invoke-virtual {v0, v5, v6, v12, v1}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JZI)V

    .line 2377
    :cond_f9
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    .line 2381
    :cond_fc
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2383
    :try_start_100
    invoke-virtual {v10}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_107
    .catchall {:try_start_100 .. :try_end_107} :catchall_10c

    .line 2385
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2386
    nop

    .line 2389
    :goto_10b
    return-void

    .line 2385
    :catchall_10c
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2386
    throw v0
.end method

.method private blacklist removeCompletedCallbackHolderLocked(JJJ)V
    .registers 16

    .line 2128
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2129
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 2130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    .line 2131
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v2

    .line 2133
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v3, :cond_22

    .line 2134
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string p2, "Camera closed while removing completed callback holders"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    return-void

    .line 2138
    :cond_22
    nop

    .line 2139
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v3

    .line 2140
    nop

    .line 2141
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v5

    .line 2142
    nop

    .line 2143
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastZslStillFrameNumber()J

    move-result-wide v7

    .line 2145
    cmp-long v3, v3, p1

    if-gtz v3, :cond_57

    cmp-long v3, v5, p3

    if-gtz v3, :cond_57

    cmp-long v3, v7, p5

    if-gtz v3, :cond_57

    .line 2149
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 2150
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 2151
    if-ltz v1, :cond_50

    .line 2152
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2163
    :cond_50
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2164
    goto :goto_57

    .line 2168
    :cond_54
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->markInflightCompleted()V

    .line 2171
    :cond_57
    :goto_57
    goto :goto_6

    .line 2172
    :cond_58
    return-void
.end method

.method private blacklist scheduleNotifyError(I)V
    .registers 6

    .line 2257
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 2258
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2260
    :try_start_7
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 2261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2260
    invoke-static {v3, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 2261
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 2260
    invoke-interface {v2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_22

    .line 2263
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2264
    nop

    .line 2265
    return-void

    .line 2263
    :catchall_22
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2264
    throw p1
.end method

.method private blacklist submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I
    .registers 16
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

    .line 1517
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 1519
    iget-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1520
    :try_start_7
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1523
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    .line 1524
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_44

    .line 1529
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 1530
    if-eqz v2, :cond_3b

    .line 1533
    goto :goto_2c

    .line 1531
    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null Surface targets are not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1534
    :cond_43
    goto :goto_e

    .line 1525
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Each request must have at least one Surface target"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1536
    :cond_4c
    if-eqz p4, :cond_51

    .line 1537
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V

    .line 1542
    :cond_51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/camera2/CaptureRequest;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Landroid/hardware/camera2/CaptureRequest;

    .line 1544
    array-length v0, v6

    const/4 v7, 0x0

    move v1, v7

    :goto_61
    if-ge v1, v0, :cond_6d

    aget-object v2, v6, v1

    .line 1545
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CaptureRequest;->convertSurfaceToStreamId(Landroid/util/SparseArray;)V

    .line 1544
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 1548
    :cond_6d
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v0, v6, p4}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v8

    .line 1553
    array-length v0, v6

    move v1, v7

    :goto_75
    if-ge v1, v0, :cond_7f

    aget-object v2, v6, v1

    .line 1554
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->recoverStreamIdToSurface()V

    .line 1553
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 1559
    :cond_7f
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->hasBatchedOutputs(Ljava/util/List;)Z

    move-result v0

    .line 1560
    if-eqz v0, :cond_9a

    .line 1561
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1562
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    :cond_9a
    if-eqz p2, :cond_b2

    .line 1566
    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v10

    new-instance v0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v5, v1, -0x1

    move-object v2, p1

    move-object v1, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;-><init>(Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/List;Ljava/util/concurrent/Executor;ZI)V

    invoke-virtual {v9, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_b4

    .line 1565
    :cond_b2
    move-object v2, p1

    move v4, p4

    .line 1575
    :goto_b4
    if-eqz v4, :cond_d3

    .line 1576
    iget p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_c6

    .line 1577
    iget p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1578
    invoke-virtual {v8}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v0

    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1577
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceCompleteLocked(IJ[I)V

    .line 1581
    :cond_c6
    invoke-virtual {v8}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1582
    invoke-direct {p0, v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getRequestTypes([Landroid/hardware/camera2/CaptureRequest;)[I

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    goto :goto_dd

    .line 1584
    :cond_d3
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    new-instance p2, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    invoke-direct {p2, v2, v8}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;-><init>(Ljava/util/List;Landroid/hardware/camera2/utils/SubmitInfo;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1588
    :goto_dd
    iget-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz p1, :cond_e8

    .line 1589
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1591
    :cond_e8
    iput-boolean v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 1593
    invoke-virtual {v8}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result p1

    monitor-exit p3

    return p1

    .line 1594
    :catchall_f0
    move-exception v0

    move-object p1, v0

    monitor-exit p3
    :try_end_f3
    .catchall {:try_start_7 .. :try_end_f3} :catchall_f0

    throw p1
.end method

.method private blacklist updateTracker(IJILandroid/hardware/camera2/CaptureResult;Z)V
    .registers 17

    .line 1498
    nop

    .line 1500
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1501
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1502
    const/4 v0, 0x0

    :goto_1e
    if-ge v0, p1, :cond_3c

    .line 1503
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    add-int/lit8 v2, p1, -0x1

    sub-int/2addr v2, v0

    int-to-long v2, v2

    sub-long v2, p2, v2

    move v6, p4

    move-object v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZI)V

    .line 1502
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1507
    :cond_32
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    move-wide v5, p2

    move v9, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZI)V

    .line 1510
    :cond_3c
    return-void
.end method

.method private greylist-max-o waitUntilIdle()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1724
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1725
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1727
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    .line 1731
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->waitUntilIdle()V

    .line 1732
    monitor-exit v0

    .line 1733
    return-void

    .line 1728
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Active repeating request ongoing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1732
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 5

    .line 2990
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

    .line 2992
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v0, :cond_25

    .line 2993
    return-void

    .line 2996
    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 2997
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$16;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$16;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    .line 3006
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3008
    :try_start_31
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_3b

    .line 3010
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3011
    nop

    .line 3012
    return-void

    .line 3010
    :catchall_3b
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3011
    throw v0
.end method

.method public blacklist capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1385
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1386
    const/4 p1, 0x0

    invoke-direct {p0, v0, p2, p3, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result p1

    return p1
.end method

.method public blacklist captureBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I
    .registers 5
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

    .line 1391
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1394
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result p1

    return p1

    .line 1392
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one request must be given"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api close()V
    .registers 6

    .line 1760
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1761
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1762
    monitor-exit v0

    return-void

    .line 1765
    :cond_e
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    .line 1766
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1767
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

    .line 1771
    :cond_1a
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    if-eqz v1, :cond_23

    .line 1772
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->commitStats()V

    .line 1775
    :cond_23
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    if-eqz v1, :cond_2c

    .line 1776
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->commitStats()V

    .line 1779
    :cond_2c
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-eqz v1, :cond_3b

    .line 1780
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->disconnect()V

    .line 1781
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1784
    :cond_3b
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    if-eqz v1, :cond_46

    .line 1785
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->release(Z)V

    .line 1786
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 1789
    :cond_46
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    if-eqz v1, :cond_51

    .line 1790
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->release(Z)V

    .line 1791
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    .line 1797
    :cond_51
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v1, :cond_59

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v1, :cond_60

    .line 1798
    :cond_59
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1800
    :cond_60
    iget-wide v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFMQReader:J

    invoke-static {v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->nativeClose(J)V

    .line 1802
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    .line 1803
    monitor-exit v0

    .line 1804
    return-void

    .line 1803
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public greylist-max-o configureOutputs(Ljava/util/List;)V
    .registers 9
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

    .line 591
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 592
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 593
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    goto :goto_d

    .line 595
    :cond_22
    nop

    .line 597
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 595
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CaptureRequest;J)Z

    .line 599
    return-void
.end method

.method public blacklist configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CaptureRequest;J)Z
    .registers 23
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

    .line 629
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move-wide/from16 v3, p5

    if-nez p2, :cond_10

    .line 630
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_12

    .line 629
    :cond_10
    move-object/from16 v5, p2

    .line 632
    :goto_12
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_23

    if-nez v0, :cond_1b

    goto :goto_23

    .line 633
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot configure an input stream without any output streams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_23
    :goto_23
    invoke-direct {v1, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkSurfaceSizesCompatible(Ljava/util/List;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_2b

    .line 638
    return v7

    .line 640
    :cond_2b
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    .line 642
    nop

    .line 644
    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 645
    :try_start_32
    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 647
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 649
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 652
    move v10, v7

    :goto_40
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_71

    .line 653
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 654
    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 656
    invoke-interface {v5, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_67

    invoke-virtual {v12}, Landroid/hardware/camera2/params/OutputConfiguration;->isDeferredConfiguration()Z

    move-result v13

    if-eqz v13, :cond_63

    goto :goto_67

    .line 662
    :cond_63
    invoke-virtual {v8, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 660
    :cond_67
    :goto_67
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    :goto_6e
    add-int/lit8 v10, v10, 0x1

    goto :goto_40

    .line 666
    :cond_71
    iget-object v10, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 667
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_7b
    .catchall {:try_start_32 .. :try_end_7b} :catchall_1ad

    .line 672
    :try_start_7b
    iget-boolean v10, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSharedMode:Z

    if-nez v10, :cond_82

    .line 673
    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->waitUntilIdle()V

    .line 676
    :cond_82
    iget-object v10, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v10}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->beginConfigure()V

    .line 679
    iget-object v10, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v10}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/params/InputConfiguration;

    .line 680
    const/4 v11, 0x0

    if-eq v0, v10, :cond_dc

    if-eqz v0, :cond_9a

    .line 681
    invoke-virtual {v0, v10}, Landroid/hardware/camera2/params/InputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_dc

    .line 682
    :cond_9a
    if-eqz v10, :cond_b9

    .line 683
    iget-object v10, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v12}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->deleteStream(I)V

    .line 684
    new-instance v10, Ljava/util/AbstractMap$SimpleEntry;

    .line 685
    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v10, v12, v11}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v10, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 687
    :cond_b9
    if-eqz v0, :cond_dc

    .line 688
    iget-object v10, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v12

    .line 689
    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v13

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v14

    .line 690
    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->isMultiResolution()Z

    move-result v15

    .line 688
    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createInputStream(IIIZ)I

    move-result v10

    .line 691
    new-instance v12, Ljava/util/AbstractMap$SimpleEntry;

    .line 692
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v12, v10, v0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 697
    :cond_dc
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ff

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 698
    iget-object v10, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->deleteStream(I)V

    .line 699
    iget-object v10, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->delete(I)V

    .line 700
    goto :goto_e0

    .line 703
    :cond_ff
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_103
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_121

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 704
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_120

    .line 705
    iget-object v10, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v10, v9}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v10

    .line 706
    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v12, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 708
    :cond_120
    goto :goto_103

    .line 711
    :cond_121
    if-eqz p4, :cond_12e

    .line 712
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    .line 713
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v8

    .line 712
    invoke-virtual {v0, v2, v8, v3, v4}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;J)[I

    move-result-object v0

    goto :goto_134

    .line 715
    :cond_12e
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v0, v2, v11, v3, v4}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;J)[I

    move-result-object v0

    .line 719
    :goto_134
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 720
    if-eqz v0, :cond_150

    array-length v2, v0

    if-lez v2, :cond_150

    .line 721
    array-length v2, v0

    move v3, v7

    :goto_140
    if-ge v3, v2, :cond_150

    aget v4, v0, v3

    .line 722
    iget-object v8, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_14d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7b .. :try_end_14d} :catch_17d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7b .. :try_end_14d} :catch_16c
    .catchall {:try_start_7b .. :try_end_14d} :catchall_16a

    .line 721
    add-int/lit8 v3, v3, 0x1

    goto :goto_140

    .line 726
    :cond_150
    nop

    .line 739
    :try_start_151
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15f

    .line 740
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_167

    .line 743
    :cond_15f
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 745
    nop

    .line 746
    :goto_167
    monitor-exit v6
    :try_end_168
    .catchall {:try_start_151 .. :try_end_168} :catchall_1ad

    .line 748
    const/4 v0, 0x1

    return v0

    .line 739
    :catchall_16a
    move-exception v0

    goto :goto_1a5

    .line 732
    :catch_16c
    move-exception v0

    .line 733
    :try_start_16d
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_17c

    .line 734
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The camera is currently busy. You must wait until the previous operation completes."

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 737
    :cond_17c
    throw v0

    .line 727
    :catch_17d
    move-exception v0

    .line 730
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stream configuration failed due to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19a
    .catchall {:try_start_16d .. :try_end_19a} :catchall_16a

    .line 731
    nop

    .line 739
    nop

    .line 743
    :try_start_19c
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v6

    .line 731
    return v7

    .line 743
    :goto_1a5
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 745
    throw v0

    .line 746
    :catchall_1ad
    move-exception v0

    monitor-exit v6
    :try_end_1af
    .catchall {:try_start_19c .. :try_end_1af} :catchall_1ad

    throw v0
.end method

.method public whitelist createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1113
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1114
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1116
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraMultiClient()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSharedMode:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrimaryClient:Z

    if-eqz v0, :cond_15

    goto :goto_1d

    .line 1117
    :cond_15
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "In shared session mode,only primary clients can create capture request."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1121
    :cond_1d
    :goto_1d
    nop

    .line 1123
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    .line 1125
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mAppTargetSdkVersion:I

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->disableZslIfNeeded(Landroid/hardware/camera2/impl/CameraMetadataNative;II)V

    .line 1127
    new-instance v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1129
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    .line 1131
    monitor-exit v1

    return-object v2

    .line 1132
    :catchall_37
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_37

    throw p1
.end method

.method public whitelist createCaptureRequest(ILjava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 11
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

    .line 1082
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1083
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1085
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraMultiClient()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSharedMode:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrimaryClient:Z

    if-eqz v0, :cond_15

    goto :goto_1d

    .line 1086
    :cond_15
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "In shared session mode,only primary clients can create capture request."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1090
    :cond_1d
    :goto_1d
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1091
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 1094
    goto :goto_21

    .line 1092
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Physical id matches the logical id!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1096
    :cond_40
    nop

    .line 1098
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    .line 1100
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mAppTargetSdkVersion:I

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->disableZslIfNeeded(Landroid/hardware/camera2/impl/CameraMetadataNative;II)V

    .line 1102
    new-instance v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1104
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    .line 1106
    monitor-exit v1

    return-object v2

    .line 1107
    :catchall_5a
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5a

    throw p1
.end method

.method public whitelist createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 908
    if-eqz p1, :cond_37

    .line 912
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v2

    .line 913
    if-eqz v2, :cond_2f

    .line 916
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 919
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getInputConfiguration()Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v1

    .line 920
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getSessionType()I

    move-result v5

    .line 921
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getSessionParameters()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    .line 919
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 922
    return-void

    .line 917
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid executor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 914
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid output configurations"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 909
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid session configuration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 11
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

    .line 755
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 756
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 757
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    goto :goto_d

    .line 759
    :cond_22
    nop

    .line 760
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 759
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 762
    return-void
.end method

.method public whitelist createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 11
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

    .line 774
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 776
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 778
    return-void
.end method

.method public whitelist createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 13
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

    .line 834
    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3f

    .line 838
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 839
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 840
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    goto :goto_1c

    .line 842
    :cond_31
    nop

    .line 843
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 842
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 846
    return-void

    .line 835
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Output surface list must not be null and the size must be no more than 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist createCustomCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 13
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

    .line 854
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 856
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    goto :goto_9

    .line 858
    :cond_1e
    nop

    .line 859
    invoke-static {p5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 858
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 860
    return-void
.end method

.method public whitelist createExtensionSession(Landroid/hardware/camera2/params/ExtensionSessionConfiguration;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 3039
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraMultiClient()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSharedMode:Z

    if-nez v0, :cond_b

    goto :goto_13

    .line 3040
    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "In shared session mode,extension sessions are not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3044
    :cond_13
    :goto_13
    new-instance v2, Ljava/util/HashMap;

    .line 3045
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getPhysicalIdToChars()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3046
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3047
    nop

    .line 3048
    new-instance v6, Landroid/os/Binder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 3050
    :try_start_48
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mContext:Landroid/content/Context;

    .line 3051
    invoke-virtual {p1}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v1

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    .line 3052
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getCharacteristicsMapNative(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 3050
    invoke-static {v0, v6, v1, v3, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v0

    .line 3053
    if-eqz v0, :cond_81

    .line 3058
    nop

    .line 3059
    invoke-virtual {p1}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v0

    .line 3058
    invoke-static {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 3060
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_69} :catch_93
    .catchall {:try_start_48 .. :try_end_69} :catchall_8e

    .line 3061
    move-object v1, p0

    move-object v4, p1

    :try_start_6b
    invoke-static/range {v1 .. v6}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->createCameraAdvancedExtensionSession(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/Map;Landroid/content/Context;Landroid/hardware/camera2/params/ExtensionSessionConfiguration;ILandroid/os/IBinder;)Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    move-result-object p1

    iput-object p1, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    goto :goto_7e

    .line 3065
    :cond_72
    move-object v1, p0

    move-object v4, p1

    iget-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mContext:Landroid/content/Context;

    iget v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    invoke-static/range {v1 .. v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createCameraExtensionSession(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/Map;Landroid/content/Context;Landroid/hardware/camera2/params/ExtensionSessionConfiguration;ILandroid/os/IBinder;)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    move-result-object p1

    iput-object p1, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 3069
    :goto_7e
    nop

    .line 3073
    nop

    .line 3078
    return-void

    .line 3054
    :cond_81
    move-object v1, p0

    move-object v4, p1

    .line 3055
    const/4 v6, 0x0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported extension!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_8c} :catch_8c
    .catchall {:try_start_6b .. :try_end_8c} :catchall_9d

    .line 3070
    :catch_8c
    move-exception v0

    goto :goto_96

    .line 3073
    :catchall_8e
    move-exception v0

    move-object v1, p0

    move-object v4, p1

    :goto_91
    move-object p1, v0

    goto :goto_9f

    .line 3070
    :catch_93
    move-exception v0

    move-object v1, p0

    move-object v4, p1

    .line 3071
    :goto_96
    :try_start_96
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p1
    :try_end_9d
    .catchall {:try_start_96 .. :try_end_9d} :catchall_9d

    .line 3073
    :catchall_9d
    move-exception v0

    goto :goto_91

    :goto_9f
    if-eqz v6, :cond_aa

    .line 3074
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mContext:Landroid/content/Context;

    .line 3075
    invoke-virtual {v4}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v1

    .line 3074
    invoke-static {v0, v6, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 3077
    :cond_aa
    throw p1
.end method

.method public whitelist createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1138
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1139
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1140
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraMultiClient()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSharedMode:Z

    if-nez v0, :cond_11

    goto :goto_19

    .line 1141
    :cond_11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "In shared session mode,reprocess capture requests are not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1145
    :cond_19
    :goto_19
    new-instance v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 1146
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1148
    new-instance v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1149
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getSessionId()I

    move-result v5

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    .line 1151
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1152
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1151
    invoke-virtual {v2, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1154
    monitor-exit v1

    return-object v2

    .line 1155
    :catchall_3d
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3d

    throw p1
.end method

.method public whitelist createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 12
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

    .line 788
    if-eqz p1, :cond_32

    .line 792
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 793
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 794
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    goto :goto_f

    .line 796
    :cond_24
    nop

    .line 797
    invoke-static {p4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 796
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 799
    return-void

    .line 789
    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputConfig cannot be null when creating a reprocessable capture session"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 12
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

    .line 810
    if-eqz p1, :cond_38

    .line 815
    if-eqz p2, :cond_30

    .line 821
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 822
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 823
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    goto :goto_d

    .line 825
    :cond_22
    nop

    .line 826
    invoke-static {p4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 825
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 828
    return-void

    .line 816
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Output configurations cannot be null when creating a reprocessable capture session"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 811
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputConfig cannot be null when creating a reprocessable capture session"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1809
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 1812
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1813
    nop

    .line 1814
    return-void

    .line 1812
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1813
    throw v0
.end method

.method public greylist-max-o finalizeOutputConfigs(Ljava/util/List;)V
    .registers 7
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

    .line 1347
    if-eqz p1, :cond_83

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_83

    .line 1351
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1352
    :try_start_b
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1354
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1355
    nop

    .line 1356
    const/4 v2, 0x0

    :goto_20
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_3f

    .line 1359
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/params/OutputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1360
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1361
    goto :goto_40

    .line 1356
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_3f
    move v2, v4

    .line 1364
    :goto_40
    if-eq v2, v4, :cond_76

    .line 1369
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_57

    .line 1373
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v3, v2, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 1374
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1375
    goto :goto_12

    .line 1370
    :cond_57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The final config for stream "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have at least 1 surface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1365
    :cond_76
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Deferred config is not part of this session"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1376
    :cond_7e
    monitor-exit v0

    .line 1377
    return-void

    .line 1376
    :catchall_80
    move-exception p1

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_b .. :try_end_82} :catchall_80

    throw p1

    .line 1348
    :cond_83
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deferred config is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o flush()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1736
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1737
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1739
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1743
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz v1, :cond_1a

    .line 1744
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1745
    monitor-exit v0

    return-void

    .line 1748
    :cond_1a
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->flush()J

    move-result-wide v1

    .line 1749
    iget v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_31

    .line 1750
    iget v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    invoke-direct {p0, v3, v1, v2, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceCompleteLocked(IJ[I)V

    .line 1752
    iput v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1753
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1755
    :cond_31
    monitor-exit v0

    .line 1756
    return-void

    .line 1755
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public greylist-max-o getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .registers 2

    .line 478
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

    .line 3030
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3031
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 3032
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->getGlobalAudioRestriction()I

    move-result v1

    monitor-exit v0

    return v1

    .line 3033
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 586
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isPrimaryClient()Z
    .registers 3

    .line 460
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrimaryClient:Z

    monitor-exit v0

    return v1

    .line 462
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist isPrivilegedApp()Z
    .registers 2

    .line 1899
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrivilegedApp:Z

    return v0
.end method

.method public whitelist isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1038
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1039
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1040
    const-wide/32 v1, 0x131e218f

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraDeviceSetup:Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    if-eqz v1, :cond_1b

    .line 1042
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraDeviceSetup:Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;->isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1044
    :cond_1b
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1045
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public blacklist onClientSharedAccessPriorityChanged(Z)V
    .registers 7

    .line 2184
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2185
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v1, :cond_d

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDeviceInit:Z

    if-eqz v1, :cond_d

    .line 2186
    monitor-exit v0

    return-void

    .line 2188
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_32

    .line 2190
    :try_start_11
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/CameraDeviceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 2192
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2190
    invoke-static {v4, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 2192
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 2190
    invoke-interface {v3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_2d

    .line 2194
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2195
    nop

    .line 2196
    monitor-exit v0

    .line 2197
    return-void

    .line 2194
    :catchall_2d
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2195
    throw p1

    .line 2196
    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public blacklist onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .registers 6

    .line 2216
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2217
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v1, :cond_d

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDeviceInit:Z

    if-eqz v1, :cond_d

    .line 2218
    monitor-exit v0

    return-void

    .line 2223
    :cond_d
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    if-eqz v1, :cond_1c

    .line 2224
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 2225
    monitor-exit v0

    return-void

    .line 2228
    :cond_1c
    packed-switch p1, :pswitch_data_64

    .line 2250
    :pswitch_1f
    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    goto :goto_45

    .line 2247
    :pswitch_22
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->scheduleNotifyError(I)V

    .line 2248
    goto :goto_5f

    .line 2241
    :pswitch_27
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 2242
    goto :goto_5f

    .line 2244
    :pswitch_2b
    const/4 p1, 0x4

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->scheduleNotifyError(I)V

    .line 2245
    goto :goto_5f

    .line 2230
    :pswitch_30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_61

    .line 2232
    :try_start_34
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_40

    .line 2234
    :try_start_3b
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2235
    nop

    .line 2236
    goto :goto_5f

    .line 2234
    :catchall_40
    move-exception v1

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2235
    throw v1

    .line 2250
    :goto_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error from camera device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    const/4 p1, 0x5

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->scheduleNotifyError(I)V

    .line 2253
    :goto_5f
    monitor-exit v0

    .line 2254
    return-void

    .line 2253
    :catchall_61
    move-exception p1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3b .. :try_end_63} :catchall_61

    throw p1

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2b
        :pswitch_1f
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist onDeviceIdle()V
    .registers 10

    .line 2395
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2396
    :try_start_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v0, :cond_9

    monitor-exit v1

    return-void

    .line 2400
    :cond_9
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    if-eqz v0, :cond_18

    .line 2401
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onDeviceIdle()V

    .line 2402
    monitor-exit v1

    return-void

    .line 2406
    :cond_18
    const-wide v5, 0x7fffffffffffffffL

    const-wide v7, 0x7fffffffffffffffL

    const-wide v3, 0x7fffffffffffffffL

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->removeCompletedCallbackHolderLocked(JJJ)V

    .line 2411
    iget-boolean v0, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-nez v0, :cond_43

    .line 2412
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_48

    .line 2414
    :try_start_33
    iget-object v0, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_3e

    .line 2416
    :try_start_3a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2417
    goto :goto_43

    .line 2416
    :catchall_3e
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2417
    throw v0

    .line 2419
    :cond_43
    :goto_43
    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 2420
    monitor-exit v1

    .line 2421
    return-void

    .line 2420
    :catchall_48
    move-exception v0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public greylist-max-o prepare(ILandroid/view/Surface;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1180
    if-eqz p2, :cond_5b

    .line 1181
    if-lez p1, :cond_42

    .line 1184
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1185
    :try_start_7
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1186
    nop

    .line 1187
    const/4 v1, 0x0

    :goto_c
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2d

    .line 1188
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-ne p2, v2, :cond_2a

    .line 1189
    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    .line 1190
    goto :goto_2e

    .line 1187
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_2d
    move p2, v3

    .line 1193
    :goto_2e
    if-eq p2, v3, :cond_37

    .line 1197
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->prepare2(II)V

    .line 1198
    monitor-exit v0

    .line 1199
    return-void

    .line 1194
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Surface is not part of this session"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1198
    :catchall_3f
    move-exception p1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_3f

    throw p1

    .line 1181
    :cond_42
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid maxCount given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1180
    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Surface is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o prepare(Landroid/view/Surface;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1159
    if-eqz p1, :cond_44

    .line 1161
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1162
    :try_start_5
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1163
    nop

    .line 1164
    const/4 v1, 0x0

    :goto_a
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2f

    .line 1165
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v2

    .line 1166
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1167
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    .line 1168
    goto :goto_30

    .line 1164
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2f
    move p1, v3

    .line 1171
    :goto_30
    if-eq p1, v3, :cond_39

    .line 1175
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->prepare(I)V

    .line 1176
    monitor-exit v0

    .line 1177
    return-void

    .line 1172
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is not part of this session"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1176
    :catchall_41
    move-exception p1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_41

    throw p1

    .line 1159
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Surface is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setCameraAudioRestriction(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 3017
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3018
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 3019
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->setCameraAudioRestriction(I)V

    .line 3020
    monitor-exit v0

    .line 3021
    return-void

    .line 3020
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public greylist-max-o setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 494
    :cond_9
    new-instance v1, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-direct {v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;-><init>(Landroid/hardware/camera2/ICameraDeviceUser;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    .line 495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 502
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->getCaptureResultMetadataQueue()Landroid/hardware/common/fmq/MQDescriptor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/hardware/common/fmq/MQDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 504
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->nativeCreateFMQReader(Landroid/os/Parcel;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFMQReader:J

    .line 508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-interface {p1}, Landroid/hardware/camera2/ICameraDeviceUser;->asBinder()Landroid/os/IBinder;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_6f

    .line 513
    if-eqz p1, :cond_43

    .line 515
    const/4 v1, 0x0

    :try_start_2e
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_32
    .catchall {:try_start_2e .. :try_end_31} :catchall_6f

    .line 521
    goto :goto_43

    .line 516
    :catch_32
    move-exception p1

    .line 517
    :try_start_33
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 519
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string v1, "The camera device has encountered a serious error"

    const/4 v2, 0x2

    invoke-direct {p1, v2, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 524
    :cond_43
    :goto_43
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraMultiClient()Z

    move-result p1

    if-eqz p1, :cond_5d

    iget-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSharedMode:Z

    if-eqz p1, :cond_5d

    .line 525
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->isPrimaryClient()Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrimaryClient:Z

    .line 526
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpenedInSharedMode:Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_64

    .line 528
    :cond_5d
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 530
    :goto_64
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 532
    iput-boolean v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDeviceInit:Z

    .line 533
    monitor-exit v0

    .line 534
    return-void

    .line 533
    :catchall_6f
    move-exception p1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_33 .. :try_end_71} :catchall_6f

    throw p1
.end method

.method public greylist-max-o setRemoteFailure(Landroid/os/ServiceSpecificException;)V
    .registers 7

    .line 543
    nop

    .line 544
    nop

    .line 546
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_54

    .line 563
    :pswitch_9
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected failure in opening camera device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 564
    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 563
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    goto :goto_3e

    .line 560
    :pswitch_2d
    nop

    .line 561
    move p1, v2

    goto :goto_3e

    .line 551
    :pswitch_30
    nop

    .line 552
    const/4 v1, 0x2

    move p1, v2

    goto :goto_3e

    .line 548
    :pswitch_34
    nop

    .line 549
    move p1, v2

    move v1, p1

    goto :goto_3e

    .line 554
    :pswitch_38
    nop

    .line 555
    const/4 v1, 0x3

    move p1, v2

    goto :goto_3e

    .line 557
    :pswitch_3c
    nop

    .line 558
    const/4 p1, 0x0

    .line 567
    :goto_3e
    nop

    .line 568
    nop

    .line 569
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_43
    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 571
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;

    invoke-direct {v3, p0, p1, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ZI)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 581
    monitor-exit v0

    .line 582
    return-void

    .line 581
    :catchall_51
    move-exception p1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_51

    throw p1

    :pswitch_data_54
    .packed-switch 0x4
        :pswitch_3c
        :pswitch_9
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_9
        :pswitch_2d
    .end packed-switch
.end method

.method public blacklist setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I
    .registers 5
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

    .line 1680
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1683
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result p1

    return p1

    .line 1681
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one request must be given"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1674
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1675
    const/4 p1, 0x1

    invoke-direct {p0, v0, p2, p3, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result p1

    return p1
.end method

.method public greylist-max-o setSessionListener(Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;)V
    .registers 3

    .line 1052
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1053
    :try_start_3
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .line 1054
    monitor-exit v0

    .line 1055
    return-void

    .line 1054
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public blacklist startStreaming(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
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

    .line 1601
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 1602
    iget-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1603
    :try_start_7
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1604
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 1605
    if-eqz v1, :cond_1d

    .line 1608
    goto :goto_e

    .line 1606
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null Surface targets are not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1614
    :cond_25
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V

    .line 1622
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    .line 1625
    new-instance v4, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1627
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    .line 1629
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 1630
    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1631
    goto :goto_3f

    .line 1632
    :cond_4f
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 1633
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest;->convertSurfaceToStreamId(Landroid/util/SparseArray;)V

    .line 1636
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getStreamIds()[I

    move-result-object v2

    .line 1637
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getSurfaceIds()[I

    move-result-object v4

    .line 1636
    invoke-virtual {v0, v2, v4}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->startStreaming([I[I)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v6

    .line 1638
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->recoverStreamIdToSurface()V

    .line 1639
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1640
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1642
    if-eqz p2, :cond_87

    .line 1643
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v7

    new-instance v0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    iget v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v5, v4, -0x1

    const/4 v4, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;-><init>(Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/List;Ljava/util/concurrent/Executor;ZI)V

    invoke-virtual {p1, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1652
    :cond_87
    iget p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_97

    .line 1653
    iget p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1654
    invoke-virtual {v6}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v0

    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1653
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceCompleteLocked(IJ[I)V

    .line 1657
    :cond_97
    nop

    .line 1658
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/hardware/camera2/CaptureRequest;

    .line 1657
    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/CaptureRequest;

    .line 1659
    invoke-virtual {v6}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result p2

    iput p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1660
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getRequestTypes([Landroid/hardware/camera2/CaptureRequest;)[I

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1662
    iget-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz p1, :cond_bb

    .line 1663
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1665
    :cond_bb
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 1667
    invoke-virtual {v6}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result p1

    monitor-exit p3

    return p1

    .line 1668
    :catchall_c4
    move-exception v0

    move-object p1, v0

    monitor-exit p3
    :try_end_c7
    .catchall {:try_start_7 .. :try_end_c7} :catchall_c4

    throw p1
.end method

.method public greylist-max-o stopRepeating()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1688
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1689
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1690
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2a

    .line 1692
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1693
    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1694
    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestId:I

    .line 1695
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1696
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1697
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestTypes:[I
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_2c

    .line 1701
    :try_start_18
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v3, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->cancelRequest(I)J

    move-result-wide v3
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_1e} :catch_23
    .catchall {:try_start_18 .. :try_end_1e} :catchall_2c

    .line 1715
    nop

    .line 1717
    :try_start_1f
    invoke-direct {p0, v1, v3, v4, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceCompleteLocked(IJ[I)V

    goto :goto_2a

    .line 1702
    :catch_23
    move-exception v3

    .line 1710
    iput v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestId:I

    .line 1711
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestTypes:[I

    .line 1714
    monitor-exit v0

    return-void

    .line 1719
    :cond_2a
    :goto_2a
    monitor-exit v0

    .line 1720
    return-void

    .line 1719
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public blacklist supportsOfflineProcessing(Landroid/view/Surface;)Z
    .registers 6

    .line 1307
    if-eqz p1, :cond_42

    .line 1309
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1310
    nop

    .line 1311
    const/4 v1, 0x0

    :goto_7
    :try_start_7
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_28

    .line 1312
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-ne p1, v2, :cond_25

    .line 1313
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    .line 1314
    goto :goto_29

    .line 1311
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_28
    move p1, v3

    .line 1317
    :goto_29
    if-eq p1, v3, :cond_37

    .line 1321
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1318
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is not part of this session"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1322
    :catchall_3f
    move-exception p1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_3f

    throw p1

    .line 1307
    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Surface is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist switchToOffline(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;)Landroid/hardware/camera2/CameraOfflineSession;
    .registers 18
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

    .line 1225
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_101

    .line 1229
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1230
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1234
    iget-object v12, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1235
    :try_start_13
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1236
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    if-nez v1, :cond_f6

    .line 1240
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v13, -0x1

    if-eqz v2, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 1241
    nop

    .line 1242
    const/4 v3, 0x0

    :goto_2d
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_58

    .line 1243
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v4

    if-ne v2, v4, :cond_55

    .line 1244
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1245
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v6, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1246
    goto :goto_59

    .line 1242
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_58
    move v4, v13

    .line 1249
    :goto_59
    if-eq v4, v13, :cond_8e

    .line 1254
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 1259
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1260
    goto :goto_1e

    .line 1255
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surface: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not  support offline mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1250
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offline surface is not part of this session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1261
    :cond_96
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V

    .line 1263
    new-instance v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    iget-object v11, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v11}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;Landroid/util/SparseArray;Ljava/util/AbstractMap$SimpleEntry;Landroid/util/SparseArray;Landroid/hardware/camera2/impl/FrameNumberTracker;Landroid/util/SparseArray;Ljava/util/List;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    .line 1267
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    .line 1269
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

    .line 1270
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1271
    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 1272
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 1273
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    .line 1274
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    .line 1275
    new-instance v2, Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/FrameNumberTracker;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    .line 1277
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    invoke-interface {v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->closeWithoutDraining()V

    .line 1278
    iput-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    .line 1279
    monitor-exit v12
    :try_end_eb
    .catchall {:try_start_13 .. :try_end_eb} :catchall_fe

    .line 1281
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;

    invoke-direct {v3, p0, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/HashSet;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1303
    return-object v1

    .line 1237
    :cond_f6
    :try_start_f6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Switch to offline mode already in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1279
    :catchall_fe
    move-exception v0

    monitor-exit v12
    :try_end_100
    .catchall {:try_start_f6 .. :try_end_100} :catchall_fe

    throw v0

    .line 1226
    :cond_101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid offline surfaces!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o tearDown(Landroid/view/Surface;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1326
    if-eqz p1, :cond_40

    .line 1328
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1329
    :try_start_5
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1330
    nop

    .line 1331
    const/4 v1, 0x0

    :goto_a
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2b

    .line 1332
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-ne p1, v2, :cond_28

    .line 1333
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    .line 1334
    goto :goto_2c

    .line 1331
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2b
    move p1, v3

    .line 1337
    :goto_2c
    if-eq p1, v3, :cond_35

    .line 1341
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->tearDown(I)V

    .line 1342
    monitor-exit v0

    .line 1343
    return-void

    .line 1338
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is not part of this session"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1342
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_3d

    throw p1

    .line 1326
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Surface is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o updateOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1203
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1204
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1205
    nop

    .line 1206
    const/4 v1, 0x0

    :goto_8
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2d

    .line 1207
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v4

    if-ne v2, v4, :cond_2a

    .line 1208
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1209
    goto :goto_2e

    .line 1206
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_2d
    move v1, v3

    .line 1212
    :goto_2e
    if-eq v1, v3, :cond_3c

    .line 1216
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->updateOutputConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 1217
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1218
    monitor-exit v0

    .line 1219
    return-void

    .line 1213
    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid output configuration"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1218
    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw p1
.end method
