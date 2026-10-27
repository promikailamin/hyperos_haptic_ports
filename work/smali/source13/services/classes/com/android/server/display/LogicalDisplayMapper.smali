.class Lcom/android/server/display/LogicalDisplayMapper;
.super Ljava/lang/Object;
.source "LogicalDisplayMapper.java"

# interfaces
.implements Lcom/android/server/display/DisplayDeviceRepository$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;,
        Lcom/android/server/display/LogicalDisplayMapper$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DISPLAY_GROUP_EVENT_ADDED:I = 0x1

.field public static final DISPLAY_GROUP_EVENT_CHANGED:I = 0x2

.field public static final DISPLAY_GROUP_EVENT_REMOVED:I = 0x3

.field public static final LOGICAL_DISPLAY_EVENT_ADDED:I = 0x1

.field public static final LOGICAL_DISPLAY_EVENT_CHANGED:I = 0x2

.field public static final LOGICAL_DISPLAY_EVENT_DEVICE_STATE_TRANSITION:I = 0x6

.field public static final LOGICAL_DISPLAY_EVENT_FRAME_RATE_OVERRIDES_CHANGED:I = 0x5

.field public static final LOGICAL_DISPLAY_EVENT_REMOVED:I = 0x3

.field public static final LOGICAL_DISPLAY_EVENT_SWAPPED:I = 0x4

.field private static final MSG_TRANSITION_TO_PENDING_DEVICE_STATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LogicalDisplayMapper"

.field private static final TIMEOUT_STATE_TRANSITION_MILLIS:I = 0x1f4

.field private static final UPDATE_STATE_DISABLED:I = 0x2

.field private static final UPDATE_STATE_FLAG_TRANSITION:I = 0x100

.field private static final UPDATE_STATE_MASK:I = 0x3

.field private static final UPDATE_STATE_NEW:I = 0x0

.field private static final UPDATE_STATE_UPDATED:I = 0x1


# instance fields
.field private mBootCompleted:Z

.field private mCurrentLayout:Lcom/android/server/display/layout/Layout;

.field private mDeviceState:I

.field private final mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

.field private final mDeviceStatesOnWhichToSleep:Landroid/util/SparseBooleanArray;

.field private final mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

.field private final mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

.field private final mDisplayGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

.field private final mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

.field private mInteractive:Z

.field private mIsDisplayTransitionInProgress:Z

.field private final mIsFoldable:Z

.field private final mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

.field private final mLogicalDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

.field private mNextBuiltInDisplayId:I

.field private mNextNonDefaultGroupId:I

.field private mPendingDeviceState:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mSingleDisplayDemoMode:Z

.field private final mSupportsConcurrentInternalDisplays:Z

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field private final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field private final mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private final mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

