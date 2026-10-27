.class public final Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$onAppIdRemoved$1$1;
.super Ljava/lang/Object;
.source "AppIdAppFunctionAccessPolicy.kt"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $appId:I

.field public final synthetic $appIdAppFunctionAccessFlags:Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$onAppIdRemoved$1$1;->$appIdAppFunctionAccessFlags:Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    iput p2, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$onAppIdRemoved$1$1;->$appId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 296
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/pm/pkg/PackageState;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$onAppIdRemoved$1$1;->accept(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V
    .registers 4

    .line 298
    iget-object p1, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$onAppIdRemoved$1$1;->$appIdAppFunctionAccessFlags:Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p1

    check-cast p1, Lcom/android/server/permission/access/immutable/MutableIntIntMap;

    if-nez p1, :cond_f

    goto :goto_2d

    .line 299
    :cond_f
    iget p0, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$onAppIdRemoved$1$1;->$appId:I

    .line 65
    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IntIntMap;->getSize()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_17
    const/4 v0, -0x1

    if-ge v0, p2, :cond_2d

    .line 54
    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/IntIntMap;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/IntIntMap;->valueAt(I)I

    .line 300
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, p0, :cond_2a

    .line 301
    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/MutableIntIntMap;->removeAt(I)I

    :cond_2a
    add-int/lit8 p2, p2, -0x1

    goto :goto_17

    :cond_2d
    :goto_2d
    return-void
.end method
