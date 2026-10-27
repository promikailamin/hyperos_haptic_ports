.class public final Lcom/android/server/devicestate/DeviceStateManagerService;
.super Lcom/android/server/SystemService;
.source "DeviceStateManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;,
        Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;,
        Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;,
        Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;
    }
.end annotation


# static fields
.field private static final CURRENT_DEVICE_STATE:Ljava/lang/String; = "current_device_state"

.field private static final DEBUG:Z = false

.field private static final DEVICE_POSTURE:Ljava/lang/String; = "device_posture"

.field public static final FOLDABLE_DEVICE_STATE_CLOSED:I = 0x0

.field public static final FOLDABLE_DEVICE_STATE_HALF_OPENED:I = 0x2

.field public static final FOLDABLE_DEVICE_STATE_OPENED:I = 0x3

.field public static final FOLDABLE_DEVICE_STATE_OPENED_PRESENTATION:I = 0x5

.field public static final FOLDABLE_DEVICE_STATE_OPENED_REVERSE:I = 0x4

.field public static final FOLDABLE_DEVICE_STATE_OPENED_REVERSE_PRESENTATION:I = 0x6

.field public static final FOLDABLE_DEVICE_STATE_TENT:I = 0x1

.field private static final IS_FOLDABLE_DEVICE:Z

.field private static final POSTURE_CLOSED:I = 0x1

.field private static final POSTURE_FLIPPED:I = 0x4

.field private static final POSTURE_HALF_OPENED:I = 0x2

.field private static final POSTURE_OPENED:I = 0x3

.field private static final POSTURE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DeviceStateManagerService"


# instance fields
.field private mActiveOverride:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/OverrideRequest;",
            ">;"
        }
    .end annotation
.end field

.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mBaseState:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

.field private mCommittedState:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

