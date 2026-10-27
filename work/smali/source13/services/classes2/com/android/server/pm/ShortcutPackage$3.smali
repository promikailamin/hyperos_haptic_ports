.class Lcom/android/server/pm/ShortcutPackage$3;
.super Ljava/lang/Object;
.source "ShortcutPackage.java"

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShortcutPackage;->lambda$saveShortcutsAsync$46$com-android-server-pm-ShortcutPackage(Ljava/util/Collection;Landroid/app/appsearch/AppSearchSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/appsearch/BatchResultCallback<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutPackage;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutPackage;

    .line 2644
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$3;->this$0:Lcom/android/server/pm/ShortcutPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .registers 6
    .param p1, "result"    # Landroid/app/appsearch/AppSearchBatchResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 2648
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_28

    .line 2649
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->getFailures()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/AppSearchResult;

    .line 2650
    .local v1, "k":Landroid/app/appsearch/AppSearchResult;
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShortcutService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    .end local v1    # "k":Landroid/app/appsearch/AppSearchResult;
    goto :goto_12

    .line 2653
    :cond_28
    return-void
.end method

.method public onSystemError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 2656
    const-string v0, "ShortcutService"

    const-string v1, "Error persisting shortcuts"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2657
    return-void
.end method
