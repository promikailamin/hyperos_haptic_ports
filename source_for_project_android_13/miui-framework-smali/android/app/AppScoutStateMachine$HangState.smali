.class Landroid/app/AppScoutStateMachine$HangState;
.super Lcom/android/internal/util/State;
.source "AppScoutStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppScoutStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HangState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/AppScoutStateMachine;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppScoutStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/AppScoutStateMachine;

    .line 452
    iput-object p1, p0, Landroid/app/AppScoutStateMachine$HangState;->this$0:Landroid/app/AppScoutStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 4

    .line 455
    const-string v0, "MIUIScout App"

    const-string v1, "Enter APP_SCOUT_HANG state"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v1, p0, Landroid/app/AppScoutStateMachine$HangState;->this$0:Landroid/app/AppScoutStateMachine;

    invoke-static {v1}, Landroid/app/AppScoutStateMachine;->-$$Nest$fgetmMessageMonitor(Landroid/app/AppScoutStateMachine;)Landroid/os/perfdebug/MessageMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/perfdebug/MessageMonitor;->getRunningMessageInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$HangState;->this$0:Landroid/app/AppScoutStateMachine;

    sget-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_HANG:Landroid/app/AppScoutStateMachine$AppScoutState;

    iput-object v1, v0, Landroid/app/AppScoutStateMachine;->mScoutState:Landroid/app/AppScoutStateMachine$AppScoutState;

    .line 458
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$HangState;->this$0:Landroid/app/AppScoutStateMachine;

    const/16 v1, 0x19d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/app/AppScoutStateMachine;->-$$Nest$mreportAppScoutEventToMqs(Landroid/app/AppScoutStateMachine;IZ)V

    .line 459
    return-void
.end method

.method public blacklist exit()V
    .registers 3

    .line 486
    sget-boolean v0, Landroid/app/AppScoutStateMachine;->ENABLED_SCOUT_DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "MIUIScout App"

    const-string v1, "HangState.exit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_b
    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 464
    sget-boolean v0, Landroid/app/AppScoutStateMachine;->ENABLED_SCOUT_DEBUG:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HangState.processMessage what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIUIScout App"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_1e
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4a

    .line 478
    const/4 v0, 0x0

    .local v0, "retVal":Z
    goto :goto_48

    .line 471
    .end local v0    # "retVal":Z
    :pswitch_25
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$HangState;->this$0:Landroid/app/AppScoutStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Landroid/app/AppScoutStateMachine;->-$$Nest$fputmInputLatency(Landroid/app/AppScoutStateMachine;I)V

    .line 472
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$HangState;->this$0:Landroid/app/AppScoutStateMachine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/AppScoutStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppScoutStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 473
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$HangState;->this$0:Landroid/app/AppScoutStateMachine;

    iget-object v1, v0, Landroid/app/AppScoutStateMachine;->mHangInputState:Landroid/app/AppScoutStateMachine$HangInputState;

    invoke-virtual {v0, v1}, Landroid/app/AppScoutStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 474
    const/4 v0, 0x1

    .line 475
    .restart local v0    # "retVal":Z
    goto :goto_48

    .line 467
    .end local v0    # "retVal":Z
    :pswitch_41
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$HangState;->this$0:Landroid/app/AppScoutStateMachine;

    invoke-static {v0}, Landroid/app/AppScoutStateMachine;->-$$Nest$mcheckDestStateInPeriod(Landroid/app/AppScoutStateMachine;)V

    .line 468
    const/4 v0, 0x1

    .line 469
    .restart local v0    # "retVal":Z
    nop

    .line 481
    :goto_48
    return v0

    nop

    :pswitch_data_4a
    .packed-switch 0x4
        :pswitch_41
        :pswitch_25
    .end packed-switch
.end method