.field private final mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSyncRoot(Lcom/android/server/display/LogicalDisplayMapper;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfinishStateTransitionLocked(Lcom/android/server/display/LogicalDisplayMapper;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/LogicalDisplayMapper$Listener;Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/os/Handler;Lcom/android/server/display/DeviceStateToLayoutMap;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "repo"    # Lcom/android/server/display/DisplayDeviceRepository;
    .param p3, "listener"    # Lcom/android/server/display/LogicalDisplayMapper$Listener;
    .param p4, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "deviceStateToLayoutMap"    # Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 96
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 129
    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextBuiltInDisplayId:I

    .line 132
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 147
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 156
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    .line 161
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 166
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    .line 169
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 170
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 171
    iput v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 175
    const-string/jumbo v2, "persist.sys.muiltdisplay_type"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_58

    goto :goto_59

    :cond_58
    move v0, v1

    :goto_59
    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIsFoldable:Z

    .line 182
    iput-object p4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 183
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    .line 184
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 185
    new-instance v0, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;-><init>(Lcom/android/server/display/LogicalDisplayMapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    .line 186
    iput-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 187
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    .line 188
    const-string/jumbo v0, "persist.demo.singledisplay"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSupportsConcurrentInternalDisplays:Z

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSleep:Landroid/util/SparseBooleanArray;

    .line 195
    invoke-virtual {p2, p0}, Lcom/android/server/display/DisplayDeviceRepository;->addListener(Lcom/android/server/display/DisplayDeviceRepository$Listener;)V

    .line 196
    iput-object p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 197
    return-void
.end method

.method private applyLayoutLocked()V
    .registers 12

    .line 1045
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 1046
    .local v0, "oldLayout":Lcom/android/server/display/layout/Layout;
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    iget v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    invoke-virtual {v1, v2}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Previous layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LogicalDisplayMapper"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout;->size()I

    move-result v1

    .line 1051
    .local v1, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_37
    if-ge v3, v1, :cond_95

    .line 1052
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v4, v3}, Lcom/android/server/display/layout/Layout;->getAt(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v4

    .line 1058
    .local v4, "displayLayout":Lcom/android/server/display/layout/Layout$Display;
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v5

    .line 1059
    .local v5, "address":Landroid/view/DisplayAddress;
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    move-result-object v6

    .line 1060
    .local v6, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v6, :cond_6e

    .line 1061
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The display device ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), is not available for the display state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    goto :goto_92

    .line 1068
    :cond_6e
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v7

    .line 1069
    .local v7, "logicalDisplayId":I
    nop

    .line 1070
    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v9

    .line 1071
    .local v9, "newDisplay":Lcom/android/server/display/LogicalDisplay;
    if-nez v9, :cond_7f

    .line 1072
    const/4 v10, 0x0

    invoke-direct {p0, v10, v7}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v9

    .line 1077
    :cond_7f
    invoke-direct {p0, v6, v8}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;Z)Lcom/android/server/display/LogicalDisplay;

    move-result-object v8

    .line 1078
    .local v8, "oldDisplay":Lcom/android/server/display/LogicalDisplay;
    if-eq v9, v8, :cond_88

    .line 1079
    invoke-virtual {v9, v8}, Lcom/android/server/display/LogicalDisplay;->swapDisplaysLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1082
    :cond_88
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_92

    .line 1083
    const/4 v10, -0x1

    invoke-direct {p0, v9, v10}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayPhase(Lcom/android/server/display/LogicalDisplay;I)V

    .line 1051
    .end local v4    # "displayLayout":Lcom/android/server/display/layout/Layout$Display;
    .end local v5    # "address":Landroid/view/DisplayAddress;
    .end local v6    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v7    # "logicalDisplayId":I
    .end local v8    # "oldDisplay":Lcom/android/server/display/LogicalDisplay;
    .end local v9    # "newDisplay":Lcom/android/server/display/LogicalDisplay;
    :cond_92
    :goto_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 1087
    .end local v3    # "i":I
    :cond_95
    return-void
.end method

.method private areAllTransitioningDisplaysOffLocked()Z
    .registers 8

    .line 611
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 612
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/4 v2, 0x1

    if-ge v1, v0, :cond_2c

    .line 613
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 614
    .local v3, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPhase()I

    move-result v4

    if-eqz v4, :cond_19

    .line 615
    goto :goto_29

    .line 618
    :cond_19
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    .line 619
    .local v4, "device":Lcom/android/server/display/DisplayDevice;
    if-eqz v4, :cond_29

    .line 620
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    .line 621
    .local v5, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    if-eq v6, v2, :cond_29

    .line 622
    const/4 v2, 0x0

    return v2

    .line 612
    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v4    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v5    # "info":Lcom/android/server/display/DisplayDeviceInfo;
    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 626
    .end local v1    # "i":I
    :cond_2c
    return v2
.end method

.method private assignDisplayGroupIdLocked(Z)I
    .registers 4
    .param p1, "isOwnDisplayGroup"    # Z

    .line 1124
    if-eqz p1, :cond_9

    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 11
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 938
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 941
    .local v0, "displayId":I
    invoke-virtual {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v1

    .line 942
    .local v1, "groupId":I
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v2

    .line 945
    .local v2, "oldGroup":Lcom/android/server/display/DisplayGroup;
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 946
    .local v3, "info":Landroid/view/DisplayInfo;
    iget v4, v3, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 v4, v4, 0x100

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1a

    move v4, v5

    goto :goto_1b

    :cond_1a
    move v4, v6

    .line 947
    .local v4, "needsOwnDisplayGroup":Z
    :goto_1b
    if-eqz v1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v5, v6

    .line 948
    .local v5, "hasOwnDisplayGroup":Z
    :goto_1f
    const/4 v6, -0x1

    if-eq v1, v6, :cond_24

    if-eq v5, v4, :cond_28

    .line 950
    :cond_24
    invoke-direct {p0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupIdLocked(Z)I

    move-result v1

    .line 954
    :cond_28
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v6

    .line 955
    .local v6, "newGroup":Lcom/android/server/display/DisplayGroup;
    if-nez v6, :cond_39

    .line 956
    new-instance v7, Lcom/android/server/display/DisplayGroup;

    invoke-direct {v7, v1}, Lcom/android/server/display/DisplayGroup;-><init>(I)V

    move-object v6, v7

    .line 957
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 959
    :cond_39
    if-eq v2, v6, :cond_80

    .line 960
    if-eqz v2, :cond_40

    .line 961
    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayGroup;->removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 963
    :cond_40
    invoke-virtual {v6, p1}, Lcom/android/server/display/DisplayGroup;->addDisplayLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 964
    invoke-virtual {p1, v1}, Lcom/android/server/display/LogicalDisplay;->updateDisplayGroupIdLocked(I)V

    .line 965
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting new display group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for display "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", from previous group: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 967
    if-eqz v2, :cond_70

    invoke-virtual {v2}, Lcom/android/server/display/DisplayGroup;->getGroupId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_73

    :cond_70
    const-string/jumbo v8, "null"

    :goto_73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 965
    const-string v8, "LogicalDisplayMapper"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_80
    return-void
.end method

.method private assignLayerStackLocked(I)I
    .registers 2
    .param p1, "displayId"    # I

    .line 1162
    return p1
.end method

.method private createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;
    .registers 6
    .param p1, "displayDevice"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "displayId"    # I

    .line 1100
    invoke-direct {p0, p2}, Lcom/android/server/display/LogicalDisplayMapper;->assignLayerStackLocked(I)I

    move-result v0

    .line 1101
    .local v0, "layerStack":I
    new-instance v1, Lcom/android/server/display/LogicalDisplay;

    invoke-direct {v1, p2, v0, p1}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;)V

    .line 1102
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;)V

    .line 1103
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1104
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayPhase(Lcom/android/server/display/LogicalDisplay;I)V

    .line 1105
    return-object v1
.end method

.method private displayEventToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "msg"    # I

    .line 1174
    packed-switch p1, :pswitch_data_1a

    .line 1188
    const/4 v0, 0x0

    return-object v0

    .line 1178
    :pswitch_5
    const-string/jumbo v0, "transition"

    return-object v0

    .line 1182
    :pswitch_9
    const-string v0, "framerate_override"

    return-object v0

    .line 1184
    :pswitch_c
    const-string/jumbo v0, "swapped"

    return-object v0

    .line 1186
    :pswitch_10
    const-string/jumbo v0, "removed"

    return-object v0

    .line 1180
    :pswitch_14
    const-string v0, "changed"

    return-object v0

    .line 1176
    :pswitch_17
    const-string v0, "added"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method private finishStateTransitionLocked(Z)V
    .registers 8
    .param p1, "force"    # Z

    .line 644
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 645
    return-void

    .line 648
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    iget v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 649
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    if-eqz v0, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v1

    .line 651
    .local v0, "waitingToWakeDevice":Z
    :goto_25
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSleep:Landroid/util/SparseBooleanArray;

    iget v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSleep:Landroid/util/SparseBooleanArray;

    iget v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 652
    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_43

    iget-boolean v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    if-eqz v3, :cond_43

    iget-boolean v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    if-eqz v3, :cond_43

    move v3, v2

    goto :goto_44

    :cond_43
    move v3, v1

    .line 655
    .local v3, "waitingToSleepDevice":Z
    :goto_44
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    move-result v4

    .line 656
    .local v4, "displaysOff":Z
    if-eqz v4, :cond_4f

    if-nez v0, :cond_4f

    if-nez v3, :cond_4f

    move v1, v2

    .line 659
    .local v1, "isReadyToTransition":Z
    :cond_4f
    if-nez v1, :cond_53

    if-eqz p1, :cond_5b

    .line 660
    :cond_53
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->transitionToPendingStateLocked()V

    .line 661
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;->removeMessages(I)V

    .line 667
    :cond_5b
    return-void
.end method

.method private getDisplayLocked(Lcom/android/server/display/DisplayDevice;Z)Lcom/android/server/display/LogicalDisplay;
    .registers 8
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "includeDisabled"    # Z

    .line 263
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 264
    return-object v0

    .line 266
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 267
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1f

    .line 268
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 269
    .local v3, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    if-ne v4, p1, :cond_1c

    .line 276
    return-object v3

    .line 267
    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 280
    .end local v2    # "i":I
    :cond_1f
    return-object v0
.end method

.method private handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 4
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 670
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 675
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_d

    .line 676
    invoke-direct {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->initializeDefaultDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 680
    :cond_d
    const/4 v1, 0x0

    .line 681
    invoke-static {v1}, Lcom/android/server/display/layout/Layout;->assignDisplayIdLocked(Z)I

    move-result v1

    .line 680
    invoke-direct {p0, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 683
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 684
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 685
    return-void
.end method

.method private handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 12
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 688
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v0

    .line 689
    .local v0, "layout":Lcom/android/server/display/layout/Layout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v2

    .line 690
    .local v2, "layoutDisplay":Lcom/android/server/display/layout/Layout$Display;
    if-nez v2, :cond_f

    .line 691
    return-void

    .line 693
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    .line 695
    .local v3, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    invoke-virtual {v2}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 696
    invoke-virtual {v0, v1}, Lcom/android/server/display/layout/Layout;->removeDisplayLocked(I)V

    .line 699
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_5a

    .line 700
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 701
    .local v4, "nextDisplay":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    .line 702
    .local v5, "nextDevice":Lcom/android/server/display/DisplayDevice;
    if-nez v5, :cond_3a

    .line 703
    goto :goto_57

    .line 705
    :cond_3a
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v6

    .line 707
    .local v6, "nextDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget v7, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-eqz v7, :cond_57

    iget-object v7, v6, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iget-object v9, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 709
    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_57

    .line 710
    iget-object v7, v6, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {v0, v7, v8, v8}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZ)Lcom/android/server/display/layout/Layout$Display;

    .line 712
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 713
    return-void

    .line 699
    .end local v4    # "nextDisplay":Lcom/android/server/display/LogicalDisplay;
    .end local v5    # "nextDevice":Lcom/android/server/display/DisplayDevice;
    .end local v6    # "nextDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    :cond_57
    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 717
    .end local v1    # "i":I
    :cond_5a
    return-void
.end method

.method private initializeDefaultDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 7
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1132
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v0

    .line 1142
    .local v0, "layout":Lcom/android/server/display/layout/Layout;
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 1146
    .local v1, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIsFoldable:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_15

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-eq v2, v3, :cond_15

    .line 1147
    return-void

    .line 1151
    :cond_15
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v4

    if-nez v4, :cond_22

    .line 1152
    iget-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {v0, v2, v3, v3}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZ)Lcom/android/server/display/layout/Layout$Display;

    goto :goto_27

    .line 1154
    :cond_22
    iget-object v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZ)Lcom/android/server/display/layout/Layout$Display;

    .line 1157
    :goto_27
    return-void
