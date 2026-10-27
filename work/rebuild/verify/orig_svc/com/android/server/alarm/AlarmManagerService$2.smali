.class public Lcom/android/server/alarm/AlarmManagerService$2;
.super Landroid/app/IAlarmListener$Stub;
.source "AlarmManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public static synthetic $r8$lambda$FzGTY398wY7rsveJl5qWIzqCYlQ(Lcom/android/server/alarm/AlarmManagerService$2;Landroid/app/IAlarmCompleteListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$2;->lambda$doAlarm$0(Landroid/app/IAlarmCompleteListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2

    .line 1867
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$2;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public doAlarm(Landroid/app/IAlarmCompleteListener;)V
    .registers 5

    .line 1877
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$2;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService$2;Landroid/app/IAlarmCompleteListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1885
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$2;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1886
    :try_start_11
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$2;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmLastTickReceived(Lcom/android/server/alarm/AlarmManagerService;J)V

    .line 1887
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_27

    .line 1888
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$2;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    return-void

    :catchall_27
    move-exception p0

    .line 1887
    :try_start_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final synthetic lambda$doAlarm$0(Landroid/app/IAlarmCompleteListener;)V
    .registers 7

    .line 1878
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$2;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$2;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1881
    :try_start_12
    invoke-interface {p1, p0}, Landroid/app/IAlarmCompleteListener;->alarmComplete(Landroid/os/IBinder;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_15

    :catch_15
    return-void
.end method
