.class public final Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;
.super Ljava/lang/Object;
.source "FutureAppSearchSessionImpl.java"

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# instance fields
.field public final mFuture:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;->mFuture:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .registers 2

    .line 204
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;->mFuture:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSystemError(Ljava/lang/Throwable;)V
    .registers 2

    .line 209
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;->mFuture:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method
