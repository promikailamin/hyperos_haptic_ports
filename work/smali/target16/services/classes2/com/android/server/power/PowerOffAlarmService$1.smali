.class public Lcom/android/server/power/PowerOffAlarmService$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerOffAlarmService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerOffAlarmService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerOffAlarmService;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/android/server/power/PowerOffAlarmService$1;->this$0:Lcom/android/server/power/PowerOffAlarmService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 100
    iget-object p1, p0, Lcom/android/server/power/PowerOffAlarmService$1;->this$0:Lcom/android/server/power/PowerOffAlarmService;

    invoke-static {p1}, Lcom/android/server/power/PowerOffAlarmService;->-$$Nest$fgetmSystemReady(Lcom/android/server/power/PowerOffAlarmService;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 103
    :cond_9
    const-string p1, "PowerOffAlarmService"

    const-string p2, "mAlarmChangedReceiver onReceive"

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p0, p0, Lcom/android/server/power/PowerOffAlarmService$1;->this$0:Lcom/android/server/power/PowerOffAlarmService;

    invoke-static {p0}, Lcom/android/server/power/PowerOffAlarmService;->-$$Nest$fgetmAlarmManager(Lcom/android/server/power/PowerOffAlarmService;)Landroid/app/AlarmManager;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/PowerOffAlarmService;->-$$Nest$mupdateAlarms(Lcom/android/server/power/PowerOffAlarmService;Landroid/app/AlarmManager;)V

    return-void
.end method
