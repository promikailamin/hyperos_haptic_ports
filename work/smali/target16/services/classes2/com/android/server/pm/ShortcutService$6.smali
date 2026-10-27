.class public Lcom/android/server/pm/ShortcutService$6;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2

    .line 3621
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    .line 3624
    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_21

    .line 3626
    const-string p0, "ShortcutService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent broadcast does not contain user handle: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3630
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3634
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v1

    .line 3636
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    iget-object v3, v3, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_51
    .catchall {:try_start_2b .. :try_end_30} :catchall_4e

    .line 3637
    :try_start_30
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v4

    if-nez v4, :cond_42

    .line 3642
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_3f

    .line 3693
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    :catchall_3f
    move-exception p1

    goto/16 :goto_1a8

    .line 3644
    :cond_42
    :try_start_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3f

    .line 3646
    :try_start_43
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 3647
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_55

    :catchall_4e
    move-exception p1

    goto/16 :goto_1b7

    :catch_51
    move-exception p1

    goto/16 :goto_1aa

    :cond_54
    const/4 v3, 0x0

    :goto_55
    if-nez v3, :cond_73

    .line 3650
    const-string p1, "ShortcutService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent broadcast does not contain package name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_6d} :catch_51
    .catchall {:try_start_43 .. :try_end_6d} :catchall_4e

    .line 3693
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    .line 3654
    :cond_73
    :try_start_73
    const-string v4, "android.intent.extra.REPLACING"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 3655
    const-string v6, "android.intent.extra.ARCHIVAL"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 3657
    const-string v6, "ShortcutService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received package broadcast intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_1be

    goto/16 :goto_1a2

    :sswitch_a0
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a2

    if-eqz v4, :cond_d0

    .line 3661
    const-string p2, "ShortcutService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replacing package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2, v3, p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageUpdateFinished(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto/16 :goto_1a2

    .line 3664
    :cond_d0
    const-string p2, "ShortcutService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2, v3, p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageAdded(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto/16 :goto_1a2

    .line 3658
    :sswitch_f5
    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a2

    if-eqz v4, :cond_103

    if-eqz v4, :cond_1a2

    if-eqz v5, :cond_1a2

    :cond_103
    if-nez v4, :cond_125

    .line 3671
    const-string p2, "ShortcutService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removing package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_145

    :cond_125
    if-eqz v5, :cond_145

    .line 3674
    const-string p2, "ShortcutService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "archiving package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    :cond_145
    :goto_145
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2, v3, p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageRemoved(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_1a2

    .line 3658
    :sswitch_14b
    const-string p2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a2

    .line 3685
    const-string p2, "ShortcutService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearing data for package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2, v3, p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageDataCleared(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_1a2

    .line 3658
    :sswitch_177
    const-string p2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a2

    .line 3681
    const-string p2, "ShortcutService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changing package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2, v3, p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageChanged(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_1a2} :catch_51
    .catchall {:try_start_73 .. :try_end_1a2} :catchall_4e

    .line 3693
    :cond_1a2
    :goto_1a2
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    .line 3644
    :goto_1a8
    :try_start_1a8
    monitor-exit v3
    :try_end_1a9
    .catchall {:try_start_1a8 .. :try_end_1a9} :catchall_3f

    :try_start_1a9
    throw p1
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1aa} :catch_51
    .catchall {:try_start_1a9 .. :try_end_1aa} :catchall_4e

    .line 3691
    :goto_1aa
    :try_start_1aa
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    const-string v0, "Exception in mPackageMonitor.onReceive"

    invoke-virtual {p2, v0, p1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b1
    .catchall {:try_start_1aa .. :try_end_1b1} :catchall_4e

    .line 3693
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    :goto_1b7
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3694
    throw p1

    nop

    :sswitch_data_1be
    .sparse-switch
        0xa480416 -> :sswitch_177
        0xff13fb5 -> :sswitch_14b
        0x1f50b9c2 -> :sswitch_f5
        0x5c1076e2 -> :sswitch_a0
    .end sparse-switch
.end method
