.class public Lcom/android/server/power/PowerManagerShellCommand$PowerManagerShellCommandAlarmListener;
.super Landroid/app/IAlarmListener$Stub;
.source "PowerManagerShellCommand.java"


# instance fields
.field public restoreWakelocks:Z

.field public final synthetic this$0:Lcom/android/server/power/PowerManagerShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerShellCommand;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand$PowerManagerShellCommandAlarmListener;->this$0:Lcom/android/server/power/PowerManagerShellCommand;

    invoke-direct {p0}, Landroid/app/IAlarmListener$Stub;-><init>()V

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerShellCommand$PowerManagerShellCommandAlarmListener;->restoreWakelocks:Z

    return-void
.end method


# virtual methods
.method public doAlarm(Landroid/app/IAlarmCompleteListener;)V
    .registers 8

    .line 58
    iget-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand$PowerManagerShellCommandAlarmListener;->this$0:Lcom/android/server/power/PowerManagerShellCommand;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerShellCommand;->-$$Nest$fgetmService(Lcom/android/server/power/PowerManagerShellCommand;)Lcom/android/server/power/PowerManagerService$BinderService;

    move-result-object v0

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand$PowerManagerShellCommandAlarmListener;->this$0:Lcom/android/server/power/PowerManagerShellCommand;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerShellCommand;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerShellCommand;)Landroid/content/Context;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x2

    .line 58
    const-string v4, "PowerManagerShellCommand"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService$BinderService;->wakeUp(JILjava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerShellCommand$PowerManagerShellCommandAlarmListener;->restoreWakelocks:Z

    if-eqz p0, :cond_2a

    .line 64
    const-class p0, Landroid/os/PowerManagerInternal;

    .line 65
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManagerInternal;

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Landroid/os/PowerManagerInternal;->setForceDisableWakelocks(Z)V

    :cond_2a
    return-void
.end method
