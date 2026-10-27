.class public Lcom/android/server/soundtrigger/DeviceStateHandler$1;
.super Ljava/lang/Object;
.source "DeviceStateHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/soundtrigger/DeviceStateHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/DeviceStateHandler;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$1;->this$0:Lcom/android/server/soundtrigger/DeviceStateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$1;->this$0:Lcom/android/server/soundtrigger/DeviceStateHandler;

    invoke-static {v0}, Lcom/android/server/soundtrigger/DeviceStateHandler;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/DeviceStateHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 114
    :try_start_7
    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$1;->this$0:Lcom/android/server/soundtrigger/DeviceStateHandler;

    invoke-static {v1}, Lcom/android/server/soundtrigger/DeviceStateHandler;->-$$Nest$fgetmPhoneStateChangePendingNotify(Lcom/android/server/soundtrigger/DeviceStateHandler;)Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$1;->this$0:Lcom/android/server/soundtrigger/DeviceStateHandler;

    invoke-static {v1}, Lcom/android/server/soundtrigger/DeviceStateHandler;->-$$Nest$fgetmPhoneStateChangePendingNotify(Lcom/android/server/soundtrigger/DeviceStateHandler;)Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    move-result-object v1

    .line 115
    invoke-virtual {v1, p0}, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->runnableEquals(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 117
    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$1;->this$0:Lcom/android/server/soundtrigger/DeviceStateHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger/DeviceStateHandler;->-$$Nest$fputmPhoneStateChangePendingNotify(Lcom/android/server/soundtrigger/DeviceStateHandler;Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;)V

    .line 118
    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$1;->this$0:Lcom/android/server/soundtrigger/DeviceStateHandler;

    invoke-static {p0}, Lcom/android/server/soundtrigger/DeviceStateHandler;->-$$Nest$mevaluateStateChange(Lcom/android/server/soundtrigger/DeviceStateHandler;)V

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_2b

    .line 120
    :cond_29
    :goto_29
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_27

    throw p0
.end method
