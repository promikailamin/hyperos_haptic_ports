.class Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;
.super Landroid/app/contentsuggestions/ISelectionsCallback$Stub;
.source "ContentSuggestionsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contentsuggestions/ContentSuggestionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectionsCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$vALAakbiBnC9dW0gSJ3hjWNLXk8(Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;->lambda$onContentSelectionsAvailable$0(ILjava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 328
    invoke-direct {p0}, Landroid/app/contentsuggestions/ISelectionsCallback$Stub;-><init>()V

    .line 329
    iput-object p1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;->mCallback:Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;

    .line 330
    iput-object p2, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 331
    return-void
.end method

.method private synthetic blacklist lambda$onContentSelectionsAvailable$0(ILjava/util/List;)V
    .registers 4

    .line 339
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;->mCallback:Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;

    invoke-interface {v0, p1, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;->onContentSelectionsAvailable(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist onContentSelectionsAvailable(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/contentsuggestions/ContentSelection;",
            ">;)V"
        }
    .end annotation

    .line 336
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 338
    :try_start_4
    iget-object v2, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;ILjava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 341
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 342
    nop

    .line 343
    return-void

    .line 341
    :catchall_13
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 342
    throw p1
.end method
