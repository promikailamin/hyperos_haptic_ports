.class Lcom/android/server/job/controllers/ComponentController$1;
.super Landroid/content/BroadcastReceiver;
.source "ComponentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ComponentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ComponentController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ComponentController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/controllers/ComponentController;

    .line 53
    iput-object p1, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 59
    const-string v1, "JobScheduler.Component"

    const-string v2, "Intent action was null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 62
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_9e

    :cond_17
    goto :goto_40

    :sswitch_18
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_41

    :sswitch_22
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x2

    goto :goto_41

    :sswitch_2c
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_41

    :sswitch_36
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x3

    goto :goto_41

    :goto_40
    move v1, v3

    :goto_41
    const-string v4, "android.intent.extra.UID"

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_b0

    goto :goto_9c

    .line 89
    :pswitch_48
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 90
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-static {v2, v1}, Lcom/android/server/job/controllers/ComponentController;->-$$Nest$mupdateComponentStateForUser(Lcom/android/server/job/controllers/ComponentController;I)V

    goto :goto_9c

    .line 77
    .end local v1    # "userId":I
    :pswitch_54
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 78
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    :cond_5e
    move-object v2, v5

    .line 79
    .local v2, "pkg":Ljava/lang/String;
    const-string v5, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "changedComponents":[Ljava/lang/String;
    if-eqz v2, :cond_9c

    if-eqz v5, :cond_9c

    array-length v6, v5

    if-lez v6, :cond_9c

    .line 82
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 83
    .local v3, "pkgUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 84
    .local v4, "userId":I
    iget-object v6, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-static {v6, v4, v2}, Lcom/android/server/job/controllers/ComponentController;->-$$Nest$mupdateComponentStateForPackage(Lcom/android/server/job/controllers/ComponentController;ILjava/lang/String;)V

    .line 85
    .end local v3    # "pkgUid":I
    .end local v4    # "userId":I
    goto :goto_9c

    .line 64
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v5    # "changedComponents":[Ljava/lang/String;
    :pswitch_7a
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 68
    .restart local v1    # "uri":Landroid/net/Uri;
    if-eqz v1, :cond_8c

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    :cond_8c
    move-object v2, v5

    .line 69
    .restart local v2    # "pkg":Ljava/lang/String;
    if-eqz v2, :cond_9c

    .line 70
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 71
    .restart local v3    # "pkgUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 72
    .restart local v4    # "userId":I
    iget-object v5, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-static {v5, v4, v2}, Lcom/android/server/job/controllers/ComponentController;->-$$Nest$mupdateComponentStateForPackage(Lcom/android/server/job/controllers/ComponentController;ILjava/lang/String;)V

    .line 93
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "pkgUid":I
    .end local v4    # "userId":I
    :cond_9c
    :goto_9c
    return-void

    nop

    :sswitch_data_9e
    .sparse-switch
        -0x2c3dc982 -> :sswitch_36
        0xa480416 -> :sswitch_2c
        0x31af1c32 -> :sswitch_22
        0x5c1076e2 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_54
        :pswitch_48
        :pswitch_48
    .end packed-switch
.end method
