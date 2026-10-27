.class public final Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;
.super Lcom/android/server/permission/access/SchemePolicy;
.source "AppIdAppFunctionAccessPolicy.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$Companion;

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public final persistence:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;

.field public final upgrade:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessUpgrade;


# direct methods
.method public static synthetic $r8$lambda$1NSDgyltaqr5vEgDkuzV9fW9mq8(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;ILcom/android/server/pm/pkg/PackageState;)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->onPackageUninstalled$lambda$21(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;ILcom/android/server/pm/pkg/PackageState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PjghP3wdGv1oq6ay5R9IDbBlJkQ(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;ILcom/android/server/pm/pkg/PackageState;)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->updateAccessFlags$lambda$3(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;ILcom/android/server/pm/pkg/PackageState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cP9AvtWK-OcTQnmTE30FDGLV8sk(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;Lcom/android/server/permission/access/MutateStateScope;ILcom/android/server/pm/pkg/PackageState;)Z
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->onPackageUninstalled$lambda$20(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;Lcom/android/server/permission/access/MutateStateScope;ILcom/android/server/pm/pkg/PackageState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ji8sGAitHb9bkbudw7ohlZwQJ4o(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;Lcom/android/server/permission/access/MutateStateScope;ILcom/android/server/pm/pkg/PackageState;)Z
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->updateAccessFlags$lambda$2(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;Lcom/android/server/permission/access/MutateStateScope;ILcom/android/server/pm/pkg/PackageState;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->Companion:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$Companion;

    .line 358
    const-class v0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Lcom/android/server/permission/access/SchemePolicy;-><init>()V

    .line 57
    new-instance v0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;

    invoke-direct {v0}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->persistence:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;

    .line 59
    new-instance v0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessUpgrade;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessUpgrade;-><init>(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;)V

    iput-object v0, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->upgrade:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessUpgrade;

    return-void
.end method

.method public static final synthetic access$isInstalledForUser(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;Lcom/android/server/pm/pkg/PackageState;I)Z
    .registers 3

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->isInstalledForUser(Lcom/android/server/pm/pkg/PackageState;I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isValidAgent(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;I)Z
    .registers 4

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->isValidAgent(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isValidTarget(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;Lcom/android/server/pm/pkg/PackageState;I)Z
    .registers 3

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->isValidTarget(Lcom/android/server/pm/pkg/PackageState;I)Z

    move-result p0

    return p0
.end method

.method public static final onPackageUninstalled$lambda$20(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;Lcom/android/server/permission/access/MutateStateScope;ILcom/android/server/pm/pkg/PackageState;)Z
    .registers 4

    .line 316
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->isValidAgent(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;I)Z

    move-result p0

    return p0
.end method

.method public static final onPackageUninstalled$lambda$21(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;ILcom/android/server/pm/pkg/PackageState;)Z
    .registers 3

    .line 322
    invoke-virtual {p0, p2, p1}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->isValidTarget(Lcom/android/server/pm/pkg/PackageState;I)Z

    move-result p0

    return p0
.end method

.method public static final updateAccessFlags$lambda$2(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;Lcom/android/server/permission/access/MutateStateScope;ILcom/android/server/pm/pkg/PackageState;)Z
    .registers 4

    .line 115
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->isValidAgent(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;I)Z

    move-result p0

    return p0
.end method

.method public static final updateAccessFlags$lambda$3(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;ILcom/android/server/pm/pkg/PackageState;)Z
    .registers 3

    .line 117
    invoke-virtual {p0, p2, p1}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->isValidTarget(Lcom/android/server/pm/pkg/PackageState;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final anyInstalledPackageInUid(Lcom/android/server/permission/access/GetStateScope;IILcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;)Z
    .registers 10

    .line 188
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p2

    check-cast p2, Lcom/android/server/permission/access/immutable/IndexedListSet;

    const/4 v0, 0x0

    if-nez p2, :cond_16

    return v0

    .line 38
    :cond_16
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v1

    move v2, v0

    :goto_1b
    if-ge v2, v1, :cond_51

    .line 39
    invoke-virtual {p2, v2}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    if-nez v3, :cond_39

    :goto_37
    move v3, v0

    goto :goto_4a

    .line 192
    :cond_39
    invoke-virtual {p0, v3, p3}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->isInstalledForUser(Lcom/android/server/pm/pkg/PackageState;I)Z

    move-result v4

    if-nez v4, :cond_40

    goto :goto_37

    .line 195
    :cond_40
    invoke-interface {p4, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_4a
    if-eqz v3, :cond_4e

    const/4 p0, 0x1

    return p0

    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_51
    return v0
.end method

.method public final getAccessFlags(Lcom/android/server/permission/access/GetStateScope;IIII)I
    .registers 6

    .line 90
    invoke-static {p5, p4}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 91
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p1

    check-cast p1, Lcom/android/server/permission/access/UserState;

    if-eqz p1, :cond_2b

    .line 92
    invoke-virtual {p1}, Lcom/android/server/permission/access/UserState;->getAppIdAppFunctionAccessFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p1

    .line 91
    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p1

    check-cast p1, Lcom/android/server/permission/access/immutable/IntIntMap;

    if-eqz p1, :cond_2b

    .line 93
    invoke-virtual {p1, p0}, Lcom/android/server/permission/access/immutable/IntIntMap;->get(I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 91
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public final getAgents(Lcom/android/server/permission/access/GetStateScope;I)Ljava/util/List;
    .registers 6

    .line 167
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsJVMKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getAgents$1$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getAgents$1$1;-><init>(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;ILcom/android/server/permission/access/GetStateScope;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 167
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsJVMKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getObjectScheme()Ljava/lang/String;
    .registers 1

    .line 55
    const-string p0, "app-id-app-function-permission"

    return-object p0
.end method

.method public getSubjectScheme()Ljava/lang/String;
    .registers 1

    .line 52
    const-string/jumbo p0, "uid"

    return-object p0
.end method

.method public final getTargets(Lcom/android/server/permission/access/GetStateScope;I)Ljava/util/List;
    .registers 5

    .line 175
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsJVMKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 176
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object p1

    new-instance v1, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getTargets$1$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$getTargets$1$1;-><init>(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;ILjava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 175
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsJVMKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isAllowlistedAgent(Landroid/content/pm/SignedPackage;Lcom/android/server/pm/pkg/PackageState;)Z
    .registers 5

    .line 219
    invoke-virtual {p1}, Landroid/content/pm/SignedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_10

    return v0

    .line 223
    :cond_10
    invoke-virtual {p1}, Landroid/content/pm/SignedPackage;->getCertificateDigestOrNull()[B

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_2f

    .line 224
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 225
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 226
    invoke-virtual {p1}, Landroid/content/pm/SignedPackage;->getCertificateDigest()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result p0

    if-ne p0, v1, :cond_2e

    goto :goto_2f

    :cond_2e
    return v0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public final isInstalledForUser(Lcom/android/server/pm/pkg/PackageState;I)Z
    .registers 3

    .line 244
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p0

    return p0
.end method

.method public final isValidAgent(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;I)Z
    .registers 6

    .line 200
    invoke-virtual {p0, p2, p3}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->isInstalledForUser(Lcom/android/server/pm/pkg/PackageState;I)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_8

    return v0

    .line 204
    :cond_8
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p3

    if-eqz p3, :cond_58

    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p3

    if-eqz p3, :cond_58

    const-string v1, "android.permission.EXECUTE_APP_FUNCTIONS"

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_58

    .line 210
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/permission/access/ExternalState;->getAgentAllowlist()Ljava/util/Set;

    move-result-object p3

    if-nez p3, :cond_2c

    return v1

    .line 214
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getAgentAllowlist()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 392
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_41

    goto :goto_58

    .line 393
    :cond_41
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/SignedPackage;

    .line 214
    invoke-virtual {p0, p3, p2}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->isAllowlistedAgent(Landroid/content/pm/SignedPackage;Lcom/android/server/pm/pkg/PackageState;)Z

    move-result p3

    if-eqz p3, :cond_45

    return v1

    :cond_58
    :goto_58
    return v0
.end method

.method public final isValidTarget(Lcom/android/server/pm/pkg/PackageState;I)Z
    .registers 10

    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->isInstalledForUser(Lcom/android/server/pm/pkg/PackageState;I)Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_8

    return p2

    .line 234
    :cond_8
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    if-eqz p0, :cond_5a

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5a

    .line 38
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    move v0, p2

    :goto_19
    if-ge v0, p1, :cond_5a

    .line 39
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 235
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getIntents()Ljava/util/List;

    move-result-object v1

    .line 38
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    move v3, p2

    :goto_2a
    if-ge v3, v2, :cond_57

    .line 39
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 30
    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 236
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v5

    const-string v6, "android.app.appfunctions.AppFunctionService"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 237
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v5

    if-nez v5, :cond_54

    .line 238
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v4

    if-nez v4, :cond_54

    const/4 p0, 0x1

    return p0

    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_5a
    return p2
.end method

.method public onAgentAllowlistChanged(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Set;)V
    .registers 12

    if-nez p2, :cond_4

    goto/16 :goto_8b

    .line 252
    :cond_4
    new-instance p0, Lcom/android/server/permission/access/immutable/MutableIntSet;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/server/permission/access/immutable/MutableIntSet;-><init>(Landroid/util/SparseBooleanArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 421
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_22

    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_22
    check-cast v4, Landroid/content/pm/SignedPackage;

    .line 255
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/pm/SignedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v3, :cond_43

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    .line 254
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/immutable/MutableIntSet;->add(I)Z

    :cond_43
    move v3, v5

    goto :goto_11

    .line 259
    :cond_45
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v3

    move v4, v2

    :goto_52
    if-ge v4, v3, :cond_8b

    .line 45
    invoke-virtual {p2, v4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    invoke-virtual {p2, v4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/UserState;

    .line 261
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v4, v2, v6, v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdAppFunctionAccessFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v5

    .line 58
    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_6f
    const/4 v7, -0x1

    if-ge v7, v6, :cond_88

    .line 53
    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/immutable/IntIntMap;

    .line 263
    invoke-virtual {p0, v7}, Lcom/android/server/permission/access/immutable/IntSet;->contains(I)Z

    move-result v7

    if-nez v7, :cond_85

    .line 264
    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->removeAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    :cond_85
    add-int/lit8 v6, v6, -0x1

    goto :goto_6f

    :cond_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :cond_8b
    :goto_8b
    return-void
.end method

.method public onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 8

    .line 292
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    const/4 v1, -0x1

    if-ge v1, v0, :cond_43

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/UserState;

    .line 294
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v2, v3}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdAppFunctionAccessFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v1

    .line 295
    invoke-virtual {v1, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->remove(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 296
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$onAppIdRemoved$1$1;

    invoke-direct {v3, v1, p2}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$onAppIdRemoved$1$1;-><init>(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_43
    return-void
.end method

.method public onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;II)V
    .registers 12

    .line 313
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result p2

    if-nez p2, :cond_10

    goto/16 :goto_a7

    .line 316
    :cond_10
    new-instance p2, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1, p4}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;Lcom/android/server/permission/access/MutateStateScope;I)V

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->anyInstalledPackageInUid(Lcom/android/server/permission/access/GetStateScope;IILcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez p2, :cond_4b

    .line 318
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/android/server/permission/access/UserState;

    invoke-virtual {p2}, Lcom/android/server/permission/access/UserState;->getAppIdAppFunctionAccessFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 319
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p2

    invoke-static {p2, p4, v2, v1, v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdAppFunctionAccessFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    .line 322
    :cond_4b
    new-instance p2, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p4}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;I)V

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->anyInstalledPackageInUid(Lcom/android/server/permission/access/GetStateScope;IILcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;)Z

    move-result p0

    if-nez p0, :cond_a7

    .line 324
    invoke-static {p4, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 325
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result p3

    move p4, v2

    :goto_67
    if-ge p4, p3, :cond_a7

    .line 45
    invoke-virtual {p2, p4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    invoke-virtual {p2, p4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/UserState;

    .line 326
    invoke-virtual {v3}, Lcom/android/server/permission/access/UserState;->getAppIdAppFunctionAccessFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v4

    move v5, v2

    :goto_7b
    if-ge v5, v4, :cond_a4

    .line 45
    invoke-virtual {v3, v5}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    invoke-virtual {v3, v5}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/immutable/IntIntMap;

    .line 330
    invoke-virtual {v6, p0}, Lcom/android/server/permission/access/immutable/IntIntMap;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 331
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v6

    .line 332
    invoke-static {v6, p4, v2, v1, v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v6

    .line 333
    invoke-virtual {v6}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdAppFunctionAccessFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v6

    .line 334
    invoke-virtual {v6, v5}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutateAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/immutable/MutableIntIntMap;

    .line 331
    invoke-static {v6, p0}, Lcom/android/server/permission/access/immutable/IntIntMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntIntMap;I)V

    :cond_a1
    add-int/lit8 v5, v5, 0x1

    goto :goto_7b

    :cond_a4
    add-int/lit8 p4, p4, 0x1

    goto :goto_67

    :cond_a7
    :goto_a7
    return-void
.end method

.method public onUserRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 8

    .line 271
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    const/4 v1, -0x1

    if-ge v1, v0, :cond_42

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/UserState;

    if-ne v1, p2, :cond_1e

    goto :goto_3f

    .line 276
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdAppFunctionAccessFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v2

    .line 278
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$onUserRemoved$1$1;

    invoke-direct {v4, v2, p2, v1}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$onUserRemoved$1$1;-><init>(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/MutableUserState;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_42
    return-void
.end method

.method public parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 4

    .line 350
    iget-object p0, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->persistence:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    return-void
.end method

.method public serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .registers 4

    .line 354
    iget-object p0, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->persistence:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;->serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V

    return-void
.end method

.method public final updateAccessFlags(Lcom/android/server/permission/access/MutateStateScope;IIIIII)Z
    .registers 11

    .line 104
    invoke-virtual {p0, p7, p6}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->validateFlags(II)V

    .line 105
    invoke-static {p5, p4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 106
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_98

    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result v1

    if-nez v1, :cond_26

    goto/16 :goto_98

    .line 115
    :cond_26
    new-instance v1, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;Lcom/android/server/permission/access/MutateStateScope;I)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->anyInstalledPackageInUid(Lcom/android/server/permission/access/GetStateScope;IILcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 116
    new-instance v1, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p5}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;I)V

    invoke-virtual {p0, p1, p4, p5, v1}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->anyInstalledPackageInUid(Lcom/android/server/permission/access/GetStateScope;IILcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;)Z

    move-result p0

    if-nez p0, :cond_3d

    goto :goto_97

    .line 124
    :cond_3d
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/UserState;

    const/4 p4, 0x0

    if-eqz p0, :cond_59

    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getAppIdAppFunctionAccessFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IntIntMap;

    goto :goto_5a

    :cond_59
    move-object p0, p4

    :goto_5a
    if-eqz p0, :cond_67

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IntIntMap;->get(I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_67

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_68

    :cond_67
    move p0, v2

    .line 126
    :goto_68
    invoke-static {p0, p6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result p5

    and-int/2addr p6, p7

    or-int/2addr p5, p6

    if-ne p0, p5, :cond_71

    return v2

    .line 131
    :cond_71
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p3, v2, p1, p4}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdAppFunctionAccessFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    .line 75
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p1

    const/4 p3, 0x1

    if-eqz p1, :cond_89

    goto :goto_91

    .line 132
    :cond_89
    new-instance p1, Lcom/android/server/permission/access/immutable/MutableIntIntMap;

    invoke-direct {p1, p4, p3, p4}, Lcom/android/server/permission/access/immutable/MutableIntIntMap;-><init>(Landroid/util/SparseIntArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    invoke-virtual {p0, p2, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)Lcom/android/server/permission/access/immutable/Immutable;

    .line 132
    :goto_91
    check-cast p1, Lcom/android/server/permission/access/immutable/MutableIntIntMap;

    .line 133
    invoke-static {p1, v0, p5, v2}, Lcom/android/server/permission/access/immutable/IntIntMapExtensionsKt;->putWithDefault(Lcom/android/server/permission/access/immutable/MutableIntIntMap;III)I

    return p3

    :cond_97
    :goto_97
    return v2

    .line 110
    :cond_98
    :goto_98
    sget-object p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to update permission flags for missing user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .registers 5

    .line 346
    iget-object p0, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->upgrade:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessUpgrade;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessUpgrade;->upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V

    return-void
.end method

.method public final validateFlags(II)V
    .registers 5

    const/16 v0, -0x20

    .line 138
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v0

    if-nez v0, :cond_45

    and-int v0, p1, p2

    if-ne v0, p1, :cond_1a

    const/16 v0, 0x18

    .line 146
    const-string v1, "ACCESS_FLAGS_USER"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->validateOpposingFlagPair(IIILjava/lang/String;)V

    const/4 v0, 0x6

    .line 147
    const-string v1, "ACCESS_FLAGS_OTHER"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->validateOpposingFlagPair(IIILjava/lang/String;)V

    return-void

    .line 144
    :cond_1a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flags "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " specified in flags "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for updateAppFunctionAccessFlags, but is not included in the mask "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 142
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    const/16 p0, 0x1f

    .line 139
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid flag(s) "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " specified in call to updateAppFunctionAccessFlags"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 138
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final validateOpposingFlagPair(IIILjava/lang/String;)V
    .registers 5

    .line 158
    invoke-static {p1, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-nez p0, :cond_34

    .line 162
    invoke-static {p2, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-nez p0, :cond_33

    invoke-static {p1, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_33

    .line 163
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "When setting "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_GRANTED/DENIED, the opposing flag must also be in the mask"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 162
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    :goto_33
    return-void

    .line 159
    :cond_34
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot set both "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_GRANTED and "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_DENIED together"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 158
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
