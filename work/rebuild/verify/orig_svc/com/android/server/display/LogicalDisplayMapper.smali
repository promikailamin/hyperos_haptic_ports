.class public Lcom/android/server/display/LogicalDisplayMapper;
.super Ljava/lang/Object;
.source "LogicalDisplayMapper.java"

# interfaces
.implements Lcom/android/server/display/DisplayDeviceRepository$Listener;


# static fields
.field public static final DEBUG:Z

.field public static sNextNonDefaultDisplayId:I


# instance fields
.field public mBootCompleted:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentLayout:Lcom/android/server/display/layout/Layout;

.field public final mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

.field public mDeviceState:Landroid/hardware/devicestate/DeviceState;

.field public final mDeviceStateManagerFlags:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;

.field public mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

.field public final mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

.field public final mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

.field public final mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

.field public final mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

.field public final mDisplayGroupAllocator:Lcom/android/server/display/DisplayGroupAllocator;

.field public final mDisplayGroupIdsByName:Landroid/util/ArrayMap;

.field public final mDisplayGroups:Landroid/util/SparseArray;

.field public final mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

.field public final mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

.field public final mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

.field public final mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

.field public mInteractive:Z

.field public final mIsDisplayAllowedInTopology:Ljava/util/function/Predicate;

.field public final mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

.field public final mLogicalDisplays:Landroid/util/SparseArray;

.field public final mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

.field public mNextNonDefaultGroupId:I

.field public mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSingleDisplayDemoMode:Z

.field public final mSupportsConcurrentInternalDisplays:Z

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field public final mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

.field public final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field public final mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public final mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

.field public final mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

.field public final mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

.field public mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public static synthetic $r8$lambda$180v0r73SgWuHOXH9KeuIhm0OfE(Z)I
    .registers 2

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 240
    :cond_4
    sget p0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    add-int/lit8 v0, p0, 0x1

    sput v0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    return p0
.end method

.method public static synthetic $r8$lambda$CLkgta2MkaptkxpiszN50MW0yV0(Z)I
    .registers 2

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 219
    :cond_4
    sget p0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    add-int/lit8 v0, p0, 0x1

    sput v0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    return p0
.end method