.end method

.method private resetLayoutLocked(III)V
    .registers 24
    .param p1, "fromState"    # I
    .param p2, "toState"    # I
    .param p3, "phase"    # I

    .line 984
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v2

    .line 985
    .local v2, "fromLayout":Lcom/android/server/display/layout/Layout;
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    move/from16 v5, p2

    invoke-virtual {v4, v5}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v4

    .line 987
    .local v4, "toLayout":Lcom/android/server/display/layout/Layout;
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 988
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1b
    if-ge v7, v6, :cond_c4

    .line 989
    iget-object v8, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/LogicalDisplay;

    .line 990
    .local v8, "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v9

    .line 991
    .local v9, "displayId":I
    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v10

    .line 992
    .local v10, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v10, :cond_33

    .line 994
    move-object/from16 v17, v2

    goto/16 :goto_ba

    .line 999
    :cond_33
    invoke-virtual {v10}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 1003
    .local v11, "address":Landroid/view/DisplayAddress;
    const/4 v12, 0x0

    if-eqz v11, :cond_41

    invoke-virtual {v2, v11}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v13

    goto :goto_42

    :cond_41
    move-object v13, v12

    .line 1005
    .local v13, "fromDisplay":Lcom/android/server/display/layout/Layout$Display;
    :goto_42
    if-eqz v11, :cond_48

    invoke-virtual {v4, v11}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v12

    .line 1009
    .local v12, "toDisplay":Lcom/android/server/display/layout/Layout$Display;
    :cond_48
    if-eqz v13, :cond_54

    invoke-virtual {v13}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v16

    if-eqz v16, :cond_51

    goto :goto_54

    :cond_51
    const/16 v16, 0x0

    goto :goto_56

    :cond_54
    :goto_54
    const/16 v16, 0x1

    :goto_56
    move/from16 v17, v16

    .line 1010
    .local v17, "wasEnabled":Z
    if-eqz v12, :cond_64

    invoke-virtual {v12}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v16

    if-eqz v16, :cond_61

    goto :goto_64

    :cond_61
    const/16 v16, 0x0

    goto :goto_66

    :cond_64
    :goto_64
    const/16 v16, 0x1

    :goto_66
    move/from16 v18, v16

    .line 1012
    .local v18, "willBeEnabled":Z
    if-eqz v13, :cond_78

    if-eqz v12, :cond_78

    .line 1013
    invoke-virtual {v13}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v15

    invoke-virtual {v12}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v14

    if-eq v15, v14, :cond_78

    const/4 v14, 0x1

    goto :goto_79

    :cond_78
    const/4 v14, 0x0

    .line 1021
    .local v14, "deviceHasNewLogicalDisplayId":Z
    :goto_79
    nop

    .line 1022
    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->getPhase()I

    move-result v15

    if-eqz v15, :cond_8e

    move/from16 v15, v17

    move-object/from16 v17, v2

    move/from16 v2, v18

    .end local v18    # "willBeEnabled":Z
    .local v2, "willBeEnabled":Z
    .local v15, "wasEnabled":Z
    .local v17, "fromLayout":Lcom/android/server/display/layout/Layout;
    if-ne v15, v2, :cond_94

    if-eqz v14, :cond_8b

    goto :goto_94

    :cond_8b
    const/16 v18, 0x0

    goto :goto_96

    .end local v15    # "wasEnabled":Z
    .local v2, "fromLayout":Lcom/android/server/display/layout/Layout;
    .local v17, "wasEnabled":Z
    .restart local v18    # "willBeEnabled":Z
    :cond_8e
    move/from16 v15, v17

    move-object/from16 v17, v2

    move/from16 v2, v18

    .end local v18    # "willBeEnabled":Z
    .local v2, "willBeEnabled":Z
    .restart local v15    # "wasEnabled":Z
    .local v17, "fromLayout":Lcom/android/server/display/layout/Layout;
    :cond_94
    :goto_94
    const/16 v18, 0x1

    .line 1026
    .local v18, "isTransitioning":Z
    :goto_96
    if-eqz v18, :cond_b8

    .line 1027
    invoke-direct {v0, v8, v1}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayPhase(Lcom/android/server/display/LogicalDisplay;I)V

    .line 1028
    if-nez v1, :cond_b5

    .line 1029
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    move/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "willBeEnabled":Z
    .local v19, "willBeEnabled":Z
    invoke-virtual {v1, v9, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1030
    .local v1, "oldState":I
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    or-int/lit16 v3, v1, 0x100

    invoke-virtual {v2, v9, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1032
    if-eqz v14, :cond_ba

    if-nez v9, :cond_ba

    .line 1033
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mIsDisplayTransitionInProgress:Z

    goto :goto_ba

    .line 1028
    .end local v1    # "oldState":I
    .end local v19    # "willBeEnabled":Z
    .restart local v2    # "willBeEnabled":Z
    :cond_b5
    move/from16 v19, v2

    .end local v2    # "willBeEnabled":Z
    .restart local v19    # "willBeEnabled":Z
    goto :goto_ba

    .line 1026
    .end local v19    # "willBeEnabled":Z
    .restart local v2    # "willBeEnabled":Z
    :cond_b8
    move/from16 v19, v2

    .line 988
    .end local v2    # "willBeEnabled":Z
    .end local v8    # "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    .end local v9    # "displayId":I
    .end local v10    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v11    # "address":Landroid/view/DisplayAddress;
    .end local v12    # "toDisplay":Lcom/android/server/display/layout/Layout$Display;
    .end local v13    # "fromDisplay":Lcom/android/server/display/layout/Layout$Display;
    .end local v14    # "deviceHasNewLogicalDisplayId":Z
    .end local v15    # "wasEnabled":Z
    .end local v18    # "isTransitioning":Z
    :cond_ba
    :goto_ba
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, p1

    move/from16 v1, p3

    move-object/from16 v2, v17

    goto/16 :goto_1b

    .line 1039
    .end local v7    # "i":I
    .end local v17    # "fromLayout":Lcom/android/server/display/layout/Layout;
    .local v2, "fromLayout":Lcom/android/server/display/layout/Layout;
    :cond_c4
    return-void
.end method

.method private sendUpdatesForDisplaysLocked(I)V
    .registers 8
    .param p1, "msg"    # I

    .line 894
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_33

    .line 895
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 896
    .local v2, "currMsg":I
    if-eq v2, p1, :cond_13

    .line 897
    goto :goto_30

    .line 900
    :cond_13
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 901
    .local v3, "id":I
    invoke-virtual {p0, v3, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    .line 908
    .local v4, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {v5, v4, p1}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onLogicalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 909
    const/4 v5, 0x3

    if-ne p1, v5, :cond_30

    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v5

    if-nez v5, :cond_30

    .line 912
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 894
    .end local v2    # "currMsg":I
    .end local v3    # "id":I
    .end local v4    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_30
    :goto_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 915
    .end local v0    # "i":I
    :cond_33
    return-void
.end method

.method private sendUpdatesForGroupsLocked(I)V
    .registers 6
    .param p1, "msg"    # I

    .line 921
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_29

    .line 922
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 923
    .local v1, "currMsg":I
    if-eq v1, p1, :cond_13

    .line 924
    goto :goto_26

    .line 927
    :cond_13
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 928
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {v3, v2, p1}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onDisplayGroupEventLocked(II)V

    .line 929
    const/4 v3, 0x3

    if-ne p1, v3, :cond_26

    .line 932
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 921
    .end local v1    # "currMsg":I
    .end local v2    # "id":I
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 935
    .end local v0    # "i":I
    :cond_29
    return-void
.end method

.method private setDisplayPhase(Lcom/android/server/display/LogicalDisplay;I)V
    .registers 8
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;
    .param p2, "phase"    # I

    .line 1109
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 1110
    .local v0, "displayId":I
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1112
    .local v1, "info":Landroid/view/DisplayInfo;
    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    iget v2, v1, Landroid/view/DisplayInfo;->type:I

    if-eq v2, v3, :cond_12

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    move v2, v3

    .line 1114
    .local v2, "disallowSecondaryDisplay":Z
    const/4 v3, -0x1

    if-eq p2, v3, :cond_36

    if-eqz v2, :cond_36

    .line 1115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not creating a logical display for a secondary display because single display demo mode is enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1116
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1115
    const-string v4, "LogicalDisplayMapper"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    const/4 p2, -0x1

    .line 1120
    :cond_36
    invoke-virtual {p1, p2}, Lcom/android/server/display/LogicalDisplay;->setPhase(I)V

    .line 1121
    return-void
.end method

.method private toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;
    .registers 6
    .param p1, "input"    # [I

    .line 1166
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1167
    .local v0, "retval":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-eqz p1, :cond_15

    array-length v2, p1

    if-ge v1, v2, :cond_15

    .line 1168
    aget v2, p1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1167
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1170
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method private transitionToPendingStateLocked()V
    .registers 4

    .line 630
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(III)V

    .line 631
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 632
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 634
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->finishDisplayTransitionLocked()V

    .line 635
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 636
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 638
    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/DisplayManagerServiceStub;->notifyFinishDisplayTransitionLocked()V

    .line 640
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    invoke-interface {v0, v1}, Lcom/android/server/am/SmartPowerServiceStub;->onDisplayDeviceStateChangeLocked(I)V

    .line 641
    return-void
.end method

.method private updateLogicalDisplaysLocked()V
    .registers 17

    .line 729
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_a
    const/4 v3, 0x4

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-ltz v1, :cond_110

    .line 730
    iget-object v9, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 731
    .local v9, "displayId":I
    iget-object v10, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/display/LogicalDisplay;

    .line 733
    .local v10, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 734
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v10, v11}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    .line 736
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v10, v11}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;)V

    .line 737
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v11

    .line 739
    .local v11, "newDisplayInfo":Landroid/view/DisplayInfo;
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v9, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 740
    .local v12, "storedState":I
    and-int/lit8 v13, v12, 0x3

    .line 741
    .local v13, "updateState":I
    and-int/lit16 v14, v12, 0x100

    if-eqz v14, :cond_44

    move v14, v2

    goto :goto_45

    :cond_44
    move v14, v6

    .line 742
    .local v14, "isTransitioning":Z
    :goto_45
    if-ne v13, v2, :cond_48

    move v6, v2

    .line 745
    .local v6, "wasPreviouslyUpdated":Z
    :cond_48
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v15

    const-string v4, "LogicalDisplayMapper"

    if-nez v15, :cond_89

    .line 746
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseIntArray;->delete(I)V

    .line 752
    nop

    .line 753
    invoke-virtual {v0, v9, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(IZ)I

    move-result v3

    .line 752
    invoke-virtual {v0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v3

    .line 756
    .local v3, "displayGroup":Lcom/android/server/display/DisplayGroup;
    if-eqz v3, :cond_63

    .line 757
    invoke-virtual {v3, v10}, Lcom/android/server/display/DisplayGroup;->removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 760
    :cond_63
    if-eqz v6, :cond_82

    .line 763
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing display: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v9, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_10c

    .line 767
    :cond_82
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 769
    goto/16 :goto_10c

    .line 809
    .end local v3    # "displayGroup":Lcom/android/server/display/DisplayGroup;
    :cond_89
    if-nez v6, :cond_b4

    .line 810
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding new display: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-direct {v0, v10}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 812
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_107

    .line 815
    :cond_b4
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v4, v4, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v8, v11, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c9

    .line 817
    invoke-direct {v0, v10}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 818
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v9, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_107

    .line 821
    :cond_c9
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v3, v11}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v3

    if-nez v3, :cond_da

    .line 823
    invoke-direct {v0, v10}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 824
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v9, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_107

    .line 827
    :cond_da
    if-eqz v14, :cond_e2

    .line 828
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v9, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_107

    .line 832
    :cond_e2
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getPendingFrameRateOverrideUids()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f3

    .line 833
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    const/4 v4, 0x5

    invoke-virtual {v3, v9, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_107

    .line 841
    :cond_f3
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v10, v3}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    .line 842
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v3, v4}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v3

    if-nez v3, :cond_107

    .line 843
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v9, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 847
    :cond_107
    :goto_107
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 729
    .end local v6    # "wasPreviouslyUpdated":Z
    .end local v9    # "displayId":I
    .end local v10    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v11    # "newDisplayInfo":Landroid/view/DisplayInfo;
    .end local v12    # "storedState":I
    .end local v13    # "updateState":I
    .end local v14    # "isTransitioning":Z
    :goto_10c
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_a

    .line 854
    .end local v1    # "i":I
    :cond_110
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_117
    if-ltz v1, :cond_167

    .line 855
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 856
    .local v4, "groupId":I
    iget-object v9, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/display/DisplayGroup;

    .line 857
    .local v9, "group":Lcom/android/server/display/DisplayGroup;
    iget-object v10, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    const/4 v11, -0x1

    if-le v10, v11, :cond_132

    move v10, v2

    goto :goto_133

    :cond_132
    move v10, v6

    .line 858
    .local v10, "wasPreviouslyUpdated":Z
    :goto_133
    invoke-virtual {v9}, Lcom/android/server/display/DisplayGroup;->getChangeCountLocked()I

    move-result v11

    .line 860
    .local v11, "changeCount":I
    invoke-virtual {v9}, Lcom/android/server/display/DisplayGroup;->isEmptyLocked()Z

    move-result v12

    if-eqz v12, :cond_14a

    .line 861
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 862
    if-eqz v10, :cond_164

    .line 863
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_164

    .line 866
    :cond_14a
    if-nez v10, :cond_152

    .line 867
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_15f

    .line 868
    :cond_152
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    if-eq v12, v11, :cond_15f

    .line 869
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 871
    :cond_15f
    :goto_15f
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 854
    .end local v4    # "groupId":I
    .end local v9    # "group":Lcom/android/server/display/DisplayGroup;
    .end local v10    # "wasPreviouslyUpdated":Z
    .end local v11    # "changeCount":I
    :cond_164
    :goto_164
    add-int/lit8 v1, v1, -0x1

    goto :goto_117

    .line 876
    .end local v1    # "i":I
    :cond_167
    invoke-direct {v0, v5}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 877
    invoke-direct {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 878
    invoke-direct {v0, v8}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 879
    invoke-direct {v0, v7}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 880
    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 881
    invoke-direct {v0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 882
    invoke-direct {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 883
    invoke-direct {v0, v7}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 884
    invoke-direct {v0, v8}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 886
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 887
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 888
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 425
    const-string v0, "LogicalDisplayMapper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 427
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSingleDisplayDemoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCurrentLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDeviceStatesOnWhichToWakeUp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDeviceStatesOnWhichToSleep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSleep:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mInteractive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsDisplayTransitionInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIsDisplayTransitionInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 438
    .local v1, "logicalDisplayCount":I
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logical Displays: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 440
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c5
    if-ge v2, v1, :cond_100

    .line 441
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 442
    .local v3, "displayId":I
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 443
    .local v4, "display":Lcom/android/server/display/LogicalDisplay;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 445
    invoke-virtual {v4, v0}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 446
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 447
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 440
    .end local v3    # "displayId":I
    .end local v4    # "display":Lcom/android/server/display/LogicalDisplay;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c5

    .line 449
    .end local v2    # "i":I
    :cond_100
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v2, v0}, Lcom/android/server/display/DeviceStateToLayoutMap;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    .line 450
    return-void
.end method

.method public finishDisplayTransitionLocked()V
    .registers 2

    .line 475
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIsDisplayTransitionInProgress:Z

    if-eqz v0, :cond_7

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIsDisplayTransitionInProgress:Z

    .line 478
    :cond_7
    return-void
.end method

.method public forEachLocked(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;)V"
        }
    .end annotation

    .line 315
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/display/LogicalDisplay;>;"
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 316
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 322
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 325
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method public getDisplayGroupIdFromDisplayIdLocked(I)I
    .registers 8
    .param p1, "displayId"    # I

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    .line 330
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 331
    return v1

    .line 334
    :cond_8
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 335
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_29

    .line 336
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayGroup;

    .line 337
    .local v4, "displayGroup":Lcom/android/server/display/DisplayGroup;
    invoke-virtual {v4, v0}, Lcom/android/server/display/DisplayGroup;->containsLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 338
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    return v1

    .line 335
    .end local v4    # "displayGroup":Lcom/android/server/display/DisplayGroup;
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 342
    .end local v3    # "i":I
    :cond_29
    return v1
.end method

.method public getDisplayGroupIdFromDisplayIdLocked(IZ)I
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "includeDisabled"    # Z

    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    .line 348
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 349
    return v1

    .line 352
    :cond_8
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 353
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_29

    .line 354
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayGroup;

    .line 355
    .local v4, "displayGroup":Lcom/android/server/display/DisplayGroup;
    invoke-virtual {v4, v0}, Lcom/android/server/display/DisplayGroup;->containsLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 356
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    return v1

    .line 353
    .end local v4    # "displayGroup":Lcom/android/server/display/DisplayGroup;
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 360
    .end local v3    # "i":I
    :cond_29
    return v1
.end method

.method public getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;
    .registers 3
    .param p1, "groupId"    # I

    .line 365
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayGroup;

    return-object v0
.end method

.method public getDisplayIdsLocked(I)[I
    .registers 3
    .param p1, "callingUid"    # I

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayIdsLocked(IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public getDisplayIdsLocked(IZ)[I
    .registers 11
    .param p1, "callingUid"    # I
    .param p2, "includeDisabledDisplays"    # Z

    .line 292
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 293
    .local v0, "count":I
    new-array v1, v0, [I

    .line 294
    .local v1, "displayIds":[I
    const/4 v2, 0x0

    .line 295
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v0, :cond_2c

    .line 296
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 303
    .local v4, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 304
    .local v5, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v5, p1}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 305
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "n":I
    .local v6, "n":I
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v1, v2

    move v2, v6

    .line 295
    .end local v4    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v5    # "info":Landroid/view/DisplayInfo;
    .end local v6    # "n":I
    .restart local v2    # "n":I
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 308
    .end local v3    # "i":I
    :cond_2c
    if-eq v2, v0, :cond_33

    .line 309
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    .line 311
    :cond_33
    return-object v1
.end method

.method public getDisplayInfoForStateLocked(III)Ljava/util/Set;
    .registers 19
    .param p1, "deviceState"    # I
    .param p2, "displayId"    # I
    .param p3, "groupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/Set<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation

    .line 380
    move-object v0, p0

    move/from16 v1, p1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 381
    .local v2, "displayInfos":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/DisplayInfo;>;"
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v3, v1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v3

    .line 382
    .local v3, "layout":Lcom/android/server/display/layout/Layout;
    invoke-virtual {v3}, Lcom/android/server/display/layout/Layout;->size()I

    move-result v4

    .line 383
    .local v4, "layoutSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_13
    if-ge v5, v4, :cond_a0

    .line 384
    invoke-virtual {v3, v5}, Lcom/android/server/display/layout/Layout;->getAt(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v6

    .line 385
    .local v6, "displayLayout":Lcom/android/server/display/layout/Layout$Display;
    if-nez v6, :cond_21

    .line 386
    move/from16 v13, p2

    move/from16 v14, p3

    goto/16 :goto_9c

    .line 393
    :cond_21
    invoke-virtual {v6}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v7

    .line 394
    .local v7, "address":Landroid/view/DisplayAddress;
    iget-object v8, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v8, v7}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    move-result-object v8

    .line 395
    .local v8, "device":Lcom/android/server/display/DisplayDevice;
    const-string v9, "), is not available for the display state "

    const-string v10, "LogicalDisplayMapper"

    if-nez v8, :cond_54

    .line 396
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The display device ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    move/from16 v13, p2

    move/from16 v14, p3

    goto :goto_9c

    .line 402
    :cond_54
    invoke-virtual {v6}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v11

    .line 403
    .local v11, "logicalDisplayId":I
    nop

    .line 404
    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v12

    .line 405
    .local v12, "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    if-nez v12, :cond_83

    .line 406
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The logical display ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    move/from16 v13, p2

    move/from16 v14, p3

    goto :goto_9c

    .line 410
    :cond_83
    invoke-virtual {v12}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v9

    .line 411
    .local v9, "temp":Landroid/view/DisplayInfo;
    new-instance v10, Landroid/view/DisplayInfo;

    invoke-direct {v10, v9}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 412
    .local v10, "displayInfo":Landroid/view/DisplayInfo;
    iget v13, v10, Landroid/view/DisplayInfo;->displayGroupId:I

    move/from16 v14, p3

    if-eq v13, v14, :cond_95

    .line 414
    move/from16 v13, p2

    goto :goto_9c

    .line 418
    :cond_95
    move/from16 v13, p2

    iput v13, v10, Landroid/view/DisplayInfo;->displayId:I

    .line 419
    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 383
    .end local v6    # "displayLayout":Lcom/android/server/display/layout/Layout$Display;
    .end local v7    # "address":Landroid/view/DisplayAddress;
    .end local v8    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v9    # "temp":Landroid/view/DisplayInfo;
    .end local v10    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v11    # "logicalDisplayId":I
    .end local v12    # "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    :goto_9c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_13

    :cond_a0
    move/from16 v13, p2

    move/from16 v14, p3

    .line 421
    .end local v5    # "i":I
    return-object v2
.end method

.method public getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;
    .registers 3
    .param p1, "displayId"    # I

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    return-object v0
.end method

.method getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "includeDisabled"    # Z

    .line 245
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    return-object v0
.end method

.method public getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .registers 3
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 252
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;Z)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    return-object v0
.end method

.method hasValidLayout(I)Z
    .registers 11
    .param p1, "state"    # I

    .line 454
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v0

    .line 455
    .local v0, "layout":Lcom/android/server/display/layout/Layout;
    invoke-virtual {v0}, Lcom/android/server/display/layout/Layout;->size()I

    move-result v1

    .line 456
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    const-string v3, "LogicalDisplayMapper"

    if-ge v2, v1, :cond_4a

    .line 457
    invoke-virtual {v0, v2}, Lcom/android/server/display/layout/Layout;->getAt(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v4

    .line 458
    .local v4, "display":Lcom/android/server/display/layout/Layout$Display;
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v5

    .line 459
    .local v5, "address":Landroid/view/DisplayAddress;
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    move-result-object v6

    .line 460
    .local v6, "device":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_47

    if-eqz v6, :cond_47

    .line 461
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The enabled display device ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), is available for the display state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v3, 0x1

    return v3

    .line 456
    .end local v4    # "display":Lcom/android/server/display/layout/Layout$Display;
    .end local v5    # "address":Landroid/view/DisplayAddress;
    .end local v6    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 466
    .end local v2    # "i":I
    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No available display device for the display state "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v2, 0x0

    return v2
.end method

.method public isDisplayTransitionInProgressLocked()Z
    .registers 2

    .line 471
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIsDisplayTransitionInProgress:Z

    return v0
.end method

.method synthetic lambda$setDeviceStateLocked$0$com-android-server-display-LogicalDisplayMapper()V
    .registers 6

    .line 532
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/16 v3, 0xc

    const-string/jumbo v4, "server.display:unfold"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 534
    return-void
.end method

.method synthetic lambda$setDeviceStateLocked$1$com-android-server-display-LogicalDisplayMapper()V
    .registers 6

    .line 538
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 540
    return-void
.end method

.method onBootCompleted()V
    .registers 3

    .line 549
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 550
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 551
    monitor-exit v0

    .line 552
    return-void

    .line 551
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public onDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .registers 4
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "event"    # I

    .line 201
    packed-switch p2, :pswitch_data_18

    goto :goto_17

    .line 221
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 222
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    goto :goto_17

    .line 213
    :pswitch_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    .line 214
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 215
    goto :goto_17

    .line 206
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 207
    nop

    .line 225
    :goto_17
    return-void

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_b
        :pswitch_4
    .end packed-switch
.end method

.method onEarlyInteractivityChange(Z)V
    .registers 4
    .param p1, "interactive"    # Z

    .line 555
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 556
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    if-eq v1, p1, :cond_d

    .line 557
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 558
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    .line 560
    :cond_d
    monitor-exit v0

    .line 561
    return-void

    .line 560
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public onTraversalRequested()V
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {v0}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onTraversalRequested()V

    .line 230
    return-void
.end method

.method setDeviceStateLocked(IZ)V
    .registers 10
    .param p1, "state"    # I
    .param p2, "isOverrideActive"    # Z

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting Transition to state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", from state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interactive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogicalDisplayMapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIsFoldable:Z

    if-eqz v0, :cond_51

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->hasValidLayout(I)Z

    move-result v0

    if-nez v0, :cond_51

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid layout for state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void

    .line 502
    :cond_51
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(III)V

    .line 505
    iput p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 506
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBeWoken(IIZZ)Z

    move-result v0

    .line 508
    .local v0, "wakeDevice":Z
    iget v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    iget v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    iget-boolean v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBePutToSleep(IIZZZ)Z

    move-result v1

    .line 514
    .local v1, "sleepDevice":Z
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    move-result v2

    if-eqz v2, :cond_7f

    if-nez v0, :cond_7f

    if-nez v1, :cond_7f

    .line 515
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->transitionToPendingStateLocked()V

    .line 516
    return-void

    .line 524
    :cond_7f
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 526
    if-nez v0, :cond_86

    if-eqz v1, :cond_9f

    .line 527
    :cond_86
    if-eqz v0, :cond_93

    .line 531
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    new-instance v3, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/LogicalDisplayMapper;)V

    invoke-virtual {v2, v3}, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9f

    .line 535
    :cond_93
    if-eqz v1, :cond_9f

    .line 537
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    new-instance v3, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/LogicalDisplayMapper;)V

    invoke-virtual {v2, v3}, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;->post(Ljava/lang/Runnable;)Z

    .line 544
    :cond_9f
    :goto_9f
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    const/4 v3, 0x1

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 546
    return-void
.end method

.method shouldDeviceBePutToSleep(IIZZZ)Z
    .registers 7
    .param p1, "pendingState"    # I
    .param p2, "currentState"    # I
    .param p3, "isOverrideActive"    # Z
    .param p4, "isInteractive"    # Z
    .param p5, "isBootCompleted"    # Z

    .line 604
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSleep:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSleep:Landroid/util/SparseBooleanArray;

    .line 605
    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_18

    if-nez p3, :cond_18

    if-eqz p4, :cond_18

    if-eqz p5, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 604
    :goto_19
    return v0
.end method

.method shouldDeviceBeWoken(IIZZ)Z
    .registers 6
    .param p1, "pendingState"    # I
    .param p2, "currentState"    # I
    .param p3, "isInteractive"    # Z
    .param p4, "isBootCompleted"    # Z

    .line 579
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 580
    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_16

    if-nez p3, :cond_16

    if-eqz p4, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 579
    :goto_17
    return v0
.end method
