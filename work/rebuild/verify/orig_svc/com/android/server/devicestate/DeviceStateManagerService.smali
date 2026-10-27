.class public final Lcom/android/server/devicestate/DeviceStateManagerService;
.super Lcom/android/server/SystemService;
.source "DeviceStateManagerService.java"


# static fields
.field public static final INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;


# instance fields
.field public mActiveBaseStateOverride:Ljava/util/Optional;

.field public mActiveOverride:Ljava/util/Optional;

.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mBaseState:Ljava/util/Optional;

.field public final mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

.field public mCommittedState:Ljava/util/Optional;

.field public final mDeviceStateNotificationController:Lcom/android/server/devicestate/DeviceStateNotificationController;

.field public final mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

.field public final mDeviceStateProviderListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

.field public final mDeviceStates:Landroid/util/SparseArray;

.field public final mDeviceStatesAvailableForAppRequests:Ljava/util/Set;

.field public mFoldedDeviceStates:Ljava/util/Set;

.field public final mHalService:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;

.field public final mHandler:Landroid/os/Handler;

.field public mIsPolicyWaitingForState:Z

.field public final mLock:Ljava/lang/Object;

.field public final mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

.field mOverrideRequestScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

.field public mPendingState:Ljava/util/Optional;

.field final mProcessObserver:Landroid/app/IProcessObserver;

.field public final mProcessRecords:Landroid/util/SparseArray;

.field public mRearDisplayPendingOverrideRequest:Lcom/android/server/devicestate/OverrideRequest;

.field public final mSystemPropertySetter:Lcom/android/server/devicestate/DeviceStateManagerService$SystemPropertySetter;


