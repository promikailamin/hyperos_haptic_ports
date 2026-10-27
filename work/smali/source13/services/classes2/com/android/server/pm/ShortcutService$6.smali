.class Lcom/android/server/pm/ShortcutService$6;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    .line 3723
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3726
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3727
    .local v0, "userId":I
    if-ne v0, v1, :cond_23

    .line 3728
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent broadcast does not contain user handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    return-void

    .line 3732
    :cond_23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3736
    .local v1, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 3738
    .local v2, "token":J
    :try_start_2d
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v4}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_34} :catch_d4
    .catchall {:try_start_2d .. :try_end_34} :catchall_d2

    .line 3739
    :try_start_34
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v0}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v5

    if-nez v5, :cond_43

    .line 3744
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_cf

    .line 3782
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3744
    return-void

    .line 3746
    :cond_43
    :try_start_43
    monitor-exit v4
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_cf

    .line 3748
    :try_start_44
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 3749
    .local v4, "intentUri":Landroid/net/Uri;
    if-eqz v4, :cond_4f

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    goto :goto_50

    .line 3750
    :cond_4f
    const/4 v5, 0x0

    :goto_50
    nop

    .line 3751
    .local v5, "packageName":Ljava/lang/String;
    if-nez v5, :cond_71

    .line 3752
    const-string v6, "ShortcutService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Intent broadcast does not contain package name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_6b} :catch_d4
    .catchall {:try_start_44 .. :try_end_6b} :catchall_d2

    .line 3782
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v6, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3753
    return-void

    .line 3756
    :cond_71
    :try_start_71
    const-string v6, "android.intent.extra.REPLACING"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 3758
    .local v6, "replacing":Z
    const/4 v8, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_ea

    :cond_80
    goto :goto_a8

    :sswitch_81
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_80

    goto :goto_a9

    :sswitch_8a
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    const/4 v7, 0x1

    goto :goto_a9

    :sswitch_94
    const-string v7, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    const/4 v7, 0x3

    goto :goto_a9

    :sswitch_9e
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    const/4 v7, 0x2

    goto :goto_a9

    :goto_a8
    move v7, v8

    :goto_a9
    packed-switch v7, :pswitch_data_fc

    goto :goto_dc

    .line 3776
    :pswitch_ad
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v7, v5, v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageDataCleared(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_dc

    .line 3772
    :pswitch_b3
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v7, v5, v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageChanged(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 3774
    goto :goto_dc

    .line 3767
    :pswitch_b9
    if-nez v6, :cond_dc

    .line 3768
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v7, v5, v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageRemoved(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_dc

    .line 3760
    :pswitch_c1
    if-eqz v6, :cond_c9

    .line 3761
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v7, v5, v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageUpdateFinished(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_dc

    .line 3763
    :cond_c9
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v7, v5, v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageAdded(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_ce} :catch_d4
    .catchall {:try_start_71 .. :try_end_ce} :catchall_d2

    .line 3765
    goto :goto_dc

    .line 3746
    .end local v4    # "intentUri":Landroid/net/Uri;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "replacing":Z
    :catchall_cf
    move-exception v5

    :try_start_d0
    monitor-exit v4
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    .end local v0    # "userId":I
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/pm/ShortcutService$6;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :try_start_d1
    throw v5
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d2} :catch_d4
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_d2

    .line 3782
    .restart local v0    # "userId":I
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutService$6;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catchall_d2
    move-exception v4

    goto :goto_e3

    .line 3779
    :catch_d4
    move-exception v4

    .line 3780
    .local v4, "e":Ljava/lang/Exception;
    :try_start_d5
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    const-string v6, "Exception in mPackageMonitor.onReceive"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_dc
    .catchall {:try_start_d5 .. :try_end_dc} :catchall_d2

    .line 3782
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_dc
    :goto_dc
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3783
    nop

    .line 3784
    return-void

    .line 3782
    :goto_e3
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3783
    throw v4

    nop

    :sswitch_data_ea
    .sparse-switch
        0xa480416 -> :sswitch_9e
        0xff13fb5 -> :sswitch_94
        0x1f50b9c2 -> :sswitch_8a
        0x5c1076e2 -> :sswitch_81
    .end sparse-switch

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_c1
        :pswitch_b9
        :pswitch_b3
        :pswitch_ad
    .end packed-switch
.end method
