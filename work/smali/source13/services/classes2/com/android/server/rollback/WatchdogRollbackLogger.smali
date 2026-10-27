.class public final Lcom/android/server/rollback/WatchdogRollbackLogger;
.super Ljava/lang/Object;
.source "WatchdogRollbackLogger.java"


# static fields
.field private static final LOGGING_PARENT_KEY:Ljava/lang/String; = "android.content.pm.LOGGING_PARENT"

.field private static final TAG:Ljava/lang/String; = "WatchdogRollbackLogger"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static getLogPackage(Landroid/content/Context;Landroid/content/pm/VersionedPackage;)Landroid/content/pm/VersionedPackage;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "failingPackage"    # Landroid/content/pm/VersionedPackage;

    .line 90
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/rollback/WatchdogRollbackLogger;->getLoggingParentName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "logPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 92
    return-object v1

    .line 95
    :cond_c
    :try_start_c
    new-instance v2, Landroid/content/pm/VersionedPackage;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 96
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1e} :catch_21

    move-object v1, v2

    .line 99
    .local v1, "loggingParent":Landroid/content/pm/VersionedPackage;
    nop

    .line 100
    return-object v1

    .line 97
    .end local v1    # "loggingParent":Landroid/content/pm/VersionedPackage;
    :catch_21
    move-exception v2

    .line 98
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1
.end method

.method private static getLogPackages(Landroid/content/Context;Ljava/util/List;)Ljava/util/Set;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .line 111
    .local p1, "failedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 112
    .local v0, "parentPackages":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/VersionedPackage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    .local v2, "failedPackageName":Ljava/lang/String;
    new-instance v3, Landroid/content/pm/VersionedPackage;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v3}, Lcom/android/server/rollback/WatchdogRollbackLogger;->getLogPackage(Landroid/content/Context;Landroid/content/pm/VersionedPackage;)Landroid/content/pm/VersionedPackage;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v2    # "failedPackageName":Ljava/lang/String;
    goto :goto_9

    .line 115
    :cond_23
    return-object v0
.end method