# direct methods
.method public static synthetic $r8$lambda$1m79Of9qEVw--8G77adY9v4xgMI(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/OverrideRequest;II)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/devicestate/DeviceStateManagerService;->onOverrideRequestStatusChangedLocked(Lcom/android/server/devicestate/OverrideRequest;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$6S_FM3Urv4lHJLVX2jHkYwHw8e8(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->commitPendingState()V

    return-void
.end method

.method public static synthetic $r8$lambda$77DysMvX-MjvuW05plFI2snaWgo(Ljava/lang/String;)V
    .registers 2

    .line 263
    const-string v0, "debug.tracing.device_state"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pt9nYBQnPB5YrI3sLG37X4OCyMY(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyPolicyIfNeeded()V

    return-void
.end method

.method public static synthetic $r8$lambda$s4SpdtJgMEy0ZXs46NwY86Y5deo(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$y4cVYJncqF_C2SiLBG3CP5nmqj4(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->handleProcessDied(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveOverride(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/util/Optional;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOverrideRequestController(Lcom/android/server/devicestate/DeviceStateManagerService;)Lcom/android/server/devicestate/OverrideRequestController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessRecords(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcancelBaseStateOverrideInternal(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->cancelBaseStateOverrideInternal(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelStateRequestInternal(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->cancelStateRequestInternal(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/devicestate/DeviceStateManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceCancelDeviceStatePermitted(Lcom/android/server/devicestate/DeviceStateManagerService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->enforceCancelDeviceStatePermitted(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceRequestDeviceStatePermitted(Lcom/android/server/devicestate/DeviceStateManagerService;III)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/devicestate/DeviceStateManagerService;->enforceRequestDeviceStatePermitted(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDeviceStateInfoLocked(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/hardware/devicestate/DeviceStateInfo;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSupportedStateIdentifiersLocked(Lcom/android/server/devicestate/DeviceStateManagerService;)[I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monStateRequestOverlayDismissedInternal(Lcom/android/server/devicestate/DeviceStateManagerService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->onStateRequestOverlayDismissedInternal(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterProcess(Lcom/android/server/devicestate/DeviceStateManagerService;ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)Landroid/hardware/devicestate/DeviceStateInfo;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->registerProcess(ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mrequestBaseStateOverrideInternal(Lcom/android/server/devicestate/DeviceStateManagerService;IIIILandroid/os/IBinder;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/devicestate/DeviceStateManagerService;->requestBaseStateOverrideInternal(IIIILandroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestStateInternal(Lcom/android/server/devicestate/DeviceStateManagerService;IIIILandroid/os/IBinder;Z)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/devicestate/DeviceStateManagerService;->requestStateInternal(IIIILandroid/os/IBinder;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBaseState(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->setBaseState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldCancelOverrideRequestWhenRequesterNotOnTop(Lcom/android/server/devicestate/DeviceStateManagerService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->shouldCancelOverrideRequestWhenRequesterNotOnTop()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateSupportedStates(Lcom/android/server/devicestate/DeviceStateManagerService;[Landroid/hardware/devicestate/DeviceState;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->updateSupportedStates([Landroid/hardware/devicestate/DeviceState;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 137
    new-instance v0, Landroid/hardware/devicestate/DeviceState;

    new-instance v1, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    const/4 v2, -0x1

    const-string v3, "INVALID"

    invoke-direct {v1, v2, v3}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;-><init>(ILjava/lang/String;)V

    .line 139
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->build()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/devicestate/DeviceState;-><init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V

    sput-object v0, Lcom/android/server/devicestate/DeviceStateManagerService;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStatePolicy$Provider;->fromResources(Landroid/content/res/Resources;)Lcom/android/server/devicestate/DeviceStatePolicy$Provider;

    move-result-object v0

    .line 258
    invoke-interface {v0, p1}, Lcom/android/server/devicestate/DeviceStatePolicy$Provider;->instantiate(Landroid/content/Context;)Lcom/android/server/devicestate/DeviceStatePolicy;

    move-result-object v0

    .line 256
    invoke-direct {p0, p1, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;-><init>(Landroid/content/Context;Lcom/android/server/devicestate/DeviceStatePolicy;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/devicestate/DeviceStatePolicy;)V
    .registers 4

    .line 262
    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;-><init>(Landroid/content/Context;Lcom/android/server/devicestate/DeviceStatePolicy;Lcom/android/server/devicestate/DeviceStateManagerService$SystemPropertySetter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/devicestate/DeviceStatePolicy;Lcom/android/server/devicestate/DeviceStateManagerService$SystemPropertySetter;)V
    .registers 7

    .line 270
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 161
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 168
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 172
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    .line 181
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 187
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 193
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveBaseStateOverride:Ljava/util/Optional;

    .line 197
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 200
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatesAvailableForAppRequests:Ljava/util/Set;

    .line 202
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mFoldedDeviceStates:Ljava/util/Set;

    .line 219
    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$1;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 248
    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    .line 271
    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mSystemPropertySetter:Lcom/android/server/devicestate/DeviceStateManagerService$SystemPropertySetter;

    .line 274
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object p3

    .line 275
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    .line 276
    new-instance p3, Lcom/android/server/devicestate/OverrideRequestController;

    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-direct {p3, v2}, Lcom/android/server/devicestate/OverrideRequestController;-><init>(Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;)V

    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 278
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    .line 279
    new-instance p3, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    invoke-direct {p3, p0, v1}, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService-IA;)V

    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStateProviderListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    .line 280
    invoke-virtual {p2}, Lcom/android/server/devicestate/DeviceStatePolicy;->getDeviceStateProvider()Lcom/android/server/devicestate/DeviceStateProvider;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/android/server/devicestate/DeviceStateProvider;->setListener(Lcom/android/server/devicestate/DeviceStateProvider$Listener;)V

    .line 281
    new-instance p2, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    invoke-direct {p2, p0, v1}, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService-IA;)V

    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    .line 282
    new-instance p2, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;

    invoke-direct {p2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHalService:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;

    .line 283
    const-class p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 284
    new-instance p2, Lcom/android/server/devicestate/DeviceStateNotificationController;

    new-instance p3, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-direct {p2, p1, v0, p3}, Lcom/android/server/devicestate/DeviceStateNotificationController;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStateNotificationController:Lcom/android/server/devicestate/DeviceStateNotificationController;

    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 8

    .line 1014
    const-string v0, "DEVICE STATE MANAGER (dumpsys device_state)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1017
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCommittedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBaseState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOverrideState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getOverrideState()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1023
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered processes: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_80
    if-ge v2, v1, :cond_af

    .line 1026
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 1027
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": mPid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->-$$Nest$fgetmPid(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    :catchall_ad
    move-exception p0

    goto :goto_bf

    .line 1030
    :cond_af
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {v1, p1}, Lcom/android/server/devicestate/OverrideRequestController;->dumpInternal(Ljava/io/PrintWriter;)V

    .line 1031
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1033
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1}, Landroid/util/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1034
    monitor-exit v0

    return-void

    :goto_bf
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_8 .. :try_end_c0} :catchall_ad

    throw p0
.end method

.method private synthetic lambda$new$1()V
    .registers 4

    .line 287
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/devicestate/OverrideRequestController;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 289
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public static shouldShowRdmEduDialog(ZZZ)Z
    .registers 3

    .line 0
    if-eqz p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-eqz p1, :cond_7

    return p2

    :cond_7
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final cancelBaseStateOverrideInternal(I)V
    .registers 5

    .line 982
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 983
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    if-eqz v1, :cond_18

    .line 988
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStateProviderListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    iget p1, p1, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->mCurrentBaseState:I

    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->setBaseState(I)V

    .line 989
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    goto :goto_34

    .line 985
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no registered callback."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 989
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_16

    throw p0
.end method

.method public final cancelStateRequestInternal(I)V
    .registers 5

    .line 944
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 945
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    if-eqz v1, :cond_20

    .line 950
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/devicestate/OverrideRequestController;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 951
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    goto :goto_3c

    .line 947
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no registered callback."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 951
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_1e

    throw p0
.end method

.method public final commitPendingState()V
    .registers 7

    .line 661
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceState;

    .line 668
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const/16 v4, 0x15e

    .line 667
    invoke-static {v4, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZ)V

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 670
    const-string v3, "DeviceStateChanged"

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5, v3, v2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mSystemPropertySetter:Lcom/android/server/devicestate/DeviceStateManagerService$SystemPropertySetter;

    invoke-interface {v3, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$SystemPropertySetter;->setDebugTracingDeviceStateProperty(Ljava/lang/String;)V

    .line 674
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 675
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 676
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    .line 679
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyDeviceStateInfoChangedAsync()V

    .line 685
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/OverrideRequest;

    if-eqz v2, :cond_84

    .line 687
    invoke-virtual {v2}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedStateIdentifier()I

    move-result v3

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    if-ne v3, v1, :cond_84

    .line 688
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    if-eqz v1, :cond_84

    .line 690
    invoke-virtual {v2}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestActiveAsync(Landroid/os/IBinder;)V

    goto :goto_84

    :catchall_82
    move-exception p0

    goto :goto_90

    .line 695
    :cond_84
    :goto_84
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 696
    monitor-exit v0

    return-void

    :goto_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_82

    throw p0
.end method

.method public final createMergedDeviceState(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;)Landroid/hardware/devicestate/DeviceState;
    .registers 5

    .line 452
    sget-object p0, Lcom/android/server/devicestate/DeviceStateManagerService;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p1, p0}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    .line 457
    :cond_9
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState$Configuration;->getSystemProperties()Ljava/util/Set;

    move-result-object p0

    .line 460
    invoke-virtual {p2}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/devicestate/DeviceState$Configuration;->getPhysicalProperties()Ljava/util/Set;

    move-result-object p2

    .line 462
    new-instance v0, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    .line 463
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;-><init>(ILjava/lang/String;)V

    .line 464
    invoke-virtual {v0, p0}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->setSystemProperties(Ljava/util/Set;)Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    move-result-object p0

    .line 465
    invoke-virtual {p0, p2}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->setPhysicalProperties(Ljava/util/Set;)Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    move-result-object p0

    .line 466
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->build()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object p0

    .line 467
    new-instance p1, Landroid/hardware/devicestate/DeviceState;

    invoke-direct {p1, p0}, Landroid/hardware/devicestate/DeviceState;-><init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V

    return-object p1
.end method

.method public final doCallingIdsMatchOverrideRequestIdsLocked(II)Z
    .registers 4

    .line 1127
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicestate/OverrideRequest;

    if-eqz p0, :cond_19

    .line 1128
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v0

    if-ne v0, p1, :cond_19

    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequest;->getUid()I

    move-result p0

    if-ne p0, p2, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public final enableBaseStateRequestLocked(Lcom/android/server/devicestate/OverrideRequest;)V
    .registers 3

    .line 811
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedStateIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->setBaseState(I)V

    .line 812
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveBaseStateOverride:Ljava/util/Optional;

    .line 813
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 814
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestActiveAsync(Landroid/os/IBinder;)V

    return-void
.end method

.method public final enforceCancelDeviceStatePermitted(II)V
    .registers 6

    .line 1074
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->isTopApp(I)Z

    move-result v0

    .line 1075
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->isForegroundApp(II)Z

    move-result v1

    .line 1080
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez v0, :cond_1a

    if-eqz v1, :cond_18

    .line 1082
    :try_start_f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->doCallingIdsMatchOverrideRequestIdsLocked(II)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_1a

    :catchall_16
    move-exception p0

    goto :goto_2a

    :cond_18
    const/4 p1, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 p1, 0x1

    .line 1084
    :goto_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_16

    if-nez p1, :cond_29

    .line 1088
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.CONTROL_DEVICE_STATE"

    const-string p2, "Permission required to request device state, or the call must come from the top app."

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void

    .line 1084
    :goto_2a
    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_16

    throw p0
.end method

.method public final enforceRequestDeviceStatePermitted(III)V
    .registers 5

    .line 1048
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->isTopApp(I)Z

    move-result v0

    .line 1049
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->isForegroundApp(II)Z

    move-result p1

    .line 1050
    invoke-virtual {p0, p3}, Lcom/android/server/devicestate/DeviceStateManagerService;->isStateAvailableForAppRequests(I)Z

    move-result p2

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    return-void

    .line 1057
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.CONTROL_DEVICE_STATE"

    const-string p2, "Permission required to request device state, or the call must come from the top app and be a device state that is available for apps to request."

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBaseState()Ljava/util/Optional;
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 369
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getBinderService()Landroid/hardware/devicestate/IDeviceStateManager;
    .registers 1

    .line 472
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    return-object p0
.end method

.method public getCommittedState()Ljava/util/Optional;
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 340
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;
    .registers 6

    .line 437
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStatesLocked()Ljava/util/List;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    sget-object v2, Lcom/android/server/devicestate/DeviceStateManagerService;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceState;

    .line 439
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/devicestate/DeviceState;

    .line 441
    new-instance v3, Landroid/hardware/devicestate/DeviceStateInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 442
    invoke-virtual {p0, v2, v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->createMergedDeviceState(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;)Landroid/hardware/devicestate/DeviceState;

    move-result-object p0

    invoke-direct {v3, v4, v1, p0}, Landroid/hardware/devicestate/DeviceStateInfo;-><init>(Ljava/util/ArrayList;Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;)V

    return-object v3
.end method

.method public getHalBinderService()Landroid/frameworks/devicestate/IDeviceStateService;
    .registers 1

    .line 477
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHalService:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 324
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getOverrideState()Ljava/util/Optional;
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 381
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/OverrideRequest;

    invoke-virtual {v1}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedStateIdentifier()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1d
    move-exception p0

    goto :goto_25

    .line 383
    :cond_1f
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 384
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_1d

    throw p0
.end method

.method public getPendingState()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 352
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getStateLocked(I)Ljava/util/Optional;
    .registers 2

    .line 537
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/devicestate/DeviceState;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getSupportedStateIdentifiersLocked()[I
    .registers 5

    .line 421
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_1c

    .line 423
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1c
    return-object v1
.end method

.method public getSupportedStates()Ljava/util/List;
    .registers 2

    .line 404
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStatesLocked()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 406
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final getSupportedStatesLocked()Ljava/util/List;
    .registers 4

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 413
    :goto_c
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 414
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/devicestate/DeviceState;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_22
    return-object v0
.end method

.method public final handleProcessDied(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)V
    .registers 5

    .line 839
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 840
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->-$$Nest$fgetmPid(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 841
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-static {p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->-$$Nest$fgetmPid(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/server/devicestate/OverrideRequestController;->handleProcessDied(I)V

    .line 843
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->shouldCancelOverrideRequestWhenRequesterNotOnTop()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 844
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicestate/OverrideRequest;

    .line 845
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequest(Lcom/android/server/devicestate/OverrideRequest;)V

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_2d

    .line 847
    :cond_2b
    :goto_2b
    monitor-exit v0

    return-void

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_29

    throw p0
.end method

.method public final handleRearDisplayBaseStateChangedLocked(I)V
    .registers 2

    .line 1190
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->isDeviceOpeningLocked(I)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    .line 1191
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->onStateRequestOverlayDismissedInternal(Z)V

    :cond_a
    return-void
.end method

.method public final isDeviceOpeningLocked(I)Z
    .registers 4

    .line 1202
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    sget-object v1, Lcom/android/server/devicestate/DeviceStateManagerService;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceState;

    .line 1203
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/devicestate/DeviceState;

    const/16 p1, 0xb

    .line 1206
    invoke-virtual {v0, p1}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1208
    invoke-virtual {p0, p1}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p0

    if-nez p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public final isForegroundApp(II)Z
    .registers 7

    const/4 p0, 0x0

    .line 1102
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    move v1, p0

    .line 1103
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 1104
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1105
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_28

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v3, p2, :cond_28

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_20} :catch_26

    const/16 v3, 0x64

    if-gt v2, v3, :cond_28

    const/4 p0, 0x1

    return p0

    :catch_26
    move-exception p1

    goto :goto_2b

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1111
    :goto_2b
    const-string p2, "DeviceStateManagerService"

    const-string v0, "am.getRunningAppProcesses() failed"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_32
    return p0
.end method

.method public final isStateAvailableForAppRequests(I)Z
    .registers 3

    .line 1132
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1134
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    move-result-object p0

    .line 1135
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/devicestate/DeviceState;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :catchall_1d
    move-exception p0

    goto :goto_22

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    monitor-exit v0

    return p0

    .line 1140
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_1d

    throw p0
.end method

.method public final isSupportedStateLocked(I)Z
    .registers 2

    .line 528
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public final isTopApp(I)Z
    .registers 2

    .line 1117
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopApp()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 1118
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p0

    if-ne p0, p1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final notifyDeviceStateInfoChangedAsync()V
    .registers 6

    .line 700
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 702
    const-string p0, "DeviceStateManagerService"

    const-string v1, "Cannot notify device state info change when pending state is present."

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    goto :goto_6f

    .line 707
    :cond_16
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_66

    .line 713
    :cond_27
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_31

    .line 714
    monitor-exit v0

    return-void

    .line 717
    :cond_31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 718
    :goto_38
    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4e

    .line 719
    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 722
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p0

    .line 724
    :goto_52
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_64

    .line 725
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    invoke-virtual {v3, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyDeviceStateInfoAsync(Landroid/hardware/devicestate/DeviceStateInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 727
    :cond_64
    monitor-exit v0

    return-void

    .line 708
    :cond_66
    :goto_66
    const-string p0, "DeviceStateManagerService"

    const-string v1, "Cannot notify device state info change before the initial state has been committed."

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    monitor-exit v0

    return-void

    .line 727
    :goto_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_14

    throw p0
.end method

.method public final notifyPolicyIfNeeded()V
    .registers 4

    .line 625
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 626
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Attempting to notify DeviceStatePolicy with service lock held"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 628
    const-string v1, "DeviceStateManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    :cond_14
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 632
    :try_start_17
    iget-boolean v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    if-nez v1, :cond_1f

    .line 633
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    goto :goto_3a

    :cond_1f
    const/4 v1, 0x0

    .line 635
    iput-boolean v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    .line 636
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    .line 637
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_1d

    .line 642
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicestate/DeviceStatePolicy;->configureDeviceForState(ILjava/lang/Runnable;)V

    return-void

    .line 637
    :goto_3a
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_1d

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_d

    .line 318
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStatePolicy;->getDeviceStateProvider()Lcom/android/server/devicestate/DeviceStateProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/devicestate/DeviceStateProvider;->onSystemReady()V

    :cond_d
    return-void
.end method

.method public final onOverrideRequestStatusChangedLocked(Lcom/android/server/devicestate/OverrideRequest;II)V
    .registers 8

    .line 734
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getRequestType()I

    move-result v0

    const-string v1, "Unknown request status: "

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3f

    if-eq p2, v3, :cond_3b

    if-ne p2, v2, :cond_26

    .line 740
    iget-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveBaseStateOverride:Ljava/util/Optional;

    invoke-virtual {p3}, Ljava/util/Optional;->isPresent()Z

    move-result p3

    if-eqz p3, :cond_ab

    iget-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveBaseStateOverride:Ljava/util/Optional;

    .line 741
    invoke-virtual {p3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    if-ne p3, p1, :cond_ab

    .line 742
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveBaseStateOverride:Ljava/util/Optional;

    goto/16 :goto_ab

    .line 747
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 737
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->enableBaseStateRequestLocked(Lcom/android/server/devicestate/OverrideRequest;)V

    return-void

    .line 749
    :cond_3f
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getRequestType()I

    move-result v0

    if-nez v0, :cond_ee

    if-eq p2, v3, :cond_98

    if-ne p2, v2, :cond_83

    .line 757
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_ab

    .line 758
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 759
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStateNotificationController:Lcom/android/server/devicestate/DeviceStateNotificationController;

    .line 760
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedStateIdentifier()I

    move-result v1

    .line 759
    invoke-virtual {v0, v1}, Lcom/android/server/devicestate/DeviceStateNotificationController;->cancelNotification(I)V

    and-int/lit8 v0, p3, 0x1

    if-ne v0, v3, :cond_76

    .line 762
    iget-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStateNotificationController:Lcom/android/server/devicestate/DeviceStateNotificationController;

    .line 764
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedStateIdentifier()I

    move-result v0

    .line 763
    invoke-virtual {p3, v0}, Lcom/android/server/devicestate/DeviceStateNotificationController;->showThermalCriticalNotificationIfNeeded(I)V

    goto :goto_ab

    :cond_76
    and-int/2addr p3, v2

    if-ne p3, v2, :cond_ab

    .line 766
    iget-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStateNotificationController:Lcom/android/server/devicestate/DeviceStateNotificationController;

    .line 768
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedStateIdentifier()I

    move-result v0

    .line 767
    invoke-virtual {p3, v0}, Lcom/android/server/devicestate/DeviceStateNotificationController;->showPowerSaveNotificationIfNeeded(I)V

    goto :goto_ab

    .line 774
    :cond_83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 752
    :cond_98
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 753
    iget-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStateNotificationController:Lcom/android/server/devicestate/DeviceStateNotificationController;

    .line 754
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedStateIdentifier()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getUid()I

    move-result v1

    .line 753
    invoke-virtual {p3, v0, v1}, Lcom/android/server/devicestate/DeviceStateNotificationController;->showStateActiveNotificationIfNeeded(II)V

    .line 781
    :cond_ab
    :goto_ab
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    move-result p3

    .line 783
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    if-nez v0, :cond_c8

    .line 787
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_c8
    if-ne p2, v3, :cond_dc

    if-nez p3, :cond_e3

    .line 792
    iget-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-nez p2, :cond_e3

    .line 796
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestActiveAsync(Landroid/os/IBinder;)V

    goto :goto_e3

    .line 799
    :cond_dc
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestCanceledAsync(Landroid/os/IBinder;)V

    .line 802
    :cond_e3
    :goto_e3
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 777
    :cond_ee
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown OverrideRest type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getRequestType()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onStart()V
    .registers 4

    .line 295
    const-string v0, "device_state"

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/frameworks/devicestate/IDeviceStateService;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 298
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHalService:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 300
    :cond_25
    const-class v0, Landroid/hardware/devicestate/DeviceStateManagerInternal;

    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService-IA;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 311
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    return-void
.end method

.method public final onStateRequestOverlayDismissedInternal(Z)V
    .registers 4

    .line 998
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 999
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRearDisplayPendingOverrideRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-eqz v1, :cond_29

    if-eqz p1, :cond_21

    .line 1001
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 1002
    invoke-virtual {v1}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v1

    .line 1001
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 1003
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRearDisplayPendingOverrideRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 1004
    invoke-virtual {v1}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1003
    invoke-virtual {p1, v1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestCanceledAsync(Landroid/os/IBinder;)V

    goto :goto_26

    :catchall_1f
    move-exception p0

    goto :goto_2b

    .line 1006
    :cond_21
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {p1, v1}, Lcom/android/server/devicestate/OverrideRequestController;->addRequest(Lcom/android/server/devicestate/OverrideRequest;)V

    :goto_26
    const/4 p1, 0x0

    .line 1008
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRearDisplayPendingOverrideRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 1010
    :cond_29
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_1f

    throw p0
.end method

.method public final registerProcess(ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)Landroid/hardware/devicestate/DeviceStateInfo;
    .registers 7

    .line 819
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 820
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 825
    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p2, p1, v2, v3}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;-><init>(Landroid/hardware/devicestate/IDeviceStateManagerCallback;ILcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$DeathListener;Landroid/os/Handler;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_31

    .line 828
    :try_start_17
    invoke-interface {p2}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_36
    .catchall {:try_start_17 .. :try_end_1f} :catchall_31

    .line 832
    :try_start_1f
    iget-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 834
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p0

    goto :goto_34

    :catchall_31
    move-exception p0

    goto :goto_45

    :cond_33
    const/4 p0, 0x0

    :goto_34
    monitor-exit v0

    return-object p0

    :catch_36
    move-exception p0

    .line 830
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 821
    :cond_3d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "The calling process has already registered an IDeviceStateManagerCallback."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 835
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_1f .. :try_end_46} :catchall_31

    throw p0
.end method

.method public final requestBaseStateOverrideInternal(IIIILandroid/os/IBinder;)V
    .registers 15

    .line 956
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 957
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    move-result-object v0

    .line 958
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 963
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    if-eqz p1, :cond_53

    .line 969
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    const/4 v2, 0x1

    invoke-virtual {p1, p5, v2}, Lcom/android/server/devicestate/OverrideRequestController;->hasRequest(Landroid/os/IBinder;I)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 975
    new-instance v2, Lcom/android/server/devicestate/OverrideRequest;

    .line 976
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/hardware/devicestate/DeviceState;

    const/4 v8, 0x1

    move v7, p2

    move v4, p3

    move v5, p4

    move-object v3, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/devicestate/OverrideRequest;-><init>(Landroid/os/IBinder;IILandroid/hardware/devicestate/DeviceState;II)V

    .line 977
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {p0, v2}, Lcom/android/server/devicestate/OverrideRequestController;->addBaseStateRequest(Lcom/android/server/devicestate/OverrideRequest;)V

    .line 978
    monitor-exit v1

    return-void

    :catchall_38
    move-exception v0

    move-object p0, v0

    goto :goto_8c

    :cond_3b
    move-object v3, p5

    .line 971
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Request has already been made for the supplied token: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_53
    move v4, p3

    .line 965
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Process "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " has no registered callback."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 959
    :cond_70
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Requested state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 978
    :goto_8c
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_3 .. :try_end_8d} :catchall_38

    throw p0
.end method

.method public final requestStateInternal(IIIILandroid/os/IBinder;Z)V
    .registers 17

    .line 852
    iget-object v7, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 853
    :try_start_3
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    if-eqz v0, :cond_aa

    .line 859
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    const/4 v8, 0x0

    invoke-virtual {v0, p5, v8}, Lcom/android/server/devicestate/OverrideRequestController;->hasRequest(Landroid/os/IBinder;I)Z

    move-result v0

    if-nez v0, :cond_93

    .line 865
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    move-result-object v9

    .line 866
    invoke-virtual {v9}, Ljava/util/Optional;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_77

    .line 871
    new-instance v0, Lcom/android/server/devicestate/OverrideRequest;

    .line 872
    invoke-virtual {v9}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/hardware/devicestate/DeviceState;

    const/4 v6, 0x0

    move v5, p2

    move v2, p3

    move v3, p4

    move-object v1, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/devicestate/OverrideRequest;-><init>(Landroid/os/IBinder;IILandroid/hardware/devicestate/DeviceState;II)V

    .line 875
    invoke-virtual {v9}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/devicestate/DeviceState;

    const/16 p2, 0x10

    .line 876
    invoke-virtual {p1, p2}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p1

    .line 877
    invoke-virtual {v9}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/devicestate/DeviceState;

    const/16 p3, 0x3e9

    .line 878
    invoke-virtual {p2, p3}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p2

    .line 880
    iget-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {p3}, Ljava/util/Optional;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_52

    goto :goto_5f

    .line 881
    :cond_52
    iget-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {p3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/devicestate/DeviceState;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v8

    :goto_5f
    if-eqz p1, :cond_70

    move/from16 p1, p6

    .line 884
    invoke-static {p1, p2, v8}, Lcom/android/server/devicestate/DeviceStateManagerService;->shouldShowRdmEduDialog(ZZZ)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 889
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->showRearDisplayEducationalOverlayLocked(Lcom/android/server/devicestate/OverrideRequest;)V

    goto :goto_75

    :catchall_6d
    move-exception v0

    move-object p0, v0

    goto :goto_c6

    .line 891
    :cond_70
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/OverrideRequestController;->addRequest(Lcom/android/server/devicestate/OverrideRequest;)V

    .line 902
    :goto_75
    monitor-exit v7

    return-void

    .line 867
    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Requested state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 861
    :cond_93
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Request has already been made for the supplied token: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 855
    :cond_aa
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Process "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " has no registered callback."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 902
    :goto_c6
    monitor-exit v7
    :try_end_c7
    .catchall {:try_start_3 .. :try_end_c7} :catchall_6d

    throw p0
.end method

.method public final setBaseState(I)V
    .registers 5

    .line 548
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 549
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    move-result-object v1

    .line 550
    invoke-virtual {v1}, Ljava/util/Optional;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 554
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceState;

    .line 556
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v2, v1}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 558
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_65

    .line 561
    :cond_2d
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRearDisplayPendingOverrideRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-eqz v2, :cond_34

    .line 562
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->handleRearDisplayBaseStateChangedLocked(I)V

    .line 564
    :cond_34
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    const/4 v2, 0x4

    .line 566
    invoke-virtual {v1, v2}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 567
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {v1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelOverrideRequest()V

    .line 569
    :cond_46
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {v1, p1}, Lcom/android/server/devicestate/OverrideRequestController;->handleBaseStateChanged(I)V

    .line 570
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    .line 572
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyDeviceStateInfoChangedAsync()V

    .line 574
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 575
    monitor-exit v0

    return-void

    .line 551
    :cond_5d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Base state is not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 575
    :goto_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_2b

    throw p0
.end method

.method public final shouldCancelOverrideRequestWhenRequesterNotOnTop()Z
    .registers 2

    .line 1605
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 1608
    :cond_a
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/OverrideRequest;

    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedStateIdentifier()I

    move-result v0

    .line 1609
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/devicestate/DeviceState;

    const/4 v0, 0x5

    .line 1610
    invoke-virtual {p0, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p0

    return p0
.end method

.method public final showRearDisplayEducationalOverlayLocked(Lcom/android/server/devicestate/OverrideRequest;)V
    .registers 2

    .line 934
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRearDisplayPendingOverrideRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 936
    const-class p1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 937
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p1, :cond_1b

    .line 939
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showRearDisplayDialog(I)V

    :cond_1b
    return-void
.end method

.method public final updatePendingStateLocked()Z
    .registers 4

    .line 588
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 594
    :cond_a
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 595
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 596
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/OverrideRequest;

    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedStateIdentifier()I

    move-result v0

    .line 595
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceState;

    goto :goto_4d

    .line 597
    :cond_29
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 598
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->isSupportedStateLocked(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 600
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceState;

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    if-nez v0, :cond_50

    return v1

    .line 610
    :cond_50
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    return v1

    .line 615
    :cond_65
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    const/4 v0, 0x1

    .line 616
    iput-boolean v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    return v0
.end method

.method public final updateSupportedStates([Landroid/hardware/devicestate/DeviceState;I)V
    .registers 10

    .line 482
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    move-result-object v1

    .line 489
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    const/4 v2, 0x0

    move v3, v2

    .line 490
    :goto_e
    array-length v4, p1

    if-ge v2, v4, :cond_29

    .line 491
    aget-object v4, p1, v2

    const/4 v5, 0x4

    .line 492
    invoke-virtual {v4, v5}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v3, 0x1

    .line 495
    :cond_1b
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :catchall_27
    move-exception p0

    goto :goto_51

    .line 498
    :cond_29
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {p1, v3}, Lcom/android/server/devicestate/OverrideRequestController;->setStickyRequestsAllowed(Z)V

    .line 500
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    move-result-object p1

    .line 501
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 502
    monitor-exit v0

    return-void

    .line 505
    :cond_3a
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/devicestate/OverrideRequestController;->handleNewSupportedStates([II)V

    .line 506
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    .line 508
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyDeviceStateInfoChangedAsync()V

    .line 510
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 511
    monitor-exit v0

    return-void

    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_27

    throw p0
.end method
