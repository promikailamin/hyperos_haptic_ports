.class public Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;


# direct methods
.method public static synthetic $r8$lambda$h7EYra9ZqcgDbMLyIT41NbkG7wI()V
    .registers 3

    .line 249
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityTaskManager;->setLockScreenShown(ZZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    .line 191
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmContext(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Landroid/content/Context;

    move-result-object v1

    .line 192
    invoke-static {p2}, Lcom/android/internal/policy/IKeyguardService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;

    move-result-object p2

    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmCallback(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;-><init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V

    iput-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 193
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_ad

    .line 195
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onSystemReady()V

    .line 196
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iget p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_43

    .line 198
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iget p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setCurrentUser(I)V

    .line 201
    :cond_43
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iget p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_59

    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iget p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    if-ne p1, v1, :cond_60

    .line 203
    :cond_59
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {p1, v0, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedWakingUp(IZ)V

    .line 206
    :cond_60
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iget p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    if-ne p1, v2, :cond_71

    .line 207
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedWakingUp()V

    .line 209
    :cond_71
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iget p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    if-eq p1, v2, :cond_85

    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iget p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    if-ne p1, v1, :cond_97

    .line 211
    :cond_85
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;

    iget-object v3, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmDrawnListenerWhenConnect(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurningOn(ILcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 214
    :cond_97
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iget p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    if-ne p1, v2, :cond_a8

    .line 215
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurnedOn()V

    .line 217
    :cond_a8
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fputmDrawnListenerWhenConnect(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    .line 219
    :cond_ad
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    if-eqz p1, :cond_be

    .line 220
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    .line 222
    :cond_be
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    if-eqz p1, :cond_d5

    .line 223
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    invoke-virtual {v1, p1, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setOccluded(ZZ)V

    .line 225
    :cond_d5
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    if-nez p1, :cond_ec

    .line 226
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setKeyguardEnabled(Z)V

    .line 228
    :cond_ec
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    if-eqz p1, :cond_fd

    .line 229
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onDreamingStarted()V

    .line 231
    :cond_fd
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->doKeyguardTimeoutRequested:Z

    if-eqz p1, :cond_124

    .line 232
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->doKeyguardTimeoutRequestedOptions:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 234
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iput-boolean v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->doKeyguardTimeoutRequested:Z

    .line 235
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p0

    iput-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->doKeyguardTimeoutRequestedOptions:Landroid/os/Bundle;

    :cond_124
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 242
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 244
    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    .line 245
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->-$$Nest$mreset(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;)V

    .line 246
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmKeyguardState(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    .line 247
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-$$Nest$fgetmHandler(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
