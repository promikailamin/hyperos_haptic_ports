.class public final Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$onUserRemoved$1$1;
.super Ljava/lang/Object;
.source "AppIdAppFunctionAccessPolicy.kt"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $appIdAppFunctionAccessFlags:Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

.field public final synthetic $userId:I

.field public final synthetic $userState:Lcom/android/server/permission/access/MutableUserState;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/MutableUserState;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$onUserRemoved$1$1;->$appIdAppFunctionAccessFlags:Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    iput p2, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$onUserRemoved$1$1;->$userId:I

    iput-object p3, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$onUserRemoved$1$1;->$userState:Lcom/android/server/permission/access/MutableUserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 278
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/pm/pkg/PackageState;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$onUserRemoved$1$1;->accept(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V
    .registers 6

    .line 280
    iget-object p1, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$onUserRemoved$1$1;->$appIdAppFunctionAccessFlags:Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p1

    check-cast p1, Lcom/android/server/permission/access/immutable/MutableIntIntMap;

    if-nez p1, :cond_f

    goto :goto_32

    .line 281
    :cond_f
    iget p2, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$onUserRemoved$1$1;->$userId:I

    iget-object p0, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$onUserRemoved$1$1;->$userState:Lcom/android/server/permission/access/MutableUserState;

    .line 65
    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IntIntMap;->getSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_19
    const/4 v2, -0x1

    if-ge v2, v0, :cond_32

    .line 54
    invoke-virtual {p1, v0}, Lcom/android/server/permission/access/immutable/IntIntMap;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v0}, Lcom/android/server/permission/access/immutable/IntIntMap;->valueAt(I)I

    .line 282
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_2f

    .line 283
    invoke-virtual {p1, v0}, Lcom/android/server/permission/access/immutable/MutableIntIntMap;->removeAt(I)I

    .line 284
    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    :cond_32
    :goto_32
    return-void
.end method
