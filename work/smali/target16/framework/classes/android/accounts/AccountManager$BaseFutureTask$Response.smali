.class public Landroid/accounts/AccountManager$BaseFutureTask$Response;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager$BaseFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Response"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/accounts/AccountManager$BaseFutureTask;


# direct methods
.method protected constructor blacklist <init>(Landroid/accounts/AccountManager$BaseFutureTask;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2502
    iput-object p1, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o onError(ILjava/lang/String;)V
    .registers 5

    .line 2522
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x65

    if-ne p1, v0, :cond_c

    goto :goto_1a

    .line 2529
    :cond_c
    iget-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    iget-object v1, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$BaseFutureTask;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v1, p1, p2}, Landroid/accounts/AccountManager;->-$$Nest$mconvertErrorToException(Landroid/accounts/AccountManager;ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object p1

    # invokes: Landroid/accounts/AccountManager$BaseFutureTask;->setException(Ljava/lang/Throwable;)V
    invoke-static {v0, p1}, Landroid/accounts/AccountManager$BaseFutureTask;->access$200(Landroid/accounts/AccountManager$BaseFutureTask;Ljava/lang/Throwable;)V

    .line 2530
    return-void

    .line 2526
    :cond_1a
    :goto_1a
    iget-object p1, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/accounts/AccountManager$BaseFutureTask;->cancel(Z)Z

    .line 2527
    return-void
.end method

.method public greylist-max-o onResult(Landroid/os/Bundle;)V
    .registers 3

    .line 2506
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager$BaseFutureTask;->bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    .line 2507
    if-nez p1, :cond_9

    .line 2508
    return-void

    .line 2510
    :cond_9
    iget-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    # invokes: Landroid/accounts/AccountManager$BaseFutureTask;->set(Ljava/lang/Object;)V
    invoke-static {v0, p1}, Landroid/accounts/AccountManager$BaseFutureTask;->access$100(Landroid/accounts/AccountManager$BaseFutureTask;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_e} :catch_11
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_e} :catch_f

    .line 2511
    return-void

    .line 2514
    :catch_f
    move-exception p1

    goto :goto_13

    .line 2512
    :catch_11
    move-exception p1

    .line 2516
    nop

    .line 2517
    :goto_13
    const/4 p1, 0x5

    const-string/jumbo v0, "no result in response"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager$BaseFutureTask$Response;->onError(ILjava/lang/String;)V

    .line 2518
    return-void
.end method
