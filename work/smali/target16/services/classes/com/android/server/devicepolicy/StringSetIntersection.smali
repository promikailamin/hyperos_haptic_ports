.class public final Lcom/android/server/devicepolicy/StringSetIntersection;
.super Lcom/android/server/devicepolicy/ResolutionMechanism;
.source "StringSetIntersection.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/android/server/devicepolicy/ResolutionMechanism;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
    .registers 1

    .line 28
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/StringSetIntersection;->getParcelableResolutionMechanism()Landroid/app/admin/StringSetIntersection;

    move-result-object p0

    return-object p0
.end method

.method public getParcelableResolutionMechanism()Landroid/app/admin/StringSetIntersection;
    .registers 1

    .line 55
    new-instance p0, Landroid/app/admin/StringSetIntersection;

    invoke-direct {p0}, Landroid/app/admin/StringSetIntersection;-><init>()V

    return-object p0
.end method

.method public resolve(Ljava/util/LinkedHashMap;)Lcom/android/server/devicepolicy/ResolvedPolicy;
    .registers 5

    .line 33
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyValue;

    if-nez v1, :cond_27

    .line 37
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v2}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_d

    .line 39
    :cond_27
    invoke-virtual {v2}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_d

    :cond_31
    if-nez v1, :cond_34

    return-object v0

    .line 47
    :cond_34
    new-instance p0, Lcom/android/server/devicepolicy/ResolvedPolicy;

    new-instance v0, Landroid/app/admin/PackageSetPolicyValue;

    invoke-direct {v0, v1}, Landroid/app/admin/PackageSetPolicyValue;-><init>(Ljava/util/Set;)V

    .line 50
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/devicepolicy/ResolvedPolicy;-><init>(Landroid/app/admin/PolicyValue;Ljava/util/Set;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 60
    const-string p0, "StringSetIntersection {}"

    return-object p0
.end method
