.class public final Lcom/android/server/devicepolicy/MostRestrictive;
.super Lcom/android/server/devicepolicy/ResolutionMechanism;
.source "MostRestrictive.java"


# instance fields
.field public mMostToLeastRestrictive:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$OiyvHDr0tydAO1HgptrqEz3LNu8(Landroid/app/admin/PolicyValue;Ljava/util/Map$Entry;)Z
    .registers 2

    .line 49
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/PolicyValue;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/android/server/devicepolicy/ResolutionMechanism;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/devicepolicy/MostRestrictive;->mMostToLeastRestrictive:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getParcelableResolutionMechanism()Landroid/app/admin/MostRestrictive;
    .registers 2

    .line 75
    new-instance v0, Landroid/app/admin/MostRestrictive;

    iget-object p0, p0, Lcom/android/server/devicepolicy/MostRestrictive;->mMostToLeastRestrictive:Ljava/util/List;

    invoke-direct {v0, p0}, Landroid/app/admin/MostRestrictive;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
    .registers 1

    .line 28
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/MostRestrictive;->getParcelableResolutionMechanism()Landroid/app/admin/MostRestrictive;

    move-result-object p0

    return-object p0
.end method

.method public resolve(Ljava/util/LinkedHashMap;)Lcom/android/server/devicepolicy/ResolvedPolicy;
    .registers 5

    .line 39
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_8
    iget-object p0, p0, Lcom/android/server/devicepolicy/MostRestrictive;->mMostToLeastRestrictive:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/PolicyValue;

    .line 48
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/devicepolicy/MostRestrictive$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/devicepolicy/MostRestrictive$$ExternalSyntheticLambda0;-><init>(Landroid/app/admin/PolicyValue;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda191;

    invoke-direct {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda191;-><init>()V

    .line 49
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 50
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    .line 49
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 51
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 52
    new-instance p0, Lcom/android/server/devicepolicy/ResolvedPolicy;

    invoke-direct {p0, v0, v1}, Lcom/android/server/devicepolicy/ResolvedPolicy;-><init>(Landroid/app/admin/PolicyValue;Ljava/util/Set;)V

    return-object p0

    .line 56
    :cond_4a
    new-instance p0, Lcom/android/server/devicepolicy/ResolvedPolicy;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/ResolvedPolicy;-><init>(Ljava/util/Map$Entry;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MostRestrictive { mMostToLeastRestrictive= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/devicepolicy/MostRestrictive;->mMostToLeastRestrictive:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
