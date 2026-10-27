.class final Lcom/android/server/am/AppPermissionTracker;
.super Lcom/android/server/am/BaseAppStateTracker;
.source "AppPermissionTracker.java"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;,
        Lcom/android/server/am/AppPermissionTracker$MyHandler;,
        Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;,
        Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStateTracker<",
        "Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;",
        ">;",
        "Landroid/content/pm/PackageManager$OnPermissionsChangedListener;"
    }
.end annotation


# static fields
.field static final DEBUG_PERMISSION_TRACKER:Z = false

.field static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mAppOpsCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

.field private volatile mLockedBootCompleted:Z

.field private mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/am/AppPermissionTracker;)Lcom/android/server/am/AppPermissionTracker$MyHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleAppOpsDestroy(Lcom/android/server/am/AppPermissionTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AppPermissionTracker;->handleAppOpsDestroy()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAppOpsInit(Lcom/android/server/am/AppPermissionTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AppPermissionTracker;->handleAppOpsInit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOpChanged(Lcom/android/server/am/AppPermissionTracker;IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppPermissionTracker;->handleOpChanged(IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePermissionsChanged(Lcom/android/server/am/AppPermissionTracker;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePermissionsDestroy(Lcom/android/server/am/AppPermissionTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsDestroy()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePermissionsInit(Lcom/android/server/am/AppPermissionTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsInit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPermissionTrackerEnabled(Lcom/android/server/am/AppPermissionTracker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppPermissionTracker;->onPermissionTrackerEnabled(Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/server/am/AppRestrictionController;

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/am/AppPermissionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/server/am/AppRestrictionController;
    .param p4, "outerContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/am/AppRestrictionController;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/android/server/am/BaseAppStateTracker$Injector<",
            "Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 102
    .local p3, "injector":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/server/am/BaseAppStateTracker$Injector<Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AppPermissionTracker;->mLockedBootCompleted:Z

    .line 103
    new-instance v0, Lcom/android/server/am/AppPermissionTracker$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppPermissionTracker$MyHandler;-><init>(Lcom/android/server/am/AppPermissionTracker;)V

    iput-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    .line 104
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    new-instance v1, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    iget-object v2, p0, Lcom/android/server/am/AppPermissionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-direct {v1, v2, p0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppPermissionTracker;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->setPolicy(Lcom/android/server/am/BaseAppStatePolicy;)V

    .line 105
    return-void
.end method

.method private handleAppOpsDestroy()V
    .registers 1

    .line 170
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionTracker;->stopWatchingMode()V

    .line 171
    return-void
.end method

.method private handleAppOpsInit()V
    .registers 7

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->getBgPermissionsInMonitor()[Landroid/util/Pair;

    move-result-object v1

    .line 120
    .local v1, "permissions":[Landroid/util/Pair;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    array-length v3, v1

    if-ge v2, v3, :cond_2c

    .line 121
    aget-object v3, v1, v2

    .line 122
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_29

    .line 123
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 126
    .end local v2    # "i":I
    :cond_2c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/android/server/am/AppPermissionTracker;->startWatchingMode([Ljava/lang/Integer;)V

    .line 127
    return-void
.end method

.method private handleOpChanged(IILjava/lang/String;)V
    .registers 11
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->getBgPermissionsInMonitor()[Landroid/util/Pair;

    move-result-object v0

    .line 203
    .local v0, "permissions":[Landroid/util/Pair;
    if-eqz v0, :cond_3f

    array-length v1, v0

    if-lez v1, :cond_3f

    .line 204
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v2, v0

    if-ge v1, v2, :cond_3f

    .line 205
    aget-object v2, v0, v1

    .line 206
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_25

    .line 207
    nop

    .line 204
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 209
    .restart local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_25
    new-instance v3, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, p0, p2, v4, p1}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;-><init>(Lcom/android/server/am/AppPermissionTracker;ILjava/lang/String;I)V

    .line 211
    .local v3, "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    iget-object v4, p0, Lcom/android/server/am/AppPermissionTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 212
    const/4 v5, 0x1

    :try_start_32
    new-array v5, v5, [Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-direct {p0, p2, v5}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsChangedLocked(I[Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;)V

    .line 213
    monitor-exit v4

    .line 214
    goto :goto_3f

    .line 213
    :catchall_3c
    move-exception v5

    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_3c

    throw v5

    .line 217
    .end local v1    # "i":I
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    :cond_3f
    :goto_3f
    return-void
.end method

.method private handlePermissionsChanged(I)V
    .registers 10
    .param p1, "uid"    # I

    .line 223
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->getBgPermissionsInMonitor()[Landroid/util/Pair;

    move-result-object v0

    .line 224
    .local v0, "permissions":[Landroid/util/Pair;
    if-eqz v0, :cond_41

    array-length v1, v0

    if-lez v1, :cond_41

    .line 225
    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 226
    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v1

    .line 227
    .local v1, "pm":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    array-length v2, v0

    new-array v2, v2, [Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    .line 229
    .local v2, "states":[Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    array-length v4, v0

    if-ge v3, v4, :cond_36

    .line 230
    aget-object v4, v0, v3

    .line 231
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v5, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v5, p0, p1, v6, v7}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;-><init>(Lcom/android/server/am/AppPermissionTracker;ILjava/lang/String;I)V

    aput-object v5, v2, v3

    .line 229
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 236
    .end local v3    # "i":I
    :cond_36
    iget-object v3, p0, Lcom/android/server/am/AppPermissionTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 237
    :try_start_39
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsChangedLocked(I[Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;)V

    .line 238
    monitor-exit v3

    goto :goto_41

    :catchall_3e
    move-exception v4

    monitor-exit v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_3e

    throw v4

    .line 240
    .end local v1    # "pm":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .end local v2    # "states":[Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    :cond_41
    :goto_41
    return-void
.end method

.method private handlePermissionsChangedLocked(I[Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;)V
    .registers 20
    .param p1, "uid"    # I
    .param p2, "states"    # [Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    .line 244
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v0, v7, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    .line 245
    .local v10, "index":I
    if-ltz v10, :cond_17

    .line 246
    iget-object v0, v7, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 247
    .local v0, "grantedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;>;"
    :goto_18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 248
    .local v11, "now":J
    const/4 v1, 0x0

    move v13, v1

    .local v13, "i":I
    :goto_1e
    array-length v1, v9

    if-ge v13, v1, :cond_77

    .line 249
    aget-object v1, v9, v13

    invoke-virtual {v1}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->isGranted()Z

    move-result v14

    .line 250
    .local v14, "granted":Z
    const/4 v1, 0x0

    .line 251
    .local v1, "changed":Z
    if-eqz v14, :cond_41

    .line 252
    if-nez v0, :cond_38

    .line 253
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v2

    .line 254
    iget-object v2, v7, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    invoke-virtual {v2, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    const/4 v1, 0x1

    .line 257
    :cond_38
    aget-object v2, v9, v13

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object v15, v0

    move/from16 v16, v1

    goto :goto_64

    .line 258
    :cond_41
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_61

    .line 259
    aget-object v2, v9, v13

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 260
    iget-object v2, v7, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->removeAt(I)V

    .line 261
    const/4 v1, 0x1

    move-object v15, v0

    move/from16 v16, v1

    goto :goto_64

    .line 264
    :cond_61
    move-object v15, v0

    move/from16 v16, v1

    .end local v0    # "grantedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;>;"
    .end local v1    # "changed":Z
    .local v15, "grantedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;>;"
    .local v16, "changed":Z
    :goto_64
    if-eqz v16, :cond_73

    .line 265
    const/16 v6, 0x10

    const-string v2, ""

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v3, v14

    move-wide v4, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppPermissionTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    .line 248
    .end local v14    # "granted":Z
    .end local v16    # "changed":Z
    :cond_73
    add-int/lit8 v13, v13, 0x1

    move-object v0, v15

    goto :goto_1e

    .line 269
    .end local v13    # "i":I
    .end local v15    # "grantedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;>;"
    .restart local v0    # "grantedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;>;"
    :cond_77
    return-void
.end method

.method private handlePermissionsDestroy()V
    .registers 13

    .line 174
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    .line 177
    .local v1, "uidPerms":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;>;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 178
    .local v6, "now":J
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v9, v3

    move v10, v2

    .end local v2    # "i":I
    .local v9, "size":I
    .local v10, "i":I
    :goto_10
    if-ge v10, v9, :cond_2f

    .line 179
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 180
    .local v3, "uid":I
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    move-object v11, v2

    .line 181
    .local v11, "grantedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;>;"
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_2c

    .line 182
    const-string v4, ""

    const/4 v5, 0x0

    const/16 v8, 0x10

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppPermissionTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    .line 178
    .end local v3    # "uid":I
    .end local v11    # "grantedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;>;"
    :cond_2c
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 186
    .end local v9    # "size":I
    .end local v10    # "i":I
    :cond_2f
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 187
    .end local v1    # "uidPerms":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;>;>;"
    .end local v6    # "now":J
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private handlePermissionsInit()V
    .registers 30

    .line 130
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/server/am/AppPermissionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v9

    .line 131
    .local v9, "allUsers":[I
    iget-object v0, v8, Lcom/android/server/am/AppPermissionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v10

    .line 132
    .local v10, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v0, v8, Lcom/android/server/am/AppPermissionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v11

    .line 133
    .local v11, "pm":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    iget-object v0, v8, Lcom/android/server/am/AppPermissionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->getBgPermissionsInMonitor()[Landroid/util/Pair;

    move-result-object v12

    .line 134
    .local v12, "permissions":[Landroid/util/Pair;
    iget-object v13, v8, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    .line 136
    .local v13, "uidPerms":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;>;>;"
    array-length v0, v9

    const/4 v15, 0x0

    :goto_28
    if-ge v15, v0, :cond_123

    aget v7, v9, v15

    .line 137
    .local v7, "userId":I
    const-wide/16 v1, 0x0

    const/16 v3, 0x3e8

    invoke-virtual {v10, v1, v2, v7, v3}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object v5

    .line 138
    .local v5, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v5, :cond_3a

    .line 139
    move/from16 v18, v0

    goto/16 :goto_11d

    .line 141
    :cond_3a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 142
    .local v16, "now":J
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v4, v1

    .end local v1    # "i":I
    .local v4, "i":I
    .local v6, "size":I
    :goto_44
    if-ge v4, v6, :cond_113

    .line 143
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 144
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    array-length v2, v12

    const/4 v1, 0x0

    :goto_4f
    if-ge v1, v2, :cond_103

    aget-object v14, v12, v1

    .line 145
    .local v14, "permission":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    move/from16 v18, v0

    new-instance v0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    move/from16 v19, v1

    iget v1, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v2

    iget-object v2, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move/from16 v21, v4

    .end local v4    # "i":I
    .local v21, "i":I
    iget-object v4, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 146
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v0, v8, v1, v2, v4}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;-><init>(Lcom/android/server/am/AppPermissionTracker;ILjava/lang/String;I)V

    move-object v4, v0

    .line 147
    .local v4, "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    invoke-virtual {v4}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->isGranted()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 149
    move-object/from16 v25, v3

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v28, v7

    goto/16 :goto_e1

    .line 151
    :cond_7f
    iget-object v2, v8, Lcom/android/server/am/AppPermissionTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 152
    :try_start_82
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 153
    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;
    :try_end_8a
    .catchall {:try_start_82 .. :try_end_8a} :catchall_f3

    .line 154
    .local v0, "grantedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;>;"
    if-nez v0, :cond_ce

    .line 155
    :try_start_8c
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 156
    iget v1, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v13, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    iget v1, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v22, ""
    :try_end_9b
    .catchall {:try_start_8c .. :try_end_9b} :catchall_c1

    const/16 v23, 0x1

    const/16 v24, 0x10

    move/from16 v25, v1

    move-object/from16 v1, p0

    move-object/from16 v26, v2

    move/from16 v2, v25

    move-object/from16 v25, v3

    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v25, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v3, v22

    move-object/from16 v27, v4

    .end local v4    # "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    .local v27, "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    move/from16 v4, v23

    move-object/from16 v22, v5

    move/from16 v23, v6

    .end local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6    # "size":I
    .local v22, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local v23, "size":I
    move-wide/from16 v5, v16

    move/from16 v28, v7

    .end local v7    # "userId":I
    .local v28, "userId":I
    move/from16 v7, v24

    :try_start_b9
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppPermissionTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_bd

    goto :goto_da

    .line 163
    .end local v0    # "grantedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;>;"
    :catchall_bd
    move-exception v0

    move-object/from16 v1, v27

    goto :goto_ff

    .end local v22    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v23    # "size":I
    .end local v25    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v27    # "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    .end local v28    # "userId":I
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    .restart local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v6    # "size":I
    .restart local v7    # "userId":I
    :catchall_c1
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v28, v7

    move-object v1, v4

    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    .end local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6    # "size":I
    .end local v7    # "userId":I
    .restart local v22    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v23    # "size":I
    .restart local v25    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v27    # "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    .restart local v28    # "userId":I
    goto :goto_ff

    .line 154
    .end local v22    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v23    # "size":I
    .end local v25    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v27    # "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    .end local v28    # "userId":I
    .restart local v0    # "grantedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;>;"
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    .restart local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v6    # "size":I
    .restart local v7    # "userId":I
    :cond_ce
    move-object/from16 v26, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v28, v7

    .line 162
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    .end local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6    # "size":I
    .end local v7    # "userId":I
    .restart local v22    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v23    # "size":I
    .restart local v25    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v27    # "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    .restart local v28    # "userId":I
    :goto_da
    move-object/from16 v1, v27

    .end local v27    # "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    .local v1, "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    :try_start_dc
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 163
    nop

    .end local v0    # "grantedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;>;"
    monitor-exit v26

    .line 144
    .end local v1    # "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    .end local v14    # "permission":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_e1
    add-int/lit8 v1, v19, 0x1

    move/from16 v0, v18

    move/from16 v2, v20

    move/from16 v4, v21

    move-object/from16 v5, v22

    move/from16 v6, v23

    move-object/from16 v3, v25

    move/from16 v7, v28

    goto/16 :goto_4f

    .line 163
    .end local v22    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v23    # "size":I
    .end local v25    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v28    # "userId":I
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    .restart local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v6    # "size":I
    .restart local v7    # "userId":I
    .restart local v14    # "permission":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_f3
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    move-object v1, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v28, v7

    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    .end local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6    # "size":I
    .end local v7    # "userId":I
    .restart local v1    # "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    .restart local v22    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v23    # "size":I
    .restart local v25    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v28    # "userId":I
    :goto_ff
    monitor-exit v26
    :try_end_100
    .catchall {:try_start_dc .. :try_end_100} :catchall_101

    throw v0

    :catchall_101
    move-exception v0

    goto :goto_ff

    .line 144
    .end local v1    # "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    .end local v14    # "permission":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v21    # "i":I
    .end local v22    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v23    # "size":I
    .end local v25    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v28    # "userId":I
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v4, "i":I
    .restart local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v6    # "size":I
    .restart local v7    # "userId":I
    :cond_103
    move/from16 v18, v0

    move-object/from16 v25, v3

    move/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v28, v7

    .line 142
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "i":I
    .end local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6    # "size":I
    .end local v7    # "userId":I
    .restart local v21    # "i":I
    .restart local v22    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v23    # "size":I
    .restart local v28    # "userId":I
    add-int/lit8 v4, v21, 0x1

    .end local v21    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_44

    .end local v22    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v23    # "size":I
    .end local v28    # "userId":I
    .restart local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v6    # "size":I
    .restart local v7    # "userId":I
    :cond_113
    move/from16 v18, v0

    move/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v28, v7

    .line 136
    .end local v4    # "i":I
    .end local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6    # "size":I
    .end local v7    # "userId":I
    .end local v16    # "now":J
    :goto_11d
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v18

    goto/16 :goto_28

    .line 167
    :cond_123
    return-void
.end method

.method private onPermissionTrackerEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 436
    iget-boolean v0, p0, Lcom/android/server/am/AppPermissionTracker;->mLockedBootCompleted:Z

    if-nez v0, :cond_5

    .line 438
    return-void

    .line 440
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    .line 441
    .local v0, "pm":Landroid/permission/PermissionManager;
    if-eqz p1, :cond_1b

    .line 442
    invoke-virtual {v0, p0}, Landroid/permission/PermissionManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 443
    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppPermissionTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_28

    .line 445
    :cond_1b
    invoke-virtual {v0, p0}, Landroid/permission/PermissionManager;->removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 446
    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppPermissionTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 448
    :goto_28
    return-void
.end method

.method private startWatchingMode([Ljava/lang/Integer;)V
    .registers 10
    .param p1, "ops"    # [Ljava/lang/Integer;

    .line 363
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 364
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionTracker;->stopWatchingMode()V

    .line 365
    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getIAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2c

    .line 367
    .local v1, "appOpsService":Lcom/android/internal/app/IAppOpsService;
    :try_start_c
    array-length v2, p1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_28

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 368
    .local v4, "op":I
    new-instance v5, Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;-><init>(Lcom/android/server/am/AppPermissionTracker;Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback-IA;)V

    .line 369
    .local v5, "cb":Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;
    iget-object v7, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    const/4 v7, 0x1

    invoke-interface {v1, v4, v6, v7, v5}, Lcom/android/internal/app/IAppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_25} :catch_29
    .catchall {:try_start_c .. :try_end_25} :catchall_2c

    .line 367
    .end local v4    # "op":I
    .end local v5    # "cb":Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 375
    :cond_28
    goto :goto_2a

    .line 373
    :catch_29
    move-exception v2

    .line 376
    .end local v1    # "appOpsService":Lcom/android/internal/app/IAppOpsService;
    :goto_2a
    :try_start_2a
    monitor-exit v0

    .line 377
    return-void

    .line 376
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private stopWatchingMode()V
    .registers 5

    .line 380
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 381
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getIAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    .line 382
    .local v1, "appOpsService":Lcom/android/internal/app/IAppOpsService;
    iget-object v2, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2a

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_23

    .line 384
    :try_start_13
    iget-object v3, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v1, v3}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_1f
    .catchall {:try_start_13 .. :try_end_1e} :catchall_2a

    .line 387
    goto :goto_20

    .line 385
    :catch_1f
    move-exception v3

    .line 382
    :goto_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 389
    .end local v2    # "i":I
    :cond_23
    :try_start_23
    iget-object v2, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 390
    .end local v1    # "appOpsService":Lcom/android/internal/app/IAppOpsService;
    monitor-exit v0

    .line 391
    return-void

    .line 390
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_2a

    throw v1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 458
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 459
    const-string v0, "APP PERMISSIONS TRACKER:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    iget-object v0, v1, Lcom/android/server/am/AppPermissionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->getBgPermissionsInMonitor()[Landroid/util/Pair;

    move-result-object v3

    .line 461
    .local v3, "permissions":[Landroid/util/Pair;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 462
    .local v5, "prefixMore":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 463
    .local v6, "prefixMoreMore":Ljava/lang/String;
    array-length v0, v3

    const/4 v7, 0x0

    :goto_42
    if-ge v7, v0, :cond_111

    aget-object v8, v3, v7

    .line 464
    .local v8, "permission":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 466
    .local v9, "emptyPermissionName":Z
    if-nez v9, :cond_5a

    .line 467
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 469
    :cond_5a
    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7b

    .line 470
    if-nez v9, :cond_6c

    .line 471
    const/16 v10, 0x2b

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(C)V

    .line 473
    :cond_6c
    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 475
    :cond_7b
    const/16 v10, 0x3a

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(C)V

    .line 476
    iget-object v10, v1, Lcom/android/server/am/AppPermissionTracker;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 477
    :try_start_83
    iget-object v11, v1, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    .line 479
    .local v11, "uidPerms":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;>;>;"
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 480
    const/16 v12, 0x5b

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 481
    const/4 v12, 0x0

    .line 482
    .local v12, "needDelimiter":Z
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v14

    .local v14, "size":I
    :goto_93
    if-ge v13, v14, :cond_f4

    .line 483
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArraySet;

    .line 484
    .local v15, "uidPerm":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;>;"
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v17, v0

    move/from16 v0, v16

    .local v0, "j":I
    :goto_a5
    if-ltz v0, :cond_e7

    .line 485
    invoke-virtual {v15, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    :try_end_ad
    .catchall {:try_start_83 .. :try_end_ad} :catchall_10a

    move-object/from16 v18, v16

    .line 486
    .local v18, "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    move-object/from16 v16, v3

    move-object/from16 v1, v18

    .end local v3    # "permissions":[Landroid/util/Pair;
    .end local v18    # "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    .local v1, "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    .local v16, "permissions":[Landroid/util/Pair;
    :try_start_b3
    iget v3, v1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_de

    iget-object v3, v1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    iget-object v4, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    .line 487
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 488
    if-eqz v12, :cond_d2

    .line 489
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 491
    :cond_d2
    const/4 v3, 0x1

    .line 492
    .end local v12    # "needDelimiter":Z
    .local v3, "needDelimiter":Z
    iget v4, v1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 493
    move v12, v3

    goto :goto_e9

    .line 484
    .end local v1    # "state":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    .end local v3    # "needDelimiter":Z
    .restart local v12    # "needDelimiter":Z
    :cond_de
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v3, v16

    goto :goto_a5

    .end local v16    # "permissions":[Landroid/util/Pair;
    .local v3, "permissions":[Landroid/util/Pair;
    :cond_e7
    move-object/from16 v16, v3

    .line 482
    .end local v0    # "j":I
    .end local v3    # "permissions":[Landroid/util/Pair;
    .end local v15    # "uidPerm":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;>;"
    .restart local v16    # "permissions":[Landroid/util/Pair;
    :goto_e9
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v3, v16

    move/from16 v0, v17

    goto :goto_93

    .end local v16    # "permissions":[Landroid/util/Pair;
    .restart local v3    # "permissions":[Landroid/util/Pair;
    :cond_f4
    move/from16 v17, v0

    move-object/from16 v16, v3

    .line 497
    .end local v3    # "permissions":[Landroid/util/Pair;
    .end local v13    # "i":I
    .end local v14    # "size":I
    .restart local v16    # "permissions":[Landroid/util/Pair;
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 498
    .end local v11    # "uidPerms":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;>;>;"
    .end local v12    # "needDelimiter":Z
    monitor-exit v10

    .line 463
    .end local v8    # "permission":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "emptyPermissionName":Z
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v3, v16

    move/from16 v0, v17

    goto/16 :goto_42

    .line 498
    .end local v16    # "permissions":[Landroid/util/Pair;
    .restart local v3    # "permissions":[Landroid/util/Pair;
    .restart local v8    # "permission":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v9    # "emptyPermissionName":Z
    :catchall_10a
    move-exception v0

    move-object/from16 v16, v3

    .end local v3    # "permissions":[Landroid/util/Pair;
    .restart local v16    # "permissions":[Landroid/util/Pair;
    :goto_10d
    monitor-exit v10
    :try_end_10e
    .catchall {:try_start_b3 .. :try_end_10e} :catchall_10f

    throw v0

    :catchall_10f
    move-exception v0

    goto :goto_10d

    .line 500
    .end local v8    # "permission":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "emptyPermissionName":Z
    .end local v16    # "permissions":[Landroid/util/Pair;
    .restart local v3    # "permissions":[Landroid/util/Pair;
    :cond_111
    invoke-super/range {p0 .. p2}, Lcom/android/server/am/BaseAppStateTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method getType()I
    .registers 2

    .line 109
    const/4 v0, 0x5

    return v0
.end method

.method onLockedBootCompleted()V
    .registers 2

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/AppPermissionTracker;->mLockedBootCompleted:Z

    .line 453
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/AppPermissionTracker;->onPermissionTrackerEnabled(Z)V

    .line 454
    return-void
.end method

.method public onPermissionsChanged(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 114
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/AppPermissionTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 115
    return-void
.end method
