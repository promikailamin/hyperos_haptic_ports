.class public final Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getAgents$1$1;
.super Ljava/lang/Object;
.source "AppIdAppFunctionAccessPolicy.kt"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $this_buildList:Ljava/util/List;

.field public final synthetic $this_getAgents:Lcom/android/server/permission/access/GetStateScope;

.field public final synthetic $userId:I

.field public final synthetic this$0:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;ILcom/android/server/permission/access/GetStateScope;Ljava/util/List;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getAgents$1$1;->this$0:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

    iput p2, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getAgents$1$1;->$userId:I

    iput-object p3, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getAgents$1$1;->$this_getAgents:Lcom/android/server/permission/access/GetStateScope;

    iput-object p4, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getAgents$1$1;->$this_buildList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 168
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/pm/pkg/PackageState;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getAgents$1$1;->accept(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V
    .registers 6

    .line 169
    iget-object v0, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getAgents$1$1;->this$0:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

    iget v1, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getAgents$1$1;->$userId:I

    # invokes: Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->isInstalledForUser(Lcom/android/server/pm/pkg/PackageState;I)Z
    invoke-static {v0, p2, v1}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->access$isInstalledForUser(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;Lcom/android/server/pm/pkg/PackageState;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getAgents$1$1;->this$0:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

    iget-object v1, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getAgents$1$1;->$this_getAgents:Lcom/android/server/permission/access/GetStateScope;

    iget v2, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getAgents$1$1;->$userId:I

    # invokes: Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->isValidAgent(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;I)Z
    invoke-static {v0, v1, p2, v2}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->access$isValidAgent(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;I)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 170
    iget-object p0, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getAgents$1$1;->$this_buildList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method
