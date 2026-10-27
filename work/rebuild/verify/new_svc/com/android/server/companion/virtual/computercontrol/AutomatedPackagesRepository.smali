.class public Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;
.super Ljava/lang/Object;
.source "AutomatedPackagesRepository.java"


# static fields
.field public static final AUTOMATED_APP_LAUNCH_WARNING_ACTIVITY:Landroid/content/ComponentName;

.field public static final EMPTY_SET:Landroid/util/ArraySet;

.field public static final TAG:Ljava/lang/String; = "AutomatedPackagesRepository"


# instance fields
.field public final mAutomatedPackageListeners:Landroid/os/RemoteCallbackList;

.field public final mAutomatedPackages:Landroid/util/ArrayMap;

.field public final mDeviceOwnerPackageNames:Landroid/util/SparseArray;

.field public final mDevicePackages:Landroid/util/SparseArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mInterceptedLaunches:Landroid/util/ArraySet;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$8xnzWsdV3O9bc97VNN5gGHv7A6c(Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->lambda$notifyAutomatedPackagesChanged$2(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J6rWpCu-etnYGy3GL452ChL1b2U(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Landroid/companion/virtual/computercontrol/IAutomatedPackageListener;)V
    .registers 4

    .line 256
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/companion/virtual/computercontrol/IAutomatedPackageListener;->onAutomatedPackagesChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 259
    sget-object p1, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to invoke onAutomatedPackagesChanged listener: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 259
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 54
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->EMPTY_SET:Landroid/util/ArraySet;

    .line 59
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.virtualdevicemanager"

    const-string v2, "com.android.virtualdevicemanager.AutomatedAppLaunchWarningActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->AUTOMATED_APP_LAUNCH_WARNING_ACTIVITY:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mAutomatedPackageListeners:Landroid/os/RemoteCallbackList;

    .line 73
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mAutomatedPackages:Landroid/util/ArrayMap;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mDevicePackages:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mDeviceOwnerPackageNames:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mInterceptedLaunches:Landroid/util/ArraySet;

    .line 92
    iput-object p1, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final synthetic lambda$notifyAutomatedPackagesChanged$2(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 6

    .line 253
    iget-object v0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mAutomatedPackageListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 263
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final mapUserIdToPackages(Landroid/util/ArraySet;)Landroid/util/SparseArray;
    .registers 6

    .line 233
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    .line 234
    :goto_6
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 235
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 236
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 237
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 238
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 239
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    :cond_2c
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3b

    .line 243
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_3e
    return-object p0
.end method

.method public final notifyAutomatedPackagesChanged(Ljava/lang/String;Ljava/util/List;I)V
    .registers 6

    .line 251
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 252
    iget-object v0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerAutomatedPackageListener(Landroid/companion/virtual/computercontrol/IAutomatedPackageListener;)V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mAutomatedPackageListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 99
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public unregisterAutomatedPackageListener(Landroid/companion/virtual/computercontrol/IAutomatedPackageListener;)V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mAutomatedPackageListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 106
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public update(ILjava/lang/String;Landroid/util/ArraySet;)V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->updateLocked(ILjava/lang/String;Landroid/util/ArraySet;)V

    .line 156
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final updateLocked(ILjava/lang/String;Landroid/util/ArraySet;)V
    .registers 10

    .line 161
    invoke-virtual {p3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 162
    iget-object p3, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mDeviceOwnerPackageNames:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 163
    iget-object p3, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mDevicePackages:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1f

    .line 165
    :cond_11
    iget-object v0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mDeviceOwnerPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mDevicePackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p3}, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mapUserIdToPackages(Landroid/util/ArraySet;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    :goto_1f
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    const/4 p3, 0x0

    move v0, p3

    .line 173
    :goto_26
    iget-object v1, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mDevicePackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_79

    .line 174
    iget-object v1, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mDevicePackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 175
    iget-object v2, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mDeviceOwnerPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_76

    .line 180
    :cond_43
    iget-object v1, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mDevicePackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    move v2, p3

    .line 181
    :goto_4c
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_76

    .line 182
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 183
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 184
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 185
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p1, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    :cond_6a
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_76
    :goto_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 191
    :cond_79
    iget-object v0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mAutomatedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 193
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    if-eqz v0, :cond_9d

    move v2, p3

    .line 195
    :goto_89
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_9d

    .line 196
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    :cond_9d
    move v2, p3

    .line 199
    :goto_9e
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_b2

    .line 200
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    .line 204
    :cond_b2
    :goto_b2
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge p3, v2, :cond_e9

    .line 205
    invoke-virtual {v1, p3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v0, :cond_c6

    const/4 v3, 0x0

    goto :goto_cc

    .line 207
    :cond_c6
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 208
    :goto_cc
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 210
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    goto :goto_e6

    :cond_d9
    if-nez v4, :cond_de

    .line 218
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_e3

    .line 219
    :cond_de
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 220
    :goto_e3
    invoke-virtual {p0, p2, v3, v2}, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->notifyAutomatedPackagesChanged(Ljava/lang/String;Ljava/util/List;I)V

    :goto_e6
    add-int/lit8 p3, p3, 0x1

    goto :goto_b2

    .line 224
    :cond_e9
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-nez p3, :cond_f5

    .line 225
    iget-object p0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mAutomatedPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 227
    :cond_f5
    iget-object p0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->mAutomatedPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
