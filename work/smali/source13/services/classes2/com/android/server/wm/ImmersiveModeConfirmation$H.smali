.class final Lcom/android/server/wm/ImmersiveModeConfirmation$H;
.super Landroid/os/Handler;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final HIDE:I = 0x2

.field private static final SHOW:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 481
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 482
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 483
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 487
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_28

    .line 489
    :pswitch_6
    invoke-static {}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$sfgetIS_FACTORY_BUILD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$sfgetIS_FACTORY_BUILD()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 493
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$mhandleShow(Lcom/android/server/wm/ImmersiveModeConfirmation;I)V

    .line 500
    :cond_23
    :pswitch_23
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$mhandleHide(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    .line 503
    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_23
    .end packed-switch
.end method