.method private static getLoggingParentName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 66
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const v1, 0x40000080    # 2.0000305f

    .line 67
    .local v1, "flags":I
    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 68
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_13

    .line 69
    return-object v2

    .line 71
    :cond_13
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.content.pm.LOGGING_PARENT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_1c

    return-object v2

    .line 72
    .end local v1    # "flags":I
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_1c
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to discover logging parent package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WatchdogRollbackLogger"

    invoke-static {v4, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    return-object v2
.end method

.method public static logApexdRevert(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "failingNativeProcess"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 176
    .local p1, "failedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/android/server/rollback/WatchdogRollbackLogger;->getLogPackages(Landroid/content/Context;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 177
    .local v0, "logPackages":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/VersionedPackage;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/VersionedPackage;

    .line 178
    .local v2, "logPackage":Landroid/content/pm/VersionedPackage;
    const/4 v3, 0x2

    const/4 v4, 0x5

    invoke-static {v2, v3, v4, p2}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 182
    .end local v2    # "logPackage":Landroid/content/pm/VersionedPackage;
    goto :goto_8

    .line 183
    :cond_1a
    return-void
.end method

.method public static logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V
    .registers 12
    .param p0, "logPackage"    # Landroid/content/pm/VersionedPackage;
    .param p1, "type"    # I
    .param p2, "rollbackReason"    # I
    .param p3, "failingPackageName"    # Ljava/lang/String;

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watchdog event occurred with type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/rollback/WatchdogRollbackLogger;->rollbackTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " logPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rollbackReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    invoke-static {p2}, Lcom/android/server/rollback/WatchdogRollbackLogger;->rollbackReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failedPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    const-string v1, "WatchdogRollbackLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x0

    if-eqz p0, :cond_54

    .line 200
    const/16 v1, 0x93

    .line 203
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result v4

    new-array v7, v0, [B

    .line 200
    move v2, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IILjava/lang/String;[B)V

    goto :goto_61

    .line 211
    :cond_54
    const/16 v1, 0x93

    const/4 v4, 0x0

    new-array v7, v0, [B

    const-string v3, ""

    move v2, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IILjava/lang/String;[B)V

    .line 221
    :goto_61
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logTestProperties(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 222
    return-void
.end method

.method static logRollbackStatusOnBoot(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rollbackId"    # I
    .param p2, "logPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/rollback/RollbackInfo;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p3, "recentlyCommittedRollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 123
    .local v0, "packageInstaller":Landroid/content/pm/PackageInstaller;
    const/4 v1, 0x0

    .line 124
    .local v1, "rollback":Landroid/content/rollback/RollbackInfo;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/RollbackInfo;

    .line 125
    .local v3, "info":Landroid/content/rollback/RollbackInfo;
    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v4

    if-ne p1, v4, :cond_21

    .line 126
    move-object v1, v3

    .line 127
    goto :goto_22

    .line 129
    .end local v3    # "info":Landroid/content/rollback/RollbackInfo;
    :cond_21
    goto :goto_d

    .line 131
    :cond_22
    :goto_22
    const-string v2, "WatchdogRollbackLogger"

    if-nez v1, :cond_3e

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rollback info not found for last staged rollback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 138
    :cond_3e
    const/4 v3, 0x0

    .line 139
    .local v3, "oldLoggingPackage":Landroid/content/pm/VersionedPackage;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_69

    .line 140
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/rollback/PackageRollbackInfo;

    .line 141
    .local v5, "packageRollback":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v5}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 142
    invoke-virtual {v5}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v3

    .line 143
    goto :goto_69

    .line 145
    .end local v5    # "packageRollback":Landroid/content/rollback/PackageRollbackInfo;
    :cond_68
    goto :goto_4d

    .line 148
    :cond_69
    :goto_69
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v4

    .line 149
    .local v4, "sessionId":I
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    .line 150
    .local v5, "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-nez v5, :cond_8a

    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "On boot completed, could not load session id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 155
    :cond_8a
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v2

    const-string v6, ""

    const/4 v7, 0x0

    if-eqz v2, :cond_98

    .line 156
    const/4 v2, 0x2

    invoke-static {v3, v2, v7, v6}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    goto :goto_a2

    .line 159
    :cond_98
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 160
    const/4 v2, 0x3

    invoke-static {v3, v2, v7, v6}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 164
    :cond_a2
    :goto_a2
    return-void
.end method

.method private static logTestProperties(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V
    .registers 8
    .param p0, "logPackage"    # Landroid/content/pm/VersionedPackage;
    .param p1, "type"    # I
    .param p2, "rollbackReason"    # I
    .param p3, "failingPackageName"    # Ljava/lang/String;

    .line 239
    const-string/jumbo v0, "persist.sys.rollbacktest."

    .line 240
    .local v0, "prefix":Ljava/lang/String;
    const-string/jumbo v1, "persist.sys.rollbacktest.enabled"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_e

    .line 241
    return-void

    .line 243
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persist.sys.rollbacktest."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/rollback/WatchdogRollbackLogger;->rollbackTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".logPackage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_48

    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4a

    :cond_48
    const-string v3, ""

    :goto_4a
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".rollbackReason"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/android/server/rollback/WatchdogRollbackLogger;->rollbackReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".failedPackageName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method static mapFailureReasonToMetric(I)I
    .registers 2
    .param p0, "failureReason"    # I

    .line 252
    packed-switch p0, :pswitch_data_e

    .line 262
    const/4 v0, 0x0

    return v0

    .line 260
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 258
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 256
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 254
    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static rollbackReasonToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "reason"    # I

    .line 282
    packed-switch p0, :pswitch_data_16

    .line 294
    const-string v0, "UNKNOWN"

    return-object v0

    .line 292
    :pswitch_6
    const-string v0, "REASON_NATIVE_CRASH_DURING_BOOT"

    return-object v0

    .line 290
    :pswitch_9
    const-string v0, "REASON_APP_NOT_RESPONDING"

    return-object v0

    .line 288
    :pswitch_c
    const-string v0, "REASON_APP_CRASH"

    return-object v0

    .line 286
    :pswitch_f
    const-string v0, "REASON_EXPLICIT_HEALTH_CHECK"

    return-object v0

    .line 284
    :pswitch_12
    const-string v0, "REASON_NATIVE_CRASH"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static rollbackTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 267
    packed-switch p0, :pswitch_data_12

    .line 277
    const-string v0, "UNKNOWN"

    return-object v0

    .line 275
    :pswitch_6
    const-string v0, "ROLLBACK_BOOT_TRIGGERED"

    return-object v0

    .line 273
    :pswitch_9
    const-string v0, "ROLLBACK_FAILURE"

    return-object v0

    .line 271
    :pswitch_c
    const-string v0, "ROLLBACK_SUCCESS"

    return-object v0

    .line 269
    :pswitch_f
    const-string v0, "ROLLBACK_INITIATE"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
