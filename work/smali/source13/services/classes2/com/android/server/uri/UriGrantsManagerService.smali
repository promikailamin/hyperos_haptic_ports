.class public Lcom/android/server/uri/UriGrantsManagerService;
.super Landroid/app/IUriGrantsManager$Stub;
.source "UriGrantsManagerService.java"

# interfaces
.implements Lcom/android/server/uri/UriMetricsHelper$PersistentUriGrantsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/uri/UriGrantsManagerService$LocalService;,
        Lcom/android/server/uri/UriGrantsManagerService$H;,
        Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ATTR_CREATED_TIME:Ljava/lang/String; = "createdTime"

.field private static final ATTR_MODE_FLAGS:Ljava/lang/String; = "modeFlags"

.field private static final ATTR_PREFIX:Ljava/lang/String; = "prefix"

.field private static final ATTR_SOURCE_PKG:Ljava/lang/String; = "sourcePkg"

.field private static final ATTR_SOURCE_USER_ID:Ljava/lang/String; = "sourceUserId"

.field private static final ATTR_TARGET_PKG:Ljava/lang/String; = "targetPkg"

.field private static final ATTR_TARGET_USER_ID:Ljava/lang/String; = "targetUserId"

.field private static final ATTR_URI:Ljava/lang/String; = "uri"

.field private static final ATTR_USER_HANDLE:Ljava/lang/String; = "userHandle"

.field private static final DEBUG:Z = false

.field private static final ENABLE_DYNAMIC_PERMISSIONS:Z = true

.field private static final MAX_PERSISTED_URI_GRANTS:I = 0x200

.field private static final TAG:Ljava/lang/String; = "UriGrantsManagerService"

.field private static final TAG_URI_GRANT:Ljava/lang/String; = "uri-grant"

.field private static final TAG_URI_GRANTS:Ljava/lang/String; = "uri-grants"


# instance fields
.field mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mGrantFile:Landroid/util/AtomicFile;

.field private final mGrantedUriPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/uri/GrantUri;",
            "Lcom/android/server/uri/UriPermission;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mH:Lcom/android/server/uri/UriGrantsManagerService$H;

.field private final mLock:Ljava/lang/Object;

.field mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

