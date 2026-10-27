.class Lcom/android/server/am/UserController$Injector$2;
.super Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController$Injector;->dismissKeyguard(Ljava/lang/Runnable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController$Injector;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController$Injector;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/UserController$Injector;

    .line 3442
    iput-object p1, p0, Lcom/android/server/am/UserController$Injector$2;->this$0:Lcom/android/server/am/UserController$Injector;

    iput-object p2, p0, Lcom/android/server/am/UserController$Injector$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3455
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$2;->this$0:Lcom/android/server/am/UserController$Injector;

    invoke-static {v0}, Lcom/android/server/am/UserController$Injector;->-$$Nest$fgetmHandler(Lcom/android/server/am/UserController$Injector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/UserController$Injector$2;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3456
    return-void
.end method

.method public onDismissError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3445
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$2;->this$0:Lcom/android/server/am/UserController$Injector;

    invoke-static {v0}, Lcom/android/server/am/UserController$Injector;->-$$Nest$fgetmHandler(Lcom/android/server/am/UserController$Injector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/UserController$Injector$2;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3446
    return-void
.end method

.method public onDismissSucceeded()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3450
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$2;->this$0:Lcom/android/server/am/UserController$Injector;

    invoke-static {v0}, Lcom/android/server/am/UserController$Injector;->-$$Nest$fgetmHandler(Lcom/android/server/am/UserController$Injector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/UserController$Injector$2;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3451
    return-void
.end method
