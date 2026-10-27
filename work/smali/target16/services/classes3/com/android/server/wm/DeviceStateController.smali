.class public final Lcom/android/server/wm/DeviceStateController;
.super Ljava/lang/Object;
.source "DeviceStateController.java"


# instance fields
.field public final mConcurrentDisplayDeviceStates:Ljava/util/List;

.field public mCurrentDeviceStateEnum:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

.field public mCurrentState:I

.field final mDeviceStateCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wm/DeviceStateController$DeviceStateListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final mFoldedDeviceStates:Ljava/util/List;

.field public final mHalfFoldedDeviceStates:Ljava/util/List;

.field public final mIdentifierToDeviceState:Ljava/util/Map;

.field public final mMatchBuiltInDisplayOrientationToDefaultDisplay:Z

.field public final mOpenDeviceStates:Ljava/util/List;

.field public final mRearDisplayDeviceStates:Ljava/util/List;

.field public final mReverseRotationAroundZAxisStates:Ljava/util/List;

.field public final mWmLock:Lcom/android/server/wm/WindowManagerGlobalLock;


# direct methods
.method public static synthetic $r8$lambda$qyHxZpZDY9iy0Z4dhSvPOdk-Dus(Lcom/android/server/wm/DeviceStateController;Landroid/util/Pair;Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DeviceStateController;->lambda$onDeviceStateReceivedByDisplayManager$0(Landroid/util/Pair;Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wLO_534c_6011Rw2g0jSvJ3eWmo(Ljava/util/List;Lcom/android/server/wm/DeviceStateController$DeviceStateListener;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 250
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerGlobalLock;)V
    .registers 7

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DeviceStateController;->mIdentifierToDeviceState:Ljava/util/Map;

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DeviceStateController;->mDeviceStateCallbacks:Ljava/util/Map;

    .line 76
    sget-object v0, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    iput-object v0, p0, Lcom/android/server/wm/DeviceStateController;->mCurrentDeviceStateEnum:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    .line 90
    iput-object p2, p0, Lcom/android/server/wm/DeviceStateController;->mWmLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 92
    new-instance p2, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlagsImpl;

    invoke-direct {p2}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlagsImpl;-><init>()V

    .line 94
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/DeviceStateController;->mOpenDeviceStates:Ljava/util/List;

    .line 95
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/DeviceStateController;->mHalfFoldedDeviceStates:Ljava/util/List;

    .line 96
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/DeviceStateController;->mFoldedDeviceStates:Ljava/util/List;

    .line 97
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/DeviceStateController;->mRearDisplayDeviceStates:Ljava/util/List;

    .line 98
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/DeviceStateController;->mConcurrentDisplayDeviceStates:Ljava/util/List;

    .line 100
    const-class p2, Landroid/hardware/devicestate/DeviceStateManager;

    .line 101
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/devicestate/DeviceStateManager;

    .line 103
    invoke-virtual {p2}, Landroid/hardware/devicestate/DeviceStateManager;->getSupportedDeviceStates()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    .line 105
    :goto_4c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d5

    .line 106
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceState;

    .line 107
    iget-object v2, p0, Lcom/android/server/wm/DeviceStateController;->mIdentifierToDeviceState:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x10

    .line 108
    invoke-virtual {v1, v2}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 110
    iget-object v2, p0, Lcom/android/server/wm/DeviceStateController;->mRearDisplayDeviceStates:Ljava/util/List;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d1

    :cond_7b
    const/16 v2, 0x11

    .line 111
    invoke-virtual {v1, v2}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 113
    iget-object v2, p0, Lcom/android/server/wm/DeviceStateController;->mConcurrentDisplayDeviceStates:Ljava/util/List;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d1

    :cond_91
    const/16 v2, 0xb

    .line 114
    invoke-virtual {v1, v2}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 116
    iget-object v2, p0, Lcom/android/server/wm/DeviceStateController;->mFoldedDeviceStates:Ljava/util/List;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d1

    :cond_a7
    const/16 v2, 0xc

    .line 117
    invoke-virtual {v1, v2}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_d1

    const/4 v2, 0x2

    .line 119
    invoke-virtual {v1, v2}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 121
    iget-object v2, p0, Lcom/android/server/wm/DeviceStateController;->mHalfFoldedDeviceStates:Ljava/util/List;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d1

    .line 123
    :cond_c4
    iget-object v2, p0, Lcom/android/server/wm/DeviceStateController;->mOpenDeviceStates:Ljava/util/List;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d1
    :goto_d1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4c

    .line 140
    :cond_d5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1070057

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DeviceStateController;->copyIntArrayToList([I)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/DeviceStateController;->mReverseRotationAroundZAxisStates:Ljava/util/List;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110211

    .line 143
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DeviceStateController;->mMatchBuiltInDisplayOrientationToDefaultDisplay:Z

    return-void
.end method


# virtual methods
.method public copyDeviceStateCallbacks()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/wm/DeviceStateController$DeviceStateListener;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    iget-object v1, p0, Lcom/android/server/wm/DeviceStateController;->mWmLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 249
    :try_start_b
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateController;->mDeviceStateCallbacks:Ljava/util/Map;

    new-instance v2, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 252
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final copyIntArrayToList([I)Ljava/util/List;
    .registers 4

    if-nez p1, :cond_5

    .line 259
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 261
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 262
    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    .line 263
    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1a
    return-object p0
.end method

.method public isFoldable()Z
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateController;->mFoldedDeviceStates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final synthetic lambda$onDeviceStateReceivedByDisplayManager$0(Landroid/util/Pair;Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;I)V
    .registers 4

    .line 237
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/DeviceStateController$DeviceStateListener;

    iget-object p0, p0, Lcom/android/server/wm/DeviceStateController;->mIdentifierToDeviceState:Ljava/util/Map;

    .line 238
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/devicestate/DeviceState;

    .line 237
    invoke-interface {p1, p2, p0}, Lcom/android/server/wm/DeviceStateController$DeviceStateListener;->onDeviceStateChanged(Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;Landroid/hardware/devicestate/DeviceState;)V

    return-void
.end method

.method public onDeviceStateReceivedByDisplayManager(I)V
    .registers 8

    .line 207
    iput p1, p0, Lcom/android/server/wm/DeviceStateController;->mCurrentState:I

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateController;->mHalfFoldedDeviceStates:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 210
    sget-object v0, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    goto :goto_4f

    .line 211
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateController;->mFoldedDeviceStates:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 212
    sget-object v0, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    goto :goto_4f

    .line 213
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateController;->mRearDisplayDeviceStates:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 214
    sget-object v0, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->REAR:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    goto :goto_4f

    .line 215
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateController;->mOpenDeviceStates:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 216
    sget-object v0, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    goto :goto_4f

    .line 217
    :cond_3e
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateController;->mConcurrentDisplayDeviceStates:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 218
    sget-object v0, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->CONCURRENT:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    goto :goto_4f

    .line 221
    :cond_4d
    sget-object v0, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    .line 224
    :goto_4f
    iget-object v1, p0, Lcom/android/server/wm/DeviceStateController;->mCurrentDeviceStateEnum:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    if-eqz v1, :cond_59

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 225
    :cond_59
    iput-object v0, p0, Lcom/android/server/wm/DeviceStateController;->mCurrentDeviceStateEnum:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    .line 233
    invoke-virtual {p0}, Lcom/android/server/wm/DeviceStateController;->copyDeviceStateCallbacks()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 235
    :goto_60
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7b

    .line 236
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 237
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v3, v0, p1}, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DeviceStateController;Landroid/util/Pair;Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    :cond_7b
    return-void
.end method

.method public registerDeviceStateCallback(Lcom/android/server/wm/DeviceStateController$DeviceStateListener;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateController;->mWmLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 155
    :try_start_6
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateController;->mDeviceStateCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public shouldMatchBuiltInDisplayOrientationToReverseDefaultDisplay()Z
    .registers 1

    .line 191
    iget-boolean p0, p0, Lcom/android/server/wm/DeviceStateController;->mMatchBuiltInDisplayOrientationToDefaultDisplay:Z

    return p0
.end method

.method public shouldReverseRotationDirectionAroundZAxis(Lcom/android/server/wm/DisplayContent;)Z
    .registers 2

    .line 179
    iget-boolean p1, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 182
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/DeviceStateController;->mReverseRotationAroundZAxisStates:Ljava/util/List;

    iget p0, p0, Lcom/android/server/wm/DeviceStateController;->mCurrentState:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public unregisterDeviceStateCallback(Lcom/android/server/wm/DeviceStateController$DeviceStateListener;)V
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateController;->mWmLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 161
    :try_start_6
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateController;->mDeviceStateCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
