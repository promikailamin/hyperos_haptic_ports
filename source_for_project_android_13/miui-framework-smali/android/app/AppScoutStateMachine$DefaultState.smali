.class Landroid/app/AppScoutStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "AppScoutStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppScoutStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/AppScoutStateMachine;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppScoutStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/AppScoutStateMachine;

    .line 324
    iput-object p1, p0, Landroid/app/AppScoutStateMachine$DefaultState;->this$0:Landroid/app/AppScoutStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 5

    .line 327
    sget-boolean v0, Landroid/app/AppScoutStateMachine;->ENABLED_SCOUT_DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "AppScoutStateMachine"

    const-string v1, "Enter Default state"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_b
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$DefaultState;->this$0:Landroid/app/AppScoutStateMachine;

    invoke-static {v0}, Landroid/app/AppScoutStateMachine;->-$$Nest$fgetmMessageMonitor(Landroid/app/AppScoutStateMachine;)Landroid/os/perfdebug/MessageMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/perfdebug/MessageMonitor;->getRunningMessage()Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/AppScoutStateMachine;->-$$Nest$fputmCurrentMsg(Landroid/app/AppScoutStateMachine;Landroid/os/Message;)V

    .line 329
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$DefaultState;->this$0:Landroid/app/AppScoutStateMachine;

    invoke-static {v0}, Landroid/app/AppScoutStateMachine;->-$$Nest$fgetmMessageMonitor(Landroid/app/AppScoutStateMachine;)Landroid/os/perfdebug/MessageMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/perfdebug/MessageMonitor;->getRunningEvent()Landroid/view/InputEvent;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/AppScoutStateMachine;->-$$Nest$fputmCurrentEvent(Landroid/app/AppScoutStateMachine;Landroid/view/InputEvent;)V

    .line 330
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$DefaultState;->this$0:Landroid/app/AppScoutStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AppScoutStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppScoutStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 331
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$DefaultState;->this$0:Landroid/app/AppScoutStateMachine;

    iget-object v1, v0, Landroid/app/AppScoutStateMachine;->mNormalState:Landroid/app/AppScoutStateMachine$NormalState;

    invoke-virtual {v0, v1}, Landroid/app/AppScoutStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 332
    return-void
.end method

.method public blacklist exit()V
    .registers 3

    .line 350
    sget-boolean v0, Landroid/app/AppScoutStateMachine;->ENABLED_SCOUT_DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "AppScoutStateMachine"

    const-string v1, "DefaultState.exit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_b
    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 337
    sget-boolean v0, Landroid/app/AppScoutStateMachine;->ENABLED_SCOUT_DEBUG:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultState.processMessage what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppScoutStateMachine"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_1e
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$DefaultState;->this$0:Landroid/app/AppScoutStateMachine;

    invoke-static {v0}, Landroid/app/AppScoutStateMachine;->-$$Nest$fgetmCurrentMsg(Landroid/app/AppScoutStateMachine;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/AppScoutStateMachine;->-$$Nest$fputmLastMsg(Landroid/app/AppScoutStateMachine;Landroid/os/Message;)V

    .line 339
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$DefaultState;->this$0:Landroid/app/AppScoutStateMachine;

    invoke-static {v0}, Landroid/app/AppScoutStateMachine;->-$$Nest$fgetmMessageMonitor(Landroid/app/AppScoutStateMachine;)Landroid/os/perfdebug/MessageMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/perfdebug/MessageMonitor;->getRunningMessage()Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/AppScoutStateMachine;->-$$Nest$fputmCurrentMsg(Landroid/app/AppScoutStateMachine;Landroid/os/Message;)V

    .line 340
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$DefaultState;->this$0:Landroid/app/AppScoutStateMachine;

    invoke-static {v0}, Landroid/app/AppScoutStateMachine;->-$$Nest$fgetmCurrentEvent(Landroid/app/AppScoutStateMachine;)Landroid/view/InputEvent;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/AppScoutStateMachine;->-$$Nest$fputmLastEvent(Landroid/app/AppScoutStateMachine;Landroid/view/InputEvent;)V

    .line 341
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$DefaultState;->this$0:Landroid/app/AppScoutStateMachine;

    invoke-static {v0}, Landroid/app/AppScoutStateMachine;->-$$Nest$fgetmMessageMonitor(Landroid/app/AppScoutStateMachine;)Landroid/os/perfdebug/MessageMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/perfdebug/MessageMonitor;->getRunningEvent()Landroid/view/InputEvent;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/AppScoutStateMachine;->-$$Nest$fputmCurrentEvent(Landroid/app/AppScoutStateMachine;Landroid/view/InputEvent;)V

    .line 342
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$DefaultState;->this$0:Landroid/app/AppScoutStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AppScoutStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppScoutStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 343
    iget-object v0, p0, Landroid/app/AppScoutStateMachine$DefaultState;->this$0:Landroid/app/AppScoutStateMachine;

    iget-object v1, v0, Landroid/app/AppScoutStateMachine;->mNormalState:Landroid/app/AppScoutStateMachine$NormalState;

    invoke-virtual {v0, v1}, Landroid/app/AppScoutStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 344
    const/4 v0, 0x1

    .line 345
    .local v0, "retVal":Z
    return v0
.end method