.field private mDeviceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceStatesAvailableForAppRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFoldedDeviceStates:[I

.field private final mHandler:Landroid/os/Handler;

.field private mIsPolicyWaitingForState:Z

.field private final mLock:Ljava/lang/Object;

.field private final mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

.field private mPendingState:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReversedFoldedDeviceStates:[I


# direct methods
.method public static synthetic $r8$lambda$UaA7yMWStQbVPF5T0N18j3gX22Q(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/OverrideRequest;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->onOverrideRequestStatusChangedLocked(Lcom/android/server/devicestate/OverrideRequest;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jiU5VXokYcJUH2EJ6jFQstyxfLE(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->commitPendingState()V

    return-void
.end method

.method public static synthetic $r8$lambda$s8kEW-K3GJMb1y3UvMw1-_u88Uk(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->handleProcessDied(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wIWgFzEDmf-WTNtQtPpan3TstOU(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyPolicyIfNeeded()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceStatePolicy(Lcom/android/server/devicestate/DeviceStateManagerService;)Lcom/android/server/devicestate/DeviceStatePolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$massertCanControlDeviceState(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->assertCanControlDeviceState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$massertCanRequestDeviceState(Lcom/android/server/devicestate/DeviceStateManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->assertCanRequestDeviceState(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelStateRequestInternal(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->cancelStateRequestInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelStateRequestInternal(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->cancelStateRequestInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/devicestate/DeviceStateManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDeviceStateInfoLocked(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/hardware/devicestate/DeviceStateInfo;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSupportedStateIdentifiersLocked(Lcom/android/server/devicestate/DeviceStateManagerService;)[I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misReversedStateLocked(Lcom/android/server/devicestate/DeviceStateManagerService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->isReversedStateLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mregisterProcess(Lcom/android/server/devicestate/DeviceStateManagerService;ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->registerProcess(ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestStateInternal(Lcom/android/server/devicestate/DeviceStateManagerService;IIILandroid/os/IBinder;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/devicestate/DeviceStateManagerService;->requestStateInternal(IIILandroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBaseState(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->setBaseState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSupportedStates(Lcom/android/server/devicestate/DeviceStateManagerService;[Lcom/android/server/devicestate/DeviceState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->updateSupportedStates([Lcom/android/server/devicestate/DeviceState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 168
    const-string/jumbo v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    const/4 v1, 0x1

    :cond_c
    sput-boolean v1, Lcom/android/server/devicestate/DeviceStateManagerService;->IS_FOLDABLE_DEVICE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 186
    nop

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStatePolicy$Provider;->fromResources(Landroid/content/res/Resources;)Lcom/android/server/devicestate/DeviceStatePolicy$Provider;

    move-result-object v0

    .line 188
    invoke-interface {v0, p1}, Lcom/android/server/devicestate/DeviceStatePolicy$Provider;->instantiate(Landroid/content/Context;)Lcom/android/server/devicestate/DeviceStatePolicy;

    move-result-object v0

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;-><init>(Landroid/content/Context;Lcom/android/server/devicestate/DeviceStatePolicy;)V

    .line 189
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/devicestate/DeviceStatePolicy;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/server/devicestate/DeviceStatePolicy;

    .line 193
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 122
    nop

    .line 124
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 126
    nop

    .line 128
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    .line 135
    nop

    .line 137
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 141
    nop

    .line 143
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 147
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 196
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v0

    .line 197
    .local v0, "displayThread":Lcom/android/server/DisplayThread;
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    .line 198
    new-instance v1, Lcom/android/server/devicestate/OverrideRequestController;

    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-direct {v1, v2}, Lcom/android/server/devicestate/OverrideRequestController;-><init>(Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;)V

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 200
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    .line 201
    invoke-virtual {p2}, Lcom/android/server/devicestate/DeviceStatePolicy;->getDeviceStateProvider()Lcom/android/server/devicestate/DeviceStateProvider;

    move-result-object v1

    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener-IA;)V

    invoke-interface {v1, v2}, Lcom/android/server/devicestate/DeviceStateProvider;->setListener(Lcom/android/server/devicestate/DeviceStateProvider$Listener;)V

    .line 202
    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    invoke-direct {v1, p0, v3}, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$BinderService-IA;)V

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    .line 203
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 205
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mContext:Landroid/content/Context;

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mFoldedDeviceStates:[I

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mReversedFoldedDeviceStates:[I

    .line 211
    return-void
.end method

.method private assertCanControlDeviceState(I)V
    .registers 6
    .param p1, "callingPid"    # I

    .line 748
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopApp()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 749
    .local v0, "topApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v1

    if-eq v1, p1, :cond_19

    .line 750
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.CONTROL_DEVICE_STATE"

    const-string v3, "Permission required to request device state, or the call must come from the top app."

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    :cond_19
    return-void
.end method

.method private assertCanRequestDeviceState(II)V
    .registers 7
    .param p1, "callingPid"    # I
    .param p2, "state"    # I

    .line 731
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopApp()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 732
    .local v0, "topApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v1

    if-ne v1, p1, :cond_14

    .line 733
    invoke-direct {p0, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->isStateAvailableForAppRequests(I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 734
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.CONTROL_DEVICE_STATE"

    const-string v3, "Permission required to request device state, or the call must come from the top app and be a device state that is available for apps to request."

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_1f
    return-void
.end method

.method private cancelStateRequestInternal()V
    .registers 5

    .line 1045
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1046
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/devicestate/OverrideRequestController;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1047
    monitor-exit v0

    .line 1048
    return-void

    .line 1047
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private cancelStateRequestInternal(I)V
    .registers 7
    .param p1, "callingPid"    # I

    .line 687
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 688
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 689
    .local v1, "processRecord":Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    if-eqz v1, :cond_36

    .line 694
    const-string v2, "DeviceStateManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelStateRequestInternal: callingPid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/devicestate/OverrideRequestController;)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 696
    .end local v1    # "processRecord":Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    monitor-exit v0

    .line 697
    return-void

    .line 690
    .restart local v1    # "processRecord":Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    :cond_36
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no registered callback."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/devicestate/DeviceStateManagerService;
    .end local p1    # "callingPid":I
    throw v2

    .line 696
    .end local v1    # "processRecord":Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    .restart local p0    # "this":Lcom/android/server/devicestate/DeviceStateManagerService;
    .restart local p1    # "callingPid":I
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v1
.end method

.method private commitPendingState()V
    .registers 6

    .line 532
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceState;

    .line 538
    .local v1, "newState":Lcom/android/server/devicestate/DeviceState;
    const/16 v2, 0x15e

    .line 539
    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-nez v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    .line 538
    :goto_1c
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZ)V

    .line 541
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 543
    sget-boolean v2, Lcom/android/server/devicestate/DeviceStateManagerService;->IS_FOLDABLE_DEVICE:Z

    if-eqz v2, :cond_2c

    .line 544
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updateDevicePosture()V

    .line 547
    :cond_2c
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 548
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    .line 551
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyDeviceStateInfoChangedAsync()V

    .line 557
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/OverrideRequest;

    .line 558
    .local v2, "activeRequest":Lcom/android/server/devicestate/OverrideRequest;
    if-eqz v2, :cond_62

    .line 559
    invoke-virtual {v2}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedState()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v4

    if-ne v3, v4, :cond_62

    .line 560
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 561
    .local v3, "processRecord":Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    if-eqz v3, :cond_62

    .line 562
    invoke-virtual {v2}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestActiveAsync(Landroid/os/IBinder;)V

    .line 567
    .end local v3    # "processRecord":Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    :cond_62
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 568
    nop

    .end local v1    # "newState":Lcom/android/server/devicestate/DeviceState;
    .end local v2    # "activeRequest":Lcom/android/server/devicestate/OverrideRequest;
    monitor-exit v0

    .line 569
    return-void

    .line 568
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 700
    const-string v0, "DEVICE STATE MANAGER (dumpsys device_state)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCommittedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBaseState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOverrideState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getOverrideState()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 709
    .local v1, "processCount":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered processes: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8a
    if-ge v2, v1, :cond_bb

    .line 712
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 713
    .local v3, "processRecord":Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": mPid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->-$$Nest$fgetmPid(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    .end local v3    # "processRecord":Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8a

    .line 716
    .end local v2    # "i":I
    :cond_bb
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {v2, p1}, Lcom/android/server/devicestate/OverrideRequestController;->dumpInternal(Ljava/io/PrintWriter;)V

    .line 717
    .end local v1    # "processCount":I
    monitor-exit v0

    .line 718
    return-void

    .line 717
    :catchall_c2
    move-exception v1

    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_8 .. :try_end_c4} :catchall_c2

    throw v1
.end method

.method private getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;
    .registers 5

    .line 310
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_17

    .line 314
    :cond_10
    const-string v0, "DeviceStateManagerService"

    const-string v1, "Trying to get the current DeviceStateInfo before the initial state has been committed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_17
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    move-result-object v0

    .line 322
    .local v0, "supportedStates":[I
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    goto :goto_32

    :cond_31
    move v1, v2

    .line 323
    .local v1, "baseState":I
    :goto_32
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v2}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v2

    .line 326
    .local v2, "currentState":I
    :cond_46
    new-instance v3, Landroid/hardware/devicestate/DeviceStateInfo;

    invoke-direct {v3, v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateInfo;-><init>([III)V

    return-object v3
.end method

.method private getStateLocked(I)Ljava/util/Optional;
    .registers 3
    .param p1, "identifier"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceState;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getSupportedStateIdentifiersLocked()[I
    .registers 4

    .line 301
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 302
    .local v0, "supportedStates":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_1d

    .line 303
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v2}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v2

    aput v2, v0, v1

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 305
    .end local v1    # "i":I
    :cond_1d
    return-object v0
.end method

.method private handleProcessDied(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)V
    .registers 5
    .param p1, "processRecord"    # Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 653
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->-$$Nest$fgetmPid(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 655
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-static {p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->-$$Nest$fgetmPid(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/devicestate/OverrideRequestController;->handleProcessDied(I)V

    .line 656
    monitor-exit v0

    .line 657
    return-void

    .line 656
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private isReversedStateLocked()Z
    .registers 3

    .line 1051
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1052
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    .line 1053
    .local v0, "currentState":I
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mReversedFoldedDeviceStates:[I

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1054
    const/4 v1, 0x1

    return v1

    .line 1057
    .end local v0    # "currentState":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method private isStateAvailableForAppRequests(I)Z
    .registers 5
    .param p1, "state"    # I

    .line 757
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 758
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatesAvailableForAppRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 759
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private isSupportedStateLocked(I)Z
    .registers 3
    .param p1, "identifier"    # I

    .line 377
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    return v0
.end method

.method private isValidState(I)Z
    .registers 4
    .param p1, "state"    # I

    .line 786
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 787
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    if-ne p1, v1, :cond_19

    .line 788
    const/4 v1, 0x1

    return v1

    .line 786
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 791
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private notifyDeviceStateInfoChangedAsync()V
    .registers 6

    .line 572
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 574
    monitor-exit v0

    return-void

    .line 577
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v1, "registeredProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 579
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 582
    .end local v2    # "i":I
    :cond_29
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object v2

    .line 584
    .local v2, "info":Landroid/hardware/devicestate/DeviceStateInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_40

    .line 585
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    invoke-virtual {v4, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyDeviceStateInfoAsync(Landroid/hardware/devicestate/DeviceStateInfo;)V

    .line 584
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 587
    .end local v1    # "registeredProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;>;"
    .end local v2    # "info":Landroid/hardware/devicestate/DeviceStateInfo;
    .end local v3    # "i":I
    :cond_40
    monitor-exit v0

    .line 588
    return-void

    .line 587
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private notifyPolicyIfNeeded()V
    .registers 4

    .line 495
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 496
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Attempting to notify DeviceStatePolicy with service lock held"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, "error":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 499
    const-string v1, "DeviceStateManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    .end local v0    # "error":Ljava/lang/Throwable;
    :cond_17
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_1a
    iget-boolean v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    if-nez v1, :cond_20

    .line 504
    monitor-exit v0

    return-void

    .line 506
    :cond_20
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    .line 507
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    .line 508
    .local v1, "state":I
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_3b

    .line 513
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicestate/DeviceStatePolicy;->configureDeviceForState(ILjava/lang/Runnable;)V

    .line 514
    return-void

    .line 508
    .end local v1    # "state":I
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private onOverrideRequestStatusChangedLocked(Lcom/android/server/devicestate/OverrideRequest;I)V
    .registers 7
    .param p1, "request"    # Lcom/android/server/devicestate/OverrideRequest;
    .param p2, "status"    # I

    .line 592
    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    .line 593
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    goto :goto_23

    .line 594
    :cond_a
    const/4 v1, 0x2

    if-ne p2, v1, :cond_66

    .line 595
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_23

    .line 596
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 602
    :cond_23
    :goto_23
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    move-result v1

    .line 604
    .local v1, "updatedPendingState":Z
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 605
    .local v2, "processRecord":Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    if-nez v2, :cond_40

    .line 608
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 609
    return-void

    .line 612
    :cond_40
    if-ne p2, v0, :cond_54

    .line 613
    if-nez v1, :cond_5b

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 617
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestActiveAsync(Landroid/os/IBinder;)V

    goto :goto_5b

    .line 620
    :cond_54
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestCanceledAsync(Landroid/os/IBinder;)V

    .line 623
    :cond_5b
    :goto_5b
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 624
    return-void

    .line 599
    .end local v1    # "updatedPendingState":Z
    .end local v2    # "processRecord":Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown request status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readStatesAvailableForRequestFromApps()V
    .registers 8

    .line 767
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatesAvailableForAppRequests:Ljava/util/Set;

    .line 768
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 769
    const v1, 0x1070045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "availableAppStatesConfigIdentifiers":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    array-length v2, v0

    if-ge v1, v2, :cond_64

    .line 771
    aget-object v2, v0, v1

    .line 772
    .local v2, "identifierToFetch":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 773
    const-string/jumbo v4, "integer"

    const-string v5, "android"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 774
    .local v3, "configValueIdentifier":I
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 775
    .local v4, "state":I
    invoke-direct {p0, v4}, Lcom/android/server/devicestate/DeviceStateManagerService;->isValidState(I)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 776
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatesAvailableForAppRequests:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 778
    :cond_49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid device state was found in the configuration file. State id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DeviceStateManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    .end local v2    # "identifierToFetch":Ljava/lang/String;
    .end local v3    # "configValueIdentifier":I
    .end local v4    # "state":I
    :goto_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 782
    .end local v1    # "i":I
    :cond_64
    return-void
.end method

.method private registerProcess(ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)V
    .registers 7
    .param p1, "pid"    # I
    .param p2, "callback"    # Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    .line 627
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_41

    .line 633
    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p2, p1, v2, v3}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;-><init>(Landroid/hardware/devicestate/IDeviceStateManagerCallback;ILcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$DeathListener;Landroid/os/Handler;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_49

    .line 636
    .local v1, "record":Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    :try_start_17
    invoke-interface {p2}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_3a
    .catchall {:try_start_17 .. :try_end_1f} :catchall_49

    .line 639
    nop

    .line 640
    :try_start_20
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 642
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 643
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object v2

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    .line 644
    .local v2, "currentInfo":Landroid/hardware/devicestate/DeviceStateInfo;
    :goto_33
    if-eqz v2, :cond_38

    .line 647
    invoke-virtual {v1, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyDeviceStateInfoAsync(Landroid/hardware/devicestate/DeviceStateInfo;)V

    .line 649
    .end local v1    # "record":Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    .end local v2    # "currentInfo":Landroid/hardware/devicestate/DeviceStateInfo;
    :cond_38
    monitor-exit v0

    .line 650
    return-void

    .line 637
    .restart local v1    # "record":Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    :catch_3a
    move-exception v2

    .line 638
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/devicestate/DeviceStateManagerService;
    .end local p1    # "pid":I
    .end local p2    # "callback":Landroid/hardware/devicestate/IDeviceStateManagerCallback;
    throw v3

    .line 629
    .end local v1    # "record":Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/devicestate/DeviceStateManagerService;
    .restart local p1    # "pid":I
    .restart local p2    # "callback":Landroid/hardware/devicestate/IDeviceStateManagerCallback;
    :cond_41
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "The calling process has already registered an IDeviceStateManagerCallback."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/devicestate/DeviceStateManagerService;
    .end local p1    # "pid":I
    .end local p2    # "callback":Landroid/hardware/devicestate/IDeviceStateManagerCallback;
    throw v1

    .line 649
    .restart local p0    # "this":Lcom/android/server/devicestate/DeviceStateManagerService;
    .restart local p1    # "pid":I
    .restart local p2    # "callback":Landroid/hardware/devicestate/IDeviceStateManagerCallback;
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_20 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method private requestStateInternal(IIILandroid/os/IBinder;)V
    .registers 11
    .param p1, "state"    # I
    .param p2, "flags"    # I
    .param p3, "callingPid"    # I
    .param p4, "token"    # Landroid/os/IBinder;

    .line 661
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 663
    .local v1, "processRecord":Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    if-eqz v1, :cond_86

    .line 668
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {v2, p4}, Lcom/android/server/devicestate/OverrideRequestController;->hasRequest(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 673
    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    move-result-object v2

    .line 674
    .local v2, "deviceState":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/devicestate/DeviceState;>;"
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 680
    const-string v3, "DeviceStateManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestStateInternal: state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callingPid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v3, Lcom/android/server/devicestate/OverrideRequest;

    invoke-direct {v3, p4, p3, p1, p2}, Lcom/android/server/devicestate/OverrideRequest;-><init>(Landroid/os/IBinder;III)V

    .line 682
    .local v3, "request":Lcom/android/server/devicestate/OverrideRequest;
    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {v4, v3}, Lcom/android/server/devicestate/OverrideRequestController;->addRequest(Lcom/android/server/devicestate/OverrideRequest;)V

    .line 683
    .end local v1    # "processRecord":Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    .end local v2    # "deviceState":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/devicestate/DeviceState;>;"
    .end local v3    # "request":Lcom/android/server/devicestate/OverrideRequest;
    monitor-exit v0

    .line 684
    return-void

    .line 675
    .restart local v1    # "processRecord":Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    .restart local v2    # "deviceState":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/devicestate/DeviceState;>;"
    :cond_4e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/devicestate/DeviceStateManagerService;
    .end local p1    # "state":I
    .end local p2    # "flags":I
    .end local p3    # "callingPid":I
    .end local p4    # "token":Landroid/os/IBinder;
    throw v3

    .line 669
    .end local v2    # "deviceState":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/devicestate/DeviceState;>;"
    .restart local p0    # "this":Lcom/android/server/devicestate/DeviceStateManagerService;
    .restart local p1    # "state":I
    .restart local p2    # "flags":I
    .restart local p3    # "callingPid":I
    .restart local p4    # "token":Landroid/os/IBinder;
    :cond_6d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request has already been made for the supplied token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/devicestate/DeviceStateManagerService;
    .end local p1    # "state":I
    .end local p2    # "flags":I
    .end local p3    # "callingPid":I
    .end local p4    # "token":Landroid/os/IBinder;
    throw v2

    .line 664
    .restart local p0    # "this":Lcom/android/server/devicestate/DeviceStateManagerService;
    .restart local p1    # "state":I
    .restart local p2    # "flags":I
    .restart local p3    # "callingPid":I
    .restart local p4    # "token":Landroid/os/IBinder;
    :cond_86
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no registered callback."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/devicestate/DeviceStateManagerService;
    .end local p1    # "state":I
    .end local p2    # "flags":I
    .end local p3    # "callingPid":I
    .end local p4    # "token":Landroid/os/IBinder;
    throw v2

    .line 683
    .end local v1    # "processRecord":Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    .restart local p0    # "this":Lcom/android/server/devicestate/DeviceStateManagerService;
    .restart local p1    # "state":I
    .restart local p2    # "flags":I
    .restart local p3    # "callingPid":I
    .restart local p4    # "token":Landroid/os/IBinder;
    :catchall_a5
    move-exception v1

    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_3 .. :try_end_a7} :catchall_a5

    throw v1
.end method

.method private setBaseState(I)V
    .registers 12
    .param p1, "identifier"    # I

    .line 397
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    move-result-object v1

    .line 399
    .local v1, "baseStateOptional":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/devicestate/DeviceState;>;"
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 403
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/DeviceState;

    .line 404
    .local v2, "baseState":Lcom/android/server/devicestate/DeviceState;
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v3, v2}, Lcom/android/server/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 406
    monitor-exit v0

    return-void

    .line 410
    :cond_2b
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mFoldedDeviceStates:[I

    iget-object v6, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 411
    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v6}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_4b

    move v3, v5

    goto :goto_4c

    :cond_4b
    move v3, v4

    .line 412
    .local v3, "isCurrentStateFolded":Z
    :goto_4c
    iget-object v6, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mFoldedDeviceStates:[I

    invoke-static {v6, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    .line 413
    .local v6, "isNewStateFolded":Z
    if-eq v3, v6, :cond_55

    move v4, v5

    .line 415
    .local v4, "foldStateChanged":Z
    :cond_55
    iget-object v7, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v7}, Ljava/util/Optional;->isPresent()Z

    move-result v7

    if-nez v7, :cond_76

    .line 416
    const-string v7, "DeviceStateManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setBaseState: Initialize mBaseState for the first time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_76
    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 423
    sget-boolean v7, Lcom/android/server/devicestate/DeviceStateManagerService;->IS_FOLDABLE_DEVICE:Z

    if-eqz v7, :cond_83

    .line 424
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updateDevicePosture()V

    .line 428
    :cond_83
    invoke-virtual {v2, v5}, Lcom/android/server/devicestate/DeviceState;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 429
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {v5}, Lcom/android/server/devicestate/OverrideRequestController;->cancelOverrideRequest()V

    .line 431
    :cond_8e
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {v5}, Lcom/android/server/devicestate/OverrideRequestController;->handleBaseStateChanged()V

    .line 433
    if-eqz v7, :cond_9c

    if-eqz v4, :cond_9c

    .line 434
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {v5}, Lcom/android/server/devicestate/OverrideRequestController;->handleFoldStateChanged()V

    .line 437
    :cond_9c
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    .line 439
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-nez v5, :cond_aa

    .line 443
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyDeviceStateInfoChangedAsync()V

    .line 446
    :cond_aa
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 447
    nop

    .end local v1    # "baseStateOptional":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/devicestate/DeviceState;>;"
    .end local v2    # "baseState":Lcom/android/server/devicestate/DeviceState;
    .end local v3    # "isCurrentStateFolded":Z
    .end local v4    # "foldStateChanged":Z
    .end local v6    # "isNewStateFolded":Z
    monitor-exit v0

    .line 448
    return-void

    .line 400
    .restart local v1    # "baseStateOptional":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/devicestate/DeviceState;>;"
    :cond_b7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Base state is not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/devicestate/DeviceStateManagerService;
    .end local p1    # "identifier":I
    throw v2

    .line 447
    .end local v1    # "baseStateOptional":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/devicestate/DeviceState;>;"
    .restart local p0    # "this":Lcom/android/server/devicestate/DeviceStateManagerService;
    .restart local p1    # "identifier":I
    :catchall_bf
    move-exception v1

    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_3 .. :try_end_c1} :catchall_bf

    throw v1
.end method

.method private updatePendingStateLocked()Z
    .registers 4

    .line 459
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 461
    return v1

    .line 465
    :cond_a
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 466
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/OverrideRequest;

    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceState;

    .local v0, "stateToConfigure":Lcom/android/server/devicestate/DeviceState;
    goto :goto_4d

    .line 467
    .end local v0    # "stateToConfigure":Lcom/android/server/devicestate/DeviceState;
    :cond_29
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 468
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->isSupportedStateLocked(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 470
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceState;

    .restart local v0    # "stateToConfigure":Lcom/android/server/devicestate/DeviceState;
    goto :goto_4d

    .line 472
    .end local v0    # "stateToConfigure":Lcom/android/server/devicestate/DeviceState;
    :cond_4c
    const/4 v0, 0x0

    .line 475
    .restart local v0    # "stateToConfigure":Lcom/android/server/devicestate/DeviceState;
    :goto_4d
    if-nez v0, :cond_50

    .line 477
    return v1

    .line 480
    :cond_50
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 482
    return v1

    .line 485
    :cond_65
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 486
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    .line 487
    return v1
.end method

.method private updateSupportedStates([Lcom/android/server/devicestate/DeviceState;)V
    .registers 9
    .param p1, "supportedDeviceStates"    # [Lcom/android/server/devicestate/DeviceState;

    .line 335
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    move-result-object v1

    .line 341
    .local v1, "oldStateIdentifiers":[I
    const/4 v2, 0x0

    .line 342
    .local v2, "hasTerminalDeviceState":Z
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 343
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    array-length v4, p1

    if-ge v3, v4, :cond_27

    .line 344
    aget-object v4, p1, v3

    .line 345
    .local v4, "state":Lcom/android/server/devicestate/DeviceState;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/devicestate/DeviceState;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 346
    const/4 v2, 0x1

    .line 348
    :cond_1b
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    .end local v4    # "state":Lcom/android/server/devicestate/DeviceState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 351
    .end local v3    # "i":I
    :cond_27
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {v3, v2}, Lcom/android/server/devicestate/OverrideRequestController;->setStickyRequestsAllowed(Z)V

    .line 353
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    move-result-object v3

    .line 354
    .local v3, "newStateIdentifiers":[I
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 355
    monitor-exit v0

    return-void

    .line 358
    :cond_38
    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {v4, v3}, Lcom/android/server/devicestate/OverrideRequestController;->handleNewSupportedStates([I)V

    .line 359
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    .line 361
    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-nez v4, :cond_4b

    .line 365
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyDeviceStateInfoChangedAsync()V

    .line 368
    :cond_4b
    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    nop

    .end local v1    # "oldStateIdentifiers":[I
    .end local v2    # "hasTerminalDeviceState":Z
    .end local v3    # "newStateIdentifiers":[I
    monitor-exit v0

    .line 370
    return-void

    .line 369
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw v1
.end method


# virtual methods
.method getBaseState()Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    monitor-exit v0

    return-object v1

    .line 270
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getBinderService()Landroid/hardware/devicestate/IDeviceStateManager;
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    return-object v0
.end method

.method getCommittedState()Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    monitor-exit v0

    return-object v1

    .line 241
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getHandler()Landroid/os/Handler;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getOverrideState()Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 282
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/OverrideRequest;

    invoke-virtual {v1}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 284
    :cond_1d
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 285
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method getPendingState()Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    monitor-exit v0

    return-object v1

    .line 253
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getSupportedStates()[Lcom/android/server/devicestate/DeviceState;
    .registers 5

    .line 290
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/devicestate/DeviceState;

    .line 292
    .local v1, "supportedStates":[Lcom/android/server/devicestate/DeviceState;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v1

    if-ge v2, v3, :cond_1c

    .line 293
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicestate/DeviceState;

    aput-object v3, v1, v2

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 295
    .end local v2    # "i":I
    :cond_1c
    monitor-exit v0

    return-object v1

    .line 296
    .end local v1    # "supportedStates":[Lcom/android/server/devicestate/DeviceState;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public onStart()V
    .registers 4

    .line 215
    const-string v0, "device_state"

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 216
    const-class v0, Landroid/hardware/devicestate/DeviceStateManagerInternal;

    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$LocalService-IA;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_15
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->readStatesAvailableForRequestFromApps()V

    .line 220
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method updateDevicePosture()V
    .registers 6

    .line 1018
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1019
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    .line 1020
    .local v0, "baseState":I
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    .line 1023
    .local v1, "currentState":I
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mFoldedDeviceStates:[I

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1024
    const/4 v2, 0x1

    .local v2, "devicePosture":I
    goto :goto_41

    .line 1025
    .end local v2    # "devicePosture":I
    :cond_32
    const/4 v2, 0x2

    if-ne v1, v2, :cond_37

    .line 1026
    const/4 v2, 0x2

    .restart local v2    # "devicePosture":I
    goto :goto_41

    .line 1027
    .end local v2    # "devicePosture":I
    :cond_37
    const/4 v3, 0x5

    if-ne v1, v3, :cond_40

    .line 1028
    if-ne v0, v2, :cond_3e

    .line 1029
    const/4 v2, 0x2

    .restart local v2    # "devicePosture":I
    goto :goto_41

    .line 1031
    .end local v2    # "devicePosture":I
    :cond_3e
    const/4 v2, 0x3

    .restart local v2    # "devicePosture":I
    goto :goto_41

    .line 1034
    .end local v2    # "devicePosture":I
    :cond_40
    const/4 v2, 0x3

    .line 1036
    .restart local v2    # "devicePosture":I
    :goto_41
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_posture"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1039
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_device_state"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1042
    .end local v0    # "baseState":I
    .end local v1    # "currentState":I
    .end local v2    # "devicePosture":I
    :cond_57
    return-void
.end method
