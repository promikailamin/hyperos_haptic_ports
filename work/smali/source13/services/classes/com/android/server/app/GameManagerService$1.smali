.class Lcom/android/server/app/GameManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/app/GameManagerService;->registerPackageReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/app/GameManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/app/GameManagerService;

    .line 1571
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1574
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1576
    .local v0, "data":Landroid/net/Uri;
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$1;->getSendingUserId()I

    move-result v1

    .line 1577
    .local v1, "userId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-eq v1, v2, :cond_f

    .line 1578
    return-void

    .line 1580
    :cond_f
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_13} :catch_ca

    .line 1582
    .local v2, "packageName":Ljava/lang/String;
    :try_start_13
    iget-object v3, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v3}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x20000

    .line 1583
    invoke-virtual {v3, v2, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1586
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    if-ne v4, v5, :cond_2e

    .line 1587
    invoke-static {}, Lcom/android/server/app/GameManagerServiceStub;->getInstance()Lcom/android/server/app/GameManagerServiceStub;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/app/GameManagerServiceStub;->toggleDownscale(Ljava/lang/String;)V

    .line 1590
    :cond_2e
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_30} :catch_34
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_30} :catch_ca

    if-eqz v4, :cond_33

    .line 1591
    return-void

    .line 1595
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_33
    goto :goto_35

    .line 1593
    :catch_34
    move-exception v3

    .line 1596
    :goto_35
    :try_start_35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v5, :sswitch_data_d4

    :cond_43
    goto :goto_57

    :sswitch_44
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    move v4, v7

    goto :goto_57

    :sswitch_4e
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    move v4, v6

    :goto_57
    packed-switch v4, :pswitch_data_de

    goto :goto_c9

    .line 1601
    :pswitch_5b
    iget-object v3, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/app/GameManagerService;->disableCompatScale(Ljava/lang/String;)V

    .line 1609
    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_c9

    .line 1610
    iget-object v3, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v3}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmOverrideConfigLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_6f
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_6f} :catch_ca

    .line 1611
    :try_start_6f
    iget-object v4, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v4}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmOverrideConfigs(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    monitor-exit v3
    :try_end_79
    .catchall {:try_start_6f .. :try_end_79} :catchall_bc

    .line 1613
    :try_start_79
    iget-object v3, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v3}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmDeviceConfigLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_80
    .catch Ljava/lang/NullPointerException; {:try_start_79 .. :try_end_80} :catch_ca

    .line 1614
    :try_start_80
    iget-object v4, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v4}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmConfigs(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    monitor-exit v3
    :try_end_8a
    .catchall {:try_start_80 .. :try_end_8a} :catchall_b9

    .line 1616
    :try_start_8a
    iget-object v3, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v3}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_91
    .catch Ljava/lang/NullPointerException; {:try_start_8a .. :try_end_91} :catch_ca

    .line 1617
    :try_start_91
    iget-object v4, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v4}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 1618
    iget-object v4, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v4}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/app/GameManagerSettings;

    invoke-virtual {v4, v2}, Lcom/android/server/app/GameManagerSettings;->removeGame(Ljava/lang/String;)V

    .line 1620
    :cond_b4
    monitor-exit v3

    goto :goto_c9

    :catchall_b6
    move-exception v4

    monitor-exit v3
    :try_end_b8
    .catchall {:try_start_91 .. :try_end_b8} :catchall_b6

    .end local v0    # "data":Landroid/net/Uri;
    .end local p0    # "this":Lcom/android/server/app/GameManagerService$1;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :try_start_b8
    throw v4
    :try_end_b9
    .catch Ljava/lang/NullPointerException; {:try_start_b8 .. :try_end_b9} :catch_ca

    .line 1615
    .restart local v0    # "data":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/android/server/app/GameManagerService$1;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catchall_b9
    move-exception v4

    :try_start_ba
    monitor-exit v3
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    .end local v0    # "data":Landroid/net/Uri;
    .end local p0    # "this":Lcom/android/server/app/GameManagerService$1;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :try_start_bb
    throw v4
    :try_end_bc
    .catch Ljava/lang/NullPointerException; {:try_start_bb .. :try_end_bc} :catch_ca

    .line 1612
    .restart local v0    # "data":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/android/server/app/GameManagerService$1;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catchall_bc
    move-exception v4

    :try_start_bd
    monitor-exit v3
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    .end local v0    # "data":Landroid/net/Uri;
    .end local p0    # "this":Lcom/android/server/app/GameManagerService$1;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :try_start_be
    throw v4

    .line 1598
    .restart local v0    # "data":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/android/server/app/GameManagerService$1;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    :pswitch_bf
    iget-object v3, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    new-array v4, v6, [Ljava/lang/String;

    aput-object v2, v4, v7

    invoke-virtual {v3, v1, v4}, Lcom/android/server/app/GameManagerService;->updateConfigsForUser(I[Ljava/lang/String;)V
    :try_end_c8
    .catch Ljava/lang/NullPointerException; {:try_start_be .. :try_end_c8} :catch_ca

    .line 1599
    nop

    .line 1629
    .end local v1    # "userId":I
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_c9
    :goto_c9
    goto :goto_d2

    .line 1627
    :catch_ca
    move-exception v1

    .line 1628
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "GameManagerService"

    const-string v3, "Failed to get package name for new package"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_d2
    return-void

    nop

    :sswitch_data_d4
    .sparse-switch
        0x1f50b9c2 -> :sswitch_4e
        0x5c1076e2 -> :sswitch_44
    .end sparse-switch

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_5b
    .end packed-switch
.end method
