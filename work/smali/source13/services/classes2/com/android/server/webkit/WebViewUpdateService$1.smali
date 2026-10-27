.class Lcom/android/server/webkit/WebViewUpdateService$1;
.super Landroid/content/BroadcastReceiver;
.source "WebViewUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/webkit/WebViewUpdateService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/webkit/WebViewUpdateService;

    .line 68
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 71
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 72
    .local v0, "userId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x3

    sparse-switch v2, :sswitch_data_ae

    :cond_17
    goto :goto_4a

    :sswitch_18
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v3

    goto :goto_4b

    :sswitch_22
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v4

    goto :goto_4b

    :sswitch_2c
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v5

    goto :goto_4b

    :sswitch_36
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v6

    goto :goto_4b

    :sswitch_40
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x4

    goto :goto_4b

    :goto_4a
    const/4 v1, -0x1

    :goto_4b
    const-string v2, "android.intent.extra.REPLACING"

    packed-switch v1, :pswitch_data_c4

    goto :goto_ac

    .line 101
    :pswitch_51
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->handleUserRemoved(I)V

    goto :goto_ac

    .line 98
    :pswitch_5b
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->handleNewUser(I)V

    .line 99
    goto :goto_ac

    .line 93
    :pswitch_65
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$smpackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 95
    goto :goto_7b

    :cond_7a
    move v3, v5

    .line 93
    :goto_7b
    invoke-virtual {v1, v4, v3, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->packageStateChanged(Ljava/lang/String;II)V

    .line 96
    goto :goto_ac

    .line 87
    :pswitch_7f
    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->entirePackageChanged(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 88
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$smpackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->packageStateChanged(Ljava/lang/String;II)V

    goto :goto_ac

    .line 80
    :pswitch_93
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    return-void

    .line 81
    :cond_9e
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$smpackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->packageStateChanged(Ljava/lang/String;II)V

    .line 83
    nop

    .line 104
    :cond_ac
    :goto_ac
    return-void

    nop

    :sswitch_data_ae
    .sparse-switch
        -0x7ad942ef -> :sswitch_40
        -0x2d021ace -> :sswitch_36
        0xa480416 -> :sswitch_2c
        0x1f50b9c2 -> :sswitch_22
        0x5c1076e2 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_93
        :pswitch_7f
        :pswitch_65
        :pswitch_5b
        :pswitch_51
    .end packed-switch
.end method
