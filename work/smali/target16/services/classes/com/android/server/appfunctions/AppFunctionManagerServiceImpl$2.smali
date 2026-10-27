.class public Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;
.super Ljava/lang/Object;
.source "AppFunctionManagerServiceImpl.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2

    .line 517
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 2

    .line 525
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .registers 2

    .line 517
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResult(Ljava/lang/Boolean;)V
    .registers 2

    .line 520
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .registers 2

    .line 517
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method
