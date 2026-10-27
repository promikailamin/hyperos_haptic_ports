.class public Lcom/android/server/uri/UriGrantsManagerService;
.super Landroid/app/IUriGrantsManager$Stub;
.source "UriGrantsManagerService.java"

# interfaces
.implements Lcom/android/server/uri/UriMetricsHelper$PersistentUriGrantsProvider;


# instance fields
.field public mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mGrantFile:Landroid/util/AtomicFile;

.field public final mGrantedUriPermissions:Landroid/util/SparseArray;

.field public final mH:Lcom/android/server/uri/UriGrantsManagerService$H;

.field public final mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

.field public mPmInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckAuthorityGrantsLocked(Lcom/android/server/uri/UriGrantsManagerService;ILandroid/content/pm/ProviderInfo;IZ)Z
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->checkAuthorityGrantsLocked(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckContentUriPermissionFullUnlocked(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/GrantUri;II)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckGrantUriPermissionFromIntentUnlocked(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckGrantUriPermissionUnlocked(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/net/Uri;II)I
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckUriPermissionLocked(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/GrantUri;II)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menforceNotIsolatedCaller(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgrantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyActivityLaunchRequestCompletedUnlocked(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/Integer;ZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/uri/UriGrantsManagerService;->notifyActivityLaunchRequestCompletedUnlocked(Ljava/lang/Integer;ZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreadGrantedUriPermissionsLocked(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->readGrantedUriPermissionsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveUriPermissionIfNeededLocked(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriPermission;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveUriPermissionsForPackageLocked(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;IZZ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrevokeUriPermission(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstart(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->start()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->writeGrantedUriPermissions()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 178
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "uri-grants"

    invoke-direct {p0, v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/uri/UriGrantsManagerService-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    .line 181
    invoke-direct {p0}, Landroid/app/IUriGrantsManager$Stub;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 157
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 173
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    .line 182
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    .line 183
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "urigrants.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    new-instance p1, Landroid/util/AtomicFile;

    if-eqz p2, :cond_37

    invoke-direct {p1, v0, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3a

    :cond_37
    invoke-direct {p1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :goto_3a
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/android/server/uri/UriGrantsManagerService-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static createForTest(Ljava/io/File;)Lcom/android/server/uri/UriGrantsManagerService;
    .registers 3

    .line 189
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$1;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    iput-object p0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 204
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    iput-object p0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method


# virtual methods
.method public final checkAuthorityGrantsLocked(ILandroid/content/pm/ProviderInfo;IZ)Z
    .registers 9

    .line 570
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    if-eqz p1, :cond_2a

    .line 572
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_10
    if-ltz v0, :cond_2a

    .line 573
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/GrantUri;

    .line 574
    iget v3, v2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v3, p3, :cond_1e

    if-nez p4, :cond_27

    .line 575
    :cond_1e
    iget-object v2, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v2, p2}, Lcom/android/server/uri/UriGrantsManagerService;->matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z

    move-result v2

    if-eqz v2, :cond_27

    return v1

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public checkComponentPermission(Ljava/lang/String;IIZ)I
    .registers 5

    .line 256
    invoke-static {p1, p2, p3, p4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p0

    return p0
.end method

.method public final checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z
    .registers 8

    if-ltz p2, :cond_75

    .line 1487
    const-string v0, "check content URI permission"

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/uri/UriGrantsManagerService;->isContentUriWithAccessModeFlags(Lcom/android/server/uri/GrantUri;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1494
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-eq v0, v1, :cond_57

    if-nez v0, :cond_16

    goto :goto_57

    .line 1500
    :cond_16
    iget-object v0, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1501
    iget v1, p1, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v3, 0x10000000

    invoke-virtual {p0, v0, v1, v3, p2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_44

    .line 1505
    const-string p0, "UriGrantsManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No content provider found for content URI permission check: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1506
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1505
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1511
    :cond_44
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    if-eqz v0, :cond_4b

    return v2

    .line 1516
    :cond_4b
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1517
    :try_start_4e
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_54
    move-exception p0

    .line 1518
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_54

    throw p0

    :cond_57
    :goto_57
    return v2

    .line 1489
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The URI must be a content URI and the mode flags must be at least read and/or write for the content URI permission check of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1491
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1483
    :cond_75
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Uid must be positive for the content URI permission check of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1484
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;
    .registers 25

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    if-eqz v7, :cond_cf

    const/4 v9, 0x0

    if-nez p3, :cond_a

    return-object v9

    .line 654
    :cond_a
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getContentUserHint()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_15

    .line 656
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    :cond_15
    move/from16 v4, p1

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move v2, v0

    move-object/from16 v0, p0

    .line 660
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCallerOnIntentExtraStreamUnlocked(Landroid/content/Intent;IIILjava/lang/Integer;Ljava/lang/Integer;)V

    move v11, v2

    move v1, v4

    move-object v10, v6

    move v4, v3

    move-object v6, v5

    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 666
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v12

    if-nez v2, :cond_37

    if-nez v12, :cond_37

    return-object v9

    :cond_37
    if-eqz v8, :cond_3f

    .line 673
    iget v3, v8, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    move/from16 v15, p6

    :cond_3d
    move v5, v3

    goto :goto_4d

    .line 675
    :cond_3f
    iget-object v3, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v13, 0x10000000

    move/from16 v15, p6

    invoke-virtual {v3, v7, v13, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    if-gez v3, :cond_3d

    return-object v9

    :goto_4d
    if-eqz v2, :cond_6d

    .line 684
    invoke-static {v11, v2, v4}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v3

    .line 686
    invoke-virtual {v0, v6, v3, v1, v10}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V

    move-object v2, v7

    .line 690
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v5

    if-lez v5, :cond_6e

    if-nez v8, :cond_65

    .line 694
    new-instance v7, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v7, v2, v5, v4}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    goto :goto_66

    :cond_65
    move-object v7, v8

    .line 696
    :goto_66
    iget-object v8, v7, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object v8, v7

    goto :goto_6e

    :cond_6d
    move-object v2, v7

    :cond_6e
    :goto_6e
    if-eqz v12, :cond_ce

    const/4 v3, 0x0

    move v9, v3

    .line 700
    :goto_72
    invoke-virtual {v12}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v9, v3, :cond_cc

    .line 701
    invoke-virtual {v12, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_9c

    .line 703
    invoke-static {v11, v3, v4}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v3

    .line 705
    invoke-virtual {v0, v6, v3, v1, v10}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V

    .line 709
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v5

    if-lez v5, :cond_bb

    if-nez v8, :cond_96

    .line 713
    new-instance v8, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v8, v2, v5, v4}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    .line 715
    :cond_96
    iget-object v0, v8, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    :cond_9c
    move v13, v5

    .line 718
    invoke-virtual {v12, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_b8

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v7, v6

    move-object v5, v8

    move-object v8, v10

    move v6, v15

    .line 720
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v3

    if-eqz v3, :cond_b9

    move-object v8, v3

    :goto_b6
    move v5, v13

    goto :goto_bb

    :cond_b8
    move-object v5, v8

    :cond_b9
    move-object v8, v5

    goto :goto_b6

    :cond_bb
    :goto_bb
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v15, p6

    move-object/from16 v6, p7

    move-object/from16 v10, p8

    goto :goto_72

    :cond_cc
    move-object v5, v8

    return-object v5

    :cond_ce
    return-object v8

    .line 646
    :cond_cf
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "targetPkg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I
    .registers 7

    move-object v0, p3

    .line 1526
    new-instance p3, Lcom/android/server/uri/GrantUri;

    invoke-direct {p3, p5, v0, p4}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    const/4 p5, -0x1

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result p0

    return p0
.end method

.method public final checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I
    .registers 22

    move-object/from16 v0, p0

    move/from16 v3, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v4, p4

    .line 1285
    const-string v5, "grant URI permission"

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/uri/UriGrantsManagerService;->isContentUriWithAccessModeFlags(Lcom/android/server/uri/GrantUri;ILjava/lang/String;)Z

    move-result v5

    const/4 v6, -0x1

    if-nez v5, :cond_14

    return v6

    .line 1296
    :cond_14
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v7, 0x3e8

    if-eq v5, v7, :cond_1e

    if-nez v5, :cond_57

    .line 1298
    :cond_1e
    const-string v5, "com.android.settings.files"

    iget-object v7, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    const-string v5, "com.android.settings.module_licenses"

    iget-object v7, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1299
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    goto :goto_57

    .line 1306
    :cond_3b
    const-string v0, "UriGrantsManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For security reasons, the system cannot issue a Uri permission grant to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; use startActivityAsCaller() instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 1312
    :cond_57
    :goto_57
    iget-object v5, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 1313
    iget v7, v2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v8, 0x10000000

    invoke-virtual {v0, v5, v7, v8, v3}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    if-nez v5, :cond_84

    .line 1316
    const-string v0, "UriGrantsManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No content provider found for permission check: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1317
    invoke-virtual {v2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1316
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_84
    if-gez p5, :cond_9a

    if-eqz v1, :cond_9a

    .line 1323
    iget-object v7, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v8, 0x10000000

    .line 1324
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 1323
    invoke-virtual {v7, v1, v8, v9, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-gez v1, :cond_98

    return v6

    :cond_98
    move v7, v1

    goto :goto_9c

    :cond_9a
    move/from16 v7, p5

    :goto_9c
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ltz v7, :cond_a8

    .line 1334
    invoke-virtual {v0, v5, v2, v7, v4}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v1

    if-eqz v1, :cond_f7

    :goto_a6
    move v1, v8

    goto :goto_f8

    .line 1342
    :cond_a8
    iget-boolean v1, v5, Landroid/content/pm/ProviderInfo;->exported:Z

    and-int/lit8 v10, v4, 0x1

    if-eqz v10, :cond_b3

    .line 1344
    iget-object v11, v5, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v11, :cond_b3

    move v1, v9

    :cond_b3
    and-int/lit8 v11, v4, 0x2

    if-eqz v11, :cond_bc

    .line 1349
    iget-object v12, v5, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v12, :cond_bc

    move v1, v9

    .line 1353
    :cond_bc
    iget-object v12, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v12, :cond_f4

    .line 1354
    array-length v12, v12

    move v13, v9

    :goto_c2
    if-ge v13, v12, :cond_f4

    .line 1356
    iget-object v14, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v14, v14, v13

    if-eqz v14, :cond_f1

    iget-object v15, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1357
    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f1

    if-eqz v10, :cond_e3

    .line 1359
    iget-object v10, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v10, v10, v13

    invoke-virtual {v10}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e3

    move v1, v9

    :cond_e3
    if-eqz v11, :cond_f4

    .line 1364
    iget-object v10, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v10, v10, v13

    invoke-virtual {v10}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f4

    move v1, v9

    goto :goto_f4

    :cond_f1
    add-int/lit8 v13, v13, 0x1

    goto :goto_c2

    :cond_f4
    :goto_f4
    if-eqz v1, :cond_f7

    goto :goto_a6

    :cond_f7
    move v1, v9

    .line 1377
    :goto_f8
    iget-boolean v10, v5, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v10, :cond_fd

    move v1, v9

    :cond_fd
    and-int/lit16 v10, v4, 0xc0

    if-nez v10, :cond_103

    move v10, v8

    goto :goto_104

    :cond_103
    move v10, v9

    :goto_104
    if-eqz v10, :cond_128

    if-eqz v1, :cond_128

    .line 1391
    iget-object v0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1392
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1393
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    iget-object v3, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p0, v0

    move/from16 p1, v1

    move/from16 p3, v2

    move/from16 p4, v3

    move/from16 p5, v4

    move-object/from16 p2, v5

    .line 1391
    invoke-virtual/range {p0 .. p5}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    return v6

    :cond_128
    if-ltz v7, :cond_13c

    .line 1404
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget v6, v2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v1, v6, :cond_13c

    move-object v1, v5

    const/4 v5, 0x0

    .line 1405
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v5

    if-eqz v5, :cond_13d

    move v5, v8

    goto :goto_13e

    :cond_13c
    move-object v1, v5

    :cond_13d
    move v5, v9

    .line 1409
    :goto_13e
    iget-boolean v6, v1, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 1410
    iget-object v11, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_166

    .line 1411
    iget-object v6, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v6, v6

    move v11, v9

    :goto_14c
    if-ge v11, v6, :cond_164

    .line 1414
    iget-object v12, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v12, v12, v11

    if-eqz v12, :cond_161

    iget-object v13, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1415
    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_161

    goto :goto_167

    :cond_161
    add-int/lit8 v11, v11, 0x1

    goto :goto_14c

    :cond_164
    move v8, v9

    goto :goto_167

    :cond_166
    move v8, v6

    :goto_167
    if-nez v8, :cond_1ce

    if-eqz v5, :cond_19e

    if-eqz v10, :cond_16e

    goto :goto_1ce

    .line 1426
    :cond_16e
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not allow granting of advanced Uri permissions (uri "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1432
    :cond_19e
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not allow granting of Uri permissions (uri "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1440
    :cond_1ce
    :goto_1ce
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v5

    if-nez v5, :cond_22e

    .line 1443
    iget-object v5, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1444
    :try_start_1d7
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    .line 1445
    monitor-exit v5
    :try_end_1dc
    .catchall {:try_start_1d7 .. :try_end_1dc} :catchall_22b

    if-nez v0, :cond_22e

    .line 1447
    const-string v0, "android.permission.MANAGE_DOCUMENTS"

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20c

    .line 1448
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have permission to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; you could obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1453
    :cond_20c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have permission to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_22b
    move-exception v0

    .line 1445
    :try_start_22c
    monitor-exit v5
    :try_end_22d
    .catchall {:try_start_22c .. :try_end_22d} :catchall_22b

    throw v0

    :cond_22e
    return v7
.end method

.method public checkGrantUriPermission_ignoreNonSystem(ILjava/lang/String;Landroid/net/Uri;II)I
    .registers 9

    .line 1580
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->isCallerIsSystemOrPrivileged()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 1583
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1585
    :try_start_c
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result p0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 1588
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_14
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1589
    throw p0
.end method

.method public final checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 1131
    iget-object v5, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ca

    .line 1135
    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x1

    if-ne v5, v3, :cond_1a

    return v6

    .line 1137
    :cond_1a
    iget-boolean v5, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    const/4 v7, 0x0

    if-nez v5, :cond_20

    return v7

    :cond_20
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_26

    move v5, v6

    goto :goto_27

    :cond_26
    move v5, v7

    :goto_27
    and-int/lit8 v8, v4, 0x2

    if-nez v8, :cond_2d

    move v8, v6

    goto :goto_2e

    :cond_2d
    move v8, v7

    :goto_2e
    if-nez v5, :cond_3d

    .line 1145
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v9, :cond_3d

    if-eqz p5, :cond_3d

    .line 1146
    invoke-virtual {v0, v9, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3d

    move v5, v6

    :cond_3d
    if-nez v8, :cond_4c

    .line 1149
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v9, :cond_4c

    if-eqz p5, :cond_4c

    .line 1150
    invoke-virtual {v0, v9, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_4c

    move v8, v6

    .line 1156
    :cond_4c
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-nez v9, :cond_52

    move v9, v6

    goto :goto_53

    :cond_52
    move v9, v7

    .line 1157
    :goto_53
    iget-object v10, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-nez v10, :cond_59

    move v10, v6

    goto :goto_5a

    :cond_59
    move v10, v7

    .line 1160
    :goto_5a
    iget-object v11, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v11, :cond_9c

    .line 1162
    iget-object v12, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 1163
    array-length v13, v11

    :cond_65
    :goto_65
    if-lez v13, :cond_9c

    if-eqz v5, :cond_6b

    if-nez v8, :cond_9c

    :cond_6b
    add-int/lit8 v13, v13, -0x1

    .line 1166
    aget-object v14, v11, v13

    .line 1167
    invoke-virtual {v14, v12}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_65

    if-nez v5, :cond_88

    .line 1169
    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_88

    if-eqz p5, :cond_87

    .line 1175
    invoke-virtual {v0, v15, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_87

    move v5, v6

    goto :goto_88

    :cond_87
    move v9, v7

    :cond_88
    :goto_88
    if-nez v8, :cond_65

    .line 1184
    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_65

    if-eqz p5, :cond_9a

    .line 1190
    invoke-virtual {v0, v14, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_9a

    move v8, v6

    goto :goto_65

    :cond_9a
    move v10, v7

    goto :goto_65

    :cond_9c
    if-eqz v9, :cond_9f

    move v5, v6

    :cond_9f
    if-eqz v10, :cond_a2

    move v8, v6

    .line 1210
    :cond_a2
    iget-boolean v9, v1, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v9, :cond_c1

    .line 1211
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1212
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v1, v9, :cond_bf

    .line 1214
    iget-object v0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/ActivityManagerInternal;->checkContentProviderUriPermission(Landroid/net/Uri;III)I

    move-result v0

    if-nez v0, :cond_bf

    goto :goto_c1

    :cond_bf
    move v0, v7

    goto :goto_c2

    :cond_c1
    :goto_c1
    move v0, v6

    :goto_c2
    if-eqz v5, :cond_c9

    if-eqz v8, :cond_c9

    if-eqz v0, :cond_c9

    return v6

    :cond_c9
    return v7

    .line 1132
    :cond_ca
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must never hold local mLock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z
    .registers 11

    .line 1118
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, p2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v0, v1, :cond_14

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 1119
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v2, p3, v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1124
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result p0

    return p0
.end method

.method public checkUidPermission(Ljava/lang/String;I)I
    .registers 3

    .line 247
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 249
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z
    .registers 11

    and-int/lit8 v0, p3, 0x40

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    if-nez p2, :cond_b

    return v1

    .line 1541
    :cond_b
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    const/4 p2, 0x0

    if-nez p0, :cond_17

    return p2

    .line 1545
    :cond_17
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermission;

    if-eqz v2, :cond_26

    .line 1546
    invoke-virtual {v2, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v2

    if-lt v2, v0, :cond_26

    return v1

    .line 1551
    :cond_26
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v3, p2

    :goto_2b
    if-ge v3, v2, :cond_4d

    .line 1553
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriPermission;

    .line 1554
    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v6, v5, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v6, :cond_4a

    iget-object v6, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v5, v5, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v5}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 1555
    invoke-virtual {v4, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v4

    if-lt v4, v0, :cond_4a

    return v1

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_4d
    return p2
.end method

.method public clearGrantedUriPermissions(Ljava/lang/String;I)V
    .registers 6

    .line 444
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "clearGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 447
    :try_start_d
    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    .line 448
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final enforceNotIsolatedCaller(Ljava/lang/String;)V
    .registers 4

    .line 1263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result p0

    if-nez p0, :cond_b

    return-void

    .line 1264
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Isolated process not allowed to call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceRequireContentUriPermissionFromCallerOnIntentExtraStreamUnlocked(Landroid/content/Intent;IIILjava/lang/Integer;Ljava/lang/Integer;)V
    .registers 12

    .line 806
    const-string v0, "UriGrantsManagerService"

    const-string v1, "android.intent.extra.STREAM"

    :try_start_4
    const-class v2, Landroid/net/Uri;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_2b

    .line 808
    invoke-static {p2, v2, p3}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v2

    .line 809
    invoke-virtual {p0, p5, v2, p4, p6}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V
    :try_end_15
    .catch Landroid/os/BadParcelableException; {:try_start_4 .. :try_end_15} :catch_16

    goto :goto_2b

    :catch_16
    move-exception v2

    .line 814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unparcel an URI in EXTRA_STREAM, skipping requireContentUriPermissionFromCaller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_2b
    :goto_2b
    :try_start_2b
    const-class v2, Landroid/net/Uri;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_60

    .line 822
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_39
    if-ltz v1, :cond_60

    .line 823
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-static {p2, v2, p3}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v2

    .line 824
    invoke-virtual {p0, p5, v2, p4, p6}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V
    :try_end_48
    .catch Landroid/os/BadParcelableException; {:try_start_2b .. :try_end_48} :catch_4b

    add-int/lit8 v1, v1, -0x1

    goto :goto_39

    :catch_4b
    move-exception p0

    .line 830
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to unparcel an ArrayList of URIs in EXTRA_STREAM, skipping requireContentUriPermissionFromCaller: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    return-void
.end method

.method public final enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V
    .registers 7

    if-eqz p1, :cond_47

    .line 740
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 741
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_47

    .line 747
    :cond_17
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->hasRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;I)Z

    move-result p0

    if-eqz p0, :cond_1e

    return-void

    .line 751
    :cond_1e
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "You can\'t launch this activity because you don\'t have the required "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 752
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->requiredContentUriPermissionToShortString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " access to "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 742
    :cond_47
    :goto_47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->tryAddingContentUriWithoutCallerReadPermissionWhenAttributeIsNoneUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V

    return-void
.end method

.method public final findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .registers 6

    .line 942
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_13

    .line 944
    invoke-static {}, Lcom/google/android/collect/Maps;->newArrayMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 945
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 948
    :cond_13
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/uri/UriPermission;

    if-nez p0, :cond_23

    .line 950
    new-instance p0, Lcom/android/server/uri/UriPermission;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriPermission;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V

    .line 951
    invoke-virtual {v0, p4, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-object p0
.end method

.method public final findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .registers 3

    .line 1248
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_11

    .line 1250
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/uri/UriPermission;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 12

    .line 366
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.GET_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "getGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_11
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    if-ge v4, v2, :cond_52

    .line 373
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    move v6, v3

    .line 374
    :goto_24
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_4f

    .line 375
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_3d

    .line 376
    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c

    goto :goto_3d

    :catchall_3b
    move-exception p0

    goto :goto_59

    :cond_3d
    :goto_3d
    iget v8, v7, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-ne v8, p2, :cond_4c

    iget v8, v7, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v8, :cond_4c

    .line 379
    invoke-virtual {v7}, Lcom/android/server/uri/UriPermission;->buildGrantedUriPermission()Landroid/app/GrantedUriPermission;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4c
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 383
    :cond_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_11 .. :try_end_53} :catchall_3b

    .line 384
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    .line 383
    :goto_59
    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_3b

    throw p0
.end method

.method public getLocalService()Lcom/android/server/uri/UriGrantsManagerInternal;
    .registers 3

    .line 210
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService-IA;)V

    return-object v0
.end method

.method public final getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;
    .registers 11

    .line 1270
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    or-int/lit16 p0, p3, 0x800

    int-to-long v2, p0

    move-object v1, p1

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;
    .registers 12

    .line 316
    const-string v0, "getUriPermissions"

    invoke-virtual {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 317
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 320
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 321
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v3, 0xc0000

    .line 322
    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-ne v1, v0, :cond_b7

    .line 329
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 330
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    if-eqz p2, :cond_75

    .line 332
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_51

    .line 335
    const-string p0, "UriGrantsManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No permission grants found for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    :catchall_4f
    move-exception p0

    goto :goto_b5

    .line 337
    :cond_51
    :goto_51
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-ge v3, p2, :cond_ae

    .line 338
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/uri/UriPermission;

    .line 339
    iget-object v0, p2, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    if-eqz p3, :cond_6b

    iget v0, p2, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v0, :cond_72

    .line 341
    :cond_6b
    invoke-virtual {p2}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 346
    :cond_75
    iget-object p2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    move v0, v3

    :goto_7c
    if-ge v0, p2, :cond_ae

    .line 348
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 349
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    move v5, v3

    .line 350
    :goto_87
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_ab

    .line 351
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    .line 352
    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a8

    if-eqz p3, :cond_a1

    iget v7, v6, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v7, :cond_a8

    .line 354
    :cond_a1
    invoke-virtual {v6}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a8
    add-int/lit8 v5, v5, 0x1

    goto :goto_87

    :cond_ab
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 359
    :cond_ae
    :goto_ae
    monitor-exit v2
    :try_end_af
    .catchall {:try_start_2e .. :try_end_af} :catchall_4f

    .line 360
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    .line 359
    :goto_b5
    :try_start_b5
    monitor-exit v2
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_4f

    throw p0

    .line 325
    :cond_b7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to calling UID "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .registers 8

    .line 277
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionFromOwnerUnlocked(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    return-void
.end method

.method public final grantUriPermissionFromOwnerUnlocked(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .registers 16

    .line 287
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 288
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v6, "grantUriPermissionFromOwner"

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    move v3, p7

    .line 287
    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p7

    move-object v0, p4

    move p4, p5

    .line 291
    invoke-static {p1}, Lcom/android/server/uri/UriPermissionOwner;->fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;

    move-result-object p5

    if-eqz p5, :cond_58

    .line 295
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    if-eq p2, p1, :cond_36

    .line 296
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne p1, v1, :cond_2d

    goto :goto_36

    .line 299
    :cond_2d
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "nice try"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    :goto_36
    if-eqz p3, :cond_4f

    if-eqz v0, :cond_46

    move p1, p2

    move-object p2, p3

    .line 309
    new-instance p3, Lcom/android/server/uri/GrantUri;

    invoke-direct {p3, p6, v0, p4}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    move p6, p7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V

    return-void

    .line 306
    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "null uri"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 303
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "null target"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 293
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown owner: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V
    .registers 15

    .line 959
    invoke-static {p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 970
    :cond_7
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 971
    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    const/16 v3, 0x3e8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_34

    .line 974
    const-string p0, "UriGrantsManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No content provider found for grant: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 979
    :cond_34
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 980
    :try_start_37
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, p2, p1, p3}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object p2

    .line 981
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_5e

    .line 982
    invoke-virtual {p2, p4, p5}, Lcom/android/server/uri/UriPermission;->grantModes(ILcom/android/server/uri/UriPermissionOwner;)Z

    .line 983
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 984
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    and-int/lit8 p0, p4, 0x40

    if-eqz p0, :cond_56

    const/4 p0, 0x1

    :goto_54
    move v8, p0

    goto :goto_58

    :cond_56
    const/4 p0, 0x0

    goto :goto_54

    :goto_58
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 983
    invoke-virtual/range {v2 .. v8}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    return-void

    :catchall_5e
    move-exception v0

    move-object p0, v0

    .line 981
    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5e

    throw p0
.end method

.method public final grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 11

    if-nez p1, :cond_3

    goto :goto_23

    .line 994
    :cond_3
    iget-object v0, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_23

    .line 996
    iget v3, p1, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    iget-object v4, p1, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    .line 997
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/uri/GrantUri;

    iget v6, p1, Lcom/android/server/uri/NeededUriGrants;->flags:I

    move-object v2, p0

    move-object v7, p2

    .line 996
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_23
    :goto_23
    return-void
.end method

.method public final grantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V
    .registers 16

    if-eqz p2, :cond_1b

    .line 1006
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v1, 0x10000000

    invoke-virtual {v0, p2, v1, v2, p6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v8

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    .line 1009
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result p1

    if-gez p1, :cond_17

    return-void

    .line 1015
    :cond_17
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    return-void

    .line 1004
    :cond_1b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "targetPkg"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;I)Z
    .registers 8

    .line 761
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 760
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isRequiredContentUriPermissionRead(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    .line 762
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/uri/UriGrantsManagerService;->checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    move v0, v1

    goto :goto_16

    :cond_15
    :goto_15
    move v0, v2

    .line 766
    :goto_16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 765
    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->isRequiredContentUriPermissionWrite(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x2

    .line 767
    invoke-virtual {p0, p2, p3, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_2a

    :cond_28
    move p0, v1

    goto :goto_2b

    :cond_2a
    :goto_2a
    move p0, v2

    .line 770
    :goto_2b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_39

    if-nez v0, :cond_38

    if-eqz p0, :cond_37

    goto :goto_38

    :cond_37
    return v1

    :cond_38
    :goto_38
    return v2

    :cond_39
    if-eqz v0, :cond_3e

    if-eqz p0, :cond_3e

    return v2

    :cond_3e
    return v1
.end method

.method public final isCallerIsSystemOrPrivileged()Z
    .registers 5

    .line 1593
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-eq v0, v1, :cond_18

    if-nez v0, :cond_c

    goto :goto_18

    .line 1597
    :cond_c
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/android/server/uri/UriGrantsManagerService;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p0

    if-nez p0, :cond_16

    return v2

    :cond_16
    const/4 p0, 0x0

    return p0

    :cond_18
    :goto_18
    return v2
.end method

.method public final isContentUriWithAccessModeFlags(Lcom/android/server/uri/GrantUri;ILjava/lang/String;)Z
    .registers 4

    .line 1464
    invoke-static {p2}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_8

    return p2

    .line 1469
    :cond_8
    iget-object p0, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string p1, "content"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return p2

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method public final matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z
    .registers 6

    .line 586
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    .line 587
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const/16 p2, 0x3b

    .line 588
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_14

    .line 589
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 591
    :cond_14
    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 592
    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    if-ge v1, p2, :cond_2c

    .line 594
    aget-object v2, p1, v1

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2c
    return v0
.end method

.method public final maybePrunePersistedUriGrantsLocked(I)Z
    .registers 7

    .line 607
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return v0

    .line 609
    :cond_c
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v2, 0x200

    if-ge v1, v2, :cond_15

    return v0

    .line 611
    :cond_15
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 612
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    .line 613
    iget v4, v3, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v4, :cond_21

    .line 614
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 618
    :cond_35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    if-gtz p1, :cond_3d

    return v0

    .line 621
    :cond_3d
    new-instance v2, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;

    invoke-direct {v2}, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_45
    if-ge v0, p1, :cond_57

    .line 623
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermission;

    const/4 v3, -0x1

    .line 627
    invoke-virtual {v2, v3}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    .line 628
    invoke-virtual {p0, v2}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_57
    const/4 p0, 0x1

    return p0
.end method

.method public final notifyActivityLaunchRequestCompletedUnlocked(Ljava/lang/Integer;ZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V
    .registers 21

    .line 840
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    monitor-enter v1

    .line 841
    :try_start_3
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 842
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 843
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_66

    if-eqz p2, :cond_65

    if-nez v0, :cond_1e

    goto :goto_65

    .line 846
    :cond_1e
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 847
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 848
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_30
    if-ltz v1, :cond_47

    .line 849
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 850
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v1

    .line 851
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_30

    .line 853
    :cond_47
    const-string v0, ","

    .line 861
    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string p0, ","

    .line 862
    invoke-static {p0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v1, 0x3a5

    const/4 v2, 0x1

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 853
    invoke-static/range {v1 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    :goto_65
    return-void

    :catchall_66
    move-exception v0

    move-object p0, v0

    .line 843
    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_66

    throw p0
.end method

.method public providePersistentUriGrants()Ljava/util/ArrayList;
    .registers 11

    .line 1605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1607
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1608
    :try_start_8
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v2, :cond_37

    .line 1610
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 1612
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v3

    :goto_1f
    if-ge v7, v6, :cond_34

    .line 1614
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 1616
    iget v9, v8, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v9, :cond_31

    .line 1617
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :catchall_2f
    move-exception p0

    goto :goto_39

    :cond_31
    :goto_31
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1621
    :cond_37
    monitor-exit v1

    return-object v0

    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_2f

    throw p0
.end method

.method public final readGrantedUriPermissionsLocked()V
    .registers 21

    move-object/from16 v0, p0

    .line 870
    const-string v1, "Failed reading Uri grants"

    const-string v2, "UriGrantsManagerService"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    .line 874
    :try_start_b
    iget-object v6, v0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_11} :catch_121
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_11e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_11} :catch_11b
    .catchall {:try_start_b .. :try_end_11} :catchall_118

    .line 875
    :try_start_11
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v7

    .line 878
    :goto_15
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_112

    .line 879
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    if-ne v8, v10, :cond_107

    .line 881
    const-string/jumbo v8, "uri-grant"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_107

    .line 884
    const-string/jumbo v8, "userHandle"

    const/16 v9, -0x2710

    invoke-interface {v7, v5, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v9, :cond_39

    move v10, v8

    goto :goto_48

    .line 891
    :cond_39
    const-string/jumbo v8, "sourceUserId"

    invoke-interface {v7, v5, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 892
    const-string/jumbo v9, "targetUserId"

    invoke-interface {v7, v5, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move v10, v9

    .line 894
    :goto_48
    const-string/jumbo v9, "sourcePkg"

    invoke-interface {v7, v5, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 895
    const-string/jumbo v11, "targetPkg"

    invoke-interface {v7, v5, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 896
    const-string/jumbo v12, "uri"

    invoke-interface {v7, v5, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 897
    const-string/jumbo v13, "prefix"

    const/4 v14, 0x0

    invoke-interface {v7, v5, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    .line 898
    const-string/jumbo v15, "modeFlags"

    invoke-interface {v7, v5, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 899
    const-string v14, "createdTime"

    move/from16 v16, v13

    invoke-interface {v7, v5, v14, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v13

    .line 904
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v17, v3

    const/high16 v3, 0xc0000

    const/16 v4, 0x3e8

    invoke-virtual {v0, v5, v8, v3, v4}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_e0

    .line 906
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 907
    iget-object v4, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;
    :try_end_92
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_92} :catch_dd
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_92} :catch_d9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_92} :catch_d5
    .catchall {:try_start_11 .. :try_end_92} :catchall_d1

    move-object/from16 v19, v6

    const-wide/16 v5, 0x2000

    :try_start_96
    invoke-virtual {v4, v11, v5, v6, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_10b

    .line 910
    new-instance v5, Lcom/android/server/uri/GrantUri;

    if-eqz v16, :cond_a4

    const/16 v6, 0x80

    goto :goto_a5

    :cond_a4
    const/4 v6, 0x0

    .line 911
    :goto_a5
    invoke-direct {v5, v8, v12, v6}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    .line 912
    invoke-virtual {v0, v9, v11, v4, v5}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v5

    .line 914
    invoke-virtual {v5, v15, v13, v14}, Lcom/android/server/uri/UriPermission;->initPersistedModes(IJ)V

    .line 915
    iget-object v9, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 917
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v11, 0x0

    .line 915
    invoke-virtual/range {v9 .. v15}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    goto :goto_10b

    :catchall_c0
    move-exception v0

    :goto_c1
    move-object/from16 v5, v19

    goto/16 :goto_130

    :catch_c5
    move-exception v0

    :goto_c6
    move-object/from16 v5, v19

    goto :goto_123

    :catch_c9
    move-exception v0

    :goto_ca
    move-object/from16 v5, v19

    goto/16 :goto_12c

    :catch_ce
    :goto_ce
    move-object/from16 v5, v19

    goto :goto_126

    :catchall_d1
    move-exception v0

    move-object/from16 v19, v6

    goto :goto_c1

    :catch_d5
    move-exception v0

    move-object/from16 v19, v6

    goto :goto_c6

    :catch_d9
    move-exception v0

    move-object/from16 v19, v6

    goto :goto_ca

    :catch_dd
    move-object/from16 v19, v6

    goto :goto_ce

    :cond_e0
    move-object/from16 v19, v6

    .line 922
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Persisted grant for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " had source "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but instead found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_106
    .catch Ljava/io/FileNotFoundException; {:try_start_96 .. :try_end_106} :catch_ce
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_106} :catch_c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_96 .. :try_end_106} :catch_c5
    .catchall {:try_start_96 .. :try_end_106} :catchall_c0

    goto :goto_10b

    :cond_107
    move-wide/from16 v17, v3

    move-object/from16 v19, v6

    :cond_10b
    :goto_10b
    move-wide/from16 v3, v17

    move-object/from16 v6, v19

    const/4 v5, 0x0

    goto/16 :goto_15

    :cond_112
    move-object/from16 v19, v6

    .line 935
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_118
    move-exception v0

    const/4 v5, 0x0

    goto :goto_130

    :catch_11b
    move-exception v0

    const/4 v5, 0x0

    goto :goto_123

    :catch_11e
    move-exception v0

    const/4 v5, 0x0

    goto :goto_12c

    :catch_121
    const/4 v5, 0x0

    goto :goto_126

    .line 933
    :goto_123
    :try_start_123
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_12a

    .line 935
    :goto_126
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_134

    :catchall_12a
    move-exception v0

    goto :goto_130

    .line 931
    :goto_12c
    :try_start_12c
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_12a

    goto :goto_126

    .line 935
    :goto_130
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 936
    throw v0

    :goto_134
    return-void
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 11

    if-eqz p3, :cond_15

    .line 463
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string/jumbo v2, "releasePersistableUriPermission"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p3, v1, v2, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    goto :goto_1f

    .line 467
    :cond_15
    const-string/jumbo v0, "releasePersistableUriPermission"

    invoke-virtual {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 468
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    :goto_1f
    const/4 v1, 0x3

    .line 471
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 474
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 477
    :try_start_26
    new-instance v2, Lcom/android/server/uri/GrantUri;

    const/4 v3, 0x0

    invoke-direct {v2, p4, p1, v3}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v2

    .line 479
    new-instance v4, Lcom/android/server/uri/GrantUri;

    const/16 v5, 0x80

    invoke-direct {v4, p4, p1, v5}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-virtual {p0, v0, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object p4

    if-nez v2, :cond_67

    if-nez p4, :cond_67

    if-eqz p3, :cond_42

    goto :goto_67

    .line 482
    :cond_42
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No permission grants found for UID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " and Uri "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_65
    move-exception p0

    goto :goto_81

    :cond_67
    :goto_67
    if-eqz v2, :cond_70

    .line 487
    invoke-virtual {v2, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result v3

    .line 488
    invoke-virtual {p0, v2}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    :cond_70
    if-eqz p4, :cond_7a

    .line 491
    invoke-virtual {p4, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result p1

    or-int/2addr v3, p1

    .line 492
    invoke-virtual {p0, p4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    :cond_7a
    if-eqz v3, :cond_7f

    .line 496
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 498
    :cond_7f
    monitor-exit v1

    return-void

    :goto_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_26 .. :try_end_82} :catchall_65

    throw p0
.end method

.method public final removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V
    .registers 4

    .line 1230
    iget v0, p1, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-eqz v0, :cond_5

    goto :goto_24

    .line 1233
    :cond_5
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_12

    goto :goto_24

    .line 1240
    :cond_12
    iget-object v1, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1242
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method public final removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V
    .registers 16

    const/4 v0, -0x1

    if-ne p2, v0, :cond_e

    if-eqz p1, :cond_6

    goto :goto_e

    .line 517
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must narrow by either package or user"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 522
    :cond_e
    :goto_e
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v2, v1, :cond_8e

    .line 524
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 525
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    const/4 v6, 0x1

    if-eq p2, v0, :cond_2f

    .line 529
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne p2, v7, :cond_8c

    .line 530
    :cond_2f
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_37
    :goto_37
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 531
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_57

    if-nez p4, :cond_4f

    .line 534
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_57

    :cond_4f
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 535
    invoke-virtual {v9, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_37

    .line 539
    :cond_57
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    const-string v10, "downloads"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6a

    if-nez p3, :cond_6a

    goto :goto_37

    :cond_6a
    if-eqz p3, :cond_6e

    move v9, v0

    goto :goto_70

    :cond_6e
    const/16 v9, -0x41

    .line 542
    :goto_70
    invoke-virtual {v8, v9, v6}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v9

    or-int/2addr v3, v9

    .line 547
    iget v8, v8, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v8, :cond_37

    .line 548
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_37

    .line 553
    :cond_7d
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 554
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_8c
    add-int/2addr v2, v6

    goto :goto_16

    :cond_8e
    if-eqz v3, :cond_93

    .line 562
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    :cond_93
    return-void
.end method

.method public final revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .registers 12

    .line 1022
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1023
    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0xc0000

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 1026
    const-string p0, "UriGrantsManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No content provider found for permission revoke: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1026
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1031
    :cond_2b
    invoke-virtual {p0, v0, p3, p2, p4}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v5

    .line 1033
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1034
    :try_start_37
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V

    .line 1036
    monitor-exit v6

    return-void

    :catchall_3c
    move-exception v0

    move-object p0, v0

    monitor-exit v6
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_3c

    throw p0
.end method

.method public final revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V
    .registers 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p5, :cond_5b

    .line 1046
    iget-object p5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/ArrayMap;

    if-eqz p5, :cond_c5

    .line 1049
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v0

    move v0, v1

    :goto_14
    if-ltz v2, :cond_4a

    .line 1050
    invoke-virtual {p5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_27

    .line 1051
    iget-object v4, v3, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_47

    .line 1054
    :cond_27
    iget-object v4, v3, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v5, v4, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v6, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v5, v6, :cond_47

    iget-object v4, v4, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v5, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1055
    invoke-virtual {v4, v5}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_47

    or-int/lit8 v4, p4, 0x40

    .line 1058
    invoke-virtual {v3, v4, v1}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1060
    iget v3, v3, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v3, :cond_47

    .line 1061
    invoke-virtual {p5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_47
    :goto_47
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 1065
    :cond_4a
    invoke-virtual {p5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 1066
    iget-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_55
    if-eqz v0, :cond_c5

    .line 1069
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    return-void

    .line 1078
    :cond_5b
    iget-object p2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v0

    move p5, v1

    :goto_63
    if-ltz p2, :cond_c0

    .line 1079
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1080
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 1082
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_77
    if-ltz v3, :cond_b2

    .line 1083
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_8a

    .line 1084
    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8a

    goto :goto_af

    .line 1087
    :cond_8a
    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v6, v5, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v7, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v6, v7, :cond_af

    iget-object v5, v5, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v6, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1088
    invoke-virtual {v5, v6}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_af

    or-int/lit8 v5, p4, 0x40

    if-nez p1, :cond_a2

    move v6, v0

    goto :goto_a3

    :cond_a2
    move v6, v1

    .line 1091
    :goto_a3
    invoke-virtual {v4, v5, v6}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v5

    or-int/2addr p5, v5

    .line 1094
    iget v4, v4, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v4, :cond_af

    .line 1095
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_af
    :goto_af
    add-int/lit8 v3, v3, -0x1

    goto :goto_77

    .line 1100
    :cond_b2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 1101
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_bd
    add-int/lit8 p2, p2, -0x1

    goto :goto_63

    :cond_c0
    if-eqz p5, :cond_c5

    .line 1106
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    :cond_c5
    return-void
.end method

.method public final schedulePersistUriGrants()V
    .registers 4

    .line 1256
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1257
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_14
    return-void
.end method

.method public final start()V
    .registers 3

    .line 214
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService-IA;)V

    const-class p0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 11

    if-eqz p3, :cond_15

    .line 398
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string/jumbo v2, "takePersistableUriPermission"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p3, v1, v2, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    goto :goto_1f

    .line 402
    :cond_15
    const-string/jumbo p3, "takePersistableUriPermission"

    invoke-virtual {p0, p3}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 403
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    :goto_1f
    const/4 v0, 0x3

    .line 406
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 409
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_26
    new-instance v1, Lcom/android/server/uri/GrantUri;

    const/4 v2, 0x0

    invoke-direct {v1, p4, p1, v2}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-virtual {p0, p3, v1}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v1

    .line 414
    new-instance v3, Lcom/android/server/uri/GrantUri;

    const/16 v4, 0x80

    invoke-direct {v3, p4, p1, v4}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-virtual {p0, p3, v3}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object p4

    const/4 v3, 0x1

    if-eqz v1, :cond_47

    .line 417
    iget v4, v1, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v4, p2

    if-ne v4, p2, :cond_47

    move v4, v3

    goto :goto_48

    :catchall_45
    move-exception p0

    goto :goto_92

    :cond_47
    move v4, v2

    :goto_48
    if-eqz p4, :cond_50

    .line 419
    iget v5, p4, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v5, p2

    if-ne v5, p2, :cond_50

    goto :goto_51

    :cond_50
    move v3, v2

    :goto_51
    if-nez v4, :cond_79

    if-eqz v3, :cond_56

    goto :goto_79

    .line 423
    :cond_56
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No persistable permission grants found for UID "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " and Uri "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_79
    :goto_79
    if-eqz v4, :cond_7f

    .line 428
    invoke-virtual {v1, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result v2

    :cond_7f
    if-eqz v3, :cond_86

    .line 431
    invoke-virtual {p4, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result p1

    or-int/2addr v2, p1

    .line 434
    :cond_86
    invoke-virtual {p0, p3}, Lcom/android/server/uri/UriGrantsManagerService;->maybePrunePersistedUriGrantsLocked(I)Z

    move-result p1

    or-int/2addr p1, v2

    if-eqz p1, :cond_90

    .line 437
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 439
    :cond_90
    monitor-exit v0

    return-void

    :goto_92
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_26 .. :try_end_93} :catchall_45

    throw p0
.end method

.method public final tryAddingContentUriWithoutCallerReadPermissionWhenAttributeIsNoneUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V
    .registers 7

    if-eqz p1, :cond_59

    .line 782
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_59

    const-string p1, "content"

    iget-object v0, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 783
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    if-nez p4, :cond_19

    goto :goto_59

    :cond_19
    const/4 p1, 0x1

    .line 788
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->hasRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;I)Z

    move-result p1

    if-nez p1, :cond_59

    .line 790
    iget-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    monitor-enter p1

    .line 791
    :try_start_27
    iget-object p3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_44

    .line 792
    iget-object p3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    .line 793
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_44

    :catchall_42
    move-exception p0

    goto :goto_57

    .line 795
    :cond_44
    :goto_44
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    iget-object p2, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 796
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 797
    monitor-exit p1

    return-void

    :goto_57
    monitor-exit p1
    :try_end_58
    .catchall {:try_start_27 .. :try_end_58} :catchall_42

    throw p0

    :cond_59
    :goto_59
    return-void
.end method

.method public final writeGrantedUriPermissions()V
    .registers 14

    .line 1629
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1634
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1635
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1636
    :try_start_b
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_14
    if-ge v6, v4, :cond_42

    .line 1638
    iget-object v8, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 1640
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    move v10, v5

    :goto_23
    if-ge v10, v9, :cond_3f

    .line 1642
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/uri/UriPermission;

    .line 1644
    iget v12, v11, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v12, :cond_3c

    add-int/lit8 v7, v7, 0x1

    .line 1646
    invoke-virtual {v11}, Lcom/android/server/uri/UriPermission;->snapshot()Lcom/android/server/uri/UriPermission$Snapshot;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :catchall_39
    move-exception p0

    goto/16 :goto_db

    :cond_3c
    :goto_3c
    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 1650
    :cond_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_b .. :try_end_43} :catchall_39

    const/4 v3, 0x0

    .line 1654
    :try_start_44
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v0, v1}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4a} :catch_ce

    .line 1656
    :try_start_4a
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v1

    .line 1657
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1658
    const-string/jumbo v4, "uri-grants"

    invoke-interface {v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1659
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_5d
    if-ge v5, v4, :cond_bf

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/uri/UriPermission$Snapshot;

    .line 1660
    const-string/jumbo v8, "uri-grant"

    invoke-interface {v1, v3, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1661
    const-string/jumbo v8, "sourceUserId"

    iget-object v9, v6, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget v9, v9, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    invoke-interface {v1, v3, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1662
    const-string/jumbo v8, "targetUserId"

    iget v9, v6, Lcom/android/server/uri/UriPermission$Snapshot;->targetUserId:I

    invoke-interface {v1, v3, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1663
    const-string/jumbo v8, "sourcePkg"

    iget-object v9, v6, Lcom/android/server/uri/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    invoke-interface {v1, v3, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1664
    const-string/jumbo v8, "targetPkg"

    iget-object v9, v6, Lcom/android/server/uri/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    invoke-interface {v1, v3, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1665
    const-string/jumbo v8, "uri"

    iget-object v9, v6, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v3, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1666
    const-string/jumbo v8, "prefix"

    iget-object v9, v6, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v9, v9, Lcom/android/server/uri/GrantUri;->prefix:Z

    invoke-static {v1, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1667
    const-string/jumbo v8, "modeFlags"

    iget v9, v6, Lcom/android/server/uri/UriPermission$Snapshot;->persistedModeFlags:I

    invoke-interface {v1, v3, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1668
    const-string v8, "createdTime"

    iget-wide v9, v6, Lcom/android/server/uri/UriPermission$Snapshot;->persistedCreateTime:J

    invoke-interface {v1, v3, v8, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1669
    const-string/jumbo v6, "uri-grant"

    invoke-interface {v1, v3, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5d

    :catch_bd
    move-object v3, v0

    goto :goto_ce

    .line 1671
    :cond_bf
    const-string/jumbo v2, "uri-grants"

    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1672
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 1674
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_cd} :catch_bd

    goto :goto_d5

    :catch_ce
    :goto_ce
    if-eqz v3, :cond_d5

    .line 1677
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1681
    :cond_d5
    :goto_d5
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

    invoke-virtual {p0, v7}, Lcom/android/server/uri/UriMetricsHelper;->reportPersistentUriFlushed(I)V

    return-void

    .line 1650
    :goto_db
    :try_start_db
    monitor-exit v3
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_39

    throw p0
.end method
