.class public Lcom/android/server/appwidget/AppWidgetServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetServiceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 263
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 268
    :cond_7
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 270
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 271
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_33
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_cc

    goto :goto_82

    :sswitch_41
    const-string v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    goto :goto_82

    :cond_4a
    const/4 v4, 0x5

    goto :goto_82

    :sswitch_4c
    const-string v1, "android.intent.action.PACKAGE_UNSTOPPED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_55

    goto :goto_82

    :cond_55
    const/4 v4, 0x4

    goto :goto_82

    :sswitch_57
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    goto :goto_82

    :cond_60
    const/4 v4, 0x3

    goto :goto_82

    :sswitch_62
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    goto :goto_82

    :cond_6b
    const/4 v4, 0x2

    goto :goto_82

    :sswitch_6d
    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_76

    goto :goto_82

    :cond_76
    move v4, v2

    goto :goto_82

    :sswitch_78
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_81

    goto :goto_82

    :cond_81
    move v4, v3

    :goto_82
    packed-switch v4, :pswitch_data_e6

    .line 295
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    invoke-static {p1, p2, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$monPackageBroadcastReceived(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    return-void

    .line 286
    :pswitch_8f
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$monPackageBroadcastReceived(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    .line 287
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    invoke-static {p1, p2, v3, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mupdateWidgetPackageSuspensionMaskedState(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;ZI)V

    return-void

    .line 292
    :pswitch_a2
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mupdateWidgetPackageStoppedMaskedState(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;)V

    return-void

    .line 282
    :pswitch_a8
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$monPackageBroadcastReceived(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    .line 283
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    invoke-static {p1, p2, v2, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mupdateWidgetPackageSuspensionMaskedState(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;ZI)V

    return-void

    .line 277
    :pswitch_bb
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 278
    :try_start_c2
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mreloadWidgetsMaskedState(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 279
    monitor-exit p1

    return-void

    :catchall_c9
    move-exception p0

    monitor-exit p1
    :try_end_cb
    .catchall {:try_start_c2 .. :try_end_cb} :catchall_c9

    throw p0

    :sswitch_data_cc
    .sparse-switch
        -0x49d08e2b -> :sswitch_78
        -0x3bb3e592 -> :sswitch_6d
        -0x33813a72 -> :sswitch_62
        -0x2d2ad030 -> :sswitch_57
        0x375161f6 -> :sswitch_4c
        0x4cef8b35 -> :sswitch_41
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_bb
        :pswitch_a8
        :pswitch_bb
        :pswitch_a2
        :pswitch_a2
        :pswitch_8f
    .end packed-switch
.end method
