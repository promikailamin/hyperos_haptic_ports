.class public Lcom/android/server/appbinding/AppBindingService$3;
.super Landroid/content/BroadcastReceiver;
.source "AppBindingService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appbinding/AppBindingService;


# direct methods
.method public constructor <init>(Lcom/android/server/appbinding/AppBindingService;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService$3;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 331
    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 332
    const-string v1, "AppBindingService"

    if-ne p1, v0, :cond_21

    .line 333
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Intent broadcast does not contain user handle: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 337
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_29

    goto/16 :goto_ab

    .line 342
    :cond_29
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 343
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$3;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$monUserRemoved(Lcom/android/server/appbinding/AppBindingService;I)V

    return-void

    .line 347
    :cond_37
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 348
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    if-nez v2, :cond_5a

    .line 351
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Intent broadcast does not contain package name: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 355
    :cond_5a
    const-string v1, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 357
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_b2

    :goto_6c
    move v3, v4

    goto :goto_98

    :sswitch_6e
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto :goto_6c

    :cond_77
    const/4 v3, 0x3

    goto :goto_98

    :sswitch_79
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto :goto_6c

    :cond_82
    const/4 v3, 0x2

    goto :goto_98

    :sswitch_84
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto :goto_6c

    :cond_8d
    const/4 v3, 0x1

    goto :goto_98

    :sswitch_8f
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto :goto_6c

    :cond_98
    :goto_98
    packed-switch v3, :pswitch_data_c4

    goto :goto_ab

    :pswitch_9c
    if-eqz p2, :cond_ab

    .line 360
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$3;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {p0, v2, p1}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$mhandlePackageAddedReplacing(Lcom/android/server/appbinding/AppBindingService;Ljava/lang/String;I)V

    return-void

    :pswitch_a4
    if-nez p2, :cond_ab

    .line 369
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$3;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {p0, p1, v2}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$monAppRemoved(Lcom/android/server/appbinding/AppBindingService;ILjava/lang/String;)V

    :cond_ab
    :goto_ab
    return-void

    .line 364
    :pswitch_ac
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$3;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {p0, v2, p1}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$mhandlePackageAddedReplacing(Lcom/android/server/appbinding/AppBindingService;Ljava/lang/String;I)V

    return-void

    :sswitch_data_b2
    .sparse-switch
        0xa480416 -> :sswitch_8f
        0x1f50b9c2 -> :sswitch_84
        0x5c1076e2 -> :sswitch_79
        0x5e33a4ad -> :sswitch_6e
    .end sparse-switch

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_a4
        :pswitch_9c
        :pswitch_a4
    .end packed-switch
.end method
