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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2431
    iput-object p1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/accounts/AccountManager$AmsTask;Landroid/accounts/AccountManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/accounts/AccountManager$AmsTask$Response;-><init>(Landroid/accounts/AccountManager$AmsTask;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o onError(ILjava/lang/String;)V
    .registers 5

    .line 2457
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x65

    if-ne p1, v0, :cond_c

    goto :goto_1a

    .line 2464
    :cond_c
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v1, p1, p2}, Landroid/accounts/AccountManager;->-$$Nest$mconvertErrorToException(Landroid/accounts/AccountManager;ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object p1

    # invokes: Landroid/accounts/AccountManager$AmsTask;->setException(Ljava/lang/Throwable;)V
    invoke-static {v0, p1}, Landroid/accounts/AccountManager$AmsTask;->access$000(Landroid/accounts/AccountManager$AmsTask;Ljava/lang/Throwable;)V

    .line 2465
    return-void

    .line 2461
    :cond_1a
    :goto_1a
    iget-object p1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    .line 2462
    return-void
.end method

.method public greylist-max-o onResult(Landroid/os/Bundle;)V
    .registers 4

    .line 2434
    if-nez p1, :cond_a

    .line 2435
    const/4 p1, 0x5

    const-string/jumbo v0, "null bundle returned"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager$AmsTask$Response;->onError(ILjava/lang/String;)V

    .line 2436
    return-void

    .line 2438
    :cond_a
    const-string v0, "intent"

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 2439
    if-eqz v0, :cond_24

    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_24

    .line 2442
    iget-object p1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object p1, p1, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3e

    .line 2444
    :cond_24
    const-string/jumbo v0, "retry"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2446
    :try_start_2d
    iget-object p1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    invoke-virtual {p1}, Landroid/accounts/AccountManager$AmsTask;->doWork()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_33

    .line 2449
    goto :goto_3e

    .line 2447
    :catch_33
    move-exception p1

    .line 2448
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2451
    :cond_39
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager$AmsTask;->set(Landroid/os/Bundle;)V

    .line 2453
    :goto_3e
    return-void
.end method
