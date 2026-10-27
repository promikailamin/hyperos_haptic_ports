.class final Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;
.super Landroid/os/Handler;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field static final MSG_DEVICE_IDLE:I = 0x0

.field static final MSG_UID_GONE:I = 0x1

.field static final MSG_UID_STATE_CHANGED:I = 0x2


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 5369
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 5370
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5371
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 5375
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    goto :goto_1e

    .line 5383
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->-$$Nest$mhandleUidStateChanged(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;II)V

    goto :goto_1e

    .line 5380
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->-$$Nest$mhandleUidGone(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;I)V

    .line 5381
    goto :goto_1e

    .line 5377
    :pswitch_18
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-static {v0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->-$$Nest$mhandleDeviceIdle(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V

    .line 5378
    nop

    .line 5386
    :goto_1e
    return-void

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_18
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method
