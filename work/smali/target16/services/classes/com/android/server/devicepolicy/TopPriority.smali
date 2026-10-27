.class public final Lcom/android/server/devicepolicy/TopPriority;
.super Lcom/android/server/devicepolicy/ResolutionMechanism;
.source "TopPriority.java"


# instance fields
.field public final mHighestToLowestPriorityAuthorities:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$6lUR-vAHYPzsWytonmT7aquNLSg(Ljava/lang/String;Lcom/android/server/devicepolicy/EnforcingAdmin;)Z
    .registers 2

    .line 47
    invoke-virtual {p1, p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/android/server/devicepolicy/ResolutionMechanism;-><init>()V

    .line 35
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lcom/android/server/devicepolicy/TopPriority;->mHighestToLowestPriorityAuthorities:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getParcelableAuthorities()Ljava/util/List;
    .registers 3

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object p0, p0, Lcom/android/server/devicepolicy/TopPriority;->mHighestToLowestPriorityAuthorities:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    invoke-static {v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getParcelableAuthority(Ljava/lang/String;)Landroid/app/admin/Authority;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    return-object v0
.end method

.method public bridge synthetic getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/TopPriority;->getParcelableResolutionMechanism()Landroid/app/admin/TopPriority;

    move-result-object p0

    return-object p0
.end method

.method public getParcelableResolutionMechanism()Landroid/app/admin/TopPriority;
    .registers 2

    .line 58
    new-instance v0, Landroid/app/admin/TopPriority;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/TopPriority;->getParcelableAuthorities()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/app/admin/TopPriority;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public resolve(Ljava/util/LinkedHashMap;)Lcom/android/server/devicepolicy/ResolvedPolicy;
    .registers 5

    .line 42
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_8
    iget-object p0, p0, Lcom/android/server/devicepolicy/TopPriority;->mHighestToLowestPriorityAuthorities:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/devicepolicy/TopPriority$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/devicepolicy/TopPriority$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 49
    new-instance p0, Lcom/android/server/devicepolicy/ResolvedPolicy;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/PolicyValue;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/devicepolicy/ResolvedPolicy;-><init>(Landroid/app/admin/PolicyValue;Ljava/util/Set;)V

    return-object p0

    .line 53
    :cond_4f
    new-instance p0, Lcom/android/server/devicepolicy/ResolvedPolicy;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/ResolvedPolicy;-><init>(Ljava/util/Map$Entry;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TopPriority { mHighestToLowestPriorityAuthorities= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/devicepolicy/TopPriority;->mHighestToLowestPriorityAuthorities:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