.field mPmInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckAuthorityGrantsLocked(Lcom/android/server/uri/UriGrantsManagerService;ILandroid/content/pm/ProviderInfo;IZ)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->checkAuthorityGrantsLocked(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckGrantUriPermissionFromIntentUnlocked(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckGrantUriPermissionUnlocked(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/net/Uri;II)I
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckUriPermissionLocked(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/GrantUri;II)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$menforceNotIsolatedCaller(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgrantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadGrantedUriPermissionsLocked(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->readGrantedUriPermissionsLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveUriPermissionIfNeededLocked(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriPermission;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveUriPermissionsForPackageLocked(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;IZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrevokeUriPermission(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstart(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->start()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->writeGrantedUriPermissions()V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 154
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;)V

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/uri/UriGrantsManagerService-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .registers 5
    .param p1, "systemDir"    # Ljava/io/File;

    .line 157
    invoke-direct {p0}, Landroid/app/IUriGrantsManager$Stub;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 149
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 158
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    .line 159
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "urigrants.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "uri-grants"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    .line 160
    return-void
.end method

.method private checkAuthorityGrantsLocked(ILandroid/content/pm/ProviderInfo;IZ)Z
    .registers 10
    .param p1, "callingUid"    # I
    .param p2, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p3, "userId"    # I
    .param p4, "checkUser"    # Z

    .line 533
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 534
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v0, :cond_2a

    .line 535
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_2a

    .line 536
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/GrantUri;

    .line 537
    .local v3, "grantUri":Lcom/android/server/uri/GrantUri;
    iget v4, v3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v4, p3, :cond_1e

    if-nez p4, :cond_27

    .line 538
    :cond_1e
    iget-object v4, v3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-direct {p0, v4, p2}, Lcom/android/server/uri/UriGrantsManagerService;->matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 539
    return v2

    .line 535
    .end local v3    # "grantUri":Lcom/android/server/uri/GrantUri;
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 544
    .end local v1    # "i":I
    :cond_2a
    const/4 v1, 0x0

    return v1
.end method

.method private checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;
    .registers 26
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "mode"    # I
    .param p5, "needed"    # Lcom/android/server/uri/NeededUriGrants;
    .param p6, "targetUserId"    # I

    .line 606
    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v6, p5

    if-eqz v7, :cond_d2

    .line 610
    const/4 v0, 0x0

    if-nez p3, :cond_c

    .line 611
    return-object v0

    .line 613
    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 614
    .local v9, "data":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v10

    .line 615
    .local v10, "clip":Landroid/content/ClipData;
    if-nez v9, :cond_19

    if-nez v10, :cond_19

    .line 616
    return-object v0

    .line 619
    :cond_19
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getContentUserHint()I

    move-result v1

    .line 620
    .local v1, "contentUserHint":I
    const/4 v2, -0x2

    if-ne v1, v2, :cond_26

    .line 621
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    move v11, v1

    goto :goto_27

    .line 620
    :cond_26
    move v11, v1

    .line 624
    .end local v1    # "contentUserHint":I
    .local v11, "contentUserHint":I
    :goto_27
    if-eqz v6, :cond_31

    .line 625
    iget v0, v6, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    move-object/from16 v12, p0

    move/from16 v13, p6

    move v14, v0

    .local v0, "targetUid":I
    goto :goto_42

    .line 627
    .end local v0    # "targetUid":I
    :cond_31
    move-object/from16 v12, p0

    iget-object v1, v12, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v2, 0x10000000

    move/from16 v13, p6

    invoke-virtual {v1, v7, v2, v3, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 629
    .local v1, "targetUid":I
    if-gez v1, :cond_41

    .line 632
    return-object v0

    .line 629
    :cond_41
    move v14, v1

    .line 635
    .end local v1    # "targetUid":I
    .local v14, "targetUid":I
    :goto_42
    if-eqz v9, :cond_67

    .line 636
    invoke-static {v11, v9, v8}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v15

    .line 637
    .local v15, "grantUri":Lcom/android/server/uri/GrantUri;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v15

    move/from16 v4, p4

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v14

    .line 639
    if-lez v14, :cond_67

    .line 640
    if-nez v6, :cond_60

    .line 641
    new-instance v0, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v0, v7, v14, v8}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    .end local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v0, "needed":Lcom/android/server/uri/NeededUriGrants;
    goto :goto_61

    .line 640
    .end local v0    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .restart local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_60
    move-object v0, v6

    .line 643
    .end local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .restart local v0    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :goto_61
    iget-object v1, v0, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v1, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object v6, v0

    .line 646
    .end local v0    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v15    # "grantUri":Lcom/android/server/uri/GrantUri;
    .local v6, "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_67
    if-eqz v10, :cond_d1

    .line 647
    const/4 v0, 0x0

    move-object v15, v6

    move/from16 v16, v14

    move v14, v0

    .end local v6    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v14, "i":I
    .local v15, "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v16, "targetUid":I
    :goto_6e
    invoke-virtual {v10}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-ge v14, v0, :cond_ce

    .line 648
    invoke-virtual {v10, v14}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 649
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_a6

    .line 650
    invoke-static {v11, v6, v8}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v5

    .line 651
    .local v5, "grantUri":Lcom/android/server/uri/GrantUri;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move/from16 v4, p4

    move-object/from16 p5, v6

    move-object v6, v5

    .end local v5    # "grantUri":Lcom/android/server/uri/GrantUri;
    .local v6, "grantUri":Lcom/android/server/uri/GrantUri;
    .local p5, "uri":Landroid/net/Uri;
    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v0

    .line 653
    .end local v16    # "targetUid":I
    .local v0, "targetUid":I
    if-lez v0, :cond_a3

    .line 654
    if-nez v15, :cond_9e

    .line 655
    new-instance v1, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v1, v7, v0, v8}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    move-object v15, v1

    .line 657
    :cond_9e
    iget-object v1, v15, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 659
    .end local v6    # "grantUri":Lcom/android/server/uri/GrantUri;
    :cond_a3
    move/from16 v16, v0

    goto :goto_cb

    .line 660
    .end local v0    # "targetUid":I
    .end local p5    # "uri":Landroid/net/Uri;
    .local v6, "uri":Landroid/net/Uri;
    .restart local v16    # "targetUid":I
    :cond_a6
    move-object/from16 p5, v6

    .end local v6    # "uri":Landroid/net/Uri;
    .restart local p5    # "uri":Landroid/net/Uri;
    invoke-virtual {v10, v14}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 661
    .local v17, "clipIntent":Landroid/content/Intent;
    if-eqz v17, :cond_c9

    .line 662
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move/from16 v4, p4

    move-object v5, v15

    move-object/from16 v18, p5

    .end local p5    # "uri":Landroid/net/Uri;
    .local v18, "uri":Landroid/net/Uri;
    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    .line 664
    .local v0, "newNeeded":Lcom/android/server/uri/NeededUriGrants;
    if-eqz v0, :cond_cb

    .line 665
    move-object v15, v0

    goto :goto_cb

    .line 661
    .end local v0    # "newNeeded":Lcom/android/server/uri/NeededUriGrants;
    .end local v18    # "uri":Landroid/net/Uri;
    .restart local p5    # "uri":Landroid/net/Uri;
    :cond_c9
    move-object/from16 v18, p5

    .line 647
    .end local v17    # "clipIntent":Landroid/content/Intent;
    .end local p5    # "uri":Landroid/net/Uri;
    :cond_cb
    :goto_cb
    add-int/lit8 v14, v14, 0x1

    goto :goto_6e

    :cond_ce
    move-object v6, v15

    move/from16 v14, v16

    .line 672
    .end local v15    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v16    # "targetUid":I
    .local v6, "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v14, "targetUid":I
    :cond_d1
    return-object v6

    .line 607
    .end local v6    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v9    # "data":Landroid/net/Uri;
    .end local v10    # "clip":Landroid/content/ClipData;
    .end local v11    # "contentUserHint":I
    .end local v14    # "targetUid":I
    .local p5, "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_d2
    move-object/from16 v12, p0

    move/from16 v13, p6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "targetPkg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "modeFlags"    # I
    .param p5, "userId"    # I

    .line 1288
    new-instance v3, Lcom/android/server/uri/GrantUri;

    invoke-direct {v3, p5, p3, p4}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v0

    return v0
.end method

.method private checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I
    .registers 32
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "lastTargetUid"    # I

    .line 1096
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-static/range {p4 .. p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_12

    .line 1097
    return v1

    .line 1100
    :cond_12
    nop

    .line 1105
    const-string v0, "content"

    iget-object v2, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1107
    return v1

    .line 1112
    :cond_22
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    .line 1113
    .local v12, "callingAppId":I
    const/16 v0, 0x3e8

    if-eq v12, v0, :cond_2c

    if-nez v12, :cond_82

    .line 1115
    :cond_2c
    const-string v0, "com.android.settings.files"

    iget-object v2, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string v0, "com.android.settings.module_licenses"

    iget-object v2, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1116
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 1117
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v0

    iget-object v2, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1118
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 1117
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerServiceStub;->ignoreSpecifiedAuthority(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 1119
    invoke-static {}, Lcom/xiaomi/mirror/MirrorServiceStub;->getInstance()Lcom/xiaomi/mirror/MirrorServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/mirror/MirrorServiceStub;->getAllowGrant()Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_82

    .line 1127
    :cond_63
    const-string v0, "UriGrantsManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For security reasons, the system cannot issue a Uri permission grant to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; use startActivityAsCaller() instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    return v1

    .line 1133
    :cond_82
    :goto_82
    iget-object v0, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    .line 1134
    .local v13, "authority":Ljava/lang/String;
    iget v0, v10, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    invoke-direct {v7, v13, v0, v2, v8}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v14

    .line 1136
    .local v14, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v14, :cond_b1

    .line 1137
    const-string v0, "UriGrantsManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No content provider found for permission check: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1138
    invoke-virtual {v3}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1137
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    return v1

    .line 1142
    :cond_b1
    move/from16 v0, p5

    .line 1143
    .local v0, "targetUid":I
    if-gez v0, :cond_c9

    if-eqz v9, :cond_c9

    .line 1144
    iget-object v2, v7, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v3, 0x10000000

    .line 1145
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1144
    invoke-virtual {v2, v9, v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 1146
    if-gez v0, :cond_c7

    .line 1148
    return v1

    .line 1146
    :cond_c7
    move v15, v0

    goto :goto_ca

    .line 1152
    :cond_c9
    move v15, v0

    .end local v0    # "targetUid":I
    .local v15, "targetUid":I
    :goto_ca
    const/4 v0, 0x0

    .line 1153
    .local v0, "targetHoldsPermission":Z
    if-ltz v15, :cond_d5

    .line 1155
    invoke-direct {v7, v14, v10, v15, v11}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 1159
    const/4 v0, 0x1

    goto :goto_12e

    .line 1163
    :cond_d5
    iget-boolean v2, v14, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 1164
    .local v2, "allowed":Z
    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_e0

    .line 1165
    iget-object v3, v14, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v3, :cond_e0

    .line 1166
    const/4 v2, 0x0

    .line 1169
    :cond_e0
    and-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_e9

    .line 1170
    iget-object v3, v14, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v3, :cond_e9

    .line 1171
    const/4 v2, 0x0

    .line 1174
    :cond_e9
    iget-object v3, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v3, :cond_12b

    .line 1175
    iget-object v3, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v3, v3

    .line 1176
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f1
    if-ge v4, v3, :cond_12b

    .line 1177
    iget-object v5, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v5, v5, v4

    if-eqz v5, :cond_128

    iget-object v5, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v5, v5, v4

    iget-object v6, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1178
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_128

    .line 1179
    and-int/lit8 v5, v11, 0x1

    if-eqz v5, :cond_118

    .line 1180
    iget-object v5, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_118

    .line 1181
    const/4 v2, 0x0

    .line 1184
    :cond_118
    and-int/lit8 v5, v11, 0x2

    if-eqz v5, :cond_12b

    .line 1185
    iget-object v5, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12b

    .line 1186
    const/4 v2, 0x0

    goto :goto_12b

    .line 1176
    :cond_128
    add-int/lit8 v4, v4, 0x1

    goto :goto_f1

    .line 1193
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_12b
    :goto_12b
    if-eqz v2, :cond_12e

    .line 1194
    const/4 v0, 0x1

    .line 1198
    .end local v2    # "allowed":Z
    :cond_12e
    :goto_12e
    iget-boolean v2, v14, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v2, :cond_136

    .line 1202
    const/4 v0, 0x0

    move/from16 v16, v0

    goto :goto_138

    .line 1198
    :cond_136
    move/from16 v16, v0

    .line 1205
    .end local v0    # "targetHoldsPermission":Z
    .local v16, "targetHoldsPermission":Z
    :goto_138
    and-int/lit16 v0, v11, 0xc0

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-nez v0, :cond_143

    move/from16 v0, v18

    goto :goto_145

    :cond_143
    move/from16 v0, v17

    :goto_145
    move/from16 v19, v0

    .line 1207
    .local v19, "basicGrant":Z
    if-eqz v19, :cond_165

    if-eqz v16, :cond_165

    .line 1212
    iget-object v0, v7, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1213
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    const/16 v22, 0x0

    .line 1214
    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v23

    iget-object v2, v14, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v25, 0x0

    .line 1212
    move-object/from16 v20, v0

    move/from16 v24, v2

    invoke-virtual/range {v20 .. v25}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 1215
    return v1

    .line 1224
    :cond_165
    if-ltz v15, :cond_182

    .line 1225
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, v10, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v0, v1, :cond_182

    const/4 v6, 0x0

    .line 1226
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p3

    move/from16 v4, p1

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v0

    if-eqz v0, :cond_182

    move/from16 v17, v18

    goto :goto_183

    :cond_182
    nop

    :goto_183
    move/from16 v1, v17

    .line 1230
    .local v1, "specialCrossUserGrant":Z
    iget-boolean v0, v14, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 1231
    .local v0, "grantAllowed":Z
    iget-object v2, v14, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b4

    .line 1232
    iget-object v2, v14, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v2, v2

    .line 1233
    .local v2, "N":I
    const/4 v0, 0x0

    .line 1234
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_194
    if-ge v3, v2, :cond_1b2

    .line 1235
    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1af

    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v4, v4, v3

    iget-object v5, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1236
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1af

    .line 1237
    const/4 v0, 0x1

    .line 1238
    move v2, v0

    goto :goto_1b5

    .line 1234
    :cond_1af
    add-int/lit8 v3, v3, 0x1

    goto :goto_194

    :cond_1b2
    move v2, v0

    goto :goto_1b5

    .line 1231
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_1b4
    move v2, v0

    .line 1242
    .end local v0    # "grantAllowed":Z
    .local v2, "grantAllowed":Z
    :goto_1b5
    if-nez v2, :cond_22a

    .line 1243
    if-eqz v1, :cond_1f3

    .line 1246
    if-eqz v19, :cond_1bc

    goto :goto_22a

    .line 1247
    :cond_1bc
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not allow granting of advanced Uri permissions (uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1253
    :cond_1f3
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not allow granting of Uri permissions (uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1261
    :cond_22a
    :goto_22a
    invoke-direct {v7, v14, v10, v8, v11}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    if-nez v0, :cond_293

    .line 1264
    iget-object v3, v7, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1265
    :try_start_233
    invoke-direct {v7, v10, v8, v11}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    .line 1266
    .local v0, "res":Z
    monitor-exit v3
    :try_end_238
    .catchall {:try_start_233 .. :try_end_238} :catchall_290

    .line 1267
    if-nez v0, :cond_293

    .line 1268
    const-string v3, "android.permission.MANAGE_DOCUMENTS"

    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26d

    .line 1269
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not have permission to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; you could obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1274
    :cond_26d
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not have permission to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1266
    .end local v0    # "res":Z
    :catchall_290
    move-exception v0

    :try_start_291
    monitor-exit v3
    :try_end_292
    .catchall {:try_start_291 .. :try_end_292} :catchall_290

    throw v0

    .line 1280
    :cond_293
    return v15
.end method

.method private checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z
    .registers 23
    .param p1, "pi"    # Landroid/content/pm/ProviderInfo;
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "considerUidPermissions"    # Z

    .line 942
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget-object v5, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d2

    .line 946
    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x1

    if-ne v5, v3, :cond_1a

    .line 947
    return v6

    .line 948
    :cond_1a
    iget-boolean v5, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    const/4 v7, 0x0

    if-nez v5, :cond_20

    .line 949
    return v7

    .line 952
    :cond_20
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_26

    move v5, v6

    goto :goto_27

    :cond_26
    move v5, v7

    .line 953
    .local v5, "readMet":Z
    :goto_27
    and-int/lit8 v8, v4, 0x2

    if-nez v8, :cond_2d

    move v8, v6

    goto :goto_2e

    :cond_2d
    move v8, v7

    .line 956
    .local v8, "writeMet":Z
    :goto_2e
    if-nez v5, :cond_3f

    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v9, :cond_3f

    if-eqz p5, :cond_3f

    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 957
    invoke-direct {v0, v9, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3f

    .line 958
    const/4 v5, 0x1

    .line 960
    :cond_3f
    if-nez v8, :cond_50

    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v9, :cond_50

    if-eqz p5, :cond_50

    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 961
    invoke-direct {v0, v9, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_50

    .line 962
    const/4 v8, 0x1

    .line 967
    :cond_50
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-nez v9, :cond_56

    move v9, v6

    goto :goto_57

    :cond_56
    move v9, v7

    .line 968
    .local v9, "allowDefaultRead":Z
    :goto_57
    iget-object v10, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-nez v10, :cond_5d

    move v10, v6

    goto :goto_5e

    :cond_5d
    move v10, v7

    .line 971
    .local v10, "allowDefaultWrite":Z
    :goto_5e
    iget-object v11, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 972
    .local v11, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v11, :cond_a0

    .line 973
    iget-object v12, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 974
    .local v12, "path":Ljava/lang/String;
    array-length v13, v11

    .line 975
    .local v13, "i":I
    :goto_69
    if-lez v13, :cond_a0

    if-eqz v5, :cond_6f

    if-nez v8, :cond_a0

    .line 976
    :cond_6f
    add-int/lit8 v13, v13, -0x1

    .line 977
    aget-object v14, v11, v13

    .line 978
    .local v14, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v14, v12}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9f

    .line 979
    if-nez v5, :cond_8c

    .line 980
    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v15

    .line 985
    .local v15, "pprperm":Ljava/lang/String;
    if-eqz v15, :cond_8c

    .line 986
    if-eqz p5, :cond_8b

    invoke-direct {v0, v15, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v16

    if-nez v16, :cond_8b

    .line 988
    const/4 v5, 0x1

    goto :goto_8c

    .line 990
    :cond_8b
    const/4 v9, 0x0

    .line 994
    .end local v15    # "pprperm":Ljava/lang/String;
    :cond_8c
    :goto_8c
    if-nez v8, :cond_9f

    .line 995
    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v15

    .line 1000
    .local v15, "ppwperm":Ljava/lang/String;
    if-eqz v15, :cond_9f

    .line 1001
    if-eqz p5, :cond_9e

    invoke-direct {v0, v15, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v16

    if-nez v16, :cond_9e

    .line 1003
    const/4 v8, 0x1

    goto :goto_9f

    .line 1005
    :cond_9e
    const/4 v10, 0x0

    .line 1010
    .end local v14    # "pp":Landroid/content/pm/PathPermission;
    .end local v15    # "ppwperm":Ljava/lang/String;
    :cond_9f
    :goto_9f
    goto :goto_69

    .line 1015
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "i":I
    :cond_a0
    if-eqz v9, :cond_a3

    const/4 v5, 0x1

    .line 1016
    :cond_a3
    if-eqz v10, :cond_a6

    const/4 v8, 0x1

    .line 1021
    :cond_a6
    iget-boolean v12, v1, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v12, :cond_c8

    .line 1022
    iget-object v12, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 1023
    .local v12, "providerUserId":I
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 1024
    .local v13, "clientUserId":I
    if-ne v12, v13, :cond_c6

    .line 1025
    iget-object v14, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v15, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v14, v15, v12, v3, v4}, Landroid/app/ActivityManagerInternal;->checkContentProviderUriPermission(Landroid/net/Uri;III)I

    move-result v14

    if-nez v14, :cond_c4

    move v14, v6

    goto :goto_c5

    :cond_c4
    move v14, v7

    .local v14, "forceMet":Z
    :goto_c5
    goto :goto_c7

    .line 1030
    .end local v14    # "forceMet":Z
    :cond_c6
    const/4 v14, 0x0

    .line 1032
    .end local v12    # "providerUserId":I
    .end local v13    # "clientUserId":I
    .restart local v14    # "forceMet":Z
    :goto_c7
    goto :goto_c9

    .line 1033
    .end local v14    # "forceMet":Z
    :cond_c8
    const/4 v14, 0x1

    .line 1036
    .restart local v14    # "forceMet":Z
    :goto_c9
    if-eqz v5, :cond_d0

    if-eqz v8, :cond_d0

    if-eqz v14, :cond_d0

    goto :goto_d1

    :cond_d0
    move v6, v7

    :goto_d1
    return v6

    .line 943
    .end local v5    # "readMet":Z
    .end local v8    # "writeMet":Z
    .end local v9    # "allowDefaultRead":Z
    .end local v10    # "allowDefaultWrite":Z
    .end local v11    # "pps":[Landroid/content/pm/PathPermission;
    .end local v14    # "forceMet":Z
    :cond_d2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Must never hold local mLock"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z
    .registers 12
    .param p1, "pi"    # Landroid/content/pm/ProviderInfo;
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 929
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, p2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v0, v1, :cond_14

    .line 930
    const/4 v0, -0x1

    const/4 v1, 0x1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v2, p3, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_14

    .line 932
    const/4 v0, 0x0

    return v0

    .line 935
    :cond_14
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v0

    return v0
.end method

.method private checkUidPermission(Ljava/lang/String;I)I
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 212
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 213
    :catch_9
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z
    .registers 16
    .param p1, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I

    .line 1294
    and-int/lit8 v0, p3, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 1295
    .local v0, "persistable":Z
    :goto_9
    if-eqz v0, :cond_d

    const/4 v3, 0x3

    goto :goto_e

    .line 1296
    :cond_d
    move v3, v2

    :goto_e
    nop

    .line 1299
    .local v3, "minStrength":I
    if-nez p2, :cond_12

    .line 1300
    return v2

    .line 1306
    :cond_12
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 1307
    .local v4, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v5

    iget v6, p1, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 1308
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1307
    invoke-virtual {v5, v6, v7}, Lcom/miui/xspace/XSpaceManagerStub;->canCrossUser(II)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 1309
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v6, p1, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    invoke-static {v6, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    goto :goto_3a

    :cond_39
    const/4 v5, 0x0

    .line 1310
    .local v5, "userPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :goto_3a
    if-eqz v5, :cond_42

    if-eqz v4, :cond_42

    .line 1311
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    goto :goto_45

    .line 1312
    :cond_42
    if-eqz v5, :cond_45

    .line 1313
    move-object v4, v5

    .line 1316
    :cond_45
    :goto_45
    if-nez v4, :cond_48

    return v1

    .line 1319
    :cond_48
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    .line 1320
    .local v6, "exactPerm":Lcom/android/server/uri/UriPermission;
    if-eqz v6, :cond_57

    invoke-virtual {v6, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v7

    if-lt v7, v3, :cond_57

    .line 1321
    return v2

    .line 1325
    :cond_57
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 1326
    .local v7, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5c
    if-ge v8, v7, :cond_80

    .line 1327
    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/uri/UriPermission;

    .line 1328
    .local v9, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v10, v9, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v10, v10, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v10, :cond_7d

    iget-object v10, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v11, v9, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v11, v11, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_7d

    .line 1329
    invoke-virtual {v9, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v10

    if-lt v10, v3, :cond_7d

    .line 1330
    return v2

    .line 1326
    .end local v9    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_7d
    add-int/lit8 v8, v8, 0x1

    goto :goto_5c

    .line 1334
    .end local v8    # "i":I
    :cond_80
    return v1
.end method

.method static createForTest(Ljava/io/File;)Lcom/android/server/uri/UriGrantsManagerService;
    .registers 3
    .param p0, "systemDir"    # Ljava/io/File;

    .line 164
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;)V

    .line 165
    .local v0, "service":Lcom/android/server/uri/UriGrantsManagerService;
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 166
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 167
    return-object v0
.end method

.method private enforceNotIsolatedCaller(Ljava/lang/String;)V
    .registers 5
    .param p1, "caller"    # Ljava/lang/String;

    .line 1074
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1077
    return-void

    .line 1075
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Isolated process not allowed to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .registers 8
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "grantUri"    # Lcom/android/server/uri/GrantUri;

    .line 751
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 752
    .local v0, "targetUris":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v0, :cond_13

    .line 753
    invoke-static {}, Lcom/google/android/collect/Maps;->newArrayMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 754
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 757
    :cond_13
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    .line 758
    .local v1, "perm":Lcom/android/server/uri/UriPermission;
    if-nez v1, :cond_24

    .line 759
    new-instance v2, Lcom/android/server/uri/UriPermission;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/uri/UriPermission;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V

    move-object v1, v2

    .line 760
    invoke-virtual {v0, p4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    :cond_24
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerServiceStub;->onGrantUriPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V

    .line 765
    return-object v1
.end method

.method private findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .registers 5
    .param p1, "targetUid"    # I
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;

    .line 1059
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1060
    .local v0, "targetUris":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v0, :cond_11

    .line 1061
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    return-object v1

    .line 1063
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method private getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;
    .registers 11
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "pmFlags"    # I
    .param p4, "callingUid"    # I

    .line 1081
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    or-int/lit16 v1, p3, 0x800

    int-to-long v2, v1

    move-object v1, p1

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method private grantUriPermissionFromOwnerUnlocked(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .registers 25
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "modeFlags"    # I
    .param p6, "sourceUserId"    # I
    .param p7, "targetUserId"    # I

    .line 246
    move-object/from16 v0, p4

    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 247
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 246
    const/4 v13, 0x0

    const/4 v14, 0x2

    const-string v15, "grantUriPermissionFromOwner"

    const/16 v16, 0x0

    move/from16 v12, p7

    invoke-virtual/range {v9 .. v16}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 250
    .end local p7    # "targetUserId":I
    .local v9, "targetUserId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/uri/UriPermissionOwner;->fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v10

    .line 251
    .local v10, "owner":Lcom/android/server/uri/UriPermissionOwner;
    if-eqz v10, :cond_71

    .line 254
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move/from16 v11, p2

    if-eq v11, v1, :cond_3c

    .line 255
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_33

    goto :goto_3c

    .line 258
    :cond_33
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "nice try"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_3c
    :goto_3c
    if-eqz p3, :cond_64

    .line 264
    if-eqz v0, :cond_57

    .line 268
    new-instance v4, Lcom/android/server/uri/GrantUri;

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-direct {v4, v13, v0, v12}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move-object v6, v10

    move v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V

    .line 270
    return-void

    .line 265
    :cond_57
    move/from16 v12, p5

    move/from16 v13, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null uri"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_64
    move/from16 v12, p5

    move/from16 v13, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null target"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_71
    move/from16 v11, p2

    move/from16 v12, p5

    move/from16 v13, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown owner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V
    .registers 23
    .param p1, "targetUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "owner"    # Lcom/android/server/uri/UriPermissionOwner;

    .line 770
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static/range {p4 .. p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 771
    return-void

    .line 781
    :cond_d
    iget-object v0, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 782
    .local v4, "authority":Ljava/lang/String;
    iget v0, v2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v5, 0x10000000

    const/16 v6, 0x3e8

    invoke-direct {v1, v4, v0, v5, v6}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 784
    .local v5, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v5, :cond_3c

    .line 785
    const-string v0, "UriGrantsManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No content provider found for grant: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return-void

    .line 790
    :cond_3c
    iget-object v6, v1, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 791
    :try_start_3f
    iget-object v0, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_6e

    move/from16 v7, p1

    move-object/from16 v8, p2

    :try_start_45
    invoke-direct {v1, v0, v8, v7, v2}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v0

    .line 792
    .local v0, "perm":Lcom/android/server/uri/UriPermission;
    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_6c

    .line 793
    move-object/from16 v9, p5

    invoke-virtual {v0, v3, v9}, Lcom/android/server/uri/UriPermission;->grantModes(ILcom/android/server/uri/UriPermissionOwner;)Z

    .line 794
    iget-object v10, v1, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    const/4 v12, 0x0

    .line 795
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v15, 0x0

    and-int/lit8 v6, v3, 0x40

    if-eqz v6, :cond_65

    const/4 v6, 0x1

    goto :goto_66

    :cond_65
    const/4 v6, 0x0

    :goto_66
    move/from16 v16, v6

    .line 794
    invoke-virtual/range {v10 .. v16}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    .line 797
    return-void

    .line 792
    .end local v0    # "perm":Lcom/android/server/uri/UriPermission;
    :catchall_6c
    move-exception v0

    goto :goto_73

    :catchall_6e
    move-exception v0

    move/from16 v7, p1

    move-object/from16 v8, p2

    :goto_73
    move-object/from16 v9, p5

    :goto_75
    :try_start_75
    monitor-exit v6
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_77

    throw v0

    :catchall_77
    move-exception v0

    goto :goto_75
.end method

.method private grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 11
    .param p1, "needed"    # Lcom/android/server/uri/NeededUriGrants;
    .param p2, "owner"    # Lcom/android/server/uri/UriPermissionOwner;

    .line 802
    if-nez p1, :cond_3

    .line 803
    return-void

    .line 805
    :cond_3
    iget-object v0, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 806
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_23

    .line 807
    iget v3, p1, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    iget-object v4, p1, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    .line 808
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/uri/GrantUri;

    iget v6, p1, Lcom/android/server/uri/NeededUriGrants;->flags:I

    .line 807
    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    .line 806
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 810
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method private grantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V
    .registers 16
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "owner"    # Lcom/android/server/uri/UriPermissionOwner;
    .param p6, "targetUserId"    # I

    .line 814
    if-eqz p2, :cond_22

    .line 817
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v1, 0x10000000

    invoke-virtual {v0, p2, v1, v2, p6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 820
    .local v0, "targetUid":I
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v0

    .line 822
    if-gez v0, :cond_18

    .line 823
    return-void

    .line 826
    :cond_18
    move-object v1, p0

    move v2, v0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    .line 827
    return-void

    .line 815
    .end local v0    # "targetUid":I
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "targetPkg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isCallerIsSystemOrPrivileged()Z
    .registers 5

    .line 1367
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1368
    .local v0, "uid":I
    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_18

    if-nez v0, :cond_c

    goto :goto_18

    .line 1371
    :cond_c
    const/4 v2, -0x1

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v3, v0, v2, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v2

    if-nez v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1

    .line 1369
    :cond_18
    :goto_18
    return v1
.end method

.method private matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cpi"    # Landroid/content/pm/ProviderInfo;

    .line 549
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "uriAuth":Ljava/lang/String;
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 551
    .local v1, "cpiAuth":Ljava/lang/String;
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    .line 552
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 554
    :cond_14
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "cpiAuths":[Ljava/lang/String;
    array-length v3, v2

    .line 556
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v3, :cond_2b

    .line 557
    aget-object v5, v2, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v5, 0x1

    return v5

    .line 556
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 559
    .end local v4    # "i":I
    :cond_2b
    const/4 v4, 0x0

    return v4
.end method

.method private maybePrunePersistedUriGrantsLocked(I)Z
    .registers 9
    .param p1, "uid"    # I

    .line 570
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 571
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 572
    :cond_c
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v3, 0x200

    if-ge v2, v3, :cond_15

    return v1

    .line 574
    :cond_15
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 575
    .local v2, "persisted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/uri/UriPermission;

    .line 576
    .local v5, "perm":Lcom/android/server/uri/UriPermission;
    iget v6, v5, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v6, :cond_34

    .line 577
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    .end local v5    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_34
    goto :goto_21

    .line 581
    :cond_35
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .line 582
    .local v4, "trimCount":I
    if-gtz v4, :cond_3d

    return v1

    .line 584
    :cond_3d
    new-instance v1, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;

    invoke-direct {v1}, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 585
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_46
    if-ge v1, v4, :cond_58

    .line 586
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    .line 590
    .local v3, "perm":Lcom/android/server/uri/UriPermission;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    .line 591
    invoke-direct {p0, v3}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 585
    .end local v3    # "perm":Lcom/android/server/uri/UriPermission;
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 594
    .end local v1    # "i":I
    :cond_58
    const/4 v1, 0x1

    return v1
.end method

.method private readGrantedUriPermissionsLocked()V
    .registers 32

    .line 679
    move-object/from16 v1, p0

    const-string v2, "Failed reading Uri grants"

    const-string v3, "UriGrantsManagerService"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 681
    .local v4, "now":J
    const/4 v6, 0x0

    .line 683
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_b
    iget-object v0, v1, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_11} :catch_1b1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_1a1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_11} :catch_196
    .catchall {:try_start_b .. :try_end_11} :catchall_192

    move-object v6, v0

    .line 684
    :try_start_12
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 687
    .local v0, "in":Landroid/util/TypedXmlPullParser;
    :goto_16
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_16e

    .line 688
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 689
    .local v7, "tag":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v8, v9, :cond_15a

    .line 690
    const-string/jumbo v9, "uri-grant"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14f

    .line 693
    const-string/jumbo v9, "userHandle"

    const/16 v10, -0x2710

    const/4 v11, 0x0

    invoke-interface {v0, v11, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 695
    .local v9, "userHandle":I
    if-eq v9, v10, :cond_3e

    .line 697
    move v10, v9

    .line 698
    .local v10, "sourceUserId":I
    move v12, v9

    move v15, v12

    .local v12, "targetUserId":I
    goto :goto_4d

    .line 700
    .end local v10    # "sourceUserId":I
    .end local v12    # "targetUserId":I
    :cond_3e
    const-string/jumbo v10, "sourceUserId"

    invoke-interface {v0, v11, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 701
    .restart local v10    # "sourceUserId":I
    const-string/jumbo v12, "targetUserId"

    invoke-interface {v0, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    move v15, v12

    .line 703
    .local v15, "targetUserId":I
    :goto_4d
    const-string/jumbo v12, "sourcePkg"

    invoke-interface {v0, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v14, v12

    .line 704
    .local v14, "sourcePkg":Ljava/lang/String;
    const-string/jumbo v12, "targetPkg"

    invoke-interface {v0, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    .line 705
    .local v13, "targetPkg":Ljava/lang/String;
    const-string/jumbo v12, "uri"

    invoke-interface {v0, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 706
    .local v12, "uri":Landroid/net/Uri;
    const-string/jumbo v11, "prefix"

    move-object/from16 v19, v7

    .end local v7    # "tag":Ljava/lang/String;
    .local v19, "tag":Ljava/lang/String;
    const/4 v7, 0x0

    move/from16 v20, v8

    const/4 v8, 0x0

    .end local v8    # "type":I
    .local v20, "type":I
    invoke-interface {v0, v8, v11, v7}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 707
    .local v11, "prefix":Z
    const-string/jumbo v7, "modeFlags"

    invoke-interface {v0, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 708
    .local v7, "modeFlags":I
    const-string v8, "createdTime"

    move/from16 v21, v9

    const/4 v9, 0x0

    .end local v9    # "userHandle":I
    .local v21, "userHandle":I
    invoke-interface {v0, v9, v8, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 713
    .local v8, "createdTime":J
    move-object/from16 v22, v0

    .end local v0    # "in":Landroid/util/TypedXmlPullParser;
    .local v22, "in":Landroid/util/TypedXmlPullParser;
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0
    :try_end_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_8b} :catch_18c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_8b} :catch_186
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_8b} :catch_180
    .catchall {:try_start_12 .. :try_end_8b} :catchall_17a

    move-wide/from16 v23, v4

    .end local v4    # "now":J
    .local v23, "now":J
    const/high16 v4, 0xc0000

    const/16 v5, 0x3e8

    :try_start_91
    invoke-direct {v1, v0, v10, v4, v5}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 715
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_f2

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 716
    iget-object v4, v1, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;
    :try_end_a1
    .catch Ljava/io/FileNotFoundException; {:try_start_91 .. :try_end_a1} :catch_14a
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_a1} :catch_145
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_91 .. :try_end_a1} :catch_140
    .catchall {:try_start_91 .. :try_end_a1} :catchall_13b

    move-object/from16 v25, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v25, "fis":Ljava/io/FileInputStream;
    const-wide/16 v5, 0x2000

    :try_start_a5
    invoke-virtual {v4, v13, v5, v6, v15}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    .line 718
    .local v4, "targetUid":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_e8

    .line 719
    new-instance v5, Lcom/android/server/uri/GrantUri;

    .line 720
    if-eqz v11, :cond_b3

    const/16 v6, 0x80

    goto :goto_b4

    :cond_b3
    const/4 v6, 0x0

    :goto_b4
    invoke-direct {v5, v10, v12, v6}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    .line 721
    .local v5, "grantUri":Lcom/android/server/uri/GrantUri;
    invoke-direct {v1, v14, v13, v4, v5}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v6

    .line 723
    .local v6, "perm":Lcom/android/server/uri/UriPermission;
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/uri/UriPermission;->initPersistedModes(IJ)V

    .line 724
    move-object/from16 v26, v5

    .end local v5    # "grantUri":Lcom/android/server/uri/GrantUri;
    .local v26, "grantUri":Lcom/android/server/uri/GrantUri;
    iget-object v5, v1, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/16 v16, 0x0

    .line 726
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v17

    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v18, 0x0

    const/16 v27, 0x1

    .line 724
    move-object/from16 v28, v12

    .end local v12    # "uri":Landroid/net/Uri;
    .local v28, "uri":Landroid/net/Uri;
    move-object v12, v5

    move-object v5, v13

    .end local v13    # "targetPkg":Ljava/lang/String;
    .local v5, "targetPkg":Ljava/lang/String;
    move v13, v15

    move/from16 v29, v4

    move-object v4, v14

    .end local v14    # "sourcePkg":Ljava/lang/String;
    .local v4, "sourcePkg":Ljava/lang/String;
    .local v29, "targetUid":I
    move-object/from16 v14, v16

    move/from16 v30, v15

    .end local v15    # "targetUserId":I
    .local v30, "targetUserId":I
    move/from16 v15, v17

    move/from16 v16, v1

    move/from16 v17, v18

    move/from16 v18, v27

    invoke-virtual/range {v12 .. v18}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    goto :goto_f0

    .line 718
    .end local v5    # "targetPkg":Ljava/lang/String;
    .end local v6    # "perm":Lcom/android/server/uri/UriPermission;
    .end local v26    # "grantUri":Lcom/android/server/uri/GrantUri;
    .end local v28    # "uri":Landroid/net/Uri;
    .end local v29    # "targetUid":I
    .end local v30    # "targetUserId":I
    .local v4, "targetUid":I
    .restart local v12    # "uri":Landroid/net/Uri;
    .restart local v13    # "targetPkg":Ljava/lang/String;
    .restart local v14    # "sourcePkg":Ljava/lang/String;
    .restart local v15    # "targetUserId":I
    :cond_e8
    move/from16 v29, v4

    move-object/from16 v28, v12

    move-object v5, v13

    move-object v4, v14

    move/from16 v30, v15

    .line 730
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v13    # "targetPkg":Ljava/lang/String;
    .end local v14    # "sourcePkg":Ljava/lang/String;
    .end local v15    # "targetUserId":I
    .local v4, "sourcePkg":Ljava/lang/String;
    .restart local v5    # "targetPkg":Ljava/lang/String;
    .restart local v28    # "uri":Landroid/net/Uri;
    .restart local v30    # "targetUserId":I
    :goto_f0
    goto/16 :goto_164

    .line 715
    .end local v4    # "sourcePkg":Ljava/lang/String;
    .end local v5    # "targetPkg":Ljava/lang/String;
    .end local v25    # "fis":Ljava/io/FileInputStream;
    .end local v28    # "uri":Landroid/net/Uri;
    .end local v30    # "targetUserId":I
    .local v6, "fis":Ljava/io/FileInputStream;
    .restart local v12    # "uri":Landroid/net/Uri;
    .restart local v13    # "targetPkg":Ljava/lang/String;
    .restart local v14    # "sourcePkg":Ljava/lang/String;
    .restart local v15    # "targetUserId":I
    :cond_f2
    move-object/from16 v25, v6

    move-object/from16 v28, v12

    move-object v5, v13

    move-object v4, v14

    move/from16 v30, v15

    .line 731
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v13    # "targetPkg":Ljava/lang/String;
    .end local v14    # "sourcePkg":Ljava/lang/String;
    .end local v15    # "targetUserId":I
    .restart local v4    # "sourcePkg":Ljava/lang/String;
    .restart local v5    # "targetPkg":Ljava/lang/String;
    .restart local v25    # "fis":Ljava/io/FileInputStream;
    .restart local v28    # "uri":Landroid/net/Uri;
    .restart local v30    # "targetUserId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persisted grant for "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v6, v28

    .end local v28    # "uri":Landroid/net/Uri;
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, " had source "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, " but instead found "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catch Ljava/io/FileNotFoundException; {:try_start_a5 .. :try_end_126} :catch_136
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_126} :catch_131
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a5 .. :try_end_126} :catch_12c
    .catchall {:try_start_a5 .. :try_end_126} :catchall_127

    goto :goto_164

    .line 744
    .end local v0    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v4    # "sourcePkg":Ljava/lang/String;
    .end local v5    # "targetPkg":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "modeFlags":I
    .end local v8    # "createdTime":J
    .end local v10    # "sourceUserId":I
    .end local v11    # "prefix":Z
    .end local v19    # "tag":Ljava/lang/String;
    .end local v20    # "type":I
    .end local v21    # "userHandle":I
    .end local v22    # "in":Landroid/util/TypedXmlPullParser;
    .end local v30    # "targetUserId":I
    :catchall_127
    move-exception v0

    move-object/from16 v6, v25

    goto/16 :goto_1ad

    .line 741
    :catch_12c
    move-exception v0

    move-object/from16 v6, v25

    goto/16 :goto_199

    .line 739
    :catch_131
    move-exception v0

    move-object/from16 v6, v25

    goto/16 :goto_1a4

    .line 737
    :catch_136
    move-exception v0

    move-object/from16 v6, v25

    goto/16 :goto_1b4

    .line 744
    .end local v25    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :catchall_13b
    move-exception v0

    move-object/from16 v25, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v25    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1ad

    .line 741
    .end local v25    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_140
    move-exception v0

    move-object/from16 v25, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v25    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_199

    .line 739
    .end local v25    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_145
    move-exception v0

    move-object/from16 v25, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v25    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1a4

    .line 737
    .end local v25    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_14a
    move-exception v0

    move-object/from16 v25, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v25    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1b4

    .line 690
    .end local v23    # "now":J
    .end local v25    # "fis":Ljava/io/FileInputStream;
    .local v0, "in":Landroid/util/TypedXmlPullParser;
    .local v4, "now":J
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "tag":Ljava/lang/String;
    .local v8, "type":I
    :cond_14f
    move-object/from16 v22, v0

    move-wide/from16 v23, v4

    move-object/from16 v25, v6

    move-object/from16 v19, v7

    move/from16 v20, v8

    .end local v0    # "in":Landroid/util/TypedXmlPullParser;
    .end local v4    # "now":J
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .restart local v19    # "tag":Ljava/lang/String;
    .restart local v20    # "type":I
    .restart local v22    # "in":Landroid/util/TypedXmlPullParser;
    .restart local v23    # "now":J
    .restart local v25    # "fis":Ljava/io/FileInputStream;
    goto :goto_164

    .line 689
    .end local v19    # "tag":Ljava/lang/String;
    .end local v20    # "type":I
    .end local v22    # "in":Landroid/util/TypedXmlPullParser;
    .end local v23    # "now":J
    .end local v25    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "in":Landroid/util/TypedXmlPullParser;
    .restart local v4    # "now":J
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_15a
    move-object/from16 v22, v0

    move-wide/from16 v23, v4

    move-object/from16 v25, v6

    move-object/from16 v19, v7

    move/from16 v20, v8

    .line 736
    .end local v0    # "in":Landroid/util/TypedXmlPullParser;
    .end local v4    # "now":J
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .restart local v20    # "type":I
    .restart local v22    # "in":Landroid/util/TypedXmlPullParser;
    .restart local v23    # "now":J
    .restart local v25    # "fis":Ljava/io/FileInputStream;
    :goto_164
    move-object/from16 v1, p0

    move-object/from16 v0, v22

    move-wide/from16 v4, v23

    move-object/from16 v6, v25

    goto/16 :goto_16

    .line 687
    .end local v20    # "type":I
    .end local v22    # "in":Landroid/util/TypedXmlPullParser;
    .end local v23    # "now":J
    .end local v25    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "in":Landroid/util/TypedXmlPullParser;
    .restart local v4    # "now":J
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "type":I
    :cond_16e
    move-object/from16 v22, v0

    move-wide/from16 v23, v4

    move-object/from16 v25, v6

    move/from16 v20, v8

    .line 744
    .end local v0    # "in":Landroid/util/TypedXmlPullParser;
    .end local v4    # "now":J
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "type":I
    .restart local v23    # "now":J
    .restart local v25    # "fis":Ljava/io/FileInputStream;
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 745
    goto :goto_1b8

    .line 744
    .end local v23    # "now":J
    .end local v25    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "now":J
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_17a
    move-exception v0

    move-wide/from16 v23, v4

    move-object/from16 v25, v6

    .end local v4    # "now":J
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "now":J
    .restart local v25    # "fis":Ljava/io/FileInputStream;
    goto :goto_1ad

    .line 741
    .end local v23    # "now":J
    .end local v25    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "now":J
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_180
    move-exception v0

    move-wide/from16 v23, v4

    move-object/from16 v25, v6

    .end local v4    # "now":J
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "now":J
    .restart local v25    # "fis":Ljava/io/FileInputStream;
    goto :goto_199

    .line 739
    .end local v23    # "now":J
    .end local v25    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "now":J
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_186
    move-exception v0

    move-wide/from16 v23, v4

    move-object/from16 v25, v6

    .end local v4    # "now":J
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "now":J
    .restart local v25    # "fis":Ljava/io/FileInputStream;
    goto :goto_1a4

    .line 737
    .end local v23    # "now":J
    .end local v25    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "now":J
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_18c
    move-exception v0

    move-wide/from16 v23, v4

    move-object/from16 v25, v6

    .end local v4    # "now":J
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "now":J
    .restart local v25    # "fis":Ljava/io/FileInputStream;
    goto :goto_1b4

    .line 744
    .end local v23    # "now":J
    .end local v25    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "now":J
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_192
    move-exception v0

    move-wide/from16 v23, v4

    .end local v4    # "now":J
    .restart local v23    # "now":J
    goto :goto_1ad

    .line 741
    .end local v23    # "now":J
    .restart local v4    # "now":J
    :catch_196
    move-exception v0

    move-wide/from16 v23, v4

    .line 742
    .end local v4    # "now":J
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v23    # "now":J
    :goto_199
    :try_start_199
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19c
    .catchall {:try_start_199 .. :try_end_19c} :catchall_1ac

    .line 744
    nop

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 745
    goto :goto_1b8

    .line 739
    .end local v23    # "now":J
    .restart local v4    # "now":J
    :catch_1a1
    move-exception v0

    move-wide/from16 v23, v4

    .line 740
    .end local v4    # "now":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v23    # "now":J
    :goto_1a4
    :try_start_1a4
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a7
    .catchall {:try_start_1a4 .. :try_end_1a7} :catchall_1ac

    .line 744
    nop

    .end local v0    # "e":Ljava/io/IOException;
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 745
    goto :goto_1b8

    .line 744
    :catchall_1ac
    move-exception v0

    :goto_1ad
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 745
    throw v0

    .line 737
    .end local v23    # "now":J
    .restart local v4    # "now":J
    :catch_1b1
    move-exception v0

    move-wide/from16 v23, v4

    .line 744
    .end local v4    # "now":J
    .restart local v23    # "now":J
    :goto_1b4
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 745
    nop

    .line 746
    :goto_1b8
    return-void
.end method

.method private removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V
    .registers 5
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 1041
    iget v0, p1, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-eqz v0, :cond_5

    .line 1042
    return-void

    .line 1044
    :cond_5
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1046
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v0, :cond_12

    .line 1047
    return-void

    .line 1051
    :cond_12
    iget-object v1, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1053
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1055
    :cond_24
    return-void
.end method

.method private removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "persistable"    # Z
    .param p4, "targetOnly"    # Z

    .line 475
    const/4 v0, -0x1

    if-ne p2, v0, :cond_e

    if-eqz p1, :cond_6

    goto :goto_e

    .line 476
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must narrow by either package or user"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_e
    :goto_e
    const/4 v1, 0x0

    .line 481
    .local v1, "persistChanged":Z
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 482
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_8e

    .line 483
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 484
    .local v4, "targetUid":I
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 487
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v6, 0x1

    if-eq p2, v0, :cond_2f

    .line 488
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne p2, v7, :cond_8c

    .line 489
    :cond_2f
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :goto_37
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 490
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 493
    .local v8, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_57

    if-nez p4, :cond_4f

    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_57

    :cond_4f
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 494
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7c

    .line 498
    :cond_57
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    const-string v10, "downloads"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6a

    if-nez p3, :cond_6a

    .line 499
    goto :goto_37

    .line 501
    :cond_6a
    if-eqz p3, :cond_6e

    .line 502
    move v9, v0

    goto :goto_70

    :cond_6e
    const/16 v9, -0x41

    .line 501
    :goto_70
    invoke-virtual {v8, v9, v6}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v9

    or-int/2addr v1, v9

    .line 506
    iget v9, v8, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v9, :cond_7c

    .line 507
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 510
    .end local v8    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_7c
    goto :goto_37

    .line 512
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :cond_7d
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 513
    iget-object v7, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 514
    add-int/lit8 v2, v2, -0x1

    .line 515
    add-int/lit8 v3, v3, -0x1

    .line 482
    .end local v4    # "targetUid":I
    .end local v5    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_8c
    add-int/2addr v3, v6

    goto :goto_16

    .line 520
    .end local v3    # "i":I
    :cond_8e
    if-eqz v1, :cond_93

    .line 521
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 525
    :cond_93
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceStub;->onPackageUriPermissionRemoved(Ljava/lang/String;I)V

    .line 527
    return-void
.end method

.method private revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .registers 15
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I

    .line 833
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 834
    .local v0, "authority":Ljava/lang/String;
    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0xc0000

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 836
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_2d

    .line 837
    const-string v2, "UriGrantsManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No content provider found for permission revoke: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 838
    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 837
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    return-void

    .line 842
    :cond_2d
    invoke-direct {p0, v1, p3, p2, p4}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v2

    .line 844
    .local v2, "callerHoldsPermissions":Z
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 845
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    move v9, v2

    :try_start_3a
    invoke-direct/range {v4 .. v9}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V

    .line 847
    monitor-exit v3

    .line 848
    return-void

    .line 847
    :catchall_3f
    move-exception v4

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_3f

    throw v4
.end method

.method private revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V
    .registers 16
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "callerHoldsPermissions"    # Z

    .line 854
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p5, :cond_5d

    .line 857
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 858
    .local v2, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v2, :cond_5c

    .line 859
    const/4 v3, 0x0

    .line 860
    .local v3, "persistChanged":Z
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_14
    if-ltz v4, :cond_4c

    .line 861
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    .line 862
    .local v1, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_27

    iget-object v5, v1, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 863
    goto :goto_49

    .line 865
    :cond_27
    iget-object v5, v1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v5, v5, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v6, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v5, v6, :cond_49

    iget-object v5, v1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v5, v5, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v6, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 866
    invoke-virtual {v5, v6}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 869
    or-int/lit8 v5, p4, 0x40

    invoke-virtual {v1, v5, v0}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v5

    or-int/2addr v3, v5

    .line 871
    iget v5, v1, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v5, :cond_49

    .line 872
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 860
    .end local v1    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_49
    :goto_49
    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    .line 876
    .end local v4    # "i":I
    :cond_4c
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 877
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 879
    :cond_57
    if-eqz v3, :cond_5c

    .line 880
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 883
    .end local v3    # "persistChanged":Z
    :cond_5c
    return-void

    .line 886
    .end local v2    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_5d
    const/4 v2, 0x0

    .line 889
    .local v2, "persistChanged":Z
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_65
    if-ltz v3, :cond_c5

    .line 890
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 891
    .local v4, "targetUid":I
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 893
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v1

    .local v6, "j":I
    :goto_7a
    if-ltz v6, :cond_b7

    .line 894
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 895
    .local v7, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_8d

    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8d

    .line 896
    goto :goto_b4

    .line 898
    :cond_8d
    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v8, v8, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v9, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v8, v9, :cond_b4

    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v8, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v9, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 899
    invoke-virtual {v8, v9}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_b4

    .line 902
    or-int/lit8 v8, p4, 0x40

    if-nez p1, :cond_a7

    move v9, v1

    goto :goto_a8

    :cond_a7
    move v9, v0

    :goto_a8
    invoke-virtual {v7, v8, v9}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v8

    or-int/2addr v2, v8

    .line 905
    iget v8, v7, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v8, :cond_b4

    .line 906
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 893
    .end local v7    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_b4
    :goto_b4
    add-int/lit8 v6, v6, -0x1

    goto :goto_7a

    .line 911
    .end local v6    # "j":I
    :cond_b7
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 912
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 889
    .end local v4    # "targetUid":I
    .end local v5    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_c2
    add-int/lit8 v3, v3, -0x1

    goto :goto_65

    .line 916
    .end local v3    # "i":I
    :cond_c5
    if-eqz v2, :cond_ca

    .line 917
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 919
    :cond_ca
    return-void
.end method

.method private schedulePersistUriGrants()V
    .registers 5

    .line 1067
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1068
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-virtual {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/uri/UriGrantsManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1071
    :cond_14
    return-void
.end method

.method private start()V
    .registers 4

    .line 176
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance v1, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService$LocalService-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method private writeGrantedUriPermissions()V
    .registers 13

    .line 1403
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1405
    .local v0, "startTime":J
    const/4 v2, 0x0

    .line 1408
    .local v2, "persistentUriPermissionsCount":I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1409
    .local v3, "persist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/uri/UriPermission$Snapshot;>;"
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1410
    :try_start_c
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1411
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_13
    if-ge v6, v5, :cond_3d

    .line 1412
    iget-object v7, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 1414
    .local v7, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 1415
    .local v8, "permissionsForPackageSize":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_22
    if-ge v9, v8, :cond_3a

    .line 1416
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/uri/UriPermission;

    .line 1418
    .local v10, "permission":Lcom/android/server/uri/UriPermission;
    iget v11, v10, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v11, :cond_37

    .line 1419
    add-int/lit8 v2, v2, 0x1

    .line 1420
    invoke-virtual {v10}, Lcom/android/server/uri/UriPermission;->snapshot()Lcom/android/server/uri/UriPermission$Snapshot;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1415
    .end local v10    # "permission":Lcom/android/server/uri/UriPermission;
    :cond_37
    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    .line 1411
    .end local v7    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v8    # "permissionsForPackageSize":I
    .end local v9    # "j":I
    :cond_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 1424
    .end local v5    # "size":I
    .end local v6    # "i":I
    :cond_3d
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_dd

    .line 1426
    const/4 v4, 0x0

    .line 1428
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_3f
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v0, v1}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 1430
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v5

    .line 1431
    .local v5, "out":Landroid/util/TypedXmlSerializer;
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1432
    const-string/jumbo v6, "uri-grants"

    invoke-interface {v5, v7, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1433
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission$Snapshot;

    .line 1434
    .local v8, "perm":Lcom/android/server/uri/UriPermission$Snapshot;
    const-string/jumbo v9, "uri-grant"

    invoke-interface {v5, v7, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1435
    const-string/jumbo v9, "sourceUserId"

    iget-object v10, v8, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget v10, v10, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    invoke-interface {v5, v7, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1436
    const-string/jumbo v9, "targetUserId"

    iget v10, v8, Lcom/android/server/uri/UriPermission$Snapshot;->targetUserId:I

    invoke-interface {v5, v7, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1437
    const-string/jumbo v9, "sourcePkg"

    iget-object v10, v8, Lcom/android/server/uri/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    invoke-interface {v5, v7, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1438
    const-string/jumbo v9, "targetPkg"

    iget-object v10, v8, Lcom/android/server/uri/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    invoke-interface {v5, v7, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1439
    const-string/jumbo v9, "uri"

    iget-object v10, v8, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v10, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v7, v9, v10}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1440
    const-string/jumbo v9, "prefix"

    iget-object v10, v8, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v10, v10, Lcom/android/server/uri/GrantUri;->prefix:Z

    invoke-static {v5, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1441
    const-string/jumbo v9, "modeFlags"

    iget v10, v8, Lcom/android/server/uri/UriPermission$Snapshot;->persistedModeFlags:I

    invoke-interface {v5, v7, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1442
    const-string v9, "createdTime"

    iget-wide v10, v8, Lcom/android/server/uri/UriPermission$Snapshot;->persistedCreateTime:J

    invoke-interface {v5, v7, v9, v10, v11}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1443
    const-string/jumbo v9, "uri-grant"

    invoke-interface {v5, v7, v9}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1444
    nop

    .end local v8    # "perm":Lcom/android/server/uri/UriPermission$Snapshot;
    goto :goto_5d

    .line 1445
    :cond_c0
    const-string/jumbo v6, "uri-grants"

    invoke-interface {v5, v7, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1446
    invoke-interface {v5}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 1448
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_ce} :catch_cf

    .line 1453
    .end local v5    # "out":Landroid/util/TypedXmlSerializer;
    goto :goto_d7

    .line 1449
    :catch_cf
    move-exception v5

    .line 1450
    .local v5, "e":Ljava/io/IOException;
    if-eqz v4, :cond_d7

    .line 1451
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1455
    .end local v5    # "e":Ljava/io/IOException;
    :cond_d7
    :goto_d7
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

    invoke-virtual {v5, v2}, Lcom/android/server/uri/UriMetricsHelper;->reportPersistentUriFlushed(I)V

    .line 1456
    return-void

    .line 1424
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_dd
    move-exception v5

    :try_start_de
    monitor-exit v4
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    throw v5
.end method


# virtual methods
.method public checkGrantUriPermission_ignoreNonSystem(ILjava/lang/String;Landroid/net/Uri;II)I
    .registers 9
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "modeFlags"    # I
    .param p5, "userId"    # I

    .line 1354
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->isCallerIsSystemOrPrivileged()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1355
    const/4 v0, -0x1

    return v0

    .line 1357
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1359
    .local v0, "origId":J
    :try_start_c
    invoke-direct/range {p0 .. p5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v2
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 1362
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1359
    return v2

    .line 1362
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1363
    throw v2
.end method

.method public clearGrantedUriPermissions(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 403
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "clearGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    const/4 v1, 0x1

    :try_start_d
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    .line 407
    monitor-exit v0

    .line 408
    return-void

    .line 407
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/GrantedUriPermission;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.GET_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "getGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/GrantedUriPermission;>;"
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_11
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 331
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v2, :cond_4e

    .line 332
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 333
    .local v4, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_23
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_4b

    .line 334
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    .line 335
    .local v6, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_39

    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    :cond_39
    iget v7, v6, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-ne v7, p2, :cond_48

    iget v7, v6, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v7, :cond_48

    .line 338
    invoke-virtual {v6}, Lcom/android/server/uri/UriPermission;->buildGrantedUriPermission()Landroid/app/GrantedUriPermission;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    .end local v6    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 331
    .end local v4    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v5    # "j":I
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 342
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_11 .. :try_end_4f} :catchall_55

    .line 343
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 342
    :catchall_55
    move-exception v2

    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v2
.end method

.method getLocalService()Lcom/android/server/uri/UriGrantsManagerInternal;
    .registers 3

    .line 172
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService$LocalService-IA;)V

    return-object v0
.end method

.method public getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "incoming"    # Z
    .param p3, "persistedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .line 275
    const-string v0, "getUriPermissions"

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 276
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 279
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 280
    .local v1, "callingUserId":I
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 281
    .local v2, "pm":Landroid/content/pm/PackageManagerInternal;
    const-wide/32 v3, 0xc0000

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 283
    .local v3, "packageUid":I
    if-ne v3, v0, :cond_b9

    .line 288
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 289
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriPermission;>;"
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 290
    if-eqz p2, :cond_76

    .line 291
    :try_start_2d
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 293
    .local v6, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v6, :cond_50

    .line 294
    const-string v7, "UriGrantsManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No permission grants found for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 296
    :cond_50
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_51
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_75

    .line 297
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 298
    .local v8, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_72

    if-eqz p3, :cond_6b

    iget v9, v8, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v9, :cond_72

    .line 300
    :cond_6b
    invoke-virtual {v8}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v8    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_72
    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    .line 304
    .end local v6    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v7    # "j":I
    :cond_75
    :goto_75
    goto :goto_af

    .line 305
    :cond_76
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 306
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7d
    if-ge v7, v6, :cond_af

    .line 307
    iget-object v8, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 308
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 309
    .local v8, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_88
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_ac

    .line 310
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/uri/UriPermission;

    .line 311
    .local v10, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v11, v10, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a9

    if-eqz p3, :cond_a2

    iget v11, v10, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v11, :cond_a9

    .line 313
    :cond_a2
    invoke-virtual {v10}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .end local v10    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_a9
    add-int/lit8 v9, v9, 0x1

    goto :goto_88

    .line 306
    .end local v8    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v9    # "j":I
    :cond_ac
    add-int/lit8 v7, v7, 0x1

    goto :goto_7d

    .line 318
    .end local v6    # "size":I
    .end local v7    # "i":I
    :cond_af
    :goto_af
    monitor-exit v5
    :try_end_b0
    .catchall {:try_start_2d .. :try_end_b0} :catchall_b6

    .line 319
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v5

    .line 318
    :catchall_b6
    move-exception v6

    :try_start_b7
    monitor-exit v5
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw v6

    .line 284
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriPermission;>;"
    :cond_b9
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not belong to calling UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "modeFlags"    # I
    .param p6, "sourceUserId"    # I
    .param p7, "targetUserId"    # I

    .line 236
    invoke-direct/range {p0 .. p7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionFromOwnerUnlocked(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 238
    return-void
.end method

.method public providePersistentUriGrants()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/uri/UriPermission;",
            ">;"
        }
    .end annotation

    .line 1379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1381
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/uri/UriPermission;>;"
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1382
    :try_start_8
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1383
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_33

    .line 1384
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 1386
    .local v4, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1387
    .local v5, "permissionsForPackageSize":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1e
    if-ge v6, v5, :cond_30

    .line 1388
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 1390
    .local v7, "permission":Lcom/android/server/uri/UriPermission;
    iget v8, v7, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v8, :cond_2d

    .line 1391
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1387
    .end local v7    # "permission":Lcom/android/server/uri/UriPermission;
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 1383
    .end local v4    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v5    # "permissionsForPackageSize":I
    .end local v6    # "j":I
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1395
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_33
    monitor-exit v1

    .line 1397
    return-object v0

    .line 1395
    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "toPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 421
    if-eqz p3, :cond_15

    .line 422
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string/jumbo v2, "releasePersistableUriPermission"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p3, v1, v2, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .local v0, "uid":I
    goto :goto_1f

    .line 426
    .end local v0    # "uid":I
    :cond_15
    const-string/jumbo v0, "releasePersistableUriPermission"

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 427
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 430
    .restart local v0    # "uid":I
    :goto_1f
    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 433
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    const/4 v2, 0x0

    .line 436
    .local v2, "persistChanged":Z
    :try_start_27
    new-instance v3, Lcom/android/server/uri/GrantUri;

    const/4 v4, 0x0

    invoke-direct {v3, p4, p1, v4}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v0, v3}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v3

    .line 438
    .local v3, "exactPerm":Lcom/android/server/uri/UriPermission;
    new-instance v4, Lcom/android/server/uri/GrantUri;

    const/16 v5, 0x80

    invoke-direct {v4, p4, p1, v5}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v0, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v4

    .line 440
    .local v4, "prefixPerm":Lcom/android/server/uri/UriPermission;
    if-nez v3, :cond_6a

    if-nez v4, :cond_6a

    if-eqz p3, :cond_43

    goto :goto_6a

    .line 441
    :cond_43
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No permission grants found for UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and Uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 442
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "modeFlags":I
    .end local p3    # "toPackage":Ljava/lang/String;
    .end local p4    # "userId":I
    throw v5

    .line 445
    .restart local v0    # "uid":I
    .restart local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "modeFlags":I
    .restart local p3    # "toPackage":Ljava/lang/String;
    .restart local p4    # "userId":I
    :cond_6a
    :goto_6a
    if-eqz v3, :cond_74

    .line 446
    invoke-virtual {v3, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result v5

    or-int/2addr v2, v5

    .line 447
    invoke-direct {p0, v3}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 449
    :cond_74
    if-eqz v4, :cond_7e

    .line 450
    invoke-virtual {v4, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result v5

    or-int/2addr v2, v5

    .line 451
    invoke-direct {p0, v4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 454
    :cond_7e
    if-eqz v2, :cond_83

    .line 455
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 457
    .end local v2    # "persistChanged":Z
    .end local v3    # "exactPerm":Lcom/android/server/uri/UriPermission;
    .end local v4    # "prefixPerm":Lcom/android/server/uri/UriPermission;
    :cond_83
    monitor-exit v1

    .line 458
    return-void

    .line 457
    :catchall_85
    move-exception v2

    monitor-exit v1
    :try_end_87
    .catchall {:try_start_27 .. :try_end_87} :catchall_85

    throw v2
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "toPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 356
    if-eqz p3, :cond_15

    .line 357
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string/jumbo v2, "takePersistableUriPermission"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p3, v1, v2, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .local v0, "uid":I
    goto :goto_1f

    .line 361
    .end local v0    # "uid":I
    :cond_15
    const-string/jumbo v0, "takePersistableUriPermission"

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 362
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 365
    .restart local v0    # "uid":I
    :goto_1f
    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 368
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    const/4 v2, 0x0

    .line 371
    .local v2, "persistChanged":Z
    :try_start_27
    new-instance v3, Lcom/android/server/uri/GrantUri;

    const/4 v4, 0x0

    invoke-direct {v3, p4, p1, v4}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v0, v3}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v3

    .line 373
    .local v3, "exactPerm":Lcom/android/server/uri/UriPermission;
    new-instance v5, Lcom/android/server/uri/GrantUri;

    const/16 v6, 0x80

    invoke-direct {v5, p4, p1, v6}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v0, v5}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v5

    .line 376
    .local v5, "prefixPerm":Lcom/android/server/uri/UriPermission;
    const/4 v6, 0x1

    if-eqz v3, :cond_46

    iget v7, v3, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v7, p2

    if-ne v7, p2, :cond_46

    move v7, v6

    goto :goto_47

    :cond_46
    move v7, v4

    .line 378
    .local v7, "exactValid":Z
    :goto_47
    if-eqz v5, :cond_4f

    iget v8, v5, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v8, p2

    if-ne v8, p2, :cond_4f

    move v4, v6

    .line 381
    .local v4, "prefixValid":Z
    :cond_4f
    if-nez v7, :cond_7b

    if-eqz v4, :cond_54

    goto :goto_7b

    .line 382
    :cond_54
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No persistable permission grants found for UID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and Uri "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 383
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "modeFlags":I
    .end local p3    # "toPackage":Ljava/lang/String;
    .end local p4    # "userId":I
    throw v6

    .line 386
    .restart local v0    # "uid":I
    .restart local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "modeFlags":I
    .restart local p3    # "toPackage":Ljava/lang/String;
    .restart local p4    # "userId":I
    :cond_7b
    :goto_7b
    if-eqz v7, :cond_82

    .line 387
    invoke-virtual {v3, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result v6

    or-int/2addr v2, v6

    .line 389
    :cond_82
    if-eqz v4, :cond_89

    .line 390
    invoke-virtual {v5, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result v6

    or-int/2addr v2, v6

    .line 393
    :cond_89
    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->maybePrunePersistedUriGrantsLocked(I)Z

    move-result v6

    or-int/2addr v2, v6

    .line 395
    if-eqz v2, :cond_93

    .line 396
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 398
    .end local v2    # "persistChanged":Z
    .end local v3    # "exactPerm":Lcom/android/server/uri/UriPermission;
    .end local v4    # "prefixValid":Z
    .end local v5    # "prefixPerm":Lcom/android/server/uri/UriPermission;
    .end local v7    # "exactValid":Z
    :cond_93
    monitor-exit v1

    .line 399
    return-void

    .line 398
    :catchall_95
    move-exception v2

    monitor-exit v1
    :try_end_97
    .catchall {:try_start_27 .. :try_end_97} :catchall_95

    throw v2
.end method
