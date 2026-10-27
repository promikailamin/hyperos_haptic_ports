.class public Landroid/app/backup/RestoreSession;
.super Ljava/lang/Object;
.source "RestoreSession.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/RestoreSession$RestoreObserverWrapper;
    }
.end annotation


# static fields
.field static final greylist-max-o TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field greylist-max-o mBinder:Landroid/app/backup/IRestoreSession;

.field final greylist-max-o mContext:Landroid/content/Context;

.field greylist-max-o mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    .registers 4

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 333
    iput-object p1, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    .line 334
    iput-object p2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    .line 335
    return-void
.end method


# virtual methods
.method public whitelist endRestoreSession()V
    .registers 4

    .line 320
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    invoke-interface {v1}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 324
    :goto_6
    iput-object v0, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    .line 325
    goto :goto_14

    .line 324
    :catchall_9
    move-exception v1

    goto :goto_15

    .line 321
    :catch_b
    move-exception v1

    .line 322
    :try_start_c
    const-string v1, "RestoreSession"

    const-string v2, "Can\'t contact server to get available sets"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_9

    goto :goto_6

    .line 326
    :goto_14
    return-void

    .line 324
    :goto_15
    iput-object v0, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    .line 325
    throw v1
.end method

.method public whitelist getAvailableRestoreSets(Landroid/app/backup/RestoreObserver;)I
    .registers 3

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/RestoreSession;->getAvailableRestoreSets(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I

    move-result p1

    return p1
.end method

.method public whitelist getAvailableRestoreSets(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    .registers 5

    .line 56
    nop

    .line 57
    new-instance v0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v1, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    .line 58
    if-nez p2, :cond_c

    .line 59
    const/4 p1, 0x0

    goto :goto_11

    .line 60
    :cond_c
    new-instance p1, Landroid/app/backup/BackupManagerMonitorWrapper;

    invoke-direct {p1, p2}, Landroid/app/backup/BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/BackupManagerMonitor;)V

    :goto_11
    nop

    .line 62
    :try_start_12
    iget-object p2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    invoke-interface {p2, v0, p1}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_19

    .line 65
    goto :goto_22

    .line 63
    :catch_19
    move-exception p1

    .line 64
    const-string p1, "RestoreSession"

    const-string p2, "Can\'t contact server to get available sets"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 66
    :goto_22
    return p1
.end method

.method public whitelist restoreAll(JLandroid/app/backup/RestoreObserver;)I
    .registers 5

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/backup/RestoreSession;->restoreAll(JLandroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I

    move-result p1

    return p1
.end method

.method public whitelist restoreAll(JLandroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    .registers 9

    .line 99
    nop

    .line 100
    iget-object v0, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    const-string v1, "RestoreSession"

    const/4 v2, -0x1

    if-eqz v0, :cond_f

    .line 101
    const-string/jumbo p1, "restoreAll() called during active restore"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v2

    .line 104
    :cond_f
    new-instance v0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3, p3}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    iput-object v0, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 105
    if-nez p4, :cond_1c

    .line 106
    const/4 p3, 0x0

    goto :goto_21

    .line 107
    :cond_1c
    new-instance p3, Landroid/app/backup/BackupManagerMonitorWrapper;

    invoke-direct {p3, p4}, Landroid/app/backup/BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/BackupManagerMonitor;)V

    :goto_21
    nop

    .line 109
    :try_start_22
    iget-object p4, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    iget-object v0, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    invoke-interface {p4, p1, p2, v0, p3}, Landroid/app/backup/IRestoreSession;->restoreAll(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v2
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2a} :catch_2b

    .line 112
    goto :goto_31

    .line 110
    :catch_2b
    move-exception p1

    .line 111
    const-string p1, "Can\'t contact server to restore"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_31
    return v2
.end method

.method public whitelist restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;)I
    .registers 4

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/backup/RestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I

    move-result p1

    return p1
.end method

.method public whitelist restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    .registers 8

    .line 274
    nop

    .line 275
    iget-object v0, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    const-string v1, "RestoreSession"

    const/4 v2, -0x1

    if-eqz v0, :cond_f

    .line 276
    const-string/jumbo p1, "restorePackage() called during active restore"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return v2

    .line 279
    :cond_f
    new-instance v0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3, p2}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    iput-object v0, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 280
    if-nez p3, :cond_1c

    .line 281
    const/4 p2, 0x0

    goto :goto_21

    .line 282
    :cond_1c
    new-instance p2, Landroid/app/backup/BackupManagerMonitorWrapper;

    invoke-direct {p2, p3}, Landroid/app/backup/BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/BackupManagerMonitor;)V

    :goto_21
    nop

    .line 284
    :try_start_22
    iget-object p3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    iget-object v0, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    invoke-interface {p3, p1, v0, p2}, Landroid/app/backup/IRestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v2
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2a} :catch_2b

    .line 287
    goto :goto_31

    .line 285
    :catch_2b
    move-exception p1

    .line 286
    const-string p1, "Can\'t contact server to restore package"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_31
    return v2
.end method

.method public whitelist restorePackages(JLandroid/app/backup/RestoreObserver;Ljava/util/Set;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/app/backup/RestoreObserver;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 192
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/RestoreSession;->restorePackages(JLandroid/app/backup/RestoreObserver;Ljava/util/Set;Landroid/app/backup/BackupManagerMonitor;)I

    move-result p1

    return p1
.end method

.method public whitelist restorePackages(JLandroid/app/backup/RestoreObserver;Ljava/util/Set;Landroid/app/backup/BackupManagerMonitor;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/app/backup/RestoreObserver;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/BackupManagerMonitor;",
            ")I"
        }
    .end annotation

    .line 155
    nop

    .line 156
    iget-object v0, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    const-string v1, "RestoreSession"

    const/4 v2, -0x1

    if-eqz v0, :cond_f

    .line 157
    const-string/jumbo p1, "restoreAll() called during active restore"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v2

    .line 160
    :cond_f
    new-instance v0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3, p3}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    iput-object v0, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 161
    if-nez p5, :cond_1d

    .line 162
    const/4 p3, 0x0

    move-object v8, p3

    goto :goto_23

    .line 163
    :cond_1d
    new-instance p3, Landroid/app/backup/BackupManagerMonitorWrapper;

    invoke-direct {p3, p5}, Landroid/app/backup/BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/BackupManagerMonitor;)V

    move-object v8, p3

    :goto_23
    nop

    .line 165
    :try_start_24
    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    iget-object v6, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p4, p3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    check-cast v7, [Ljava/lang/String;

    move-wide v4, p1

    invoke-interface/range {v3 .. v8}, Landroid/app/backup/IRestoreSession;->restorePackages(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v2
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_37} :catch_38

    .line 169
    goto :goto_3e

    .line 167
    :catch_38
    move-exception v0

    .line 168
    const-string p1, "Can\'t contact server to restore packages"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_3e
    return v2
.end method

.method public greylist restoreSome(JLandroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;[Ljava/lang/String;)I
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    new-instance v4, Ljava/util/HashSet;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    invoke-direct {v4, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/RestoreSession;->restorePackages(JLandroid/app/backup/RestoreObserver;Ljava/util/Set;Landroid/app/backup/BackupManagerMonitor;)I

    move-result p1

    return p1
.end method

.method public greylist restoreSome(JLandroid/app/backup/RestoreObserver;[Ljava/lang/String;)I
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/RestoreSession;->restoreSome(JLandroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
