.class public final Lcom/android/server/devicepolicy/FlagUnion;
.super Lcom/android/server/devicepolicy/ResolutionMechanism;
.source "FlagUnion.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/android/server/devicepolicy/ResolutionMechanism;-><init>()V

    return-void
.end method


# virtual methods
.method public getParcelableResolutionMechanism()Landroid/app/admin/FlagUnion;
    .registers 1

    .line 72
    sget-object p0, Landroid/app/admin/FlagUnion;->FLAG_UNION:Landroid/app/admin/FlagUnion;

    return-object p0
.end method

.method public bridge synthetic getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
    .registers 1

    .line 26
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/FlagUnion;->getParcelableResolutionMechanism()Landroid/app/admin/FlagUnion;

    move-result-object p0

    return-object p0
.end method

.method public resolve(Ljava/util/LinkedHashMap;)Lcom/android/server/devicepolicy/ResolvedPolicy;
    .registers 4

    .line 31
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 37
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PolicyValue;

    .line 38
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_18

    .line 40
    :cond_38
    new-instance v0, Lcom/android/server/devicepolicy/ResolvedPolicy;

    new-instance v1, Landroid/app/admin/IntegerPolicyValue;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v1, p0}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 42
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/server/devicepolicy/ResolvedPolicy;-><init>(Landroid/app/admin/PolicyValue;Ljava/util/Set;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 77
    const-string p0, "IntegerUnion {}"

    return-object p0
.end method
