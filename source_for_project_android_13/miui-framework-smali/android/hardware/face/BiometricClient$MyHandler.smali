.class Landroid/hardware/face/BiometricClient$MyHandler;
.super Landroid/os/Handler;
.source "BiometricClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/BiometricClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/face/BiometricClient;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/face/BiometricClient;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 148
    iput-object p1, p0, Landroid/hardware/face/BiometricClient$MyHandler;->this$0:Landroid/hardware/face/BiometricClient;

    .line 149
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 150
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 158
    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient$MyHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v1}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmTagInfo(Landroid/hardware/face/BiometricClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":handleMessage main what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_2e
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_54

    goto :goto_52

    .line 170
    :pswitch_34
    iget-object v0, p0, Landroid/hardware/face/BiometricClient$MyHandler;->this$0:Landroid/hardware/face/BiometricClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-static {v0, v1}, Landroid/hardware/face/BiometricClient;->-$$Nest$mhandle_sendService(Landroid/hardware/face/BiometricClient;Landroid/os/Message;)V

    .line 171
    goto :goto_52

    .line 167
    :pswitch_3e
    iget-object v0, p0, Landroid/hardware/face/BiometricClient$MyHandler;->this$0:Landroid/hardware/face/BiometricClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Landroid/hardware/face/BiometricClient;->-$$Nest$mhandle_getServiceVersion(Landroid/hardware/face/BiometricClient;I)V

    .line 168
    goto :goto_52

    .line 164
    :pswitch_46
    iget-object v0, p0, Landroid/hardware/face/BiometricClient$MyHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v0}, Landroid/hardware/face/BiometricClient;->-$$Nest$mhandle_releaseService(Landroid/hardware/face/BiometricClient;)V

    .line 165
    goto :goto_52

    .line 161
    :pswitch_4c
    iget-object v0, p0, Landroid/hardware/face/BiometricClient$MyHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v0}, Landroid/hardware/face/BiometricClient;->-$$Nest$mhandle_startService(Landroid/hardware/face/BiometricClient;)V

    .line 162
    nop

    .line 175
    :goto_52
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0x1388
        :pswitch_4c
        :pswitch_46
        :pswitch_3e
        :pswitch_34
    .end packed-switch
.end method
