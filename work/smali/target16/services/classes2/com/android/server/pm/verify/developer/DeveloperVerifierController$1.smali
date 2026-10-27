.class public Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;
.super Ljava/lang/Object;
.source "DeveloperVerifierController.java"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

.field public final synthetic val$onConnectionEstablished:Ljava/lang/Runnable;

.field public final synthetic val$remoteServiceWrapper:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;

.field public final synthetic val$userId:I

.field public final synthetic val$verifierPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;Ljava/lang/String;ILjava/lang/Runnable;Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;)V
    .registers 6

    .line 262
    iput-object p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    iput-object p2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->val$verifierPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->val$onConnectionEstablished:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->val$remoteServiceWrapper:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBinderDied()V
    .registers 3

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verifier "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->val$verifierPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has died on user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->val$userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VerifierController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    iget v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$mdestroy(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;I)V

    .line 291
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->val$remoteServiceWrapper:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;

    .line 292
    invoke-virtual {p0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->getAutoDisconnectCallback()Ljava/lang/Runnable;

    move-result-object p0

    .line 291
    invoke-static {v0, p0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$mstopAutoDisconnectCountdown(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConnected(Landroid/content/pm/verify/developer/IDeveloperVerifierService;)V
    .registers 3

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Verifier "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->val$verifierPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is connected on user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->val$userId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VerifierController"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->val$onConnectionEstablished:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 270
    iget-object p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->val$remoteServiceWrapper:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;

    .line 271
    invoke-virtual {p0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->getAutoDisconnectCallback()Ljava/lang/Runnable;

    move-result-object p0

    .line 270
    invoke-static {p1, p0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$mstartAutoDisconnectCountdown(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onConnected(Landroid/os/IInterface;)V
    .registers 2

    .line 262
    check-cast p1, Landroid/content/pm/verify/developer/IDeveloperVerifierService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->onConnected(Landroid/content/pm/verify/developer/IDeveloperVerifierService;)V

    return-void
.end method

.method public onDisconnected(Landroid/content/pm/verify/developer/IDeveloperVerifierService;)V
    .registers 3

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Verifier "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->val$verifierPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is disconnected on user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->val$userId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VerifierController"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    iget v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->val$userId:I

    invoke-static {p1, v0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$mdestroy(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;I)V

    .line 281
    iget-object p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->val$remoteServiceWrapper:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;

    .line 282
    invoke-virtual {p0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->getAutoDisconnectCallback()Ljava/lang/Runnable;

    move-result-object p0

    .line 281
    invoke-static {p1, p0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$mstopAutoDisconnectCountdown(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onDisconnected(Landroid/os/IInterface;)V
    .registers 2

    .line 262
    check-cast p1, Landroid/content/pm/verify/developer/IDeveloperVerifierService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$1;->onDisconnected(Landroid/content/pm/verify/developer/IDeveloperVerifierService;)V

    return-void
.end method
