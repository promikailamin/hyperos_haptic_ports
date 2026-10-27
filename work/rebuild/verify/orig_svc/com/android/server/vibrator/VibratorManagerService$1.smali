.class public Lcom/android/server/vibrator/VibratorManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "VibratorManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public static synthetic $r8$lambda$ECyrqMgejyUjUk4rWrvhVC1v6h0(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mshouldCancelOnFgUserRequest(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PVxfgSp8zGujJlQ7K2Kf8OnnJLk(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mshouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 209
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 212
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 213
    :try_start_13
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/vibrator/VibratorManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {p0, p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mmaybeClearCurrentAndNextSessionsLocked(Lcom/android/server/vibrator/VibratorManagerService;Ljava/util/function/Predicate;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 216
    monitor-exit p1

    return-void

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_21

    throw p0

    .line 217
    :cond_24
    invoke-static {}, Lcom/android/server/pm/UserManagerInternal;->shouldShowNotificationForBackgroundUserSounds()Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 218
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.server.ACTION_MUTE_BG_USER"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 219
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 220
    :try_start_3d
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$1$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/vibrator/VibratorManagerService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_FOREGROUND_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {p0, p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mmaybeClearCurrentAndNextSessionsLocked(Lcom/android/server/vibrator/VibratorManagerService;Ljava/util/function/Predicate;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 223
    monitor-exit p1

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_4b

    throw p0

    :cond_4e
    return-void
.end method
