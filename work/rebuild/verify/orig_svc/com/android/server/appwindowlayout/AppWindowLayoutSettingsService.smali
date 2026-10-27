.class public Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;
.super Lcom/android/server/SystemService;
.source "AppWindowLayoutSettingsService.java"


# instance fields
.field public final mBackgroundThread:Landroid/os/HandlerThread;

.field public final mContext:Landroid/content/Context;

.field public final mIPackageManager:Landroid/content/pm/IPackageManager;

.field public mIsPackageMonitorRegistered:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPackageMonitor:Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor;

.field public final mUserStorageMap:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$j503rdEpk9UwyWGEY0kocYVNLVQ(Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->onPackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mUserStorageMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mIsPackageMonitorRegistered:Z

    .line 94
    iput-object p1, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 96
    new-instance p1, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor;

    invoke-direct {p1}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mPackageMonitor:Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor;

    .line 97
    new-instance v0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor;->setCallback(Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor$PackageAddedCallback;)V

    .line 98
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "AppWinLayoutSetService"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 100
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor;)V
    .registers 5

    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mUserStorageMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mIsPackageMonitorRegistered:Z

    .line 108
    iput-object p1, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 110
    iput-object p3, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mPackageMonitor:Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor;

    .line 111
    new-instance p1, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;)V

    invoke-virtual {p3, p1}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor;->setCallback(Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor$PackageAddedCallback;)V

    .line 112
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "AppWinLayoutSetService"

    const/16 p3, 0xa

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 114
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method private onPackageAdded(Ljava/lang/String;I)V
    .registers 9

    .line 149
    const-string v0, "AppWinLayoutSetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notified package installed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_19
    invoke-virtual {p0, p2}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->createAndGetStorage(I)Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;

    move-result-object v1

    .line 152
    invoke-virtual {v1, p1}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->getAndRemoveUserAspectRatioForPackage(Ljava/lang/String;)I

    move-result v2

    .line 153
    const-string v3, "AppWinLayoutSetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found aspect ratio: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_47

    .line 156
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->checkExistingAspectRatioAndApplyRestore(Ljava/lang/String;II)V

    goto :goto_47

    :catchall_45
    move-exception p0

    goto :goto_52

    .line 161
    :cond_47
    :goto_47
    invoke-virtual {v1}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->hasDataStored()Z

    move-result p1

    if-nez p1, :cond_50

    .line 162
    invoke-virtual {p0}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->unregisterPackageMonitor()V

    .line 164
    :cond_50
    monitor-exit v0

    return-void

    :goto_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_19 .. :try_end_53} :catchall_45

    throw p0
.end method


# virtual methods
.method public awaitPackageInstallForAspectRatio(Ljava/lang/String;II)V
    .registers 7

    .line 139
    const-string v0, "AppWinLayoutSetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Await package installed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to restore aspect ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_21
    invoke-virtual {p0, p2}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->createAndGetStorage(I)Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->storePackageAndUserAspectRatio(Ljava/lang/String;I)V

    .line 144
    invoke-virtual {p0}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->registerPackageMonitor()V

    .line 145
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final checkExistingAspectRatioAndApplyRestore(Ljava/lang/String;II)V
    .registers 7

    .line 199
    const-string v0, "AppWinLayoutSetService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->getUserMinAspectRatio(Ljava/lang/String;I)I

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_34

    .line 203
    const-string v2, " for package: "

    if-eqz v1, :cond_36

    .line 204
    :try_start_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not restoring user aspect ratio: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " as it is already set to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_34
    move-exception p0

    goto :goto_56

    .line 209
    :cond_36
    iget-object p0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->setUserMinAspectRatio(Ljava/lang/String;II)V

    .line 210
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Restored user aspect ratio: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_55} :catch_34

    return-void

    .line 212
    :goto_56
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not restore user aspect ratio for package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final createAndGetStorage(I)Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;
    .registers 6

    .line 169
    iget-object v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mUserStorageMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    .line 170
    iget-object v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mUserStorageMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;

    iget-object v2, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mContext:Landroid/content/Context;

    .line 171
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;-><init>(Landroid/content/Context;ILjava/time/InstantSource;)V

    .line 170
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    :cond_18
    iget-object p0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mUserStorageMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;

    return-object p0
.end method

.method public onStart()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_3
    const-class v1, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;

    invoke-static {v1, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->registerPackageMonitor()V

    .line 127
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final registerPackageMonitor()V
    .registers 5

    .line 178
    iget-boolean v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mIsPackageMonitorRegistered:Z

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mIsPackageMonitorRegistered:Z

    .line 180
    iget-object v1, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mPackageMonitor:Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, p0, v3, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 182
    const-string p0, "AppWinLayoutSetService"

    const-string v0, "Registered package monitor for restoring aspect ratios."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public final unregisterPackageMonitor()V
    .registers 2

    .line 188
    iget-boolean v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mIsPackageMonitorRegistered:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mIsPackageMonitorRegistered:Z

    .line 190
    iget-object p0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;->mPackageMonitor:Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 191
    const-string p0, "AppWinLayoutSetService"

    const-string v0, "Unregistered package monitor."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method
