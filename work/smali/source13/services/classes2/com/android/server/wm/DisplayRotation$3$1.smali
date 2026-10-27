.class Lcom/android/server/wm/DisplayRotation$3$1;
.super Landroid/content/BroadcastReceiver;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayRotation$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/DisplayRotation$3;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayRotation$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/wm/DisplayRotation$3;

    .line 333
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$3$1;->this$1:Lcom/android/server/wm/DisplayRotation$3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 335
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 337
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 338
    .local v1, "state":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_20

    .line 339
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation$3$1;->this$1:Lcom/android/server/wm/DisplayRotation$3;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v4, v3}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fputmWifiDisplayConnected(Lcom/android/server/wm/DisplayRotation;Z)V

    goto :goto_27

    .line 341
    :cond_20
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation$3$1;->this$1:Lcom/android/server/wm/DisplayRotation$3;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v4, v2}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fputmWifiDisplayConnected(Lcom/android/server/wm/DisplayRotation;Z)V

    .line 343
    :goto_27
    const-string/jumbo v4, "wfd_UIBC_rot"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 344
    .local v4, "rotation":I
    packed-switch v4, :pswitch_data_68

    .line 358
    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation$3$1;->this$1:Lcom/android/server/wm/DisplayRotation$3;

    iget-object v6, v6, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v6, v5}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fputmWifiDisplayRotation(Lcom/android/server/wm/DisplayRotation;I)V

    goto :goto_5c

    .line 355
    :pswitch_3a
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation$3$1;->this$1:Lcom/android/server/wm/DisplayRotation$3;

    iget-object v5, v5, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fputmWifiDisplayRotation(Lcom/android/server/wm/DisplayRotation;I)V

    .line 356
    goto :goto_5c

    .line 352
    :pswitch_43
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation$3$1;->this$1:Lcom/android/server/wm/DisplayRotation$3;

    iget-object v5, v5, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fputmWifiDisplayRotation(Lcom/android/server/wm/DisplayRotation;I)V

    .line 353
    goto :goto_5c

    .line 349
    :pswitch_4c
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation$3$1;->this$1:Lcom/android/server/wm/DisplayRotation$3;

    iget-object v5, v5, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v5, v3}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fputmWifiDisplayRotation(Lcom/android/server/wm/DisplayRotation;I)V

    .line 350
    goto :goto_5c

    .line 346
    :pswitch_54
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation$3$1;->this$1:Lcom/android/server/wm/DisplayRotation$3;

    iget-object v5, v5, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v5, v2}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fputmWifiDisplayRotation(Lcom/android/server/wm/DisplayRotation;I)V

    .line 347
    nop

    .line 360
    :goto_5c
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation$3$1;->this$1:Lcom/android/server/wm/DisplayRotation$3;

    iget-object v5, v5, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v5}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 363
    .end local v1    # "state":I
    .end local v4    # "rotation":I
    :cond_67
    return-void

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_54
        :pswitch_4c
        :pswitch_43
        :pswitch_3a
    .end packed-switch
.end method
