.class public Lcom/android/server/UiModeManagerService$6;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    .line 366
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V
    .registers 4

    .line 369
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 370
    :try_start_7
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_2d

    .line 371
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$mshouldApplyAutomaticChangesImmediately(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 372
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_2d

    :catchall_26
    move-exception p0

    goto :goto_2f

    .line 374
    :cond_28
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$mregisterDeviceInactiveListenerLocked(Lcom/android/server/UiModeManagerService;)V

    .line 377
    :cond_2d
    :goto_2d
    monitor-exit p1

    return-void

    :goto_2f
    monitor-exit p1
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_26

    throw p0
.end method
