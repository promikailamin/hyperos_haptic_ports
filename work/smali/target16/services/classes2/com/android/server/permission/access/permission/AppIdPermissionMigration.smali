.class public final Lcom/android/server/permission/access/permission/AppIdPermissionMigration;
.super Ljava/lang/Object;
.source "AppIdPermissionMigration.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/permission/AppIdPermissionMigration$Companion;

.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionMigration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->Companion:Lcom/android/server/permission/access/permission/AppIdPermissionMigration$Companion;

    .line 161
    const-class v0, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic migratePermissions$default(Lcom/android/server/permission/access/permission/AppIdPermissionMigration;Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/util/Map;ZILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 46
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->migratePermissions(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public final migratePermissionFlags(Lcom/android/server/permission/access/permission/Permission;Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;II)I
    .registers 7

    .line 49
    invoke-virtual {p1}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result p0

    const/4 p3, 0x1

    const/4 p4, 0x2

    if-nez p0, :cond_15

    .line 117
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->isGranted()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_6c

    :cond_13
    move p3, p4

    goto :goto_6c

    .line 49
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result p0

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p0, p4, :cond_22

    goto :goto_2c

    :cond_22
    invoke-virtual {p1}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result p0

    if-ne p0, v0, :cond_5a

    .line 123
    :goto_2c
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->isGranted()Z

    move-result p0

    if-eqz p0, :cond_58

    .line 64
    invoke-virtual {p1}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/16 p3, 0x20

    .line 79
    invoke-static {p0, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-nez p0, :cond_55

    .line 64
    invoke-virtual {p1}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p3, 0x4000000

    .line 115
    invoke-static {p0, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_53

    goto :goto_55

    :cond_53
    move p3, v0

    goto :goto_6c

    :cond_55
    :goto_55
    const/16 p3, 0x14

    goto :goto_6c

    :cond_58
    move p3, v1

    goto :goto_6c

    .line 49
    :cond_5a
    invoke-virtual {p1}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result p0

    if-ne p0, p3, :cond_58

    .line 133
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->isGranted()Z

    move-result p0

    if-eqz p0, :cond_58

    const/16 p3, 0x10

    .line 137
    :goto_6c
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    .line 140
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->getFlags()I

    move-result p4

    .line 141
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->getFlags()I

    move-result p2

    .line 137
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/server/permission/access/permission/PermissionFlags;->updateFlags(Lcom/android/server/permission/access/permission/Permission;III)I

    move-result p0

    return p0
.end method

.method public final migratePermissions(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/util/Map;Z)V
    .registers 13

    .line 167
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;

    .line 53
    new-instance v0, Lcom/android/server/permission/access/permission/Permission;

    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;->getType()I

    move-result v3

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    invoke-virtual {v0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 126
    invoke-virtual {p1, p2, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_38
    return-void
.end method

.method public final migrateSystemState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Lcom/android/server/permission/access/MutableAccessState;)V
    .registers 13

    .line 30
    const-class v0, Lcom/android/server/pm/permission/PermissionMigrationHelper;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/pm/permission/PermissionMigrationHelper;

    .line 31
    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionMigrationHelper;->hasLegacyPermission()Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    :cond_12
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-static {p1, v1, v2, v3}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v6

    .line 37
    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionMigrationHelper;->getLegacyPermissions()Ljava/util/Map;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    .line 35
    invoke-static/range {v5 .. v10}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->migratePermissions$default(Lcom/android/server/permission/access/permission/AppIdPermissionMigration;Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/util/Map;ZILjava/lang/Object;)V

    .line 40
    invoke-static {p1, v1, v2, v3}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissionTrees()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object p0

    .line 41
    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionMigrationHelper;->getLegacyPermissionTrees()Ljava/util/Map;

    move-result-object p1

    .line 39
    invoke-virtual {v5, p0, p1, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->migratePermissions(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/util/Map;Z)V

    return-void
.end method

.method public final migrateUserState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 19

    move/from16 v0, p2

    .line 68
    const-class v1, Lcom/android/server/pm/permission/PermissionMigrationHelper;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/android/server/pm/permission/PermissionMigrationHelper;

    .line 69
    invoke-interface {v1, v0}, Lcom/android/server/pm/permission/PermissionMigrationHelper;->hasLegacyPermissionState(I)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_118

    .line 74
    :cond_15
    invoke-interface {v1, v0}, Lcom/android/server/pm/permission/PermissionMigrationHelper;->getLegacyPermissionStates(I)Ljava/util/Map;

    move-result-object v1

    .line 75
    sget-object v2, Lcom/android/server/permission/access/util/PackageVersionMigration;->INSTANCE:Lcom/android/server/permission/access/util/PackageVersionMigration;

    invoke-virtual {v2, v0}, Lcom/android/server/permission/access/util/PackageVersionMigration;->getVersion$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v6, p1

    .line 77
    invoke-static {v6, v0, v4, v3, v5}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v3}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v7

    .line 172
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_118

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 80
    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 81
    const-string v11, " when migrating permission state"

    if-nez v10, :cond_82

    .line 82
    sget-object v8, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Dropping unknown app ID "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p0

    goto/16 :goto_114

    .line 86
    :cond_82
    new-instance v12, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    const/4 v13, 0x1

    invoke-direct {v12, v5, v13, v5}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v7, v13, v12}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 173
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_97
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;

    .line 90
    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/permission/access/permission/Permission;

    if-nez v15, :cond_e3

    .line 93
    sget-object v13, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->LOG_TAG:Ljava/lang/String;

    .line 94
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping unknown permission "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for app ID "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-static {v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p0

    goto :goto_f4

    .line 100
    :cond_e3
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v5, p0

    invoke-virtual {v5, v15, v13, v4, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->migratePermissionFlags(Lcom/android/server/permission/access/permission/Permission;Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 126
    invoke-virtual {v12, v14, v4}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f4
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_97

    :cond_f7
    move-object/from16 v5, p0

    .line 103
    invoke-virtual {v3}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v4

    .line 38
    invoke-virtual {v10}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v8

    const/4 v9, 0x0

    :goto_102
    if-ge v9, v8, :cond_114

    .line 39
    invoke-virtual {v10, v9}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 126
    invoke-virtual {v4, v11, v12}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_102

    :cond_114
    :goto_114
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_37

    :cond_118
    :goto_118
    return-void
.end method
