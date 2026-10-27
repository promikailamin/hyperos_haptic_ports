.class public final Lcom/android/server/devicepolicy/PackageSetUnion;
.super Lcom/android/server/devicepolicy/ResolutionMechanism;
.source "PackageSetUnion.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/android/server/devicepolicy/ResolutionMechanism;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
    .registers 1

    .line 29
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PackageSetUnion;->getParcelableResolutionMechanism()Landroid/app/admin/StringSetUnion;

    move-result-object p0

    return-object p0
.end method

.method public getParcelableResolutionMechanism()Landroid/app/admin/StringSetUnion;
    .registers 1

    .line 72
    new-instance p0, Landroid/app/admin/StringSetUnion;

    invoke-direct {p0}, Landroid/app/admin/StringSetUnion;-><init>()V

    return-object p0
.end method

.method public resolve(Ljava/util/LinkedHashMap;)Lcom/android/server/devicepolicy/ResolvedPolicy;
    .registers 4

    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_b
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 39
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PolicyValue;

    .line 40
    invoke-virtual {v1}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {p0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_18

    .line 42
    :cond_2e
    new-instance v0, Lcom/android/server/devicepolicy/ResolvedPolicy;

    new-instance v1, Landroid/app/admin/PackageSetPolicyValue;

    invoke-direct {v1, p0}, Landroid/app/admin/PackageSetPolicyValue;-><init>(Ljava/util/Set;)V

    .line 44
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/server/devicepolicy/ResolvedPolicy;-><init>(Landroid/app/admin/PolicyValue;Ljava/util/Set;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 78
    const-string p0, "PackageSetUnion {}"

    return-object p0
.end method
