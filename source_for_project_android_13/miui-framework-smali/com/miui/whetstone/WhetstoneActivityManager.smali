.class public abstract Lcom/miui/whetstone/WhetstoneActivityManager;
.super Ljava/lang/Object;
.source "WhetstoneActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;
    }
.end annotation


# static fields
.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "whetstone.activity"

.field private static blacklist ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfputws(Lcom/miui/whetstone/server/IWhetstoneActivityManager;)V
    .registers 1

    sput-object p0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addAppToServiceControlWhitelist(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p0, "listPkg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 79
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    .line 81
    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->addAppToServiceControlWhitelist(Ljava/util/List;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 84
    goto :goto_f

    .line 82
    :catch_b
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 86
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static blacklist bindWhetstoneService(Landroid/os/IBinder;)V
    .registers 2
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 199
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 200
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    .line 202
    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->bindWhetstoneService(Landroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 205
    goto :goto_f

    .line 203
    :catch_b
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 207
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static blacklist checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "threshold"    # J

    .line 175
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 176
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    .line 178
    :try_start_7
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 181
    goto :goto_f

    .line 179
    :catch_b
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 183
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static blacklist checkIfPackageIsLocked(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 139
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 140
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_10

    .line 142
    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->checkIfPackageIsLocked(Ljava/lang/String;)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v0

    .line 143
    :catch_c
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 147
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist checkIfPackageIsLocked(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 151
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 152
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_10

    .line 154
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->checkIfPackageIsLockedWithUserId(Ljava/lang/String;I)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v0

    .line 155
    :catch_c
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 159
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist checkService()V
    .registers 0

    .line 61
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->getService()Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    .line 62
    return-void
.end method

.method public static blacklist clearDeadAppFromNative()V
    .registers 1

    .line 187
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 188
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    .line 190
    :try_start_7
    invoke-interface {v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->clearDeadAppFromNative()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 193
    goto :goto_f

    .line 191
    :catch_b
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static blacklist doDesSocketForUid(Ljava/lang/String;[IZ)V
    .registers 4
    .param p0, "fwType"    # Ljava/lang/String;
    .param p1, "uids"    # [I
    .param p2, "isWhitelistUid"    # Z

    .line 273
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 274
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    .line 276
    :try_start_7
    invoke-interface {v0, p0, p1, p2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->doDesSocketForUid(Ljava/lang/String;[IZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 279
    goto :goto_f

    .line 277
    :catch_b
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 281
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static blacklist doRestoreSockForUid(Ljava/lang/String;)V
    .registers 2
    .param p0, "fwType"    # Ljava/lang/String;

    .line 284
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 285
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    .line 287
    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->doRestoreSockForUid(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 290
    goto :goto_f

    .line 288
    :catch_b
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 292
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static blacklist getAndroidCachedEmptyProcessMemory()Ljava/lang/Long;
    .registers 4

    .line 102
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 103
    const-wide/16 v0, 0x0

    .line 104
    .local v0, "totoalMemory":J
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_13

    .line 106
    :try_start_9
    invoke-interface {v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getAndroidCachedEmptyProcessMemory()J

    move-result-wide v2
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_f

    move-wide v0, v2

    .line 109
    goto :goto_13

    .line 107
    :catch_f
    move-exception v2

    .line 108
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 111
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getAppOpsManager()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 438
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 439
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_16

    .line 441
    :try_start_7
    invoke-interface {v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getAppOpsManager()Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v0

    .line 442
    :catch_c
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getConnProviderNames(Ljava/lang/String;ILjava/util/List;)Z
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 382
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 383
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_16

    .line 385
    :try_start_7
    invoke-interface {v0, p0, p1, p2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getConnProviderNames(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v0

    .line 386
    :catch_c
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getGnssStatus()I
    .registers 3

    .line 565
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 566
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_16

    .line 568
    :try_start_7
    invoke-interface {v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getGnssStatus()I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v0

    .line 569
    :catch_c
    move-exception v0

    .line 570
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getGpsPkg()Ljava/lang/String;
    .registers 3

    .line 510
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 511
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_16

    .line 513
    :try_start_7
    invoke-interface {v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getGpsPkg()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v0

    .line 514
    :catch_c
    move-exception v0

    .line 515
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getPackageNamebyPid(I)Ljava/lang/String;
    .registers 3
    .param p0, "callingPid"    # I

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 212
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_12

    .line 214
    :try_start_8
    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getPackageNamebyPid(I)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_e

    move-object v0, v1

    .line 217
    goto :goto_12

    .line 215
    :catch_e
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_12
    return-object v0
.end method

.method private static blacklist getService()Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    .registers 3

    .line 46
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-nez v0, :cond_28

    .line 47
    const-string v0, "whetstone.activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    .line 49
    if-eqz v0, :cond_28

    .line 50
    :try_start_12
    new-instance v1, Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;

    invoke-direct {v1, v0}, Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;-><init>(Lcom/miui/whetstone/server/IWhetstoneActivityManager;)V

    move-object v0, v1

    .line 51
    .local v0, "death":Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_23

    goto :goto_28

    .line 53
    .end local v0    # "death":Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;
    :catch_23
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    nop

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_28
    :goto_28
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    return-object v0
.end method

.method public static blacklist getSleepStateGpsStopTime()I
    .registers 3

    .line 495
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 496
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_16

    .line 498
    :try_start_7
    invoke-interface {v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getSleepStateGpsStopTime()I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v0

    .line 499
    :catch_c
    move-exception v0

    .line 500
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getStatusBarNotification(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 550
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 551
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_16

    .line 553
    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getAppStatusBarNotification(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v0

    .line 554
    :catch_c
    move-exception v0

    .line 555
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getSystemPid()I
    .registers 2

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "ret":I
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 251
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_12

    .line 253
    :try_start_8
    invoke-interface {v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getSystemPid()I

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_e

    move v0, v1

    .line 256
    goto :goto_12

    .line 254
    :catch_e
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_12
    return v0
.end method

.method public static blacklist initGmsChain(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "rule"    # Ljava/lang/String;

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 319
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_12

    .line 321
    :try_start_8
    invoke-interface {v1, p0, p1, p2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->initGmsChain(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_e

    move v0, v1

    .line 324
    goto :goto_12

    .line 322
    :catch_e
    move-exception v1

    .line 323
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 326
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return v0
.end method

.method public static blacklist isEmptyOfGpsCallback()Z
    .registers 3

    .line 480
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 481
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_16

    .line 483
    :try_start_7
    invoke-interface {v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->isEmptyOfGpsCallback()Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v0

    .line 484
    :catch_c
    move-exception v0

    .line 485
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist modifySuspendBaseTime()V
    .registers 1

    .line 306
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 307
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    .line 309
    :try_start_7
    invoke-interface {v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->modifySuspendBaseTime()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 312
    goto :goto_f

    .line 310
    :catch_b
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 314
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static blacklist notifyPkProcessDied(Landroid/os/IBinder;)V
    .registers 2
    .param p0, "token"    # Landroid/os/IBinder;

    .line 295
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 296
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    .line 298
    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->notifyPkProcessDied(Landroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 301
    goto :goto_f

    .line 299
    :catch_b
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 303
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static blacklist registVideoFpsCallBack(Lcom/miui/whetstone/IVideoFpsCallBack;)V
    .registers 4
    .param p0, "callback"    # Lcom/miui/whetstone/IVideoFpsCallBack;

    .line 526
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 527
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_17

    if-eqz p0, :cond_17

    .line 529
    :try_start_9
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->registVideoFpsCallBack(Lcom/miui/whetstone/IVideoFpsCallBack;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    .line 532
    goto :goto_17

    .line 530
    :catch_d
    move-exception v0

    .line 531
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public static blacklist removeAppFromServiceControlWhitelist(Ljava/lang/String;)V
    .registers 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 91
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    .line 93
    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->removeAppFromServiceControlWhitelist(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 96
    goto :goto_f

    .line 94
    :catch_b
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 98
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static blacklist removeTaskById(IZ)Z
    .registers 6
    .param p0, "taskId"    # I
    .param p1, "killProcess"    # Z

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 364
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_18

    .line 366
    :try_start_8
    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->removeTaskById(IZ)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_e

    move v0, v1

    .line 369
    goto :goto_18

    .line 367
    :catch_e
    move-exception v1

    .line 368
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "whetstone.activity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return v0
.end method

.method public static blacklist scheduleDestoryActivities(I)Z
    .registers 3
    .param p0, "pid"    # I

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 238
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_12

    .line 240
    :try_start_8
    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->distoryActivity(I)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_e

    move v0, v1

    .line 243
    goto :goto_12

    .line 241
    :catch_e
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_12
    return v0
.end method

.method public static blacklist scheduleTrimMemory(II)Z
    .registers 4
    .param p0, "pid"    # I
    .param p1, "level"    # I

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 225
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_10

    .line 227
    :try_start_8
    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->scheduleTrimMemory(II)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    .line 230
    goto :goto_10

    .line 228
    :catch_c
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_10
    return v0
.end method

.method public static blacklist setGmsBlockerEnable(IZ)V
    .registers 3
    .param p0, "uid"    # I
    .param p1, "enable"    # Z

    .line 261
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 262
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    .line 264
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->setGmsBlockerEnable(IZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 267
    goto :goto_f

    .line 265
    :catch_b
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 269
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static blacklist setGmsChainState(Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "enable"    # Z

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 332
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_12

    .line 334
    :try_start_8
    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->setGmsChainState(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_e

    move v0, v1

    .line 337
    goto :goto_12

    .line 335
    :catch_e
    move-exception v1

    .line 336
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 339
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return v0
.end method

.method public static blacklist setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "makeDefault"    # Z

    .line 424
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 425
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_15

    .line 427
    :try_start_7
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 430
    goto :goto_15

    .line 428
    :catch_b
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method public static blacklist setWhetstonePackageInfo(Ljava/util/List;Z)V
    .registers 5
    .param p1, "isAppend"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 399
    .local p0, "info":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/strategy/WhetstonePackageInfo;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 400
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_15

    .line 402
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->setWhetstonePackageInfo(Ljava/util/List;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 405
    goto :goto_15

    .line 403
    :catch_b
    move-exception v0

    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method public static blacklist sleepModeRegisterGpsCallback()V
    .registers 3

    .line 453
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 454
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_15

    .line 456
    :try_start_7
    invoke-interface {v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->sleepModeRegisterGpsCallback()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 459
    goto :goto_15

    .line 457
    :catch_b
    move-exception v0

    .line 458
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method public static blacklist sleepModeUnregisterGpsCallback()V
    .registers 3

    .line 466
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 467
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_15

    .line 469
    :try_start_7
    invoke-interface {v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->sleepModeUnregisterGpsCallback()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 472
    goto :goto_15

    .line 470
    :catch_b
    move-exception v0

    .line 471
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method public static blacklist unRegistVideoFpsCallBack(Lcom/miui/whetstone/IVideoFpsCallBack;)V
    .registers 4
    .param p0, "callback"    # Lcom/miui/whetstone/IVideoFpsCallBack;

    .line 536
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 537
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_17

    if-eqz p0, :cond_17

    .line 539
    :try_start_9
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->unRegistVideoFpsCallBack(Lcom/miui/whetstone/IVideoFpsCallBack;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    .line 542
    goto :goto_17

    .line 540
    :catch_d
    move-exception v0

    .line 541
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public static blacklist updateApplicationsMemoryThreshold(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p0, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 116
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    .line 118
    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateApplicationsMemoryThreshold(Ljava/util/List;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 121
    goto :goto_f

    .line 119
    :catch_b
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 123
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static blacklist updateFrameworkCommonConfig(Ljava/lang/String;)V
    .registers 2
    .param p0, "json"    # Ljava/lang/String;

    .line 343
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 344
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    .line 346
    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateFrameworkCommonConfig(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 349
    goto :goto_f

    .line 347
    :catch_b
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 351
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static blacklist updateUserLockedAppList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p0, "lockedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 128
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    .line 130
    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateUserLockedAppList(Ljava/util/List;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 133
    goto :goto_f

    .line 131
    :catch_b
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 135
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static blacklist updateUserLockedAppList(Ljava/util/List;I)V
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 163
    .local p0, "lockedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 164
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    .line 166
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateUserLockedAppListWithUserId(Ljava/util/List;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 169
    goto :goto_f

    .line 167
    :catch_b
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method


# virtual methods
.method public blacklist setPerformanceComponents([Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "names"    # [Landroid/content/ComponentName;

    .line 65
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "ret":Z
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_12

    .line 69
    :try_start_8
    invoke-interface {v1, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->setPerformanceComponents([Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_e

    move v0, v1

    .line 72
    goto :goto_12

    .line 70
    :catch_e
    move-exception v1

    .line 71
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 74
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return v0
.end method
