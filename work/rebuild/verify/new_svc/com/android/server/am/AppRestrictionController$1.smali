.class public Lcom/android/server/am/AppRestrictionController$1;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .registers 2

    .line 372
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 375
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    goto/16 :goto_ef

    .line 379
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_f0

    :goto_14
    move p1, v2

    goto/16 :goto_6e

    :sswitch_17
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_14

    :cond_20
    const/4 p1, 0x7

    goto :goto_6e

    :sswitch_22
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_14

    :cond_2b
    const/4 p1, 0x6

    goto :goto_6e

    :sswitch_2d
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_14

    :cond_36
    const/4 p1, 0x5

    goto :goto_6e

    :sswitch_38
    const-string v0, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto :goto_14

    :cond_41
    const/4 p1, 0x4

    goto :goto_6e

    :sswitch_43
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4c

    goto :goto_14

    :cond_4c
    const/4 p1, 0x3

    goto :goto_6e

    :sswitch_4e
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    goto :goto_14

    :cond_57
    const/4 p1, 0x2

    goto :goto_6e

    :sswitch_59
    const-string v0, "android.intent.action.UID_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    goto :goto_14

    :cond_62
    const/4 p1, 0x1

    goto :goto_6e

    :sswitch_64
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6d

    goto :goto_14

    :cond_6d
    move p1, v1

    :goto_6e
    const-string v0, "android.intent.extra.REPLACING"

    const-string v3, "android.intent.extra.UID"

    const-string v4, "android.intent.extra.user_handle"

    packed-switch p1, :pswitch_data_112

    goto/16 :goto_ef

    .line 389
    :pswitch_79
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 390
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-ltz p1, :cond_ef

    if-eqz p2, :cond_ef

    .line 393
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_ef

    .line 394
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p2, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monPackageRemoved(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;I)V

    return-void

    .line 381
    :pswitch_91
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_ef

    .line 382
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_ef

    .line 384
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUidAdded(Lcom/android/server/am/AppRestrictionController;I)V

    return-void

    .line 406
    :pswitch_a3
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_ef

    .line 408
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserAdded(Lcom/android/server/am/AppRestrictionController;I)V

    return-void

    .line 430
    :pswitch_af
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$munregisterCarrierPrivilegesCallbacks(Lcom/android/server/am/AppRestrictionController;)V

    .line 431
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mregisterCarrierPrivilegesCallbacks(Lcom/android/server/am/AppRestrictionController;)V

    return-void

    .line 418
    :pswitch_ba
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_ef

    .line 420
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserStopped(Lcom/android/server/am/AppRestrictionController;I)V

    return-void

    .line 412
    :pswitch_c6
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_ef

    .line 414
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserStarted(Lcom/android/server/am/AppRestrictionController;I)V

    return-void

    .line 398
    :pswitch_d2
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_ef

    .line 399
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_ef

    .line 401
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUidRemoved(Lcom/android/server/am/AppRestrictionController;I)V

    return-void

    .line 424
    :pswitch_e4
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_ef

    .line 426
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserRemoved(Lcom/android/server/am/AppRestrictionController;I)V

    :cond_ef
    :goto_ef
    return-void

    :sswitch_data_f0
    .sparse-switch
        -0x7ad942ef -> :sswitch_64
        -0x6849e2b4 -> :sswitch_59
        -0x2d021ace -> :sswitch_4e
        -0x2c3dc982 -> :sswitch_43
        0x412a6228 -> :sswitch_38
        0x42dd01f1 -> :sswitch_2d
        0x5c1076e2 -> :sswitch_22
        0x5e33a4ad -> :sswitch_17
    .end sparse-switch

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_d2
        :pswitch_c6
        :pswitch_ba
        :pswitch_af
        :pswitch_a3
        :pswitch_91
        :pswitch_79
    .end packed-switch
.end method
