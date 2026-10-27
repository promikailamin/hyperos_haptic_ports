.class public abstract Lcom/android/server/pm/IPackageManagerBase;
.super Landroid/content/pm/IPackageManager$Stub;
.source "IPackageManagerBase.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

.field private final mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

.field private final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field private final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field private final mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

.field private final mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

.field private final mPackageProperty:Lcom/android/server/pm/PackageProperty;

.field private final mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

.field private final mRequiredSupplementalProcessPackage:Ljava/lang/String;

.field private final mResolveComponentName:Landroid/content/ComponentName;

.field private final mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

.field private final mService:Lcom/android/server/pm/PackageManagerService;

.field private final mServicesExtensionPackageName:Ljava/lang/String;

.field private final mSharedSystemSharedLibraryPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Lcom/android/server/pm/DexOptHelper;Lcom/android/server/pm/ModuleInfoProvider;Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/server/pm/ResolveIntentHelper;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/DomainVerificationConnection;Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageProperty;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dexOptHelper"    # Lcom/android/server/pm/DexOptHelper;
    .param p4, "moduleInfoProvider"    # Lcom/android/server/pm/ModuleInfoProvider;
    .param p5, "preferredActivityHelper"    # Lcom/android/server/pm/PreferredActivityHelper;
    .param p6, "resolveIntentHelper"    # Lcom/android/server/pm/ResolveIntentHelper;
    .param p7, "domainVerificationManager"    # Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .param p8, "domainVerificationConnection"    # Lcom/android/server/pm/DomainVerificationConnection;
    .param p9, "installerService"    # Lcom/android/server/pm/PackageInstallerService;
    .param p10, "packageProperty"    # Lcom/android/server/pm/PackageProperty;
    .param p11, "resolveComponentName"    # Landroid/content/ComponentName;
    .param p12, "instantAppResolverSettingsComponent"    # Landroid/content/ComponentName;
    .param p13, "requiredSupplementalProcessPackage"    # Ljava/lang/String;
    .param p14, "servicesExtensionPackageName"    # Ljava/lang/String;
    .param p15, "sharedSystemSharedLibraryPackageName"    # Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Landroid/content/pm/IPackageManager$Stub;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 129
    iput-object p2, p0, Lcom/android/server/pm/IPackageManagerBase;->mContext:Landroid/content/Context;

    .line 130
    iput-object p3, p0, Lcom/android/server/pm/IPackageManagerBase;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 131
    iput-object p4, p0, Lcom/android/server/pm/IPackageManagerBase;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 132
    iput-object p5, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 133
    iput-object p6, p0, Lcom/android/server/pm/IPackageManagerBase;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 134
    iput-object p7, p0, Lcom/android/server/pm/IPackageManagerBase;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 135
    iput-object p8, p0, Lcom/android/server/pm/IPackageManagerBase;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 136
    iput-object p9, p0, Lcom/android/server/pm/IPackageManagerBase;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 137
    iput-object p10, p0, Lcom/android/server/pm/IPackageManagerBase;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    .line 138
    iput-object p11, p0, Lcom/android/server/pm/IPackageManagerBase;->mResolveComponentName:Landroid/content/ComponentName;

    .line 139
    iput-object p12, p0, Lcom/android/server/pm/IPackageManagerBase;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    .line 140
    iput-object p13, p0, Lcom/android/server/pm/IPackageManagerBase;->mRequiredSupplementalProcessPackage:Ljava/lang/String;

    .line 141
    iput-object p14, p0, Lcom/android/server/pm/IPackageManagerBase;->mServicesExtensionPackageName:Ljava/lang/String;

    .line 142
    iput-object p15, p0, Lcom/android/server/pm/IPackageManagerBase;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    .line 143
    return-void
.end method


# virtual methods
.method public final activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/IPackageManagerBase;->mResolveComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/server/pm/Computer;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V
    .registers 13
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;
    .param p2, "ownerPackage"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "targetUserId"    # I
    .param p5, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v2, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->addCrossProfileIntentFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V

    .line 164
    return-void
.end method

.method public final addPermission(Landroid/content/pm/PermissionInfo;)Z
    .registers 4
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionManager;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v0

    return v0
.end method

.method public final addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .registers 4
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionManager;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v0

    return v0
.end method

.method public final addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "activity"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    new-instance v1, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v1, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/pm/PreferredActivityHelper;->addPersistentPreferredActivity(Lcom/android/server/pm/WatchedIntentFilter;Landroid/content/ComponentName;I)V

    .line 190
    return-void
.end method

