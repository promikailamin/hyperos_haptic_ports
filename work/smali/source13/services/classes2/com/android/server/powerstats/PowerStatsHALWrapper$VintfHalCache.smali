.class Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;
.super Ljava/lang/Object;
.source "PowerStatsHALWrapper.java"

# interfaces
.implements Ljava/util/function/Supplier;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/PowerStatsHALWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VintfHalCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Landroid/hardware/power/stats/IPowerStats;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field private mInstance:Landroid/hardware/power/stats/IPowerStats;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized binderDied()V
    .registers 3

    monitor-enter p0

    .line 366
    :try_start_1
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerStats HAL died"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 368
    monitor-exit p0

    return-void

    .line 365
    .end local p0    # "this":Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Landroid/hardware/power/stats/IPowerStats;
    .registers 6

    monitor-enter p0

    .line 349
    :try_start_1
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;

    if-nez v0, :cond_39

    .line 350
    const-string v0, "android.hardware.power.stats.IPowerStats/default"

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 352
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_39

    .line 353
    invoke-static {v0}, Landroid/hardware/power/stats/IPowerStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/power/stats/IPowerStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_3d

    .line 355
    const/4 v1, 0x0

    :try_start_18
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_3d

    .line 358
    goto :goto_39

    .line 356
    .end local p0    # "this":Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;
    :catch_1c
    move-exception v1

    .line 357
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1d
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to register DeathRecipient for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_3d

    monitor-exit p0

    return-object v0

    .line 348
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 343
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->get()Landroid/hardware/power/stats/IPowerStats;

    move-result-object v0

    return-object v0
.end method
