.class public Lcom/android/server/notification/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 2295
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 2298
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_fa

    .line 2310
    :cond_c
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    const-string v5, "android.intent.action.PACKAGES_UNSUSPENDED"

    const-string v6, "android.intent.action.PACKAGES_SUSPENDED"

    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    const/4 v8, 0x0

    if-nez v3, :cond_50

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 2311
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    const-string v9, "android.intent.action.PACKAGE_RESTARTED"

    .line 2312
    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4e

    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    .line 2313
    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_52

    .line 2314
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_52

    .line 2315
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_52

    .line 2316
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_52

    .line 2317
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fa

    goto :goto_52

    :cond_4e
    move v9, v8

    goto :goto_52

    :cond_50
    move v3, v8

    move v9, v3

    .line 2318
    :cond_52
    :goto_52
    const-string v10, "android.intent.extra.user_handle"

    const/4 v11, -0x1

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-eqz v3, :cond_66

    .line 2322
    const-string v3, "android.intent.extra.REPLACING"

    .line 2323
    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_66

    move v3, v12

    goto :goto_67

    :cond_66
    move v3, v8

    .line 2324
    :goto_67
    sget-boolean v13, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v14, "NotificationService"

    if-eqz v13, :cond_89

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "action="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " removing="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    :cond_89
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v13, "android.intent.extra.changed_uid_list"

    const-string v15, "android.intent.extra.changed_package_list"

    if-eqz v7, :cond_9f

    .line 2326
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2327
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    :goto_9b
    move v4, v8

    move v5, v4

    goto/16 :goto_12e

    .line 2328
    :cond_9f
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 2329
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2330
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    move v5, v8

    move v4, v12

    move v12, v5

    goto/16 :goto_12e

    .line 2333
    :cond_b2
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c5

    .line 2334
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2335
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    move v4, v8

    move v5, v12

    move v12, v4

    goto/16 :goto_12e

    .line 2338
    :cond_c5
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 2339
    const-string v0, "android.intent.extra.distraction_restrictions"

    .line 2340
    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_df

    .line 2344
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2345
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    move v4, v8

    goto :goto_e9

    .line 2349
    :cond_df
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2350
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    move v4, v12

    move v12, v8

    :goto_e9
    move v5, v4

    move v4, v12

    move v12, v8

    goto :goto_12e

    .line 2355
    :cond_ed
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_f4

    goto :goto_fa

    .line 2359
    :cond_f4
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_fb

    :cond_fa
    :goto_fa
    return-void

    :cond_fb
    if-eqz v9, :cond_11a

    .line 2366
    :try_start_fd
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-eq v10, v11, :cond_105

    move v5, v10

    goto :goto_106

    :cond_105
    move v5, v8

    :goto_106
    invoke-interface {v0, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_10a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fd .. :try_end_10a} :catch_110
    .catch Landroid/os/RemoteException; {:try_start_fd .. :try_end_10a} :catch_11a

    if-eq v0, v12, :cond_10e

    if-nez v0, :cond_11a

    :cond_10e
    move v0, v8

    goto :goto_11b

    :catch_110
    move-exception v0

    .line 2377
    sget-boolean v5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v5, :cond_11a

    .line 2378
    const-string v5, "Exception trying to look up app enabled setting"

    invoke-static {v14, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_11a
    :cond_11a
    move v0, v12

    .line 2384
    :goto_11b
    new-array v5, v12, [Ljava/lang/String;

    aput-object v4, v5, v8

    .line 2385
    new-array v4, v12, [I

    const-string v6, "android.intent.extra.UID"

    invoke-virtual {v2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    aput v2, v4, v8

    move v12, v0

    move-object v2, v4

    move-object v0, v5

    goto/16 :goto_9b

    :goto_12e
    if-eqz v0, :cond_157

    .line 2387
    array-length v6, v0

    if-lez v6, :cond_157

    if-eqz v12, :cond_159

    .line 2389
    array-length v4, v0

    :goto_136
    if-ge v8, v4, :cond_157

    aget-object v15, v0, v8

    .line 2390
    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_UID()I

    move-result v13

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_PID()I

    move-result v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x5

    move/from16 v19, v10

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V

    move/from16 v6, v19

    add-int/lit8 v8, v8, 0x1

    move v10, v6

    goto :goto_136

    :cond_157
    move v6, v10

    goto :goto_173

    :cond_159
    move v6, v10

    if-eqz v4, :cond_167

    if-eqz v2, :cond_167

    .line 2393
    array-length v4, v2

    if-lez v4, :cond_167

    .line 2394
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, v0, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhideNotificationsForPackages(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V

    goto :goto_173

    :cond_167
    if-eqz v5, :cond_173

    if-eqz v2, :cond_173

    .line 2395
    array-length v4, v2

    if-lez v4, :cond_173

    .line 2396
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, v0, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$munhideNotificationsForPackages(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V

    .line 2399
    :cond_173
    :goto_173
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v1, v3, v6, v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    return-void
.end method
