.class Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/soundtrigger/SoundTriggerHelper;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1061
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 1062
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p0, v0}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    .line 1063
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    .line 1069
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->-$$Nest$fgetmHandler(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 1070
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1071
    :try_start_f
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->-$$Nest$fgetmHandler(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1072
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->-$$Nest$fgetmHandler(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1073
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->-$$Nest$fgetmHandler(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/Handler;

    move-result-object v2

    .line 1074
    const/4 v3, 0x2

    if-ne v3, p1, :cond_2f

    const-wide/16 v3, 0x0

    goto :goto_31

    .line 1075
    :cond_2f
    const-wide/16 v3, 0x3e8

    .line 1073
    :goto_31
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1076
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    goto :goto_3a

    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_f .. :try_end_39} :catchall_37

    throw v1

    .line 1078
    :cond_3a
    :goto_3a
    return-void
.end method
