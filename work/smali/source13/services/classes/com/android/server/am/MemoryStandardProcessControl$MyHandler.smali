.class Lcom/android/server/am/MemoryStandardProcessControl$MyHandler;
.super Landroid/os/Handler;
.source "MemoryStandardProcessControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemoryStandardProcessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MemoryStandardProcessControl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MemoryStandardProcessControl;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 393
    iput-object p1, p0, Lcom/android/server/am/MemoryStandardProcessControl$MyHandler;->this$0:Lcom/android/server/am/MemoryStandardProcessControl;

    .line 394
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 395
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 399
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    goto :goto_c

    .line 401
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl$MyHandler;->this$0:Lcom/android/server/am/MemoryStandardProcessControl;

    invoke-static {v0}, Lcom/android/server/am/MemoryStandardProcessControl;->-$$Nest$mmemoryThresholdJudgment(Lcom/android/server/am/MemoryStandardProcessControl;)V

    .line 402
    nop

    .line 407
    :goto_c
    return-void

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