.method public static synthetic $r8$lambda$N8BYO3VRk9SxOshZBRw21dnZJC8(Lcom/android/server/display/LogicalDisplayMapper;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->lambda$setDeviceStateLocked$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ltxpdCphLYKBtSHlpUiAJoWLQCA(Lcom/android/server/display/LogicalDisplayMapper;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->lambda$setDeviceStateLocked$3(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncRoot(Lcom/android/server/display/LogicalDisplayMapper;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfinishStateTransitionLocked(Lcom/android/server/display/LogicalDisplayMapper;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 91
    const-string v0, "LogicalDisplayMapper"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    const/4 v0, 0x1

    .line 120
    sput v0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/utils/FoldSettingProvider;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/LogicalDisplayMapper$Listener;Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/os/Handler;Lcom/android/server/display/DeviceStateToLayoutMap;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/mode/SyntheticModeManager;Lcom/android/server/display/DisplayGroupAllocator;Ljava/util/function/Predicate;)V
    .registers 13

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 126
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 157
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 161
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    .line 164
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 170
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 175
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupIdsByName:Landroid/util/ArrayMap;

    .line 189
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 198
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    .line 203
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 208
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 214
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    .line 217
    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    .line 218
    new-instance v0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda3;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 221
    sget-object v0, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 222
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 223
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 252
    iput-object p5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 253
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mContext:Landroid/content/Context;

    .line 254
    const-class p5, Landroid/os/PowerManager;

    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/PowerManager;

    iput-object p5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    .line 255
    invoke-virtual {p5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p5

    iput-boolean p5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 256
    new-instance p5, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    invoke-virtual {p6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p6

    invoke-direct {p5, p0, p6}, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;-><init>(Lcom/android/server/display/LogicalDisplayMapper;Landroid/os/Looper;)V

    iput-object p5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    .line 257
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 258
    iput-object p4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    .line 259
    iput-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    .line 260
    const-string/jumbo p2, "persist.demo.singledisplay"

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x1110290

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSupportsConcurrentInternalDisplays:Z

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x1070056

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/display/LogicalDisplayMapper;->toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1070055

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    .line 268
    invoke-virtual {p3, p0}, Lcom/android/server/display/DisplayDeviceRepository;->addListener(Lcom/android/server/display/DisplayDeviceRepository$Listener;)V

    .line 269
    iput-object p7, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 270
    iput-object p8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 271
    iput-object p9, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    .line 272
    new-instance p1, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlagsImpl;

    invoke-direct {p1}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlagsImpl;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateManagerFlags:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;

    .line 273
    iput-object p10, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupAllocator:Lcom/android/server/display/DisplayGroupAllocator;

    .line 274
    iput-object p11, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIsDisplayAllowedInTopology:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/utils/FoldSettingProvider;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/LogicalDisplayMapper$Listener;Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;Ljava/util/function/Predicate;)V
    .registers 21

    move-object/from16 v8, p7

    .line 238
    new-instance v7, Lcom/android/server/display/DeviceStateToLayoutMap;

    new-instance v0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v7, v0, v8}, Lcom/android/server/display/DeviceStateToLayoutMap;-><init>(Lcom/android/server/display/layout/DisplayIdProducer;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    new-instance v9, Lcom/android/server/display/mode/SyntheticModeManager;

    invoke-direct {v9, v8}, Lcom/android/server/display/mode/SyntheticModeManager;-><init>(Lcom/android/server/display/feature/DisplayManagerFlags;)V

    new-instance v10, Lcom/android/server/display/DisplayGroupAllocator;

    invoke-direct {v10, p1}, Lcom/android/server/display/DisplayGroupAllocator;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/server/display/LogicalDisplayMapper;-><init>(Landroid/content/Context;Lcom/android/server/utils/FoldSettingProvider;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/LogicalDisplayMapper$Listener;Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/os/Handler;Lcom/android/server/display/DeviceStateToLayoutMap;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/mode/SyntheticModeManager;Lcom/android/server/display/DisplayGroupAllocator;Ljava/util/function/Predicate;)V

    return-void
.end method


# virtual methods
.method public final applyLayoutLocked()V
    .registers 11

    .line 1236
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 1237
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 1238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Previous layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogicalDisplayMapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v0}, Lcom/android/server/display/layout/Layout;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_38
    if-ge v3, v0, :cond_f1

    .line 1243
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v4, v3}, Lcom/android/server/display/layout/Layout;->getAt(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v4

    .line 1249
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v5

    .line 1250
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    move-result-object v6

    if-nez v6, :cond_70

    .line 1252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyLayoutLocked: The display device ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "), is not available for the display state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 1253
    invoke-virtual {v5}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1252
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ed

    .line 1259
    :cond_70
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v5

    .line 1261
    invoke-virtual {p0, v5}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v7

    if-nez v7, :cond_81

    const/4 v7, 0x0

    .line 1264
    invoke-virtual {p0, v7, v5}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v7

    const/4 v5, 0x1

    goto :goto_82

    :cond_81
    move v5, v2

    .line 1270
    :goto_82
    invoke-virtual {p0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v8

    if-eq v7, v8, :cond_98

    if-nez v5, :cond_95

    .line 1274
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    if-eqz v5, :cond_95

    .line 1275
    invoke-virtual {v7}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v9

    invoke-interface {v5, v9}, Lcom/android/server/policy/WindowManagerPolicy;->onDisplaySwitchStart(I)V

    .line 1278
    :cond_95
    invoke-virtual {v7, v8}, Lcom/android/server/display/LogicalDisplay;->swapDisplaysLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1280
    :cond_98
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v5

    .line 1282
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getPosition()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/server/display/LogicalDisplay;->setDevicePositionLocked(I)V

    .line 1283
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getLeadDisplayId()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/server/display/LogicalDisplay;->setLeadDisplayLocked(I)V

    .line 1285
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getRefreshRateZoneId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRange(Ljava/lang/String;)Landroid/view/SurfaceControl$RefreshRateRange;

    move-result-object v6

    .line 1284
    invoke-virtual {v7, v6}, Lcom/android/server/display/LogicalDisplay;->updateLayoutLimitedRefreshRateLocked(Landroid/view/SurfaceControl$RefreshRateRange;)V

    .line 1289
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getRefreshRateThermalThrottlingMapId()Ljava/lang/String;

    move-result-object v6

    .line 1288
    invoke-virtual {v5, v6}, Lcom/android/server/display/DisplayDeviceConfig;->getThermalRefreshRateThrottlingData(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v5

    .line 1287
    invoke-virtual {v7, v5}, Lcom/android/server/display/LogicalDisplay;->updateThermalRefreshRateThrottling(Landroid/util/SparseArray;)V

    .line 1292
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v5

    invoke-virtual {p0, v7, v5}, Lcom/android/server/display/LogicalDisplayMapper;->setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 1294
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getThermalBrightnessThrottlingMapId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "default"

    if-nez v5, :cond_d1

    move-object v5, v6

    goto :goto_d5

    .line 1296
    :cond_d1
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getThermalBrightnessThrottlingMapId()Ljava/lang/String;

    move-result-object v5

    .line 1293
    :goto_d5
    invoke-virtual {v7, v5}, Lcom/android/server/display/LogicalDisplay;->setThermalBrightnessThrottlingDataIdLocked(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getPowerThrottlingMapId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_df

    goto :goto_e3

    .line 1300
    :cond_df
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getPowerThrottlingMapId()Ljava/lang/String;

    move-result-object v6

    .line 1297
    :goto_e3
    invoke-virtual {v7, v6}, Lcom/android/server/display/LogicalDisplay;->setPowerThrottlingDataIdLocked(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getDisplayGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/display/LogicalDisplay;->setDisplayGroupNameLocked(Ljava/lang/String;)V

    :goto_ed
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_38

    :cond_f1
    return-void
.end method

.method public final areAllTransitioningDisplaysOffLocked()Z
    .registers 7

    .line 704
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2c

    .line 706
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 707
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->isInTransitionLocked()Z

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_29

    .line 711
    :cond_1a
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 713
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v4

    .line 714
    iget v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    if-eq v4, v3, :cond_29

    return v1

    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2c
    return v3
.end method

.method public final assignDisplayGroupIdLocked(ZZLjava/lang/String;ZLjava/lang/Integer;I)I
    .registers 8

    const/4 v0, -0x1

    if-eq p6, v0, :cond_6

    if-nez p1, :cond_6

    return p6

    :cond_6
    if-eqz p4, :cond_26

    if-eqz p5, :cond_26

    .line 1357
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-nez p1, :cond_25

    .line 1360
    iget p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    .line 1361
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_25
    return p1

    :cond_26
    if-nez p2, :cond_2a

    const/4 p0, 0x0

    return p0

    .line 1366
    :cond_2a
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupIdsByName:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_43

    .line 1368
    iget p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1369
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupIdsByName:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    :cond_43
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 16

    .line 1066
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_133

    .line 1070
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 1072
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    .line 1073
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    .line 1074
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    .line 1075
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/Integer;

    .line 1078
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v2

    if-eqz v8, :cond_3e

    .line 1080
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 1081
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-lez v3, :cond_3e

    .line 1082
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3f

    :cond_3e
    const/4 v3, 0x0

    .line 1084
    :goto_3f
    invoke-virtual {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v10

    .line 1087
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getLayoutGroupNameLocked()Ljava/lang/String;

    move-result-object v4

    .line 1089
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 1096
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v5}, Lcom/android/server/display/feature/DisplayManagerFlags;->isSeparateTimeoutsEnabled()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_6b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 1097
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupAllocator:Lcom/android/server/display/DisplayGroupAllocator;

    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    invoke-virtual {v4, p1, v5}, Lcom/android/server/display/DisplayGroupAllocator;->decideRequiredGroupTypeLocked(Lcom/android/server/display/LogicalDisplay;I)Ljava/lang/String;

    move-result-object v4

    .line 1099
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-static {v4, v5}, Lcom/android/server/display/DisplayGroupAllocator;->calculateGroupId(Ljava/lang/String;Landroid/util/SparseArray;)I

    move-result v5

    move v9, v5

    :goto_69
    move-object v11, v4

    goto :goto_6d

    :cond_6b
    move v9, v6

    goto :goto_69

    .line 1105
    :goto_6d
    iget v4, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v4, v4, 0x4000

    const/4 v5, 0x0

    const/4 v12, 0x1

    if-nez v4, :cond_7e

    .line 1107
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7c

    goto :goto_7e

    :cond_7c
    move v4, v5

    goto :goto_80

    :cond_7e
    :goto_7e
    move v4, v5

    move v5, v12

    :goto_80
    if-eqz v2, :cond_84

    move v7, v12

    goto :goto_85

    :cond_84
    move v7, v4

    :goto_85
    if-nez v5, :cond_8c

    if-eqz v8, :cond_8c

    move v13, v4

    move v4, v12

    goto :goto_8d

    :cond_8c
    move v13, v4

    :goto_8d
    if-eqz v3, :cond_96

    .line 1112
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_96

    move v13, v12

    :cond_96
    if-eq v2, v6, :cond_a1

    if-ne v7, v5, :cond_a1

    if-ne v13, v4, :cond_a1

    if-eq v9, v6, :cond_9f

    goto :goto_a1

    :cond_9f
    move-object v3, p0

    goto :goto_ab

    .line 1119
    :cond_a1
    :goto_a1
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getLayoutGroupNameLocked()Ljava/lang/String;

    move-result-object v6

    move v7, v4

    move-object v3, p0

    .line 1118
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupIdLocked(ZZLjava/lang/String;ZLjava/lang/Integer;I)I

    move-result v2

    .line 1124
    :goto_ab
    invoke-virtual {v3, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object p0

    if-nez p0, :cond_d8

    .line 1126
    new-instance p0, Lcom/android/server/display/DisplayGroup;

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayGroup;-><init>(I)V

    .line 1127
    invoke-virtual {p0, v11}, Lcom/android/server/display/DisplayGroup;->setGroupName(Ljava/lang/String;)V

    .line 1128
    iget-object v4, v3, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1130
    iget-object v4, v3, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupAllocator:Lcom/android/server/display/DisplayGroupAllocator;

    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    invoke-virtual {v4, p1, v5}, Lcom/android/server/display/DisplayGroupAllocator;->getContentModeForDisplayLocked(Lcom/android/server/display/LogicalDisplay;I)I

    move-result v4

    if-eqz v2, :cond_d8

    .line 1136
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v5, 0x2

    if-eq v0, v12, :cond_cf

    if-ne v0, v5, :cond_d8

    :cond_cf
    if-eq v4, v12, :cond_d3

    if-ne v4, v5, :cond_d8

    .line 1140
    :cond_d3
    sget-wide v4, Lcom/android/server/display/DisplayGroup;->FLAG_DEFAULT_GROUP_ADJACENT:J

    invoke-virtual {p0, v4, v5}, Lcom/android/server/display/DisplayGroup;->setFlags(J)V

    :cond_d8
    if-eq v10, p0, :cond_133

    if-eqz v10, :cond_df

    .line 1145
    invoke-virtual {v10, p1}, Lcom/android/server/display/DisplayGroup;->removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 1147
    :cond_df
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayGroup;->addDisplayLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1148
    invoke-virtual {p1, v2}, Lcom/android/server/display/LogicalDisplay;->updateDisplayGroupIdLocked(I)V

    .line 1149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setting new display group "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for display "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", from previous group: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_10a

    .line 1151
    invoke-virtual {v10}, Lcom/android/server/display/DisplayGroup;->getGroupId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_10d

    :cond_10a
    const-string/jumbo v0, "null"

    :goto_10d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", for reason: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupAllocator:Lcom/android/server/display/DisplayGroupAllocator;

    .line 1152
    invoke-virtual {v0}, Lcom/android/server/display/DisplayGroupAllocator;->getReason()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", with flags: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    invoke-virtual {p0}, Lcom/android/server/display/DisplayGroup;->getFlags()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1149
    const-string p1, "LogicalDisplayMapper"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_133
    :goto_133
    return-void
.end method

.method public final assignLayerStackLocked(I)I
    .registers 2

    .line 0
    return p1
.end method

.method public associateDisplayDeviceWithVirtualDevice(Lcom/android/server/display/DisplayDevice;I)V
    .registers 3

    .line 525
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;
    .registers 10

    .line 1314
    invoke-virtual {p0, p2}, Lcom/android/server/display/LogicalDisplayMapper;->assignLayerStackLocked(I)I

    move-result v2

    .line 1315
    new-instance v0, Lcom/android/server/display/LogicalDisplay;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1316
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isSyncedResolutionSwitchEnabled()Z

    move-result v4

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isSyntheticModesV2Enabled()Z

    move-result v5

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1317
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isSizeOverrideForExternalDisplaysEnabled()Z

    move-result v6

    move-object v3, p1

    move v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;ZZZ)V

    .line 1318
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V

    .line 1320
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 1321
    iget p1, p1, Landroid/view/DisplayInfo;->type:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_39

    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->size()I

    move-result p1

    if-le p1, p2, :cond_39

    const/4 p1, 0x0

    .line 1325
    invoke-virtual {v0, p1}, Lcom/android/server/display/LogicalDisplay;->setEnabledLocked(Z)V

    .line 1328
    :cond_39
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final displayEventToString(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_55

    const/4 p0, 0x2

    if-eq p1, p0, :cond_52

    const/4 p0, 0x4

    if-eq p1, p0, :cond_4e

    const/16 p0, 0x8

    if-eq p1, p0, :cond_4a

    const/16 p0, 0x10

    if-eq p1, p0, :cond_47

    const/16 p0, 0x20

    if-eq p1, p0, :cond_43

    const/16 p0, 0x40

    if-eq p1, p0, :cond_40

    const/16 p0, 0x80

    if-eq p1, p0, :cond_3d

    const/16 p0, 0x100

    if-eq p1, p0, :cond_3a

    const/16 p0, 0x200

    if-eq p1, p0, :cond_36

    const/16 p0, 0x400

    if-eq p1, p0, :cond_32

    const/16 p0, 0x800

    if-eq p1, p0, :cond_2f

    const/4 p0, 0x0

    return-object p0

    .line 1432
    :cond_2f
    const-string p0, "committed_state_changed"

    return-object p0

    .line 1430
    :cond_32
    const-string/jumbo p0, "state_changed"

    return-object p0

    .line 1434
    :cond_36
    const-string/jumbo p0, "refresh_rate_changed"

    return-object p0

    .line 1428
    :cond_3a
    const-string p0, "disconnected"

    return-object p0

    .line 1426
    :cond_3d
    const-string p0, "connected"

    return-object p0

    .line 1424
    :cond_40
    const-string p0, "hdr_sdr_ratio_changed"

    return-object p0

    .line 1416
    :cond_43
    const-string/jumbo p0, "transition"

    return-object p0

    .line 1418
    :cond_47
    const-string p0, "framerate_override"

    return-object p0

    .line 1420
    :cond_4a
    const-string/jumbo p0, "swapped"

    return-object p0

    .line 1422
    :cond_4e
    const-string/jumbo p0, "removed"

    return-object p0

    .line 1436
    :cond_52
    const-string p0, "basic_changed"

    return-object p0

    .line 1414
    :cond_55
    const-string p0, "added"

    return-object p0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 10

    .line 466
    const-string v0, "LogicalDisplayMapper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    const-string v0, "---------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 471
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSingleDisplayDemoMode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 472
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentLayout="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 473
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceStatesOnWhichToWakeUp="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceStatesOnWhichSelectiveSleep="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 475
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mInteractive="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 476
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBootCompleted="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 480
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceState="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 481
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPendingDeviceState="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 482
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceStateToBeAppliedAfterBoot="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    .line 483
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 482
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 485
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 486
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logical Displays: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 488
    :goto_111
    const-string v3, ":"

    if-ge v2, p1, :cond_149

    .line 489
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 490
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/LogicalDisplay;

    .line 491
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 493
    invoke-virtual {v5, v0}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 494
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 495
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_111

    .line 498
    :cond_149
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 499
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display Groups: size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_166
    if-ge v1, p1, :cond_19c

    .line 502
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 503
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayGroup;

    .line 504
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Group "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 506
    invoke-virtual {v4, v0}, Lcom/android/server/display/DisplayGroup;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    .line 507
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 508
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_166

    .line 512
    :cond_19c
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DeviceStateToLayoutMap;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final findNewDefaultDisplayIfNeededLocked(Lcom/android/server/display/DisplayDevice;)Z
    .registers 9

    .line 1560
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v0

    const/4 v1, 0x0

    .line 1561
    invoke-virtual {v0, v1}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v2

    .line 1562
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p1

    if-eqz v2, :cond_59

    .line 1564
    invoke-virtual {v2}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_59

    .line 1568
    :cond_1f
    invoke-virtual {v0, v1}, Lcom/android/server/display/layout/Layout;->removeDisplayLocked(I)V

    move v2, v1

    .line 1571
    :goto_23
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_59

    .line 1572
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 1573
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v3

    if-nez v3, :cond_3a

    goto :goto_56

    .line 1577
    :cond_3a
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    .line 1579
    iget v4, v3, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_56

    iget-object v4, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iget-object v6, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 1580
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 1581
    iget-object p1, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/display/layout/Layout;->createDefaultDisplayLocked(Landroid/view/DisplayAddress;Lcom/android/server/display/layout/DisplayIdProducer;)V

    return v5

    :cond_56
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_59
    :goto_59
    return v1
.end method

.method public final findNewDefaultSecondaryDisplayIfNeededLocked(Lcom/android/server/display/DisplayDevice;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final finishStateTransitionLocked(Z)V
    .registers 7

    .line 732
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    sget-object v1, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0, v1}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_7f

    .line 736
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBeWoken(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z

    move-result v0

    .line 740
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-boolean v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBePutToSleep(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_30

    .line 741
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->shouldStayAwakeOnFold()Z

    move-result v1

    if-nez v1, :cond_30

    move v1, v3

    goto :goto_31

    :cond_30
    move v1, v2

    .line 743
    :goto_31
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    move-result v4

    if-eqz v4, :cond_3c

    if-nez v0, :cond_3c

    if-nez v1, :cond_3c

    move v2, v3

    :cond_3c
    if-nez v2, :cond_80

    if-eqz p1, :cond_41

    goto :goto_80

    .line 750
    :cond_41
    sget-boolean v0, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz v0, :cond_7f

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not yet ready to transition to state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with displays-off="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mInteractive="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isReady="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LogicalDisplayMapper"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    :goto_7f
    return-void

    .line 748
    :cond_80
    :goto_80
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->transitionToPendingStateLocked()V

    .line 749
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public forEachLocked(Ljava/util/function/Consumer;)V
    .registers 3

    const/4 v0, 0x1

    .line 385
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public forEachLocked(Ljava/util/function/Consumer;Z)V
    .registers 7

    .line 389
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 391
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 392
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v3

    if-nez v3, :cond_19

    if-eqz p2, :cond_1c

    .line 393
    :cond_19
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    return-void
.end method

.method public getDisplayGroupIdFromDisplayIdLocked(I)I
    .registers 6

    .line 400
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_8

    return v0

    .line 405
    :cond_8
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_29

    .line 407
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayGroup;

    .line 408
    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayGroup;->containsLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 409
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_29
    return v0
.end method

.method public getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;
    .registers 2

    .line 417
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayGroup;

    return-object p0
.end method

.method public getDisplayIdsByGroupIdLocked()Landroid/util/SparseArray;
    .registers 5

    .line 376
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 377
    :goto_6
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 378
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 379
    invoke-virtual {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayIdsForGroupLocked(I)[I

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1e
    return-object v0
.end method

.method public getDisplayIdsForGroupLocked(I)[I
    .registers 2

    .line 368
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayGroup;

    if-nez p0, :cond_e

    const/4 p0, 0x0

    .line 370
    new-array p0, p0, [I

    return-object p0

    .line 372
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/display/DisplayGroup;->getIdsLocked()[I

    move-result-object p0

    return-object p0
.end method

.method public getDisplayIdsLocked(IZ)[I
    .registers 10

    .line 349
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 350
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_b
    if-ge v3, v0, :cond_35

    .line 353
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/LogicalDisplay;

    .line 354
    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v6

    if-nez v6, :cond_1d

    if-eqz p2, :cond_32

    .line 355
    :cond_1d
    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 356
    invoke-virtual {v5, p1}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v5

    if-eqz v5, :cond_32

    add-int/lit8 v5, v4, 0x1

    .line 357
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v1, v4

    move v4, v5

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_35
    if-eq v4, v0, :cond_3c

    .line 362
    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    return-object p0

    :cond_3c
    return-object v1
.end method

.method public getDisplayInfoForStateLocked(II)Landroid/view/DisplayInfo;
    .registers 8

    .line 434
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v0

    const/4 v1, 0x0

    .line 435
    const-string v2, "LogicalDisplayMapper"

    if-nez v0, :cond_20

    .line 437
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot get layout for given state:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 441
    :cond_20
    invoke-virtual {v0, p2}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object p1

    if-nez p1, :cond_3b

    .line 444
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot get display for given layout:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 448
    :cond_3b
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {p1}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 449
    const-string v3, "), is not available for the display state "

    if-nez v0, :cond_6e

    .line 450
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The display device ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 451
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 450
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_6e
    const/4 v4, 0x1

    .line 454
    invoke-virtual {p0, v0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;Z)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    if-nez v0, :cond_96

    .line 456
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The logical display associated with address ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 460
    :cond_96
    new-instance p0, Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 461
    iput p2, p0, Landroid/view/DisplayInfo;->displayId:I

    return-object p0
.end method

.method public getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;
    .registers 3

    const/4 v0, 0x1

    .line 316
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;
    .registers 3

    .line 320
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/LogicalDisplay;

    if-eqz p0, :cond_14

    .line 321
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result p1

    if-nez p1, :cond_14

    if-eqz p2, :cond_13

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :cond_14
    :goto_14
    return-object p0
.end method

.method public getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .registers 3

    const/4 v0, 0x1

    .line 328
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;Z)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayLocked(Lcom/android/server/display/DisplayDevice;Z)Lcom/android/server/display/LogicalDisplay;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 335
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_29

    .line 337
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 338
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    if-ne v4, p1, :cond_26

    .line 339
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result p0

    if-nez p0, :cond_25

    if-eqz p2, :cond_24

    goto :goto_25

    :cond_24
    return-object v0

    :cond_25
    :goto_25
    return-object v3

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_29
    return-object v0
.end method

.method public final handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 4

    .line 758
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 763
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    .line 764
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->initializeDefaultDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 768
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

    const/4 v1, 0x0

    .line 769
    invoke-interface {v0, v1}, Lcom/android/server/display/layout/DisplayIdProducer;->getId(Z)I

    move-result v0

    .line 768
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    .line 771
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 772
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    return-void
.end method

.method public final handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 4

    .line 777
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->findNewDefaultSecondaryDisplayIfNeededLocked(Lcom/android/server/display/DisplayDevice;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 780
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->findNewDefaultDisplayIfNeededLocked(Lcom/android/server/display/DisplayDevice;)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    return-void

    .line 781
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    return-void
.end method

.method public final hasRefreshRateChanges(Landroid/view/DisplayInfo;)Z
    .registers 6

    .line 978
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2d

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v0, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iget-wide v2, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2d

    iget-wide v0, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iget-wide v2, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2d

    iget-object p0, p0, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    iget-object p1, p1, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    .line 982
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p0, 0x0

    return p0

    :cond_2d
    :goto_2d
    const/4 p0, 0x1

    return p0
.end method

.method public final initializeDefaultDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 4

    .line 1379
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v0

    const/4 v1, 0x0

    .line 1380
    invoke-virtual {v0, v1}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v1

    if-eqz v1, :cond_f

    return-void

    .line 1384
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p1

    .line 1385
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/display/layout/Layout;->createDefaultDisplayLocked(Landroid/view/DisplayAddress;Lcom/android/server/display/layout/DisplayIdProducer;)V

    return-void
.end method

.method public final synthetic lambda$setDeviceStateLocked$2()V
    .registers 5

    .line 589
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xc

    const-string/jumbo v3, "server.display:unfold"

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$setDeviceStateLocked$3(I)V
    .registers 5

    .line 598
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method

.method public onBootCompleted()V
    .registers 4

    .line 610
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    const/4 v1, 0x1

    .line 611
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 612
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    sget-object v2, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1, v2}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 613
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->setDeviceStateLocked(Landroid/hardware/devicestate/DeviceState;)V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_21

    .line 615
    :cond_18
    :goto_18
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupAllocator:Lcom/android/server/display/DisplayGroupAllocator;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/android/server/display/DisplayGroupAllocator;->initLater(Landroid/content/Context;)V

    .line 616
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_16

    throw p0
.end method

.method public onDisplayDeviceChangedLocked(Lcom/android/server/display/DisplayDevice;I)V
    .registers 5

    .line 299
    sget-boolean v0, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display device changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LogicalDisplayMapper"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 p1, 0x0

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    .line 303
    invoke-virtual {p0, p2}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(I)V

    return-void
.end method

.method public onDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .registers 5

    const/4 v0, 0x1

    .line 279
    const-string v1, "LogicalDisplayMapper"

    if-eq p2, v0, :cond_2c

    const/4 v0, 0x3

    if-eq p2, v0, :cond_9

    return-void

    .line 288
    :cond_9
    sget-boolean p2, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz p2, :cond_25

    .line 289
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Display device removed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    return-void

    .line 281
    :cond_2c
    sget-boolean p2, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz p2, :cond_48

    .line 282
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Display device added: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_48
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method public onEarlyInteractivityChange(Z)V
    .registers 4

    .line 620
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 621
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    if-eq v1, p1, :cond_10

    .line 622
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    const/4 p1, 0x0

    .line 623
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    goto :goto_10

    :catchall_e
    move-exception p0

    goto :goto_12

    .line 625
    :cond_10
    :goto_10
    monitor-exit v0

    return-void

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_e

    throw p0
.end method

.method public onTraversalRequested()V
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {p0}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onTraversalRequested()V

    return-void
.end method

.method public onWindowManagerReady()V
    .registers 2

    .line 312
    const-class v0, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    return-void
.end method

.method public final resetLayoutLocked(IIZ)V
    .registers 15

    .line 1170
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object p1

    .line 1171
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v0, p2}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object p2

    .line 1173
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_14
    if-ge v2, v0, :cond_b4

    .line 1175
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 1176
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v4

    .line 1177
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    if-nez v5, :cond_2a

    goto/16 :goto_b0

    .line 1185
    :cond_2a
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    const/4 v6, 0x0

    if-eqz v5, :cond_38

    .line 1189
    invoke-virtual {p1, v5}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v7

    goto :goto_39

    :cond_38
    move-object v7, v6

    :goto_39
    if-eqz v5, :cond_3f

    .line 1191
    invoke-virtual {p2, v5}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v6

    :cond_3f
    const/4 v5, 0x1

    if-nez v7, :cond_44

    move v8, v5

    goto :goto_45

    :cond_44
    move v8, v1

    :goto_45
    if-nez v6, :cond_49

    move v9, v5

    goto :goto_4a

    :cond_49
    move v9, v1

    :goto_4a
    if-eq v8, v9, :cond_4e

    move v8, v5

    goto :goto_4f

    :cond_4e
    move v8, v1

    :goto_4f
    if-eqz v7, :cond_5a

    .line 1199
    invoke-virtual {v7}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_58

    goto :goto_5a

    :cond_58
    move v9, v1

    goto :goto_5b

    :cond_5a
    :goto_5a
    move v9, v5

    :goto_5b
    if-eqz v6, :cond_66

    .line 1200
    invoke-virtual {v6}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_64

    goto :goto_66

    :cond_64
    move v10, v1

    goto :goto_67

    :cond_66
    :goto_66
    move v10, v5

    :goto_67
    if-eqz v7, :cond_77

    if-eqz v6, :cond_77

    .line 1203
    invoke-virtual {v7}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v6

    if-eq v7, v6, :cond_77

    move v6, v5

    goto :goto_78

    :cond_77
    move v6, v1

    .line 1213
    :goto_78
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->isInTransitionLocked()Z

    move-result v7

    if-nez v7, :cond_84

    if-ne v9, v10, :cond_84

    if-nez v6, :cond_84

    if-eqz v8, :cond_b0

    .line 1219
    :cond_84
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->isInTransitionLocked()Z

    move-result v6

    if-eq p3, v6, :cond_a8

    .line 1220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set isInTransition on display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "LogicalDisplayMapper"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_a8
    invoke-virtual {v3, p3}, Lcom/android/server/display/LogicalDisplay;->setIsInTransitionLocked(Z)V

    .line 1227
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_b0
    :goto_b0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_14

    :cond_b4
    return-void
.end method

.method public final sendUpdatesForDisplaysLocked(I)V
    .registers 9

    .line 1008
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_7b

    .line 1009
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    and-int/2addr v2, p1

    if-nez v2, :cond_14

    goto :goto_78

    .line 1014
    :cond_14
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 1015
    invoke-virtual {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v3

    .line 1016
    sget-boolean v4, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz v4, :cond_5a

    .line 1017
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    if-nez v4, :cond_2c

    .line 1018
    const-string/jumbo v4, "null"

    goto :goto_30

    :cond_2c
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    .line 1019
    :goto_30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->displayEventToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for display="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " with device="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LogicalDisplayMapper"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    if-ne p1, v1, :cond_62

    .line 1024
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_6a

    :cond_62
    const/4 v4, 0x4

    if-ne p1, v4, :cond_6a

    .line 1026
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1029
    :cond_6a
    :goto_6a
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {v4, v3, p1}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onLogicalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    const/16 v3, 0x100

    if-ne p1, v3, :cond_78

    .line 1032
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_78
    :goto_78
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_7b
    return-void
.end method

.method public final sendUpdatesForGroupsLocked(I)V
    .registers 5

    .line 1041
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_36

    .line 1042
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    if-eq v1, p1, :cond_13

    goto :goto_33

    .line 1047
    :cond_13
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 1048
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {v2, v1, p1}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onDisplayGroupEventLocked(II)V

    const/4 v2, 0x3

    if-ne p1, v2, :cond_33

    .line 1052
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 1054
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-ltz v1, :cond_33

    .line 1056
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_33
    :goto_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_36
    return-void
.end method

.method public setDeviceStateLocked(Landroid/hardware/devicestate/DeviceState;)V
    .registers 10

    .line 529
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    const-string v1, "Postponing transition to state: "

    const-string v2, "LogicalDisplayMapper"

    if-nez v0, :cond_2c

    .line 532
    sget-boolean v0, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 534
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " until boot is completed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_29
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    return-void

    .line 554
    :cond_2c
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    .line 555
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v3

    const/4 v4, 0x1

    .line 554
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(IIZ)V

    .line 556
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 557
    sget-object v0, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    .line 558
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-boolean v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p0, p1, v0, v3, v5}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBeWoken(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z

    move-result v0

    .line 560
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-boolean v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v7, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p0, v3, v5, v6, v7}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBePutToSleep(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z

    move-result v3

    .line 563
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting Transition to state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", from state="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 564
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", interactive="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mBootCompleted="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", wakeDevice="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", sleepDevice="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 563
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    move-result p1

    if-eqz p1, :cond_ae

    if-nez v0, :cond_ae

    if-nez v3, :cond_ae

    .line 572
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->transitionToPendingStateLocked()V

    return-void

    .line 576
    :cond_ae
    sget-boolean p1, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz p1, :cond_ca

    .line 577
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_ca
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    if-nez v0, :cond_d1

    if-eqz v3, :cond_f5

    :cond_d1
    if-eqz v0, :cond_de

    .line 588
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    new-instance v0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/LogicalDisplayMapper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f5

    :cond_de
    if-eqz v3, :cond_f5

    .line 595
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    invoke-virtual {p1}, Lcom/android/server/utils/FoldSettingProvider;->shouldSleepOnFold()Z

    move-result p1

    if-eqz p1, :cond_ea

    const/4 p1, 0x0

    goto :goto_eb

    :cond_ea
    const/4 p1, 0x2

    .line 597
    :goto_eb
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    new-instance v1, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/LogicalDisplayMapper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 605
    :cond_f5
    :goto_f5
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .registers 4

    .line 1442
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v0

    if-ne v0, p2, :cond_30

    .line 1444
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Display is already "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_15

    const-string p2, "enabled"

    goto :goto_17

    :cond_15
    const-string p2, "disabled"

    :goto_17
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1445
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1444
    const-string p1, "LogicalDisplayMapper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1448
    :cond_30
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LogicalDisplayMapper;->setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 1449
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    return-void
.end method

.method public setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .registers 6

    .line 1333
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 1334
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1336
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    const/4 v2, 0x0

    if-eqz p0, :cond_13

    iget p0, v1, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    .line 1338
    :goto_14
    const-string p0, "LogicalDisplayMapper"

    if-eqz p2, :cond_33

    if-eqz v1, :cond_33

    .line 1339
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not creating a logical display for a secondary display because single display demo mode is enabled: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1339
    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v2

    .line 1344
    :cond_33
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v1

    if-eq v1, p2, :cond_58

    .line 1345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetEnabled on display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    invoke-virtual {p1, p2}, Lcom/android/server/display/LogicalDisplay;->setEnabledLocked(Z)V

    :cond_58
    return-void
.end method

.method public shouldDeviceBePutToSleep(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z
    .registers 6

    const/16 v0, 0xd

    .line 684
    invoke-virtual {p1, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p1

    if-eqz p1, :cond_24

    sget-object p1, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    .line 685
    invoke-virtual {p2, p1}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 686
    invoke-virtual {p2, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p1

    if-nez p1, :cond_24

    if-eqz p3, :cond_24

    if-eqz p4, :cond_24

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    .line 689
    invoke-virtual {p0}, Lcom/android/server/utils/FoldSettingProvider;->shouldStayAwakeOnFold()Z

    move-result p0

    if-nez p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public shouldDeviceBeWoken(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z
    .registers 7

    const/16 p0, 0xa

    .line 645
    filled-new-array {p0}, [I

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperties([I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    filled-new-array {p0}, [I

    move-result-object p0

    .line 646
    invoke-virtual {p1, p0}, Landroid/hardware/devicestate/DeviceState;->hasProperties([I)Z

    move-result p0

    if-nez p0, :cond_18

    return v1

    :cond_18
    const/16 p0, 0xe

    .line 652
    invoke-virtual {p1, p0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p1

    if-eqz p1, :cond_34

    sget-object p1, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    .line 653
    invoke-virtual {p2, p1}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    .line 654
    invoke-virtual {p2, p0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p0

    if-nez p0, :cond_34

    if-nez p3, :cond_34

    if-eqz p4, :cond_34

    const/4 p0, 0x1

    return p0

    :cond_34
    return v1
.end method

.method public final shouldStayAwakeOnFold()Z
    .registers 2

    .line 1407
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    invoke-virtual {v0}, Lcom/android/server/utils/FoldSettingProvider;->shouldStayAwakeOnFold()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    .line 1408
    invoke-virtual {p0}, Lcom/android/server/utils/FoldSettingProvider;->shouldSelectiveStayAwakeOnFold()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public final toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;
    .registers 5

    .line 1395
    new-instance p0, Landroid/util/SparseBooleanArray;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    const/4 v0, 0x0

    :goto_7
    if-eqz p1, :cond_15

    .line 1396
    array-length v1, p1

    if-ge v0, v1, :cond_15

    .line 1397
    aget v1, p1, v0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    return-object p0
.end method

.method public final transitionToPendingStateLocked()V
    .registers 4

    .line 723
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 724
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    const/4 v2, 0x0

    .line 723
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(IIZ)V

    .line 725
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 726
    sget-object v0, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 727
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 728
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    return-void
.end method

.method public updateAndGetMaskForDisplayPropertyChanges(Landroid/view/DisplayInfo;)I
    .registers 5

    .line 989
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->hasRefreshRateChanges(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x200

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 993
    :goto_a
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayListenerPerformanceImprovementsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    iget v2, p1, Landroid/view/DisplayInfo;->state:I

    if-eq v1, v2, :cond_1c

    or-int/lit16 v0, v0, 0x400

    .line 998
    :cond_1c
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isCommittedStateSeparateEventEnabled()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->committedState:I

    iget p1, p1, Landroid/view/DisplayInfo;->committedState:I

    if-eq p0, p1, :cond_2f

    or-int/lit16 p0, v0, 0x800

    return p0

    :cond_2f
    return v0
.end method

.method public updateLogicalDisplays()V
    .registers 2

    .line 787
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 788
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 789
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public updateLogicalDisplaysLocked()V
    .registers 2

    const/4 v0, -0x1

    .line 793
    invoke-virtual {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(I)V

    return-void
.end method

.method public final updateLogicalDisplaysLocked(I)V
    .registers 3

    const/4 v0, 0x0

    .line 797
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(IZ)V

    return-void
.end method

.method public final updateLogicalDisplaysLocked(IZ)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 815
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    const/16 v7, 0x10

    if-ltz v2, :cond_11d

    .line 816
    iget-object v9, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 817
    iget-object v10, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/display/LogicalDisplay;

    .line 818
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->isDirtyLocked()Z

    move-result v11

    .line 819
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 820
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v10, v12}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    .line 822
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object v13, v0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    invoke-virtual {v10, v12, v13}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V

    .line 823
    invoke-virtual {v0, v10}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 825
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v12

    .line 826
    iget-object v13, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v9, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    if-eqz v13, :cond_4a

    move v14, v3

    goto :goto_4b

    :cond_4a
    move v14, v4

    .line 828
    :goto_4b
    iget-object v15, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    .line 829
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v6

    .line 830
    iget-object v8, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 831
    invoke-virtual {v8, v9, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 832
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 833
    invoke-virtual {v4, v12, v3}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;Z)Z

    move-result v4

    .line 836
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v16

    if-nez v16, :cond_96

    .line 839
    invoke-virtual {v0, v9}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v4

    .line 838
    invoke-virtual {v0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v4

    if-eqz v4, :cond_74

    .line 841
    invoke-virtual {v4, v10}, Lcom/android/server/display/DisplayGroup;->removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    :cond_74
    if-eqz v14, :cond_8a

    .line 847
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_82

    or-int/lit8 v8, v8, 0x4

    move v5, v3

    goto :goto_8f

    .line 852
    :cond_82
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v9}, Landroid/util/SparseIntArray;->delete(I)V

    or-int/lit16 v8, v8, 0x100

    goto :goto_8f

    .line 857
    :cond_8a
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 859
    :goto_8f
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v9, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_117

    :cond_96
    if-nez v14, :cond_9d

    or-int/lit16 v4, v8, 0x80

    move v5, v3

    goto/16 :goto_10c

    .line 868
    :cond_9d
    iget-object v14, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v14, v14, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v3, v12, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v14, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ad

    or-int/lit8 v4, v8, 0x8

    goto/16 :goto_10c

    :cond_ad
    if-eq v15, v6, :cond_b7

    if-eqz v6, :cond_b3

    const/4 v6, 0x1

    goto :goto_b4

    :cond_b3
    const/4 v6, 0x4

    :goto_b4
    or-int v4, v8, v6

    goto :goto_10c

    :cond_b7
    if-eqz v11, :cond_c1

    if-ne v1, v7, :cond_be

    :goto_bb
    or-int/lit8 v4, v8, 0x40

    goto :goto_10c

    :cond_be
    or-int/lit16 v4, v8, 0x602

    goto :goto_10c

    :cond_c1
    if-eqz v4, :cond_100

    .line 886
    invoke-virtual {v0, v12}, Lcom/android/server/display/LogicalDisplayMapper;->hasRefreshRateChanges(Landroid/view/DisplayInfo;)Z

    move-result v3

    if-nez v3, :cond_100

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->committedState:I

    iget v6, v12, Landroid/view/DisplayInfo;->committedState:I

    if-eq v3, v6, :cond_d2

    goto :goto_100

    :cond_d2
    const/4 v3, 0x1

    if-ne v13, v3, :cond_d8

    or-int/lit8 v4, v8, 0x20

    goto :goto_10c

    .line 903
    :cond_d8
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getPendingFrameRateOverrideUids()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e5

    or-int/lit8 v4, v8, 0x10

    goto :goto_10c

    .line 911
    :cond_e5
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v10, v3}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    .line 912
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;Z)Z

    move-result v3

    if-nez v3, :cond_f7

    or-int/lit8 v8, v8, 0x2

    .line 916
    :cond_f7
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 917
    invoke-virtual {v0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->updateAndGetMaskForDisplayPropertyChanges(Landroid/view/DisplayInfo;)I

    move-result v3

    :goto_fd
    or-int v4, v8, v3

    goto :goto_10c

    :cond_100
    :goto_100
    if-ne v1, v7, :cond_103

    goto :goto_bb

    :cond_103
    if-nez v4, :cond_107

    or-int/lit8 v8, v8, 0x2

    .line 896
    :cond_107
    invoke-virtual {v0, v12}, Lcom/android/server/display/LogicalDisplayMapper;->updateAndGetMaskForDisplayPropertyChanges(Landroid/view/DisplayInfo;)I

    move-result v3

    goto :goto_fd

    .line 919
    :goto_10c
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v9, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 920
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v9, v4}, Landroid/util/SparseIntArray;->put(II)V

    :goto_117
    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_e

    .line 927
    :cond_11d
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_127
    const/4 v3, 0x3

    if-ltz v2, :cond_17a

    .line 928
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 929
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayGroup;

    .line 930
    iget-object v8, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_143

    const/4 v8, 0x1

    goto :goto_144

    :cond_143
    const/4 v8, 0x0

    .line 931
    :goto_144
    invoke-virtual {v6}, Lcom/android/server/display/DisplayGroup;->getChangeCountLocked()I

    move-result v9

    .line 933
    invoke-virtual {v6}, Lcom/android/server/display/DisplayGroup;->isEmptyLocked()Z

    move-result v6

    if-eqz v6, :cond_15b

    .line 934
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->delete(I)V

    if-eqz v8, :cond_177

    .line 936
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_177

    :cond_15b
    if-nez v8, :cond_164

    .line 940
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_172

    .line 941
    :cond_164
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    if-eq v3, v9, :cond_172

    .line 942
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 944
    :cond_172
    :goto_172
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    :cond_177
    :goto_177
    add-int/lit8 v2, v2, -0x1

    goto :goto_127

    :cond_17a
    const/16 v2, 0x20

    .line 949
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/4 v6, 0x1

    .line 950
    invoke-virtual {v0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    const/4 v2, 0x4

    .line 951
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x100

    .line 952
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/4 v4, 0x2

    .line 953
    invoke-virtual {v0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x200

    .line 954
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x400

    .line 955
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x800

    .line 956
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 957
    invoke-virtual {v0, v7}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x8

    .line 958
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x80

    .line 959
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/4 v6, 0x1

    .line 960
    invoke-virtual {v0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x40

    .line 961
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/4 v4, 0x2

    .line 962
    invoke-virtual {v0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 963
    invoke-virtual {v0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 965
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 966
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    if-eqz v5, :cond_1d6

    if-eqz p2, :cond_1d2

    .line 970
    const-string v0, "LogicalDisplayMapper"

    const-string v1, "Trying to loop a third time"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d2
    const/4 v6, 0x1

    .line 973
    invoke-virtual {v0, v1, v6}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(IZ)V

    :cond_1d6
    return-void
.end method
