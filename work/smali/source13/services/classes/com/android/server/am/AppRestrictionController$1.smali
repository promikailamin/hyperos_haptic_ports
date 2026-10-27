.class Lcom/android/server/am/AppRestrictionController$1;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/AppRestrictionController;

    .line 350
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 353
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_100

    :cond_12
    goto :goto_63

    :sswitch_13
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x2

    goto :goto_64

    :sswitch_1d
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v4

    goto :goto_64

    :sswitch_27
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x4

    goto :goto_64

    :sswitch_31
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v3

    goto :goto_64

    :sswitch_3b
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x6

    goto :goto_64

    :sswitch_45
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x5

    goto :goto_64

    :sswitch_4f
    const-string v2, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x3

    goto :goto_64

    :sswitch_59
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x7

    goto :goto_64

    :goto_63
    move v1, v5

    :goto_64
    const-string v2, "android.intent.extra.REPLACING"

    const-string v6, "android.intent.extra.UID"

    const-string v7, "android.intent.extra.user_handle"

    packed-switch v1, :pswitch_data_122

    goto/16 :goto_fe

    .line 412
    :pswitch_6f
    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 413
    .local v1, "userId":I
    if-ltz v1, :cond_fe

    .line 414
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v2, v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserRemoved(Lcom/android/server/am/AppRestrictionController;I)V

    goto/16 :goto_fe

    .line 406
    .end local v1    # "userId":I
    :pswitch_7c
    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 407
    .restart local v1    # "userId":I
    if-ltz v1, :cond_87

    .line 408
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v2, v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserStopped(Lcom/android/server/am/AppRestrictionController;I)V

    .line 410
    .end local v1    # "userId":I
    :cond_87
    goto/16 :goto_fe

    .line 400
    :pswitch_89
    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 401
    .restart local v1    # "userId":I
    if-ltz v1, :cond_94

    .line 402
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v2, v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserStarted(Lcom/android/server/am/AppRestrictionController;I)V

    .line 404
    .end local v1    # "userId":I
    :cond_94
    goto :goto_fe

    .line 394
    :pswitch_95
    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 395
    .restart local v1    # "userId":I
    if-ltz v1, :cond_a0

    .line 396
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v2, v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserAdded(Lcom/android/server/am/AppRestrictionController;I)V

    .line 398
    .end local v1    # "userId":I
    :cond_a0
    goto :goto_fe

    .line 386
    :pswitch_a1
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_fe

    .line 387
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 388
    .local v1, "uid":I
    if-ltz v1, :cond_b2

    .line 389
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v2, v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUidRemoved(Lcom/android/server/am/AppRestrictionController;I)V

    .line 391
    .end local v1    # "uid":I
    :cond_b2
    goto :goto_fe

    .line 377
    :pswitch_b3
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 378
    .restart local v1    # "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 380
    .local v2, "data":Landroid/net/Uri;
    if-ltz v1, :cond_cb

    if-eqz v2, :cond_cb

    .line 381
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "ssp":Ljava/lang/String;
    if-eqz v3, :cond_cb

    .line 382
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v3, v4, v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monPackageRemoved(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;I)V

    .line 384
    .end local v1    # "uid":I
    .end local v2    # "data":Landroid/net/Uri;
    .end local v4    # "ssp":Ljava/lang/String;
    :cond_cb
    goto :goto_fe

    .line 356
    :pswitch_cc
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_dd

    .line 357
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 358
    .restart local v1    # "uid":I
    if-ltz v1, :cond_dd

    .line 359
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v2, v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUidAdded(Lcom/android/server/am/AppRestrictionController;I)V

    .line 365
    .end local v1    # "uid":I
    :cond_dd
    :pswitch_dd
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "cmpList":[Ljava/lang/String;
    if-eqz v2, :cond_f8

    array-length v5, v2

    if-ne v5, v3, :cond_fd

    aget-object v3, v2, v4

    .line 372
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 373
    :cond_f8
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v3}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mclearCarrierPrivilegedApps(Lcom/android/server/am/AppRestrictionController;)V

    .line 375
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "cmpList":[Ljava/lang/String;
    :cond_fd
    nop

    .line 418
    :cond_fe
    :goto_fe
    return-void

    nop

    :sswitch_data_100
    .sparse-switch
        -0x7ad942ef -> :sswitch_59
        -0x6849e2b4 -> :sswitch_4f
        -0x2d021ace -> :sswitch_45
        -0x2c3dc982 -> :sswitch_3b
        0xa480416 -> :sswitch_31
        0x42dd01f1 -> :sswitch_27
        0x5c1076e2 -> :sswitch_1d
        0x5e33a4ad -> :sswitch_13
    .end sparse-switch

    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_cc
        :pswitch_dd
        :pswitch_b3
        :pswitch_a1
        :pswitch_95
        :pswitch_89
        :pswitch_7c
        :pswitch_6f
    .end packed-switch
.end method
