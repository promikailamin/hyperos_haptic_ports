.class public Lcom/android/server/job/controllers/ComponentController$1;
.super Landroid/content/BroadcastReceiver;
.source "ComponentController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/ComponentController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ComponentController;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    .line 59
    const-string p0, "JobScheduler.Component"

    const-string p1, "Intent action was null"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_a2

    :goto_1a
    move p1, v1

    goto :goto_47

    :sswitch_1c
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_1a

    :cond_25
    const/4 p1, 0x3

    goto :goto_47

    :sswitch_27
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_1a

    :cond_30
    const/4 p1, 0x2

    goto :goto_47

    :sswitch_32
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_1a

    :cond_3b
    const/4 p1, 0x1

    goto :goto_47

    :sswitch_3d
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_1a

    :cond_46
    move p1, v2

    :goto_47
    const-string v0, "android.intent.extra.UID"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_b4

    goto :goto_94

    .line 64
    :pswitch_4e
    const-string p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_94

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_60

    .line 68
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    :cond_60
    if-eqz v3, :cond_94

    .line 70
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 71
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 72
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-static {p0, p1, v3}, Lcom/android/server/job/controllers/ComponentController;->-$$Nest$mupdateComponentStateForPackage(Lcom/android/server/job/controllers/ComponentController;ILjava/lang/String;)V

    return-void

    .line 77
    :pswitch_70
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_7a

    .line 78
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 79
    :cond_7a
    const-string p1, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_94

    if-eqz p1, :cond_94

    .line 81
    array-length p1, p1

    if-lez p1, :cond_94

    .line 82
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 83
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 84
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-static {p0, p1, v3}, Lcom/android/server/job/controllers/ComponentController;->-$$Nest$mupdateComponentStateForPackage(Lcom/android/server/job/controllers/ComponentController;ILjava/lang/String;)V

    :cond_94
    :goto_94
    return-void

    .line 89
    :pswitch_95
    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 90
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-static {p0, p1}, Lcom/android/server/job/controllers/ComponentController;->-$$Nest$mupdateComponentStateForUser(Lcom/android/server/job/controllers/ComponentController;I)V

    return-void

    nop

    :sswitch_data_a2
    .sparse-switch
        -0x2c3dc982 -> :sswitch_3d
        0xa480416 -> :sswitch_32
        0x31af1c32 -> :sswitch_27
        0x5c1076e2 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_95
        :pswitch_70
        :pswitch_95
        :pswitch_4e
    .end packed-switch
.end method
