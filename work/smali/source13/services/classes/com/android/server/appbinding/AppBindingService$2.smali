.class Lcom/android/server/appbinding/AppBindingService$2;
.super Landroid/content/BroadcastReceiver;
.source "AppBindingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appbinding/AppBindingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appbinding/AppBindingService;


# direct methods
.method constructor <init>(Lcom/android/server/appbinding/AppBindingService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/appbinding/AppBindingService;

    .line 225
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 231
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 232
    .local v0, "userId":I
    const-string v2, "AppBindingService"

    if-ne v0, v1, :cond_23

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent broadcast does not contain user handle: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void

    .line 237
    :cond_23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 240
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {v2, v0}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$monUserRemoved(Lcom/android/server/appbinding/AppBindingService;I)V

    .line 241
    return-void

    .line 244
    :cond_35
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 245
    .local v3, "intentUri":Landroid/net/Uri;
    if-eqz v3, :cond_40

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    goto :goto_41

    .line 246
    :cond_40
    const/4 v4, 0x0

    :goto_41
    nop

    .line 247
    .local v4, "packageName":Ljava/lang/String;
    if-nez v4, :cond_5b

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent broadcast does not contain package name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void

    .line 252
    :cond_5b
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v5, 0x0

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 254
    .local v2, "replacing":Z
    const/4 v6, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_92

    :cond_6a
    goto :goto_7e

    :sswitch_6b
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    goto :goto_7f

    :sswitch_74
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    const/4 v5, 0x1

    goto :goto_7f

    :goto_7e
    move v5, v6

    :goto_7f
    packed-switch v5, :pswitch_data_9c

    goto :goto_90

    .line 261
    :pswitch_83
    iget-object v5, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {v5, v4, v0}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$mhandlePackageAddedReplacing(Lcom/android/server/appbinding/AppBindingService;Ljava/lang/String;I)V

    goto :goto_90

    .line 256
    :pswitch_89
    if-eqz v2, :cond_90

    .line 257
    iget-object v5, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {v5, v4, v0}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$mhandlePackageAddedReplacing(Lcom/android/server/appbinding/AppBindingService;Ljava/lang/String;I)V

    .line 264
    :cond_90
    :goto_90
    return-void

    nop

    :sswitch_data_92
    .sparse-switch
        0xa480416 -> :sswitch_74
        0x5c1076e2 -> :sswitch_6b
    .end sparse-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_89
        :pswitch_83
    .end packed-switch
.end method
