.class public final Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "PowerManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 880
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .registers 6

    .line 890
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 891
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 892
    :try_start_11
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmForegroundProfile(Lcom/android/server/power/PowerManagerService;I)V

    .line 893
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mmaybeUpdateForegroundProfileLastActivityLocked(Lcom/android/server/power/PowerManagerService;J)V

    .line 894
    monitor-exit v2

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public onUserSwitching(I)V
    .registers 3

    .line 883
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 884
    :try_start_7
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmUserId(Lcom/android/server/power/PowerManagerService;I)V

    .line 885
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method
