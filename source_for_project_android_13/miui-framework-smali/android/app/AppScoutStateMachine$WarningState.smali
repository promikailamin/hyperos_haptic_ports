.class Landroid/app/AppScoutStateMachine$WarningState;
.super Lcom/android/internal/util/State;
.source "AppScoutStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppScoutStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WarningState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/AppScoutStateMachine;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppScoutStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/AppScoutStateMachine;

    .line 389
    iput-object p1, p0, Landroid/app/AppScoutStateMachine$WarningState;->this$0:Landroid/app/AppScoutStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 4

    .line 392
    const-string v0, "MIUIScout App"

    const-string v1, "Enter APP_SCOUT_WARNING State"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v1, p0, Landroid/app/AppScoutStateMachine$WarningState;->this$0:Landroid/app/AppScoutStateMachine;

    invoke-static {v1}, Landroid/app/AppScoutStateMachine;->-$$Nest$fgetmMessageMonitor(Landroid/app/AppScoutStateMachine;)Landroid/os/perfdebug/MessageMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/perfdebug/MessageMonitor;->getRunningMessageInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$WarningState;->this$0:Landroid/app/AppScoutStateMachine;

    sget-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_WARNING:Landroid/app/AppScoutStateMachine$AppScoutState;

    iput-object v1, v0, Landroid/app/AppScoutStateMachine;->mScoutState:Landroid/app/AppScoutStateMachine$AppScoutState;

    .line 395
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$WarningState;->this$0:Landroid/app/AppScoutStateMachine;

    const/16 v1, 0x19b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/app/AppScoutStateMachine;->-$$Nest$mreportAppScoutEventToMqs(Landroid/app/AppScoutStateMachine;IZ)V

    .line 396
    return-void
.end method

.method public blacklist exit()V
    .registers 3

    .line 417
    sget-boolean v0, Landroid/app/AppScoutStateMachine;->ENABLED_SCOUT_DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "MIUIScout App"

    const-string v1, "WarningState.exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_b
    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 401
    sget-boolean v0, Landroid/app/AppScoutStateMachine;->ENABLED_SCOUT_DEBUG:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WarningState.processMessage what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppScoutStateMachine"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_1e
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 409
    const/4 v0, 0x0

    .local v0, "retVal":Z
    goto :goto_2c

    .line 404
    .end local v0    # "retVal":Z
    :pswitch_25
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$WarningState;->this$0:Landroid/app/AppScoutStateMachine;

    invoke-static {v0}, Landroid/app/AppScoutStateMachine;->-$$Nest$mcheckDestStateInPeriod(Landroid/app/AppScoutStateMachine;)V

    .line 405
    const/4 v0, 0x1

    .line 406
    .restart local v0    # "retVal":Z
    nop

    .line 412
    :goto_2c
    return v0

    nop

    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_25
    .end packed-switch
.end method
