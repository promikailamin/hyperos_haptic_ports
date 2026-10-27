.class public Lcom/android/server/webkit/WebViewUpdateService$1;
.super Landroid/content/BroadcastReceiver;
.source "WebViewUpdateService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    goto/16 :goto_a2

    .line 86
    :cond_8
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_b8

    goto :goto_56

    :sswitch_20
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_56

    :cond_29
    const/4 v6, 0x4

    goto :goto_56

    :sswitch_2b
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_56

    :cond_34
    move v6, v2

    goto :goto_56

    :sswitch_36
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_56

    :cond_3f
    move v6, v3

    goto :goto_56

    :sswitch_41
    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    goto :goto_56

    :cond_4a
    move v6, v4

    goto :goto_56

    :sswitch_4c
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_55

    goto :goto_56

    :cond_55
    move v6, v5

    :goto_56
    const-string p1, "android.intent.extra.REPLACING"

    packed-switch v6, :pswitch_data_ce

    goto :goto_a2

    .line 108
    :pswitch_5c
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl2;

    move-result-object p0

    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$smpackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_71

    goto :goto_72

    :cond_71
    move v3, v4

    .line 108
    :goto_72
    invoke-virtual {p0, v1, v3, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->packageStateChanged(Ljava/lang/String;II)V

    return-void

    .line 95
    :pswitch_76
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_81

    goto :goto_a2

    .line 96
    :cond_81
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl2;

    move-result-object p0

    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$smpackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->packageStateChanged(Ljava/lang/String;II)V

    return-void

    .line 102
    :pswitch_8f
    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->entirePackageChanged(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_a2

    .line 103
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl2;

    move-result-object p0

    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$smpackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->packageStateChanged(Ljava/lang/String;II)V

    :cond_a2
    :goto_a2
    return-void

    .line 113
    :pswitch_a3
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl2;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->handleNewUser(I)V

    return-void

    .line 116
    :pswitch_ad
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl2;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->handleUserRemoved(I)V

    return-void

    nop

    :sswitch_data_b8
    .sparse-switch
        -0x7ad942ef -> :sswitch_4c
        -0x2d021ace -> :sswitch_41
        0xa480416 -> :sswitch_36
        0x1f50b9c2 -> :sswitch_2b
        0x5c1076e2 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_ad
        :pswitch_a3
        :pswitch_8f
        :pswitch_76
        :pswitch_5c
    .end packed-switch
.end method
