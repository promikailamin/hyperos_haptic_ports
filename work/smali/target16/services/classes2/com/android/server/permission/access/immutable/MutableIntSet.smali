.class public final Lcom/android/server/permission/access/immutable/MutableIntSet;
.super Lcom/android/server/permission/access/immutable/IntSet;
.source "IntSet.kt"


# direct methods
.method public constructor <init>(Landroid/util/SparseBooleanArray;)V
    .registers 3

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/android/server/permission/access/immutable/IntSet;-><init>(Landroid/util/SparseBooleanArray;Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/SparseBooleanArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_9

    .line 40
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntSet;-><init>(Landroid/util/SparseBooleanArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/immutable/IntSet;)V
    .registers 2

    .line 41
    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IntSet;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntSet;-><init>(Landroid/util/SparseBooleanArray;)V

    return-void
.end method


# virtual methods
.method public final add(I)Z
    .registers 3

    .line 44
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntSet;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseBooleanArray;

    move-result-object v0

    # invokes: Lcom/android/server/permission/access/immutable/IntSetKt;->contains(Landroid/util/SparseBooleanArray;I)Z
    invoke-static {v0, p1}, Lcom/android/server/permission/access/immutable/IntSetKt;->access$contains(Landroid/util/SparseBooleanArray;I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 47
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntSet;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseBooleanArray;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return v0
.end method

.method public final clear()V
    .registers 1

    .line 62
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntSet;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseBooleanArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method
