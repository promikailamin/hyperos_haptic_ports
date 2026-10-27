.class public final Lcom/android/server/permission/access/AccessPolicy;
.super Ljava/lang/Object;
.source "AccessPolicy.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/AccessPolicy$Companion;

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public final schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/permission/access/AccessPolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/AccessPolicy$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/AccessPolicy;->Companion:Lcom/android/server/permission/access/AccessPolicy$Companion;

    .line 461
    const-class v0, Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/AccessPolicy;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 49
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    new-instance v1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-direct {v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->_init_$lambda$1$addPolicy(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Lcom/android/server/permission/access/SchemePolicy;)V

    .line 55
    new-instance v1, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    invoke-direct {v1}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->_init_$lambda$1$addPolicy(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Lcom/android/server/permission/access/SchemePolicy;)V

    .line 56
    new-instance v1, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    invoke-direct {v1}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->_init_$lambda$1$addPolicy(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Lcom/android/server/permission/access/SchemePolicy;)V

    .line 57
    new-instance v1, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    invoke-direct {v1}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->_init_$lambda$1$addPolicy(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Lcom/android/server/permission/access/SchemePolicy;)V

    .line 58
    new-instance v1, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

    invoke-direct {v1}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->_init_$lambda$1$addPolicy(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Lcom/android/server/permission/access/SchemePolicy;)V

    .line 48
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessPolicy;-><init>(Lcom/android/server/permission/access/immutable/IndexedMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/immutable/IndexedMap;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    return-void
.end method

.method public static final _init_$lambda$1$addPolicy(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Lcom/android/server/permission/access/SchemePolicy;)V
    .registers 6

    .line 51
    invoke-virtual {p1}, Lcom/android/server/permission/access/SchemePolicy;->getSubjectScheme()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    goto :goto_15

    .line 51
    :cond_b
    new-instance v1, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    check-cast v1, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 51
    invoke-virtual {p1}, Lcom/android/server/permission/access/SchemePolicy;->getObjectScheme()Ljava/lang/String;

    move-result-object p0

    .line 126
    invoke-virtual {v1, p0, p1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getSchemePolicy(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;
    .registers 4

    .line 63
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/SchemePolicy;

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    if-eqz p0, :cond_15

    return-object p0

    .line 64
    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Scheme policy for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 63
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final initialize(Lcom/android/server/permission/access/MutableAccessState;Lcom/android/server/permission/access/immutable/IntSet;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;)V
    .registers 16

    .line 79
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableExternalState;->mutateUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/permission/access/immutable/IntSetExtensionsKt;->plusAssign(Lcom/android/server/permission/access/immutable/MutableIntSet;Lcom/android/server/permission/access/immutable/IntSet;)V

    .line 81
    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/MutableExternalState;->setPackageStatesPublic(Ljava/util/Map;)V

    .line 82
    invoke-virtual {p0, p4}, Lcom/android/server/permission/access/MutableExternalState;->setDisabledSystemPackageStatesPublic(Ljava/util/Map;)V

    .line 529
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_19
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_55

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/pkg/PackageState;

    .line 84
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_19

    .line 87
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableExternalState;->mutateAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    .line 88
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    if-eqz v2, :cond_41

    goto :goto_4b

    .line 88
    :cond_41
    new-instance v2, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>(Ljava/util/ArrayList;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)Lcom/android/server/permission/access/immutable/Immutable;

    :goto_4b
    check-cast v2, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 89
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 91
    :cond_55
    invoke-virtual {p0, p5}, Lcom/android/server/permission/access/MutableExternalState;->setKnownPackagesPublic(Lcom/android/server/permission/access/immutable/IntMap;)V

    .line 92
    invoke-virtual {p0, p6}, Lcom/android/server/permission/access/MutableExternalState;->setLeanbackPublic(Z)V

    .line 93
    invoke-virtual {p0, p7}, Lcom/android/server/permission/access/MutableExternalState;->setConfigPermissionsPublic(Ljava/util/Map;)V

    .line 94
    invoke-virtual {p0, p8}, Lcom/android/server/permission/access/MutableExternalState;->setPrivilegedPermissionAllowlistPackagesPublic(Lcom/android/server/permission/access/immutable/IndexedListSet;)V

    .line 95
    invoke-virtual {p0, p9}, Lcom/android/server/permission/access/MutableExternalState;->setPermissionAllowlistPublic(Lcom/android/server/pm/permission/PermissionAllowlist;)V

    .line 96
    invoke-virtual {p0, p10}, Lcom/android/server/permission/access/MutableExternalState;->setImplicitToSourcePermissionsPublic(Lcom/android/server/permission/access/immutable/IndexedMap;)V

    .line 98
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStatesNoWrite()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    .line 38
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result p1

    const/4 p3, 0x0

    :goto_70
    if-ge p3, p1, :cond_81

    .line 39
    invoke-virtual {p2, p3}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result p4

    .line 99
    new-instance p5, Lcom/android/server/permission/access/MutableUserState;

    invoke-direct {p5}, Lcom/android/server/permission/access/MutableUserState;-><init>()V

    invoke-static {p0, p4, p5}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_70

    :cond_81
    return-void
.end method

.method public final migrateSystemState(Lcom/android/server/permission/access/MutableAccessState;)V
    .registers 10

    .line 455
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_32

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v3, Ljava/lang/String;

    .line 47
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v3

    move v5, v1

    :goto_1b
    if-ge v5, v3, :cond_2f

    .line 48
    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v6, Ljava/lang/String;

    .line 287
    invoke-virtual {v7, p1}, Lcom/android/server/permission/access/SchemePolicy;->migrateSystemState(Lcom/android/server/permission/access/MutableAccessState;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_32
    return-void
.end method

.method public final migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 11

    .line 455
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_32

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v3, Ljava/lang/String;

    .line 47
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v3

    move v5, v1

    :goto_1b
    if-ge v5, v3, :cond_2f

    .line 48
    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v6, Ljava/lang/String;

    .line 291
    invoke-virtual {v7, p1, p2}, Lcom/android/server/permission/access/SchemePolicy;->migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_32
    return-void
.end method

.method public final onAgentAllowlistChanged(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Set;)V
    .registers 11

    .line 277
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/MutableExternalState;->setAgentAllowlistPublic(Ljava/util/Set;)V

    .line 455
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    if-ge v2, v0, :cond_3d

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v3, Ljava/lang/String;

    .line 47
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v3

    move v5, v1

    :goto_26
    if-ge v5, v3, :cond_3a

    .line 48
    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v6, Ljava/lang/String;

    .line 278
    invoke-virtual {v7, p1, p2}, Lcom/android/server/permission/access/SchemePolicy;->onAgentAllowlistChanged(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Set;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_3d
    return-void
.end method

.method public final onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;)V
    .registers 13

    .line 183
    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v0, :cond_bc

    .line 187
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    .line 189
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v2

    .line 190
    invoke-virtual {v2, p2}, Lcom/android/server/permission/access/MutableExternalState;->setPackageStatesPublic(Ljava/util/Map;)V

    .line 191
    invoke-virtual {v2, p3}, Lcom/android/server/permission/access/MutableExternalState;->setDisabledSystemPackageStatesPublic(Ljava/util/Map;)V

    .line 192
    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableExternalState;->mutateAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p2

    .line 75
    invoke-virtual {p2, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p3

    const/4 v3, 0x0

    if-eqz p3, :cond_27

    move v5, v3

    goto :goto_31

    .line 194
    :cond_27
    new-instance p3, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p3, v4, v5, v4}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>(Ljava/util/ArrayList;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    invoke-virtual {p2, v1, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)Lcom/android/server/permission/access/immutable/Immutable;

    :goto_31
    check-cast p3, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 84
    invoke-virtual {p3, p5}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v2, p4}, Lcom/android/server/permission/access/MutableExternalState;->setKnownPackagesPublic(Lcom/android/server/permission/access/immutable/IntMap;)V

    if-eqz v5, :cond_6c

    .line 455
    iget-object p2, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p3

    move p4, v3

    :goto_42
    if-ge p4, p3, :cond_6c

    .line 48
    invoke-virtual {p2, p4}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p2, p4}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast p5, Ljava/lang/String;

    .line 47
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p5

    move v4, v3

    :goto_55
    if-ge v4, p5, :cond_69

    .line 48
    invoke-virtual {v2, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v5, Ljava/lang/String;

    .line 199
    invoke-virtual {v6, p1, v1}, Lcom/android/server/permission/access/SchemePolicy;->onAppIdAdded(Lcom/android/server/permission/access/MutateStateScope;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    :cond_69
    add-int/lit8 p4, p4, 0x1

    goto :goto_42

    .line 455
    :cond_6c
    iget-object p2, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p3

    move p4, v3

    :goto_73
    if-ge p4, p3, :cond_9d

    .line 48
    invoke-virtual {p2, p4}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p2, p4}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast p5, Ljava/lang/String;

    .line 47
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p5

    move v2, v3

    :goto_86
    if-ge v2, p5, :cond_9a

    .line 48
    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v4, Ljava/lang/String;

    .line 201
    invoke-virtual {v5, p1, v0}, Lcom/android/server/permission/access/SchemePolicy;->onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    :cond_9a
    add-int/lit8 p4, p4, 0x1

    goto :goto_73

    .line 202
    :cond_9d
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result p3

    :goto_a9
    if-ge v3, p3, :cond_bb

    .line 45
    invoke-virtual {p2, v3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result p4

    invoke-virtual {p2, v3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p5

    check-cast p5, Lcom/android/server/permission/access/UserState;

    .line 203
    invoke-virtual {p0, p1, v0, p4}, Lcom/android/server/permission/access/AccessPolicy;->upgradePackageVersion(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a9

    :cond_bb
    return-void

    .line 185
    :cond_bc
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Added package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t found in packageStates in onPackageAdded()"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 184
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;I)V
    .registers 12

    .line 248
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    .line 249
    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/MutableExternalState;->setPackageStatesPublic(Ljava/util/Map;)V

    .line 250
    invoke-virtual {v0, p3}, Lcom/android/server/permission/access/MutableExternalState;->setDisabledSystemPackageStatesPublic(Ljava/util/Map;)V

    .line 251
    invoke-virtual {v0, p4}, Lcom/android/server/permission/access/MutableExternalState;->setKnownPackagesPublic(Lcom/android/server/permission/access/immutable/IntMap;)V

    .line 253
    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/PackageState;

    if-eqz p2, :cond_4c

    .line 455
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p3

    const/4 p4, 0x0

    move p5, p4

    :goto_21
    if-ge p5, p3, :cond_4b

    .line 48
    invoke-virtual {p0, p5}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p5}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    move v2, p4

    :goto_34
    if-ge v2, v0, :cond_48

    .line 48
    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v3, Ljava/lang/String;

    .line 257
    invoke-virtual {v4, p1, p2, p6}, Lcom/android/server/permission/access/SchemePolicy;->onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_48
    add-int/lit8 p5, p5, 0x1

    goto :goto_21

    :cond_4b
    return-void

    .line 255
    :cond_4c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Installed package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t found in packageStates in onPackageInstalled()"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 254
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;I)V
    .registers 14

    .line 214
    invoke-interface {p2, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 218
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/MutableExternalState;->setPackageStatesPublic(Ljava/util/Map;)V

    .line 220
    invoke-virtual {v0, p3}, Lcom/android/server/permission/access/MutableExternalState;->setDisabledSystemPackageStatesPublic(Ljava/util/Map;)V

    .line 221
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->mutateAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p2

    invoke-virtual {p2, p6}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p2

    check-cast p2, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    const/4 p3, 0x0

    if-eqz p2, :cond_33

    .line 79
    invoke-virtual {p2, p5}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->remove(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/IndexedListSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_33

    .line 224
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->mutateAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p2

    invoke-static {p2, p6}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    const/4 p2, 0x1

    goto :goto_34

    :cond_33
    move p2, p3

    .line 228
    :goto_34
    invoke-virtual {v0, p4}, Lcom/android/server/permission/access/MutableExternalState;->setKnownPackagesPublic(Lcom/android/server/permission/access/immutable/IntMap;)V

    .line 455
    iget-object p4, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {p4}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    move v1, p3

    :goto_3e
    if-ge v1, v0, :cond_68

    .line 48
    invoke-virtual {p4, v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p4, v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v2, Ljava/lang/String;

    .line 47
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v2

    move v4, p3

    :goto_51
    if-ge v4, v2, :cond_65

    .line 48
    invoke-virtual {v3, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v5, Ljava/lang/String;

    .line 230
    invoke-virtual {v6, p1, p5, p6}, Lcom/android/server/permission/access/SchemePolicy;->onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_68
    if-eqz p2, :cond_9b

    .line 455
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p2

    move p4, p3

    :goto_71
    if-ge p4, p2, :cond_9b

    .line 48
    invoke-virtual {p0, p4}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p4}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    move v2, p3

    :goto_84
    if-ge v2, v0, :cond_98

    .line 48
    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v3, Ljava/lang/String;

    .line 232
    invoke-virtual {v4, p1, p6}, Lcom/android/server/permission/access/SchemePolicy;->onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    :cond_98
    add-int/lit8 p4, p4, 0x1

    goto :goto_71

    .line 234
    :cond_9b
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result p2

    move p4, p3

    :goto_a8
    if-ge p4, p2, :cond_d1

    .line 45
    invoke-virtual {p0, p4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    invoke-virtual {p0, p4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p6

    check-cast p6, Lcom/android/server/permission/access/UserState;

    .line 235
    invoke-virtual {p6}, Lcom/android/server/permission/access/UserState;->getPackageVersions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p6

    invoke-virtual {p6, p5}, Lcom/android/server/permission/access/immutable/IndexedMap;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_ce

    .line 236
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p6

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p6, p4, p3, v0, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object p6

    .line 101
    invoke-virtual {p6, p5}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ce
    add-int/lit8 p4, p4, 0x1

    goto :goto_a8

    :cond_d1
    return-void

    .line 215
    :cond_d2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Removed package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is still in packageStates in onPackageRemoved()"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 214
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;II)V
    .registers 13

    .line 268
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    .line 269
    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/MutableExternalState;->setPackageStatesPublic(Ljava/util/Map;)V

    .line 270
    invoke-virtual {v0, p3}, Lcom/android/server/permission/access/MutableExternalState;->setDisabledSystemPackageStatesPublic(Ljava/util/Map;)V

    .line 271
    invoke-virtual {v0, p4}, Lcom/android/server/permission/access/MutableExternalState;->setKnownPackagesPublic(Lcom/android/server/permission/access/immutable/IntMap;)V

    .line 455
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_19
    if-ge p4, p2, :cond_43

    .line 48
    invoke-virtual {p0, p4}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p4}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    move v2, p3

    :goto_2c
    if-ge v2, v0, :cond_40

    .line 48
    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v3, Ljava/lang/String;

    .line 273
    invoke-virtual {v4, p1, p5, p6, p7}, Lcom/android/server/permission/access/SchemePolicy;->onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_40
    add-int/lit8 p4, p4, 0x1

    goto :goto_19

    :cond_43
    return-void
.end method

.method public final onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V
    .registers 10

    .line 455
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_32

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v3, Ljava/lang/String;

    .line 47
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v3

    move v5, v1

    :goto_1b
    if-ge v5, v3, :cond_2f

    .line 48
    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v6, Ljava/lang/String;

    .line 104
    invoke-virtual {v7, p1}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_32
    return-void
.end method

.method public final onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 133
    new-instance v4, Lcom/android/server/permission/access/immutable/MutableIntSet;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v5}, Lcom/android/server/permission/access/immutable/MutableIntSet;-><init>(Landroid/util/SparseBooleanArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 134
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v7

    move-object/from16 v8, p2

    .line 135
    invoke-virtual {v7, v8}, Lcom/android/server/permission/access/MutableExternalState;->setPackageStatesPublic(Ljava/util/Map;)V

    move-object/from16 v9, p3

    .line 136
    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/MutableExternalState;->setDisabledSystemPackageStatesPublic(Ljava/util/Map;)V

    .line 564
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_29
    :goto_29
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/PackageState;

    .line 138
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v12

    if-eqz v12, :cond_48

    goto :goto_29

    .line 141
    :cond_48
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_29

    .line 145
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v12

    if-eqz v12, :cond_87

    invoke-interface {v3, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5f

    goto :goto_87

    .line 147
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on storage volume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " didn\'t receive onPackageAdded() before onStorageVolumeMounted()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_87
    :goto_87
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v10

    .line 151
    invoke-virtual {v7}, Lcom/android/server/permission/access/MutableExternalState;->mutateAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v12

    .line 75
    invoke-virtual {v12, v10}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v13

    if-eqz v13, :cond_96

    goto :goto_a1

    .line 152
    :cond_96
    invoke-static {v4, v10}, Lcom/android/server/permission/access/immutable/IntSetExtensionsKt;->plusAssign(Lcom/android/server/permission/access/immutable/MutableIntSet;I)V

    .line 153
    new-instance v13, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-direct {v13, v5, v6, v5}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>(Ljava/util/ArrayList;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    invoke-virtual {v12, v10, v13}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)Lcom/android/server/permission/access/immutable/Immutable;

    :goto_a1
    check-cast v13, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 84
    invoke-virtual {v13, v11}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_a7
    move-object/from16 v10, p4

    .line 157
    invoke-virtual {v7, v10}, Lcom/android/server/permission/access/MutableExternalState;->setKnownPackagesPublic(Lcom/android/server/permission/access/immutable/IntMap;)V

    .line 38
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v5

    const/4 v7, 0x0

    :goto_b1
    if-ge v7, v5, :cond_ed

    .line 39
    invoke-virtual {v4, v7}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v9

    .line 455
    iget-object v10, v0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {v10}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v11

    const/4 v12, 0x0

    :goto_be
    if-ge v12, v11, :cond_ea

    .line 48
    invoke-virtual {v10, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v13, Ljava/lang/String;

    .line 47
    invoke-virtual {v14}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v13

    const/4 v15, 0x0

    :goto_d1
    if-ge v15, v13, :cond_e7

    .line 48
    invoke-virtual {v14, v15}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual {v14, v15}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v16, Ljava/lang/String;

    .line 160
    invoke-virtual {v6, v1, v9}, Lcom/android/server/permission/access/SchemePolicy;->onAppIdAdded(Lcom/android/server/permission/access/MutateStateScope;I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_d1

    :cond_e7
    add-int/lit8 v12, v12, 0x1

    goto :goto_be

    :cond_ea
    add-int/lit8 v7, v7, 0x1

    goto :goto_b1

    .line 455
    :cond_ed
    iget-object v4, v0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v5

    const/4 v6, 0x0

    :goto_f4
    if-ge v6, v5, :cond_122

    .line 48
    invoke-virtual {v4, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v7, Ljava/lang/String;

    .line 47
    invoke-virtual {v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v7

    const/4 v10, 0x0

    :goto_107
    if-ge v10, v7, :cond_11d

    .line 48
    invoke-virtual {v9, v10}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v11, Ljava/lang/String;

    move/from16 v11, p7

    .line 163
    invoke-virtual {v12, v1, v2, v3, v11}, Lcom/android/server/permission/access/SchemePolicy;->onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/util/List;Z)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_107

    :cond_11d
    move/from16 v11, p7

    add-int/lit8 v6, v6, 0x1

    goto :goto_f4

    .line 591
    :cond_122
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12a
    :goto_12a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    .line 166
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v5

    if-eqz v5, :cond_143

    goto :goto_12a

    .line 169
    :cond_143
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12a

    .line 170
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v5

    .line 44
    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v6

    const/4 v7, 0x0

    :goto_15a
    if-ge v7, v6, :cond_12a

    .line 45
    invoke-virtual {v5, v7}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v8

    invoke-virtual {v5, v7}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/UserState;

    .line 171
    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/permission/access/AccessPolicy;->upgradePackageVersion(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_15a

    :cond_16c
    return-void
.end method

.method public final onSystemReady(Lcom/android/server/permission/access/MutateStateScope;)V
    .registers 10

    .line 282
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/MutableExternalState;->setSystemReadyPublic(Z)V

    .line 455
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_14
    if-ge v2, v0, :cond_3e

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v3, Ljava/lang/String;

    .line 47
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v3

    move v5, v1

    :goto_27
    if-ge v5, v3, :cond_3b

    .line 48
    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v6, Ljava/lang/String;

    .line 283
    invoke-virtual {v7, p1}, Lcom/android/server/permission/access/SchemePolicy;->onSystemReady(Lcom/android/server/permission/access/MutateStateScope;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_3e
    return-void
.end method

.method public final onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 12

    .line 108
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->mutateUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/permission/access/immutable/IntSetExtensionsKt;->plusAssign(Lcom/android/server/permission/access/immutable/MutableIntSet;I)V

    .line 109
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStatesNoWrite()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    new-instance v1, Lcom/android/server/permission/access/MutableUserState;

    invoke-direct {v1}, Lcom/android/server/permission/access/MutableUserState;-><init>()V

    invoke-static {v0, p2, v1}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 455
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_27
    if-ge v3, v1, :cond_51

    .line 48
    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v4, Ljava/lang/String;

    .line 47
    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v4

    move v6, v2

    :goto_3a
    if-ge v6, v4, :cond_4e

    .line 48
    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v7, Ljava/lang/String;

    .line 110
    invoke-virtual {v8, p1, p2}, Lcom/android/server/permission/access/SchemePolicy;->onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 111
    :cond_51
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v0

    .line 555
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 112
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v2

    if-eqz v2, :cond_7e

    goto :goto_65

    .line 115
    :cond_7e
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/permission/access/AccessPolicy;->upgradePackageVersion(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    goto :goto_65

    :cond_82
    return-void
.end method

.method public final onUserRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 11

    .line 120
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->mutateUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/permission/access/immutable/IntSetExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/IntSet;I)V

    .line 121
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStatesNoWrite()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    .line 455
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_22
    if-ge v2, v0, :cond_4c

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v3, Ljava/lang/String;

    .line 47
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v3

    move v5, v1

    :goto_35
    if-ge v5, v3, :cond_49

    .line 48
    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v6, Ljava/lang/String;

    .line 122
    invoke-virtual {v7, p1, p2}, Lcom/android/server/permission/access/SchemePolicy;->onUserRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_4c
    return-void
.end method

.method public final parseAppFunctionPregrant(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 4

    const/4 p0, 0x0

    .line 404
    invoke-virtual {p2, p3, p0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 405
    const-string p2, "fingerprint"

    const/4 p3, 0x0

    .line 49
    invoke-virtual {p1, p3, p2}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 61
    invoke-virtual {p1, p2}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    .line 405
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    const-string p2, "intern(...)"

    invoke-static {p1, p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/UserState;->setAppFunctionAccessPregrantFingerprint(Ljava/lang/String;)V

    return-void
.end method

.method public final parseDefaultPermissionGrant(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 4

    const/4 p0, 0x0

    .line 395
    invoke-virtual {p2, p3, p0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 396
    const-string p2, "fingerprint"

    const/4 p3, 0x0

    .line 49
    invoke-virtual {p1, p3, p2}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 61
    invoke-virtual {p1, p2}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    .line 396
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    const-string p2, "intern(...)"

    invoke-static {p1, p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/MutableUserState;->setDefaultPermissionGrantFingerprintPublic(Ljava/lang/String;)V

    return-void
.end method

.method public final parsePackageVersion(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V
    .registers 5

    const/4 p0, 0x0

    .line 49
    const-string/jumbo v0, "name"

    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 61
    invoke-virtual {p1, v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intern(...)"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    const-string/jumbo v1, "version"

    .line 94
    invoke-virtual {p1, p0, v1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 388
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 126
    invoke-virtual {p2, v0, p0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final parsePackageVersions(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 15

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p2, p3, v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 367
    invoke-virtual {p3}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v0

    .line 38
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const-string v2, "Unexpected event type "

    const/4 v3, 0x2

    if-eqz v1, :cond_2d

    if-ne v1, v3, :cond_18

    goto :goto_2d

    .line 42
    :cond_18
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_2d
    :goto_2d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v5, :cond_3a

    if-eq v1, v3, :cond_3a

    if-eq v1, v4, :cond_3a

    goto :goto_2d

    .line 45
    :cond_3a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const-string v6, " when parsing package versions"

    if-eq v1, v5, :cond_f8

    if-eq v1, v3, :cond_5d

    if-ne v1, v4, :cond_48

    goto/16 :goto_f8

    .line 84
    :cond_48
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_5d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 110
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 370
    const-string/jumbo v8, "package"

    invoke-static {v7, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    invoke-virtual {p0, p1, v0}, Lcom/android/server/permission/access/AccessPolicy;->parsePackageVersion(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V

    goto :goto_8f

    .line 371
    :cond_72
    sget-object v7, Lcom/android/server/permission/access/AccessPolicy;->LOG_TAG:Ljava/lang/String;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring unknown tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_8f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v1, :cond_d9

    .line 62
    :cond_95
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v3, :cond_ce

    if-ne v6, v4, :cond_b9

    .line 66
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_ae

    .line 99
    :goto_a3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_95

    if-eq v6, v3, :cond_95

    if-eq v6, v4, :cond_95

    goto :goto_a3

    .line 99
    :cond_ae
    :goto_ae
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v5, :cond_3a

    if-eq v1, v3, :cond_3a

    if-eq v1, v4, :cond_3a

    goto :goto_ae

    .line 75
    :cond_b9
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_ce
    :goto_ce
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_95

    if-eq v6, v3, :cond_95

    if-eq v6, v4, :cond_95

    goto :goto_ce

    .line 56
    :cond_d9
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected post-block depth "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", expected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_f8
    :goto_f8
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p0

    sub-int/2addr p0, v5

    :goto_fd
    const/4 p1, -0x1

    if-ge p1, p0, :cond_13f

    .line 54
    invoke-virtual {v0, p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    check-cast p1, Ljava/lang/String;

    .line 375
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13c

    .line 376
    sget-object v1, Lcom/android/server/permission/access/AccessPolicy;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping unknown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {v0, p0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->removeAt(I)Ljava/lang/Object;

    .line 378
    invoke-virtual {p3, v5}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    :cond_13c
    add-int/lit8 p0, p0, -0x1

    goto :goto_fd

    :cond_13f
    return-void
.end method

.method public final parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V
    .registers 21

    .line 38
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const-string v1, "Unexpected event type "

    const/4 v2, 0x2

    if-eqz v0, :cond_21

    if-ne v0, v2, :cond_c

    goto :goto_21

    .line 42
    :cond_c
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_21
    :goto_21
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2e

    if-eq v0, v2, :cond_2e

    if-eq v0, v3, :cond_2e

    goto :goto_21

    .line 45
    :cond_2e
    :goto_2e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v4, :cond_1ff

    if-eq v0, v2, :cond_4f

    if-ne v0, v3, :cond_3a

    goto/16 :goto_1ff

    .line 84
    :cond_3a
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_4f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 110
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 327
    const-string v6, "access"

    invoke-static {v5, v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, ", expected "

    const-string v7, "Unexpected post-block depth "

    if-eqz v5, :cond_16a

    .line 38
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eqz v5, :cond_81

    if-ne v5, v2, :cond_6c

    goto :goto_81

    .line 42
    :cond_6c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_81
    :goto_81
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v4, :cond_8c

    if-eq v5, v2, :cond_8c

    if-eq v5, v3, :cond_8c

    goto :goto_81

    .line 45
    :cond_8c
    :goto_8c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v4, :cond_96

    if-eq v5, v2, :cond_b3

    if-ne v5, v3, :cond_9e

    :cond_96
    move-object/from16 v8, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    goto/16 :goto_18f

    .line 84
    :cond_9e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_b3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    move-object/from16 v8, p0

    .line 455
    iget-object v9, v8, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v10

    const/4 v12, 0x0

    :goto_c0
    if-ge v12, v10, :cond_f8

    .line 48
    invoke-virtual {v9, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v13, Ljava/lang/String;

    .line 47
    invoke-virtual {v14}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v13

    const/4 v15, 0x0

    :goto_d3
    if-ge v15, v13, :cond_ef

    .line 48
    invoke-virtual {v14, v15}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual {v14, v15}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v16, Ljava/lang/String;

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    .line 328
    invoke-virtual {v11, v4, v3}, Lcom/android/server/permission/access/SchemePolicy;->parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    goto :goto_d3

    :cond_ef
    move-object/from16 v4, p1

    move-object/from16 v3, p2

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    goto :goto_c0

    :cond_f8
    move-object/from16 v4, p1

    move-object/from16 v3, p2

    .line 54
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-ne v9, v5, :cond_14f

    .line 62
    :cond_102
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    if-eq v9, v2, :cond_142

    const/4 v10, 0x3

    if-ne v9, v10, :cond_12d

    .line 66
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v5, :cond_11d

    .line 99
    :goto_111
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v11, 0x1

    if-eq v9, v11, :cond_102

    if-eq v9, v2, :cond_102

    if-eq v9, v10, :cond_102

    goto :goto_111

    :cond_11d
    :goto_11d
    const/4 v11, 0x1

    .line 99
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v11, :cond_129

    if-eq v5, v2, :cond_129

    if-eq v5, v10, :cond_129

    goto :goto_11d

    :cond_129
    const/4 v3, 0x3

    const/4 v4, 0x1

    goto/16 :goto_8c

    .line 75
    :cond_12d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_142
    :goto_142
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v11, 0x1

    if-eq v9, v11, :cond_102

    if-eq v9, v2, :cond_102

    const/4 v10, 0x3

    if-eq v9, v10, :cond_102

    goto :goto_142

    .line 56
    :cond_14f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16a
    move-object/from16 v8, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    .line 330
    sget-object v5, Lcom/android/server/permission/access/AccessPolicy;->LOG_TAG:Ljava/lang/String;

    .line 110
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring unknown tag "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " when parsing system state"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 330
    invoke-static {v5, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_18f
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v0, :cond_1e4

    .line 62
    :cond_195
    :goto_195
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v2, :cond_1d5

    const/4 v10, 0x3

    if-ne v5, v10, :cond_1c0

    .line 66
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_1b0

    .line 99
    :goto_1a4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v11, 0x1

    if-eq v5, v11, :cond_195

    if-eq v5, v2, :cond_195

    if-eq v5, v10, :cond_195

    goto :goto_1a4

    :cond_1b0
    :goto_1b0
    const/4 v11, 0x1

    .line 99
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v11, :cond_1bc

    if-eq v0, v2, :cond_1bc

    if-eq v0, v10, :cond_1bc

    goto :goto_1b0

    :cond_1bc
    const/4 v3, 0x3

    const/4 v4, 0x1

    goto/16 :goto_2e

    .line 75
    :cond_1c0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1d5
    :goto_1d5
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v11, 0x1

    if-eq v5, v11, :cond_1e2

    if-eq v5, v2, :cond_1e2

    const/4 v10, 0x3

    if-eq v5, v10, :cond_195

    goto :goto_1d5

    :cond_1e2
    const/4 v10, 0x3

    goto :goto_195

    .line 56
    :cond_1e4
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1ff
    :goto_1ff
    return-void
.end method

.method public final parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 22

    move/from16 v0, p3

    .line 38
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const-string v2, "Unexpected event type "

    const/4 v3, 0x2

    if-eqz v1, :cond_23

    if-ne v1, v3, :cond_e

    goto :goto_23

    .line 42
    :cond_e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_23
    :goto_23
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v5, :cond_30

    if-eq v1, v3, :cond_30

    if-eq v1, v4, :cond_30

    goto :goto_23

    .line 45
    :cond_30
    :goto_30
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v5, :cond_253

    if-eq v1, v3, :cond_51

    if-ne v1, v4, :cond_3c

    goto/16 :goto_253

    .line 84
    :cond_3c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_51
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 110
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 342
    const-string v7, "access"

    invoke-static {v6, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v7, ", expected "

    const-string v8, "Unexpected post-block depth "

    if-eqz v6, :cond_1b9

    .line 38
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eqz v6, :cond_83

    if-ne v6, v3, :cond_6e

    goto :goto_83

    .line 42
    :cond_6e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_83
    :goto_83
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_8e

    if-eq v6, v3, :cond_8e

    if-eq v6, v4, :cond_8e

    goto :goto_83

    .line 45
    :cond_8e
    :goto_8e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v5, :cond_98

    if-eq v6, v3, :cond_b5

    if-ne v6, v4, :cond_a0

    :cond_98
    move-object/from16 v9, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    goto/16 :goto_1e1

    .line 84
    :cond_a0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_b5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 110
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 344
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x6d7fc3be

    if-eq v10, v11, :cond_f3

    const v11, -0x13f3e256

    if-eq v10, v11, :cond_e6

    const v11, 0x5a977202

    if-eq v10, v11, :cond_d3

    :goto_d0
    move-object/from16 v9, p0

    goto :goto_fd

    :cond_d3
    const-string v10, "app-function-pregrant"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_dc

    goto :goto_d0

    .line 348
    :cond_dc
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/permission/access/AccessPolicy;->parseAppFunctionPregrant(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    :goto_df
    move-object/from16 v9, p0

    :cond_e1
    move-object/from16 v4, p1

    move-object/from16 v3, p2

    goto :goto_147

    .line 344
    :cond_e6
    const-string v10, "default-permission-grant"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_ef

    goto :goto_d0

    .line 347
    :cond_ef
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/permission/access/AccessPolicy;->parseDefaultPermissionGrant(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    goto :goto_df

    .line 344
    :cond_f3
    const-string/jumbo v10, "package-versions"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13e

    goto :goto_d0

    .line 455
    :goto_fd
    iget-object v10, v9, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {v10}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v11

    const/4 v13, 0x0

    :goto_104
    if-ge v13, v11, :cond_e1

    .line 48
    invoke-virtual {v10, v13}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v13}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v14, Ljava/lang/String;

    .line 47
    invoke-virtual {v15}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v14

    const/4 v12, 0x0

    :goto_117
    if-ge v12, v14, :cond_134

    .line 48
    invoke-virtual {v15, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual {v15, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v16, Ljava/lang/String;

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    .line 350
    invoke-virtual {v5, v4, v3, v0}, Lcom/android/server/permission/access/SchemePolicy;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    goto :goto_117

    :cond_134
    move-object/from16 v4, p1

    move-object/from16 v3, p2

    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    goto :goto_104

    :cond_13e
    move-object/from16 v9, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    .line 345
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/permission/access/AccessPolicy;->parsePackageVersions(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    .line 54
    :goto_147
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v6, :cond_19e

    .line 62
    :cond_14d
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v10, 0x2

    if-eq v5, v10, :cond_190

    const/4 v11, 0x3

    if-ne v5, v11, :cond_17b

    .line 66
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v6, :cond_169

    .line 99
    :goto_15d
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v12, 0x1

    if-eq v5, v12, :cond_14d

    if-eq v5, v10, :cond_14d

    if-eq v5, v11, :cond_14d

    goto :goto_15d

    :cond_169
    :goto_169
    const/4 v12, 0x1

    .line 99
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v12, :cond_176

    if-eq v5, v10, :cond_176

    if-eq v5, v11, :cond_176

    const/4 v10, 0x2

    goto :goto_169

    :cond_176
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    goto/16 :goto_8e

    .line 75
    :cond_17b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_190
    :goto_190
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v12, 0x1

    if-eq v5, v12, :cond_14d

    const/4 v10, 0x2

    if-eq v5, v10, :cond_14d

    const/4 v11, 0x3

    if-eq v5, v11, :cond_14d

    goto :goto_190

    .line 56
    :cond_19e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b9
    move-object/from16 v9, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    .line 357
    sget-object v5, Lcom/android/server/permission/access/AccessPolicy;->LOG_TAG:Ljava/lang/String;

    .line 110
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 358
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring unknown tag "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " when parsing user state for user "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 356
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_1e1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v1, :cond_238

    .line 62
    :cond_1e7
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v10, 0x2

    if-eq v5, v10, :cond_22a

    const/4 v11, 0x3

    if-ne v5, v11, :cond_215

    .line 66
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_203

    .line 99
    :goto_1f7
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v12, 0x1

    if-eq v5, v12, :cond_1e7

    if-eq v5, v10, :cond_1e7

    if-eq v5, v11, :cond_1e7

    goto :goto_1f7

    :cond_203
    :goto_203
    const/4 v12, 0x1

    .line 99
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v12, :cond_210

    if-eq v1, v10, :cond_210

    if-eq v1, v11, :cond_210

    const/4 v10, 0x2

    goto :goto_203

    :cond_210
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    goto/16 :goto_30

    .line 75
    :cond_215
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_22a
    :goto_22a
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v12, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-eq v5, v12, :cond_1e7

    if-eq v5, v10, :cond_1e7

    if-eq v5, v11, :cond_1e7

    goto :goto_22a

    .line 56
    :cond_238
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_253
    :goto_253
    return-void
.end method

.method public final serializeAppFunctionAccessPregrantFingerprint(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;)V
    .registers 5

    if-eqz p2, :cond_10

    const/4 p0, 0x0

    .line 53
    const-string v0, "app-function-pregrant"

    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 447
    const-string v1, "fingerprint"

    .line 69
    invoke-virtual {p1, p0, v1, p2}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10
    return-void
.end method

.method public final serializeDefaultPermissionGrantFingerprint(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;)V
    .registers 5

    if-eqz p2, :cond_10

    const/4 p0, 0x0

    .line 53
    const-string v0, "default-permission-grant"

    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    const-string v1, "fingerprint"

    .line 69
    invoke-virtual {p1, p0, v1, p2}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10
    return-void
.end method

.method public final serializePackageVersions(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/immutable/IndexedMap;)V
    .registers 10

    const/4 p0, 0x0

    .line 53
    const-string/jumbo v0, "package-versions"

    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_36

    .line 48
    invoke-virtual {p2, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    check-cast v3, Ljava/lang/String;

    .line 53
    const-string/jumbo v5, "package"

    invoke-virtual {p1, p0, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 428
    const-string/jumbo v6, "name"

    .line 69
    invoke-virtual {p1, p0, v6, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 429
    const-string/jumbo v3, "version"

    .line 90
    invoke-virtual {p1, p0, v3, v4}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    invoke-virtual {p1, p0, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 55
    :cond_36
    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V
    .registers 13

    const/4 v0, 0x0

    .line 53
    const-string v1, "access"

    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 455
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_38

    .line 48
    invoke-virtual {p0, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v5, Ljava/lang/String;

    .line 47
    invoke-virtual {v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v5

    move v7, v3

    :goto_21
    if-ge v7, v5, :cond_35

    .line 48
    invoke-virtual {v6, v7}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v8, Ljava/lang/String;

    .line 336
    invoke-virtual {v9, p1, p2}, Lcom/android/server/permission/access/SchemePolicy;->serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 55
    :cond_38
    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .registers 14

    const/4 v0, 0x0

    .line 53
    const-string v1, "access"

    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 411
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/server/permission/access/UserState;

    invoke-virtual {v2}, Lcom/android/server/permission/access/UserState;->getPackageVersions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/permission/access/AccessPolicy;->serializePackageVersions(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/immutable/IndexedMap;)V

    .line 413
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/server/permission/access/UserState;

    invoke-virtual {v2}, Lcom/android/server/permission/access/UserState;->getDefaultPermissionGrantFingerprint()Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-virtual {p0, p1, v2}, Lcom/android/server/permission/access/AccessPolicy;->serializeDefaultPermissionGrantFingerprint(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/server/permission/access/UserState;

    invoke-virtual {v2}, Lcom/android/server/permission/access/UserState;->getAppFunctionAccessPregrantFingerprint()Ljava/lang/String;

    move-result-object v2

    .line 415
    invoke-virtual {p0, p1, v2}, Lcom/android/server/permission/access/AccessPolicy;->serializeAppFunctionAccessPregrantFingerprint(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;)V

    .line 455
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_4a
    if-ge v4, v2, :cond_74

    .line 48
    invoke-virtual {p0, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v5, Ljava/lang/String;

    .line 47
    invoke-virtual {v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v5

    move v7, v3

    :goto_5d
    if-ge v7, v5, :cond_71

    .line 48
    invoke-virtual {v6, v7}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v8, Ljava/lang/String;

    .line 418
    invoke-virtual {v9, p1, p2, p3}, Lcom/android/server/permission/access/SchemePolicy;->serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    :cond_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 55
    :cond_74
    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final upgradePackageVersion(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .registers 20

    move/from16 v0, p3

    const/16 v1, 0x11

    .line 306
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 295
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_10

    goto/16 :goto_cd

    .line 299
    :cond_10
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/android/server/permission/access/UserState;

    invoke-virtual {v4}, Lcom/android/server/permission/access/UserState;->getPackageVersions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v4, :cond_47

    .line 305
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-static {v1, v0, v7, v6, v5}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v3, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 307
    :cond_47
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v8, v1, :cond_a4

    move-object/from16 v8, p0

    .line 455
    iget-object v1, v8, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 47
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v8

    move v9, v7

    :goto_56
    if-ge v9, v8, :cond_8e

    .line 48
    invoke-virtual {v1, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v10, Ljava/lang/String;

    .line 47
    invoke-virtual {v11}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v10

    move v12, v7

    :goto_69
    if-ge v12, v10, :cond_86

    .line 48
    invoke-virtual {v11, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v13, Ljava/lang/String;

    .line 309
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v15, p1

    move-object/from16 v5, p2

    invoke-virtual {v14, v15, v5, v0, v13}, Lcom/android/server/permission/access/SchemePolicy;->upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto :goto_69

    :cond_86
    move-object/from16 v15, p1

    move-object/from16 v5, p2

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    goto :goto_56

    :cond_8e
    move-object/from16 v15, p1

    .line 311
    invoke-virtual {v15}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v0, v7, v6, v4}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v3, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 314
    :cond_a4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_cd

    .line 317
    sget-object v0, Lcom/android/server/permission/access/AccessPolicy;->LOG_TAG:Ljava/lang/String;

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",latest version is 17"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cd
    :goto_cd
    return-void
.end method
