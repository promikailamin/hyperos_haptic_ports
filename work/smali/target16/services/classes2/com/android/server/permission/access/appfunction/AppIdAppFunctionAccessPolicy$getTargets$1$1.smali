.class public final Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getTargets$1$1;
.super Ljava/lang/Object;
.source "AppIdAppFunctionAccessPolicy.kt"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $this_buildList:Ljava/util/List;

.field public final synthetic $userId:I

.field public final synthetic this$0:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;ILjava/util/List;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getTargets$1$1;->this$0:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

    iput p2, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getTargets$1$1;->$userId:I

    iput-object p3, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getTargets$1$1;->$this_buildList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 176
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/pm/pkg/PackageState;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getTargets$1$1;->accept(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V
    .registers 5

    .line 177
    iget-object v0, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getTargets$1$1;->this$0:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

    iget v1, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getTargets$1$1;->$userId:I

    # invokes: Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->isValidTarget(Lcom/android/server/pm/pkg/PackageState;I)Z
    invoke-static {v0, p2, v1}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->access$isValidTarget(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;Lcom/android/server/pm/pkg/PackageState;I)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 178
    iget-object p0, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getTargets$1$1;->$this_buildList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method
