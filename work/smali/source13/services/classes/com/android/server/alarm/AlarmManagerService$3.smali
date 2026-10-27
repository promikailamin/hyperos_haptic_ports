.class Lcom/android/server/alarm/AlarmManagerService$3;
.super Landroid/app/IAlarmListener$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/alarm/AlarmManagerService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 1948
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public doAlarm(Landroid/app/IAlarmCompleteListener;)V
    .registers 6
    .param p1, "callback"    # Landroid/app/IAlarmCompleteListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1958
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService$3;Landroid/app/IAlarmCompleteListener;)V

    invoke-virtual {v0, v1}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->post(Ljava/lang/Runnable;)Z

    .line 1966
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1967
    :try_start_11
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmLastTickReceived(Lcom/android/server/alarm/AlarmManagerService;J)V

    .line 1968
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_27

    .line 1969
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1970
    return-void

    .line 1968
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method synthetic lambda$doAlarm$0$com-android-server-alarm-AlarmManagerService$3(Landroid/app/IAlarmCompleteListener;)V
    .registers 5
    .param p1, "callback"    # Landroid/app/IAlarmCompleteListener;

    .line 1959
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1962
    :try_start_f
    invoke-interface {p1, p0}, Landroid/app/IAlarmCompleteListener;->alarmComplete(Landroid/os/IBinder;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 1963
    :goto_12
    goto :goto_15

    :catch_13
    move-exception v0

    goto :goto_12

    .line 1964
    :goto_15
    return-void
.end method
