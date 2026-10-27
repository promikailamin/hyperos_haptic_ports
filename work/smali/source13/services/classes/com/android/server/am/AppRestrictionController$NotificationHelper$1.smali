.class Lcom/android/server/am/AppRestrictionController$NotificationHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController$NotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppRestrictionController$NotificationHelper;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppRestrictionController$NotificationHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    .line 2434
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper$1;->this$0:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2437
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2438
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_4a

    :cond_10
    goto :goto_1b

    :pswitch_11
    const-string v2, "com.android.server.am.ACTION_FGS_MANAGER_TRAMPOLINE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v3

    goto :goto_1c

    :goto_1b
    const/4 v1, -0x1

    :goto_1c
    packed-switch v1, :pswitch_data_50

    goto :goto_48

    .line 2440
    :pswitch_20
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2441
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "android.intent.extra.UID"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2442
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper$1;->this$0:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->cancelRequestBgRestrictedIfNecessary(Ljava/lang/String;I)V

    .line 2443
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SHOW_FOREGROUND_SERVICE_MANAGER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2444
    .local v3, "newIntent":Landroid/content/Intent;
    const/high16 v4, 0x1000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2446
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper$1;->this$0:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-static {v4}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->-$$Nest$fgetmContext(Lcom/android/server/am/AppRestrictionController$NotificationHelper;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2449
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v3    # "newIntent":Landroid/content/Intent;
    :goto_48
    return-void

    nop

    :pswitch_data_4a
    .packed-switch -0x7a18ebfe
        :pswitch_11
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_20
    .end packed-switch
.end method
