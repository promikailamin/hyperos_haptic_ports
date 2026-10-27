.class public Lcom/android/server/backup/UserBackupManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "UserBackupManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public static synthetic $r8$lambda$FSrn3Khd_osfuiMCQcrEs0JWBao(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService$2;->lambda$onReceive$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GXD1lh2DRbXZk3YfuMD1mEBa0H8(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService$2;->lambda$onReceive$0(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vXK9N_a7d_goTyZJ8YiMwNjzmFg(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService$2;->lambda$onReceive$2(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 2

    .line 1239
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onReceive$0(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 1281
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->onPackageChanged(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$onReceive$1(Ljava/lang/String;)V
    .registers 2

    .line 1336
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$onReceive$2(Ljava/lang/String;)V
    .registers 2

    .line 1358
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->onPackageRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 1245
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1249
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1252
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_45

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 1253
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 1254
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_45

    .line 1288
    :cond_24
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1290
    const-string p1, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move p1, v3

    goto :goto_80

    .line 1291
    :cond_34
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 1293
    const-string p1, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :cond_42
    move p1, v3

    move v2, p1

    goto :goto_80

    .line 1255
    :cond_45
    :goto_45
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_4d

    goto/16 :goto_162

    .line 1260
    :cond_4d
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 1262
    new-array v4, v2, [Ljava/lang/String;

    aput-object v1, v4, v3

    .line 1265
    :cond_57
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 1268
    const-string p1, "android.intent.extra.changed_component_name_list"

    .line 1269
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1279
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p2}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmBackupHandler(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object p2

    new-instance v0, Lcom/android/server/backup/UserBackupManagerService$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/backup/UserBackupManagerService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1286
    :cond_74
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1287
    const-string p1, "android.intent.extra.REPLACING"

    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    :goto_80
    if-eqz v4, :cond_162

    .line 1296
    array-length p2, v4

    if-nez p2, :cond_87

    goto/16 :goto_162

    .line 1300
    :cond_87
    const-string p2, "android.intent.extra.UID"

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-eqz v2, :cond_139

    .line 1302
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmBackupParticipants(Lcom/android/server/backup/UserBackupManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_a1

    .line 1307
    :try_start_98
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p1, v4, p2}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$mremovePackageParticipantsLocked(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V

    goto :goto_a1

    :catchall_9e
    move-exception p0

    goto/16 :goto_137

    .line 1309
    :cond_a1
    :goto_a1
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p1, v4}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$maddPackageParticipantsLocked(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;)V

    .line 1310
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_98 .. :try_end_a7} :catchall_9e

    .line 1312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 1313
    array-length v0, v4

    move v1, v3

    :goto_ad
    if-ge v1, v0, :cond_12f

    aget-object v2, v4, v1

    .line 1315
    :try_start_b1
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/backup/UserBackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v6}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmUserId(Lcom/android/server/backup/UserBackupManagerService;)I

    move-result v6

    .line 1316
    invoke-virtual {v5, v2, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1318
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v6}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmScheduledBackupEligibility(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_e8

    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v6}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmScheduledBackupEligibility(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v6

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1319
    invoke-virtual {v6, v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_e8

    .line 1321
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5, v2, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 1322
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_fa

    .line 1329
    :cond_e8
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmQueueLock(Lcom/android/server/backup/UserBackupManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_ef
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b1 .. :try_end_ef} :catch_10c

    .line 1330
    :try_start_ef
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v6, v2}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$mdequeueFullBackupLocked(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;)V

    .line 1331
    monitor-exit v5
    :try_end_f5
    .catchall {:try_start_ef .. :try_end_f5} :catchall_109

    .line 1332
    :try_start_f5
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$mwriteFullBackupScheduleAsync(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 1335
    :goto_fa
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmBackupHandler(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v5

    new-instance v6, Lcom/android/server/backup/UserBackupManagerService$2$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v2}, Lcom/android/server/backup/UserBackupManagerService$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_108
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f5 .. :try_end_108} :catch_10c

    goto :goto_12b

    :catchall_109
    move-exception v6

    .line 1331
    :try_start_10a
    monitor-exit v5
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    :try_start_10b
    throw v6
    :try_end_10c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10b .. :try_end_10c} :catch_10c

    .line 1338
    :catch_10c
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v7}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmLogIdMsg(Lcom/android/server/backup/UserBackupManagerService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Can\'t resolve new app "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_ad

    .line 1345
    :cond_12f
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    const-string p1, "@pm@"

    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    return-void

    .line 1310
    :goto_137
    :try_start_137
    monitor-exit v0
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_9e

    throw p0

    :cond_139
    if-nez p1, :cond_14c

    .line 1351
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p1}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmBackupParticipants(Lcom/android/server/backup/UserBackupManagerService;)Landroid/util/SparseArray;

    move-result-object p1

    monitor-enter p1

    .line 1352
    :try_start_142
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0, v4, p2}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$mremovePackageParticipantsLocked(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V

    .line 1353
    monitor-exit p1

    goto :goto_14c

    :catchall_149
    move-exception p0

    monitor-exit p1
    :try_end_14b
    .catchall {:try_start_142 .. :try_end_14b} :catchall_149

    throw p0

    .line 1356
    :cond_14c
    :goto_14c
    array-length p1, v4

    :goto_14d
    if-ge v3, p1, :cond_162

    aget-object p2, v4, v3

    .line 1357
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmBackupHandler(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/backup/UserBackupManagerService$2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lcom/android/server/backup/UserBackupManagerService$2$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14d

    :cond_162
    :goto_162
    return-void
.end method
