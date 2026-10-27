.class Landroid/accounts/AccountManager$AmsTask$Response;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager$AmsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Response"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/accounts/AccountManager$AmsTask;


# direct methods
.method private constructor blacklist <init>(Landroid/accounts/AccountManager$AmsTask;)V
    .registers 2

    .line 2473
    iput-object p1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/accounts/AccountManager$AmsTask;Landroid/accounts/AccountManager$AmsTask$Response-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/accounts/AccountManager$AmsTask$Response;-><init>(Landroid/accounts/AccountManager$AmsTask;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o onError(ILjava/lang/String;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 2504
    const/4 v0, 0x4

    if-eq p1, v0, :cond_18

    const/16 v0, 0x64

    if-eq p1, v0, :cond_18

    const/16 v0, 0x65

    if-ne p1, v0, :cond_c

    goto :goto_18

    .line 2511
    :cond_c
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object v1, v0, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v1, p1, p2}, Landroid/accounts/AccountManager;->-$$Nest$mconvertErrorToException(Landroid/accounts/AccountManager;ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    # invokes: Landroid/accounts/AccountManager$AmsTask;->setException(Ljava/lang/Throwable;)V
    invoke-static {v0, v1}, Landroid/accounts/AccountManager$AmsTask;->access$000(Landroid/accounts/AccountManager$AmsTask;Ljava/lang/Throwable;)V

    .line 2512
    return-void

    .line 2508
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    .line 2509
    return-void
.end method

.method public greylist-max-o onResult(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2476
    if-nez p1, :cond_a

    .line 2477
    const/4 v0, 0x5

    const-string/jumbo v1, "null bundle returned"

    invoke-virtual {p0, v0, v1}, Landroid/accounts/AccountManager$AmsTask$Response;->onError(ILjava/lang/String;)V

    .line 2478
    return-void

    .line 2480
    :cond_a
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 2481
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2d

    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2d

    .line 2485
    invoke-static {}, Landroid/accounts/AccountManagerStub;->getInstance()Landroid/accounts/AccountManagerStub;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/accounts/AccountManagerStub;->handleIfContainsXiaomiAccountType(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2486
    return-void

    .line 2489
    :cond_25
    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_47

    .line 2491
    :cond_2d
    const-string/jumbo v1, "retry"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2493
    :try_start_36
    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    invoke-virtual {v1}, Landroid/accounts/AccountManager$AmsTask;->doWork()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3c

    .line 2496
    goto :goto_47

    .line 2494
    :catch_3c
    move-exception v1

    .line 2495
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2498
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_42
    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager$AmsTask;->set(Landroid/os/Bundle;)V

    .line 2500
    :goto_47
    return-void
.end method
