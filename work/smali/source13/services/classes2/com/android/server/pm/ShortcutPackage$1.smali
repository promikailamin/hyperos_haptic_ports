.class Lcom/android/server/pm/ShortcutPackage$1;
.super Ljava/lang/Object;
.source "ShortcutPackage.java"

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShortcutPackage;->lambda$getShortcutByIdsAsync$42$com-android-server-pm-ShortcutPackage(Ljava/util/Set;Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchSession;)V
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
        "Landroid/app/appsearch/GenericDocument;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutPackage;

.field final synthetic val$cb:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/function/Consumer;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutPackage;

    .line 2558
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$1;->this$0:Lcom/android/server/pm/ShortcutPackage;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$1;->val$cb:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onResult$0$com-android-server-pm-ShortcutPackage$1(Landroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;
    .registers 3
    .param p1, "doc"    # Landroid/app/appsearch/GenericDocument;

    .line 2564
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$1;->this$0:Lcom/android/server/pm/ShortcutPackage;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 2565
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v0

    .line 2564
    invoke-static {v0, p1}, Landroid/content/pm/ShortcutInfo;->createFromGenericDocument(ILandroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .registers 4
    .param p1, "result"    # Landroid/app/appsearch/AppSearchBatchResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/GenericDocument;",
            ">;)V"
        }
    .end annotation

    .line 2562
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->getSuccesses()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 2563
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/ShortcutPackage$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutPackage$1;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2566
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2567
    .local v0, "ret":Ljava/util/List;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$1;->val$cb:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2568
    return-void
.end method

.method public onSystemError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 2572
    const-string v0, "ShortcutService"

    const-string v1, "Error retrieving shortcuts"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2573
    return-void
.end method
