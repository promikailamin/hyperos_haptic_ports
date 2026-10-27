.class public final Lcom/android/server/permission/access/immutable/MutableIntIntMap;
.super Lcom/android/server/permission/access/immutable/IntIntMap;
.source "IntIntMap.kt"


# direct methods
.method public constructor <init>(Landroid/util/SparseIntArray;)V
    .registers 3

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/server/permission/access/immutable/IntIntMap;-><init>(Landroid/util/SparseIntArray;Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/SparseIntArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_9

    .line 43
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntIntMap;-><init>(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/immutable/IntIntMap;)V
    .registers 2

    .line 44
    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IntIntMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntIntMap;-><init>(Landroid/util/SparseIntArray;)V

    return-void
.end method


# virtual methods
.method public final put(II)Ljava/lang/Integer;
    .registers 3

    .line 46
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntIntMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/permission/access/immutable/IntIntMapKt;->putReturnOld(Landroid/util/SparseIntArray;II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final putAt(II)I
    .registers 3

    .line 54
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntIntMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/permission/access/immutable/IntIntMapKt;->setValueAtReturnOld(Landroid/util/SparseIntArray;II)I

    move-result p0

    return p0
.end method

.method public final removeAt(I)I
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntIntMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/permission/access/immutable/IntIntMapKt;->removeAtReturnOld(Landroid/util/SparseIntArray;I)I

    move-result p0

    return p0
.end method