.method public final addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)V
    .registers 19
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I
    .param p6, "removeExisting"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/WatchedIntentFilter;

    move-object v11, p1

    invoke-direct {v3, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    const/4 v7, 0x1

    const-string v9, "Adding preferred"

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p5

    move/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/PreferredActivityHelper;->addPreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;Z)V

    .line 199
    return-void
.end method

.method public final canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "targetUserId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final canPackageQuery(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "sourcePackageName"    # Ljava/lang/String;
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1162
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/Computer;->canPackageQuery(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final canRequestPackageInstalls(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/android/server/pm/Computer;->canRequestPackageInstalls(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method public final canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "names"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final checkUidPermission(Ljava/lang/String;I)I
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final checkUidSignatures(II)I
    .registers 4
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->checkUidSignatures(II)I

    move-result v0

    return v0
.end method

.method public final clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    .line 253
    return-void
.end method

.method public final clearPackagePreferredActivities(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PreferredActivityHelper;->clearPackagePreferredActivities(Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public final currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "names"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .registers 5
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V

    .line 273
    return-void
.end method

.method public final deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .param p4, "userId"    # I
    .param p5, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    new-instance v0, Landroid/content/pm/VersionedPackage;

    invoke-direct {v0, p1, p2}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance v1, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;

    invoke-direct {v1, p3}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;-><init>(Landroid/content/pm/IPackageDeleteObserver;)V

    .line 280
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v1

    .line 279
    invoke-virtual {p0, v0, v1, p4, p5}, Lcom/android/server/pm/IPackageManagerBase;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 282
    return-void
.end method

.method public final deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    .registers 6
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p3, "userId"    # I
    .param p4, "deleteFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 289
    return-void
.end method

.method public final deletePreloadsFileCache()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1168
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->deletePreloadsFileCache()V

    .line 1169
    return-void
.end method

.method public final findPersistentPreferredActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->findPersistentPreferredActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public final finishPackageInstall(IZ)V
    .registers 4
    .param p1, "token"    # I
    .param p2, "didLaunch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1188
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->finishPackageInstall(IZ)V

    .line 1189
    return-void
.end method

.method public final forceDexOpt(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/DexOptHelper;->forceDexOpt(Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public final getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 307
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public final getAllPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getAllPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "permissionName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 328
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppPredictionServicePackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    return-object v0
.end method

.method public final getApplicationEnabledSetting(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 342
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 360
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getArtManager()Landroid/content/pm/dex/IArtManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    return-object v0
.end method

.method public final getAttentionServicePackageName()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 374
    const v3, 0x1040248

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBlockUninstallForUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 387
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lcom/android/server/pm/Computer;->getComponentEnabledSetting(Landroid/content/ComponentName;II)I

    move-result v0

    return v0
.end method

.method public final getContentCaptureServicePackageName()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 394
    const v3, 0x104024d

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultAppsBackup(I)[B
    .registers 3
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PreferredActivityHelper;->getDefaultAppsBackup(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultTextClassifierPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final getFlagsForUid(I)I
    .registers 3
    .param p1, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 427
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getFlagsForUid(I)I

    move-result v0

    return v0
.end method

.method public final getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 435
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    .local p1, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 442
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 443
    const/4 v1, 0x0

    return-object v1

    .line 445
    :cond_10
    nop

    .line 446
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 445
    invoke-interface {v0, p1, v1}, Lcom/android/server/pm/Computer;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method public final getIncidentReportApproverPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstallLocation()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getInstallReason(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 467
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->getInstallReason(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 474
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 481
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 482
    .local v0, "callingUid":I
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    .line 483
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, v0}, Lcom/android/server/pm/Computer;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 482
    return-object v1
.end method

.method public final getInstalledModules(I)Ljava/util/List;
    .registers 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ModuleInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ModuleInfoProvider;->getInstalledModules(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .registers 5
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 496
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/Computer;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public final getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 503
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInstantAppInstallerComponent()Landroid/content/ComponentName;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 509
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 510
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 511
    const/4 v1, 0x0

    return-object v1

    .line 513
    :cond_10
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getInstantAppInstallerComponent()Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method public final getInstantAppResolverComponent()Landroid/content/ComponentName;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 520
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 521
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 522
    const/4 v1, 0x0

    return-object v1

    .line 524
    :cond_10
    iget-object v1, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService;->getInstantAppResolver(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method public final getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 538
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getIntentFilterVerifications(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 546
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public final getIntentVerificationStatus(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getLegacyState(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 559
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v0

    return-object v0
.end method

.method public final getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ModuleInfoProvider;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getNameForUid(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 573
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNamesForUids([I)[Ljava/lang/String;
    .registers 3
    .param p1, "uids"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 580
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getNamesForUids([I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageGids(Ljava/lang/String;JI)[I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 587
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getPackageGids(Ljava/lang/String;JI)[I

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 594
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfoVersioned(Landroid/content/pm/VersionedPackage;JI)Landroid/content/pm/PackageInfo;
    .registers 13
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 601
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 602
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 601
    move-wide v4, p2

    move v7, p4

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/Computer;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInstaller()Landroid/content/pm/IPackageInstaller;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 609
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 610
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    return-object v0

    .line 612
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 614
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 615
    const/4 v1, 0x0

    return-object v1

    .line 617
    :cond_19
    iget-object v1, p0, Lcom/android/server/pm/IPackageManagerBase;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    return-object v1
.end method

.method public final getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageStatsObserver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 624
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shame on you for calling the hidden API getPackageSizeInfo(). Shame!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPackageUid(Ljava/lang/String;JI)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 632
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    return v0
.end method

.method public final getPackagesForUid(I)[Ljava/lang/String;
    .registers 10
    .param p1, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 653
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 654
    .local v6, "callingUid":I
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 655
    .local v7, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "getPackagesForUid"

    move v1, v6

    move v2, v7

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 666
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public final getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 4
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 673
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getPersistentApplications(I)Landroid/content/pm/ParceledListSlice;
    .registers 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 680
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 681
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 682
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    return-object v1

    .line 684
    :cond_13
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->isSafeMode()Z

    move-result v2

    invoke-interface {v0, v2, p1}, Lcom/android/server/pm/Computer;->getPersistentApplications(ZI)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public final getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .registers 6
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 691
    .local p1, "outFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/pm/PreferredActivityHelper;->getPreferredActivities(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getPreferredActivityBackup(I)[B
    .registers 3
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PreferredActivityHelper;->getPreferredActivityBackup(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final getPrivateFlagsForUid(I)I
    .registers 3
    .param p1, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 709
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPrivateFlagsForUid(I)I

    move-result v0

    return v0
.end method

.method public final getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;
    .registers 7
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 716
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 719
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 718
    invoke-interface {v0, p2, v1, v2}, Lcom/android/server/pm/Computer;->getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 720
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_1a

    .line 721
    const/4 v1, 0x0

    return-object v1

    .line 723
    :cond_1a
    iget-object v1, p0, Lcom/android/server/pm/IPackageManagerBase;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/PackageProperty;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object v1

    return-object v1
.end method

.method public final getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 731
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 738
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getRotationResolverPackageName()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 746
    const v3, 0x104025c

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v2

    .line 745
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSdkSandboxPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 798
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 755
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getServicesSystemSharedLibraryPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 762
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mServicesExtensionPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSetupWizardPackageName()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 768
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_d

    .line 771
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    return-object v0

    .line 769
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Non-system caller"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 778
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public final getSharedSystemSharedLibraryPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 792
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v0

    return-object v0
.end method

.method public final getSystemCaptionsServicePackageName()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 805
    const v3, 0x1040261

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v2

    .line 804
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSystemSharedLibraryNames()[Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 813
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSystemTextClassifierPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetSdkVersion(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 825
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getUidForSharedUser(Ljava/lang/String;)I
    .registers 3
    .param p1, "sharedUserName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 831
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getWellbeingPackageName()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 838
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 840
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/IPackageManagerBase;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/role/RoleManager;

    .line 841
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/role/RoleManager;

    const-string v3, "android.app.role.SYSTEM_WELLBEING"

    invoke-virtual {v2, v3}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 840
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1e

    .line 844
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 840
    return-object v2

    .line 844
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 845
    throw v2
.end method

.method public final grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    .line 857
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/permission/PermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 858
    return-void
.end method

.method public final hasSigningCertificate(Ljava/lang/String;[BI)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [B
    .param p3, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 865
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/Computer;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v0

    return v0
.end method

.method public final hasSystemFeature(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 871
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final hasSystemUidErrors()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 878
    const/4 v0, 0x0

    return v0
.end method

.method public final hasUidSigningCertificate(I[BI)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "certificate"    # [B
    .param p3, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 885
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/Computer;->hasUidSigningCertificate(I[BI)Z

    move-result v0

    return v0
.end method

.method public final isDeviceUpgrading()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 891
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    return v0
.end method

.method public final isFirstBoot()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 897
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    return v0
.end method

.method public final isInstantApp(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 903
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->isInstantApp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final isOnlyCoreApps()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 909
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isOnlyCoreApps()Z

    move-result v0

    return v0
.end method

.method public final isPackageAvailable(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 915
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final isPackageDeviceAdminOnAnyUser(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 921
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdminOnAnyUser(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 928
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v0

    return v0
.end method

.method public final isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 935
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v0

    return v0
.end method

.method public final isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 942
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final isSafeMode()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 949
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getSafeMode()Z

    move-result v0

    return v0
.end method

.method public final isStorageLow()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 955
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    move-result v0

    return v0
.end method

.method public final isUidPrivileged(I)Z
    .registers 3
    .param p1, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 961
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->isUidPrivileged(I)Z

    move-result v0

    return v0
.end method

.method public final performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "checkProfiles"    # Z
    .param p3, "targetCompilerFilter"    # Ljava/lang/String;
    .param p4, "force"    # Z
    .param p5, "bootComplete"    # Z
    .param p6, "splitName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 975
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v8

    .line 976
    .local v8, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    move-object v1, v8

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/DexOptHelper;->performDexOptMode(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compilerFilter"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 991
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/DexOptHelper;->performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 12
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # J
    .param p5, "metaDataKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public final queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1023
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public final queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1000
    const-wide/32 v0, 0x40000

    :try_start_3
    const-string/jumbo v2, "queryIntentActivities"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1002
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    .line 1005
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1002
    return-object v2

    .line 1005
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1006
    throw v2
.end method

.method public final queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 21
    .param p1, "caller"    # Landroid/content/ComponentName;
    .param p2, "specifics"    # [Landroid/content/Intent;
    .param p3, "specificTypes"    # [Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "flags"    # J
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1032
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/pm/IPackageManagerBase;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 1033
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v3

    .line 1032
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentActivityOptionsInternal(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1042
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object v1, p0, Lcom/android/server/pm/IPackageManagerBase;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 1043
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 1042
    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentContentProvidersInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1051
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object v1, p0, Lcom/android/server/pm/IPackageManagerBase;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1051
    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1060
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1061
    .local v8, "callingUid":I
    new-instance v9, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, v8

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v9
.end method

.method public final querySyncProviders(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1068
    .local p1, "outNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "outInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->isSafeMode()Z

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/server/pm/Computer;->querySyncProviders(ZLjava/util/List;Ljava/util/List;)V

    .line 1069
    return-void
.end method

.method public final removePermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1076
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    invoke-virtual {v0, p1}, Landroid/permission/PermissionManager;->removePermission(Ljava/lang/String;)V

    .line 1077
    return-void
.end method

.method public final replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .registers 13
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1083
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v2, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PreferredActivityHelper;->replacePreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 1085
    return-void
.end method

.method public final resetApplicationPreferences(I)V
    .registers 3
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1097
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PreferredActivityHelper;->resetApplicationPreferences(I)V

    .line 1098
    return-void
.end method

.method public final resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1091
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public final resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1104
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/pm/IPackageManagerBase;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 1106
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1104
    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move/from16 v9, p5

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1
.end method

.method public final resolveService(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1113
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1114
    .local v8, "callingUid":I
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ResolveIntentHelper;->resolveServiceInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public final restoreDefaultApps([BI)V
    .registers 4
    .param p1, "backup"    # [B
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1121
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->restoreDefaultApps([BI)V

    .line 1122
    return-void
.end method

.method public final restorePreferredActivities([BI)V
    .registers 4
    .param p1, "backup"    # [B
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1127
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->restorePreferredActivities([BI)V

    .line 1128
    return-void
.end method

.method public final setHomeActivity(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1133
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->setHomeActivity(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;I)V

    .line 1134
    return-void
.end method

.method public final setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "filter"    # Landroid/content/IntentFilter;
    .param p5, "match"    # I
    .param p6, "activity"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1140
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    new-instance v5, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v5, p4}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PreferredActivityHelper;->setLastChosenActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/pm/WatchedIntentFilter;ILandroid/content/ComponentName;)V

    .line 1142
    return-void
.end method

.method public final setSystemAppHiddenUntilInstalled(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hidden"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1175
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerService;->setSystemAppHiddenUntilInstalled(Lcom/android/server/pm/Computer;Ljava/lang/String;Z)V

    .line 1176
    return-void
.end method

.method public final setSystemAppInstallState(Ljava/lang/String;ZI)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installed"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1182
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->setSystemAppInstallState(Lcom/android/server/pm/Computer;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method protected snapshot()Lcom/android/server/pm/Computer;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    return-object v0
.end method

.method public final updateIntentVerificationStatus(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1148
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v0, p1, p3, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->setLegacyUserState(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final verifyIntentFilter(IILjava/util/List;)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "verificationCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1154
    .local p3, "failedDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/IPackageManagerBase;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 1155
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1154
    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->queueLegacyVerifyResult(Landroid/content/Context;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;IILjava/util/List;I)V

    .line 1156
    return-void
.end method
