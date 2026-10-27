.class Landroid/app/AppScoutStateMachine$NormalState;
.super Lcom/android/internal/util/State;
.source "AppScoutStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppScoutStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NormalState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/AppScoutStateMachine;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppScoutStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/AppScoutStateMachine;

    .line 354
    iput-object p1, p0, Landroid/app/AppScoutStateMachine$NormalState;->this$0:Landroid/app/AppScoutStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 3

    .line 357
    sget-boolean v0, Landroid/app/AppScoutStateMachine;->ENABLED_SCOUT_DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "MIUIScout App"

    const-string v1, "Enter APP_SCOUT_NORMALLY state"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_b
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$NormalState;->this$0:Landroid/app/AppScoutStateMachine;

    iget-object v0, v0, Landroid/app/AppScoutStateMachine;->mScoutState:Landroid/app/AppScoutStateMachine$AppScoutState;

    sget-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_HANG:Landroid/app/AppScoutStateMachine$AppScoutState;

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Landroid/app/AppScoutStateMachine$NormalState;->this$0:Landroid/app/AppScoutStateMachine;

    iget-object v0, v0, Landroid/app/AppScoutStateMachine;->mScoutState:Landroid/app/AppScoutStateMachine$AppScoutState;

    sget-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_HANG_INPUT:Landroid/app/AppScoutStateMachine$AppScoutState;

    if-ne v0, v1, :cond_22

    .line 360
    :cond_1b
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$NormalState;->this$0:Landroid/app/AppScoutStateMachine;

    const/16 v1, 0x19a

    invoke-static {v0, v1}, Landroid/app/AppScoutStateMachine;->-$$Nest$mreportAppScoutEventToMqs(Landroid/app/AppScoutStateMachine;I)V

    .line 362
    :cond_22
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$NormalState;->this$0:Landroid/app/AppScoutStateMachine;

    sget-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_NORMALLY:Landroid/app/AppScoutStateMachine$AppScoutState;

    iput-object v1, v0, Landroid/app/AppScoutStateMachine;->mScoutState:Landroid/app/AppScoutStateMachine$AppScoutState;

    .line 363
    return-void
.end method

.method public blacklist exit()V
    .registers 3

    .line 385
    sget-boolean v0, Landroid/app/AppScoutStateMachine;->ENABLED_SCOUT_DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "MIUIScout App"

    const-string v1, "NormalState.exit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_b
    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 368
    sget-boolean v0, Landroid/app/AppScoutStateMachine;->ENABLED_SCOUT_DEBUG:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NormalState.processMessage what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIUIScout App"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_1e
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 377
    const/4 v0, 0x0

    .local v0, "retVal":Z
    goto :goto_2c

    .line 372
    .end local v0    # "retVal":Z
    :pswitch_25
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$NormalState;->this$0:Landroid/app/AppScoutStateMachine;

    invoke-static {v0}, Landroid/app/AppScoutStateMachine;->-$$Nest$mcheckDestStateInPeriod(Landroid/app/AppScoutStateMachine;)V

    .line 373
    const/4 v0, 0x1

    .line 374
    .restart local v0    # "retVal":Z
    nop

    .line 380
    :goto_2c
    return v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_25
    .end packed-switch
.end method
