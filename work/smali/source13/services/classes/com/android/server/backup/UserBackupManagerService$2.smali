.class Lcom/android/server/backup/UserBackupManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "UserBackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/UserBackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 1296
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onReceive$0$com-android-server-backup-UserBackupManagerService$2(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "components"    # [Ljava/lang/String;

    .line 1344
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->onPackageChanged(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onReceive$1$com-android-server-backup-UserBackupManagerService$2(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1399
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onReceive$2$com-android-server-backup-UserBackupManagerService$2(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1427
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmTransportManager(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->onPackageRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1298
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_2a

    .line 1299
    const-string v0, "BackupManagerService"

    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v3}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmUserId(Lcom/android/server/backup/UserBackupManagerService;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received broadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$smaddUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_2a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1303
    .local v3, "action":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1304
    .local v0, "replacing":Z
    const/4 v4, 0x0

    .line 1305
    .local v4, "added":Z
    const/4 v5, 0x0

    .line 1306
    .local v5, "changed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 1307
    .local v6, "extras":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 1309
    .local v7, "packageList":[Ljava/lang/String;
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_80

    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    .line 1310
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_80

    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    .line 1311
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    goto :goto_80

    .line 1351
    :cond_50
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 1352
    const/4 v4, 0x1

    .line 1353
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move v7, v5

    move v5, v4

    move v4, v0

    goto/16 :goto_117

    .line 1354
    :cond_65
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7a

    .line 1355
    const/4 v4, 0x0

    .line 1356
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move v7, v5

    move v5, v4

    move v4, v0

    goto/16 :goto_117

    .line 1354
    :cond_7a
    move-object v8, v7

    move v7, v5

    move v5, v4

    move v4, v0

    goto/16 :goto_117

    .line 1312
    :cond_80
    :goto_80
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 1313
    .local v8, "uri":Landroid/net/Uri;
    if-nez v8, :cond_87

    .line 1314
    return-void

    .line 1317
    :cond_87
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 1318
    .local v10, "packageName":Ljava/lang/String;
    if-eqz v10, :cond_93

    .line 1319
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    aput-object v10, v11, v9

    move-object v7, v11

    .line 1322
    :cond_93
    const-string v11, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1323
    if-eqz v5, :cond_107

    .line 1325
    const-string v9, "android.intent.extra.changed_component_name_list"

    .line 1326
    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1329
    .local v9, "components":[Ljava/lang/String;
    sget-boolean v11, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v11, :cond_f8

    .line 1330
    const-string v11, "BackupManagerService"

    iget-object v12, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v12}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmUserId(Lcom/android/server/backup/UserBackupManagerService;)I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " changed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1332
    invoke-static {v12, v13}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$smaddUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1330
    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_ce
    array-length v12, v9

    if-ge v11, v12, :cond_f8

    .line 1335
    const-string v12, "BackupManagerService"

    iget-object v13, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v13}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmUserId(Lcom/android/server/backup/UserBackupManagerService;)I

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "   * "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v9, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1337
    invoke-static {v13, v14}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$smaddUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1335
    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    add-int/lit8 v11, v11, 0x1

    goto :goto_ce

    .line 1342
    .end local v11    # "i":I
    :cond_f8
    iget-object v11, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v11}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmBackupHandler(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v11

    new-instance v12, Lcom/android/server/backup/UserBackupManagerService$2$$ExternalSyntheticLambda0;

    invoke-direct {v12, v1, v10, v9}, Lcom/android/server/backup/UserBackupManagerService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1346
    return-void

    .line 1349
    .end local v9    # "components":[Ljava/lang/String;
    :cond_107
    const-string v11, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1350
    const-string v11, "android.intent.extra.REPLACING"

    invoke-virtual {v6, v11, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1351
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v10    # "packageName":Ljava/lang/String;
    move-object v8, v7

    move v7, v5

    move v5, v4

    move v4, v0

    .line 1359
    .end local v0    # "replacing":Z
    .local v4, "replacing":Z
    .local v5, "added":Z
    .local v7, "changed":Z
    .local v8, "packageList":[Ljava/lang/String;
    :goto_117
    if-eqz v8, :cond_221

    array-length v0, v8

    if-nez v0, :cond_120

    move-object/from16 v16, v3

    goto/16 :goto_223

    .line 1363
    :cond_120
    const-string v0, "android.intent.extra.UID"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1364
    .local v10, "uid":I
    if-eqz v5, :cond_1f4

    .line 1365
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmBackupParticipants(Lcom/android/server/backup/UserBackupManagerService;)Landroid/util/SparseArray;

    move-result-object v11

    monitor-enter v11

    .line 1366
    if-eqz v4, :cond_13c

    .line 1370
    :try_start_131
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0, v8, v10}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$mremovePackageParticipantsLocked(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V
    :try_end_136
    .catchall {:try_start_131 .. :try_end_136} :catchall_137

    goto :goto_13c

    .line 1373
    :catchall_137
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_1f0

    .line 1372
    :cond_13c
    :goto_13c
    :try_start_13c
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0, v8}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$maddPackageParticipantsLocked(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;)V

    .line 1373
    monitor-exit v11
    :try_end_142
    .catchall {:try_start_13c .. :try_end_142} :catchall_1ed

    .line 1375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1376
    .local v11, "now":J
    array-length v13, v8

    move v14, v9

    :goto_148
    if-ge v14, v13, :cond_1e3

    aget-object v15, v8, v14

    .line 1378
    .local v15, "packageName":Ljava/lang/String;
    :try_start_14c
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/backup/UserBackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v9}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmUserId(Lcom/android/server/backup/UserBackupManagerService;)I

    move-result v9

    .line 1379
    const/4 v2, 0x0

    invoke-virtual {v0, v15, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v9, v0

    .line 1381
    .local v9, "app":Landroid/content/pm/PackageInfo;
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmScheduledBackupEligibility(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_18a

    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmScheduledBackupEligibility(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v0

    iget-object v2, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1382
    invoke-virtual {v0, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_187

    .line 1384
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v15, v11, v12}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 1385
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_17f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14c .. :try_end_17f} :catch_1b3

    move-object/from16 v16, v3

    .end local v3    # "action":Ljava/lang/String;
    .local v16, "action":Ljava/lang/String;
    const-wide/16 v2, 0x0

    :try_start_183
    invoke-virtual {v0, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_19e

    .line 1382
    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_187
    move-object/from16 v16, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    goto :goto_18c

    .line 1381
    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_18a
    move-object/from16 v16, v3

    .line 1392
    .end local v3    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    :goto_18c
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmQueueLock(Lcom/android/server/backup/UserBackupManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_193
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_183 .. :try_end_193} :catch_1b1

    .line 1393
    :try_start_193
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0, v15}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$mdequeueFullBackupLocked(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;)V

    .line 1394
    monitor-exit v2
    :try_end_199
    .catchall {:try_start_193 .. :try_end_199} :catchall_1ae

    .line 1395
    :try_start_199
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$mwriteFullBackupScheduleAsync(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 1398
    :goto_19e
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmBackupHandler(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v0

    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v15}, Lcom/android/server/backup/UserBackupManagerService$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_1ac
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_199 .. :try_end_1ac} :catch_1b1

    .line 1408
    nop

    .end local v9    # "app":Landroid/content/pm/PackageInfo;
    goto :goto_1da

    .line 1394
    .restart local v9    # "app":Landroid/content/pm/PackageInfo;
    :catchall_1ae
    move-exception v0

    :try_start_1af
    monitor-exit v2
    :try_end_1b0
    .catchall {:try_start_1af .. :try_end_1b0} :catchall_1ae

    .end local v4    # "replacing":Z
    .end local v5    # "added":Z
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "changed":Z
    .end local v8    # "packageList":[Ljava/lang/String;
    .end local v10    # "uid":I
    .end local v11    # "now":J
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "action":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService$2;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :try_start_1b0
    throw v0
    :try_end_1b1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b0 .. :try_end_1b1} :catch_1b1

    .line 1400
    .end local v9    # "app":Landroid/content/pm/PackageInfo;
    .restart local v4    # "replacing":Z
    .restart local v5    # "added":Z
    .restart local v6    # "extras":Landroid/os/Bundle;
    .restart local v7    # "changed":Z
    .restart local v8    # "packageList":[Ljava/lang/String;
    .restart local v10    # "uid":I
    .restart local v11    # "now":J
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService$2;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catch_1b1
    move-exception v0

    goto :goto_1b6

    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :catch_1b3
    move-exception v0

    move-object/from16 v16, v3

    .line 1402
    .end local v3    # "action":Ljava/lang/String;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v16    # "action":Ljava/lang/String;
    :goto_1b6
    const-string v2, "BackupManagerService"

    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v3}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmUserId(Lcom/android/server/backup/UserBackupManagerService;)I

    move-result v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v17, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "Can\'t resolve new app "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1404
    invoke-static {v3, v0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$smaddUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1402
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1da
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    const/4 v9, 0x0

    goto/16 :goto_148

    .line 1414
    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_1e3
    move-object/from16 v16, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    const-string v2, "@pm@"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1415
    .end local v11    # "now":J
    goto :goto_220

    .line 1373
    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :catchall_1ed
    move-exception v0

    move-object/from16 v16, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    :goto_1f0
    :try_start_1f0
    monitor-exit v11
    :try_end_1f1
    .catchall {:try_start_1f0 .. :try_end_1f1} :catchall_1f2

    throw v0

    :catchall_1f2
    move-exception v0

    goto :goto_1f0

    .line 1416
    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_1f4
    move-object/from16 v16, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    if-nez v4, :cond_209

    .line 1420
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmBackupParticipants(Lcom/android/server/backup/UserBackupManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 1421
    :try_start_1ff
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0, v8, v10}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$mremovePackageParticipantsLocked(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V

    .line 1422
    monitor-exit v2

    goto :goto_209

    :catchall_206
    move-exception v0

    monitor-exit v2
    :try_end_208
    .catchall {:try_start_1ff .. :try_end_208} :catchall_206

    throw v0

    .line 1425
    :cond_209
    :goto_209
    array-length v0, v8

    const/4 v9, 0x0

    :goto_20b
    if-ge v9, v0, :cond_220

    aget-object v2, v8, v9

    .line 1426
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v3}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmBackupHandler(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v3

    new-instance v11, Lcom/android/server/backup/UserBackupManagerService$2$$ExternalSyntheticLambda2;

    invoke-direct {v11, v1, v2}, Lcom/android/server/backup/UserBackupManagerService$2$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1425
    .end local v2    # "packageName":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_20b

    .line 1430
    :cond_220
    :goto_220
    return-void

    .line 1359
    .end local v10    # "uid":I
    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_221
    move-object/from16 v16, v3

    .line 1360
    .end local v3    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    :goto_223
    return-void
.end method
