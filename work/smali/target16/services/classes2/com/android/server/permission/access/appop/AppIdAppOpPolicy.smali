.class public final Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;
.super Lcom/android/server/permission/access/appop/BaseAppOpPolicy;
.source "AppIdAppOpPolicy.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy$Companion;

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public final migration:Lcom/android/server/permission/access/appop/AppIdAppOpMigration;

.field public volatile onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

.field public final onAppOpModeChangedListenersLock:Ljava/lang/Object;

.field public final upgrade:Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->Companion:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy$Companion;

    .line 174
    const-class v0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 30
    new-instance v0, Lcom/android/server/permission/access/appop/AppIdAppOpPersistence;

    invoke-direct {v0}, Lcom/android/server/permission/access/appop/AppIdAppOpPersistence;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/appop/BaseAppOpPolicy;-><init>(Lcom/android/server/permission/access/appop/BaseAppOpPersistence;)V

    .line 31
    new-instance v0, Lcom/android/server/permission/access/appop/AppIdAppOpMigration;

    invoke-direct {v0}, Lcom/android/server/permission/access/appop/AppIdAppOpMigration;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->migration:Lcom/android/server/permission/access/appop/AppIdAppOpMigration;

    .line 33
    new-instance v0, Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;-><init>(Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;)V

    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->upgrade:Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;

    .line 37
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>(Ljava/util/ArrayList;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->onAppOpModeChangedListenersLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addOnAppOpModeChangedListener(Lcom/android/server/permission/access/appop/AppIdAppOpPolicy$OnAppOpModeChangedListener;)V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->onAppOpModeChangedListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    invoke-static {v1, p1}, Lcom/android/server/permission/access/immutable/IndexedListSetExtensionsKt;->plus(Lcom/android/server/permission/access/immutable/IndexedListSet;Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 127
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 125
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getAppOpMode(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I
    .registers 5

    .line 89
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/UserState;

    if-eqz p0, :cond_1d

    .line 90
    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 91
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    .line 92
    :goto_1e
    invoke-static {p4}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p4, p1}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getAppOpModes(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;
    .registers 4

    .line 61
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/UserState;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubjectScheme()Ljava/lang/String;
    .registers 1

    .line 41
    const-string/jumbo p0, "uid"

    return-object p0
.end method

.method public final getUidsWithOpMode(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;II)Ljava/util/List;
    .registers 9

    .line 64
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/UserState;

    if-nez p0, :cond_15

    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 65
    :cond_15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v0

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v0, :cond_4c

    .line 45
    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 67
    invoke-virtual {v3, p2}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_38

    goto :goto_49

    :cond_38
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p3, :cond_49

    .line 68
    invoke-static {p4, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_4c
    return-object p1
.end method

.method public migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 3

    .line 137
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->migration:Lcom/android/server/permission/access/appop/AppIdAppOpMigration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appop/AppIdAppOpMigration;->migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V

    return-void
.end method

.method public onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 10

    .line 48
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_37

    .line 45
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/UserState;

    .line 49
    invoke-virtual {v3}, Lcom/android/server/permission/access/UserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_34

    .line 51
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 52
    invoke-static {v4, v2, v1, v5, v6}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v4

    .line 53
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v4

    .line 54
    invoke-virtual {v4, v3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->removeAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_37
    return-void
.end method

.method public onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V
    .registers 4

    .line 44
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result p1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p1, :cond_15

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy$OnAppOpModeChangedListener;

    .line 44
    invoke-virtual {v1}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy$OnAppOpModeChangedListener;->onStateMutated()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method public final removeAppOpModes(Lcom/android/server/permission/access/MutateStateScope;II)Z
    .registers 6

    .line 75
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->indexOfKey(I)I

    move-result p0

    const/4 p3, 0x0

    if-gez p0, :cond_10

    return p3

    .line 80
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/UserState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/UserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->indexOfKey(I)I

    move-result p2

    if-gez p2, :cond_29

    return p3

    .line 84
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p0, p3, v0, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->removeAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    const/4 p0, 0x1

    return p0
.end method

.method public final setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z
    .registers 12

    .line 100
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_26

    .line 101
    sget-object p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to set app op mode for missing user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 104
    :cond_26
    invoke-static {p4}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    move-result v0

    .line 106
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/server/permission/access/UserState;

    .line 107
    invoke-virtual {v2}, Lcom/android/server/permission/access/UserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v2

    .line 106
    invoke-virtual {v2, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, p4, v3}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v2, p5, :cond_56

    return v1

    .line 112
    :cond_56
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, p3, v1, v3, v4}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p1

    .line 75
    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    const/4 v5, 0x1

    if-eqz v3, :cond_6f

    goto :goto_77

    .line 113
    :cond_6f
    new-instance v3, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v3, v4, v5, v4}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    invoke-virtual {p1, p2, v3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)Lcom/android/server/permission/access/immutable/Immutable;

    .line 113
    :goto_77
    check-cast v3, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 114
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, p4, v4, v0}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->putWithDefault(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 116
    invoke-static {p1, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    .line 118
    :cond_8d
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v3

    :goto_93
    if-ge v1, v3, :cond_a8

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy$OnAppOpModeChangedListener;

    move p1, p2

    move p2, p3

    move-object p3, p4

    move p4, v2

    .line 119
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy$OnAppOpModeChangedListener;->onAppOpModeChanged(IILjava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    move-object p4, p3

    move p3, p2

    move p2, p1

    goto :goto_93

    :cond_a8
    return v5
.end method

.method public upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .registers 5

    .line 145
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->upgrade:Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;->upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V

    return-void
.end method
