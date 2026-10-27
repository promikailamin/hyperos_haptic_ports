.class Lcom/android/server/am/AppRestrictionController$2;
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

    .line 421
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$2;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 424
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_26

    :cond_f
    goto :goto_1a

    :pswitch_10
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_1b

    :goto_1a
    const/4 v1, -0x1

    :goto_1b
    packed-switch v1, :pswitch_data_2c

    goto :goto_24

    .line 427
    :pswitch_1f
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$2;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monLockedBootCompleted(Lcom/android/server/am/AppRestrictionController;)V

    .line 430
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch -0x35f22cb2
        :pswitch_10
    .end packed-switch

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1f
    .end packed-switch
.end method
