.class Landroid/hardware/face/MiuiFaceManager$ClientHandler;
.super Landroid/os/Handler;
.source "MiuiFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/MiuiFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/face/MiuiFaceManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/face/MiuiFaceManager;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .line 676
    iput-object p1, p0, Landroid/hardware/face/MiuiFaceManager$ClientHandler;->this$0:Landroid/hardware/face/MiuiFaceManager;

    .line 677
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 678
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/face/MiuiFaceManager;Landroid/content/Context;Landroid/hardware/face/MiuiFaceManager$ClientHandler-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/MiuiFaceManager$ClientHandler;-><init>(Landroid/hardware/face/MiuiFaceManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/face/MiuiFaceManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 680
    iput-object p1, p0, Landroid/hardware/face/MiuiFaceManager$ClientHandler;->this$0:Landroid/hardware/face/MiuiFaceManager;

    .line 681
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 682
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/face/MiuiFaceManager;Landroid/os/Looper;Landroid/hardware/face/MiuiFaceManager$ClientHandler-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/MiuiFaceManager$ClientHandler;-><init>(Landroid/hardware/face/MiuiFaceManager;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " handleMessage  callback what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiFaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_78

    goto :goto_76

    .line 714
    :sswitch_20
    goto :goto_76

    .line 709
    :sswitch_21
    const/4 v0, 0x0

    .line 710
    .local v0, "sensorId":I
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager$ClientHandler;->this$0:Landroid/hardware/face/MiuiFaceManager;

    invoke-static {v1, v0}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$msendLockoutReset(Landroid/hardware/face/MiuiFaceManager;I)V

    .line 711
    goto :goto_76

    .line 706
    .end local v0    # "sensorId":I
    :sswitch_28
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager$ClientHandler;->this$0:Landroid/hardware/face/MiuiFaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/face/Face;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$msendRemovedResult(Landroid/hardware/face/MiuiFaceManager;Landroid/hardware/face/Face;I)V

    .line 707
    goto :goto_76

    .line 702
    :sswitch_34
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager$ClientHandler;->this$0:Landroid/hardware/face/MiuiFaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$msendErrorResult(Landroid/hardware/face/MiuiFaceManager;JII)V

    .line 704
    goto :goto_76

    .line 699
    :sswitch_46
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager$ClientHandler;->this$0:Landroid/hardware/face/MiuiFaceManager;

    invoke-static {v0}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$msendAuthenticatedFailed(Landroid/hardware/face/MiuiFaceManager;)V

    .line 700
    goto :goto_76

    .line 696
    :sswitch_4c
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager$ClientHandler;->this$0:Landroid/hardware/face/MiuiFaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/face/Face;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$msendAuthenticatedSucceeded(Landroid/hardware/face/MiuiFaceManager;Landroid/hardware/face/Face;I)V

    .line 697
    goto :goto_76

    .line 692
    :sswitch_58
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager$ClientHandler;->this$0:Landroid/hardware/face/MiuiFaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$msendAcquiredResult(Landroid/hardware/face/MiuiFaceManager;JII)V

    .line 694
    goto :goto_76

    .line 689
    :sswitch_6a
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager$ClientHandler;->this$0:Landroid/hardware/face/MiuiFaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/face/Face;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$msendEnrollResult(Landroid/hardware/face/MiuiFaceManager;Landroid/hardware/face/Face;I)V

    .line 690
    nop

    .line 718
    :goto_76
    return-void

    nop

    :sswitch_data_78
    .sparse-switch
        0xc9 -> :sswitch_6a
        0xca -> :sswitch_58
        0xcb -> :sswitch_4c
        0xcc -> :sswitch_46
        0xcd -> :sswitch_34
        0xce -> :sswitch_28
        0x105 -> :sswitch_21
        0x12d -> :sswitch_20
    .end sparse-switch
.end method
