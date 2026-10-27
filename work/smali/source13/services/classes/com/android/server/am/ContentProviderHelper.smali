.class public Lcom/android/server/am/ContentProviderHelper;
.super Ljava/lang/Object;
.source "ContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;,
        Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;
    }
.end annotation


# static fields
.field private static final PROCESS_STATE_STATS_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "ContentProviderHelper"


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mLaunchingProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessStateStatsLongs:[J

.field private final mProviderMap:Lcom/android/server/am/ProviderMap;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSystemProvidersInstalled:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/ContentProviderHelper;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1793
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/am/ContentProviderHelper;->PROCESS_STATE_STATS_FORMAT:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x20
        0x220
        0x2820
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "createProviderMap"    # Z

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    .line 1121
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1799
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    .line 109
    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 110
    if-eqz p2, :cond_1f

    new-instance v0, Lcom/android/server/am/ProviderMap;

    invoke-direct {v0, p1}, Lcom/android/server/am/ProviderMap;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    .line 111
    return-void
.end method

.method private canClearIdentity(III)Z
    .registers 7
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 1202
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p3, :cond_8

    .line 1203
    return v1

    .line 1205
    :cond_8
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v2, -0x1

    invoke-static {v0, p1, p2, v2, v1}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 1208
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v0, p1, p2, v2, v1}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v1, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    nop

    .line 1205
    :goto_1d
    return v1
.end method

.method private checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V
    .registers 23
    .param p1, "callingApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I
    .param p5, "checkUser"    # Z
    .param p6, "cprName"    # Ljava/lang/String;
    .param p7, "startTime"    # J

    .line 744
    move-object v7, p0

    move-object v8, p1

    move-wide/from16 v9, p7

    move-object/from16 v11, p2

    move/from16 v12, p3

    invoke-direct {p0, p1, v12, v11}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderAssociation(Lcom/android/server/am/ProcessRecord;ILandroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .local v13, "msg":Ljava/lang/String;
    if-nez v0, :cond_40

    .line 748
    const-string v0, "getContentProviderImpl: before checkContentProviderPermission"

    invoke-direct {p0, v9, v10, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 749
    nop

    .line 750
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 751
    if-eqz v8, :cond_24

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    move-object v6, v0

    .line 749
    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local v13    # "msg":Ljava/lang/String;
    .local v1, "msg":Ljava/lang/String;
    if-nez v0, :cond_3a

    .line 755
    const-string v0, "getContentProviderImpl: after checkContentProviderPermission"

    invoke-direct {p0, v9, v10, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 756
    return-void

    .line 753
    :cond_3a
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    .end local v1    # "msg":Ljava/lang/String;
    .restart local v13    # "msg":Ljava/lang/String;
    :cond_40
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content provider lookup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed: association not allowed with package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkContentProviderAssociation(Lcom/android/server/am/ProcessRecord;ILandroid/content/pm/ProviderInfo;)Ljava/lang/String;
    .registers 8
    .param p1, "callingApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callingUid"    # I
    .param p3, "cpi"    # Landroid/content/pm/ProviderInfo;

    .line 1744
    if-nez p1, :cond_15

    .line 1745
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1746
    goto :goto_14

    :cond_12
    const-string v3, "<null>"

    .line 1745
    :goto_14
    return-object v3

    .line 1748
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/PackageList;->searchEachPackage(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1755
    .local v0, "r":Ljava/lang/String;
    return-object v0
.end method

.method private checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;
    .registers 24
    .param p1, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I
    .param p5, "checkUser"    # Z
    .param p6, "appName"    # Ljava/lang/String;

    .line 1649
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    const/4 v2, 0x0

    .line 1652
    .local v2, "checkedGrants":Z
    invoke-static {}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->getInstance()Lcom/miui/server/xspace/XSpaceManagerServiceStub;

    move-result-object v3

    .line 1653
    const/4 v13, 0x0

    if-eqz v1, :cond_15

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    goto :goto_16

    :cond_15
    move-object v4, v13

    :goto_16
    move/from16 v5, p5

    invoke-virtual {v3, v1, v4, v12, v5}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->needCheckUser(Landroid/content/pm/ProviderInfo;Ljava/lang/String;IZ)Z

    move-result v14

    .line 1655
    .end local p5    # "checkUser":Z
    .local v14, "checkUser":Z
    if-eqz v14, :cond_69

    .line 1657
    iget-object v3, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v3, v12}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v15

    .line 1658
    .local v15, "tmpTargetUserId":I
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v15, v3, :cond_3b

    .line 1659
    iget-object v3, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-interface {v3, v11, v1, v15, v14}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1661
    return-object v13

    .line 1663
    :cond_37
    const/4 v2, 0x1

    move/from16 v16, v2

    goto :goto_3d

    .line 1658
    :cond_3b
    move/from16 v16, v2

    .line 1665
    .end local v2    # "checkedGrants":Z
    .local v16, "checkedGrants":Z
    :goto_3d
    iget-object v2, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkContentProviderPermissionLocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1668
    .end local p4    # "userId":I
    .local v2, "userId":I
    if-eq v2, v15, :cond_6c

    .line 1673
    const/4 v3, 0x0

    move/from16 v16, v3

    .end local v16    # "checkedGrants":Z
    .local v3, "checkedGrants":Z
    goto :goto_6c

    .line 1655
    .end local v3    # "checkedGrants":Z
    .end local v15    # "tmpTargetUserId":I
    .local v2, "checkedGrants":Z
    .restart local p4    # "userId":I
    :cond_69
    move/from16 v16, v2

    move v2, v12

    .line 1676
    .end local p4    # "userId":I
    .local v2, "userId":I
    .restart local v16    # "checkedGrants":Z
    :cond_6c
    :goto_6c
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v3, v10, v11, v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    if-nez v3, :cond_7b

    .line 1679
    return-object v13

    .line 1681
    :cond_7b
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v3, v10, v11, v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    if-nez v3, :cond_8a

    .line 1684
    return-object v13

    .line 1687
    :cond_8a
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 1688
    .local v3, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v3, :cond_bc

    .line 1689
    array-length v4, v3

    .line 1690
    .local v4, "i":I
    :goto_8f
    if-lez v4, :cond_bc

    .line 1691
    add-int/lit8 v4, v4, -0x1

    .line 1692
    aget-object v5, v3, v4

    .line 1693
    .local v5, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v5}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v6

    .line 1694
    .local v6, "pprperm":Ljava/lang/String;
    if-eqz v6, :cond_a8

    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v8, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v6, v10, v11, v7, v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v7

    if-nez v7, :cond_a8

    .line 1697
    return-object v13

    .line 1699
    :cond_a8
    invoke-virtual {v5}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v7

    .line 1700
    .local v7, "ppwperm":Ljava/lang/String;
    if-eqz v7, :cond_bb

    iget-object v8, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v9, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v7, v10, v11, v8, v9}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v8

    if-nez v8, :cond_bb

    .line 1703
    return-object v13

    .line 1705
    .end local v5    # "pp":Landroid/content/pm/PathPermission;
    .end local v6    # "pprperm":Ljava/lang/String;
    .end local v7    # "ppwperm":Ljava/lang/String;
    :cond_bb
    goto :goto_8f

    .line 1707
    .end local v4    # "i":I
    :cond_bc
    if-nez v16, :cond_c9

    iget-object v4, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1708
    invoke-interface {v4, v11, v1, v2, v14}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 1709
    return-object v13

    .line 1715
    :cond_c9
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v4

    .line 1716
    .local v4, "xSpaceManager":Lcom/miui/xspace/XSpaceManagerStub;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lcom/miui/xspace/XSpaceManagerStub;->canCrossUser(II)Z

    move-result v5

    if-eqz v5, :cond_fd

    .line 1717
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceUserId(I)Z

    move-result v5

    if-eqz v5, :cond_e7

    .line 1718
    const/4 v5, 0x0

    invoke-static {v5, v11}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    goto :goto_ef

    .line 1719
    :cond_e7
    invoke-virtual {v4}, Lcom/miui/xspace/XSpaceManagerStub;->getXSpaceUserId()I

    move-result v5

    invoke-static {v5, v11}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    :goto_ef
    nop

    .line 1720
    .local v5, "tmpCallingUid":I
    if-nez v16, :cond_fd

    iget-object v6, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1721
    invoke-interface {v6, v5, v1, v2, v14}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v6

    if-eqz v6, :cond_fd

    .line 1722
    return-object v13

    .line 1728
    .end local v5    # "tmpCallingUid":I
    :cond_fd
    iget-boolean v5, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez v5, :cond_119

    .line 1729
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " that is not exported from UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "suffix":Ljava/lang/String;
    goto :goto_147

    .line 1730
    .end local v5    # "suffix":Ljava/lang/String;
    :cond_119
    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const-string v6, "android.permission.MANAGE_DOCUMENTS"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_126

    .line 1731
    const-string v5, " requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    .restart local v5    # "suffix":Ljava/lang/String;
    goto :goto_147

    .line 1733
    .end local v5    # "suffix":Ljava/lang/String;
    :cond_126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1735
    .restart local v5    # "suffix":Ljava/lang/String;
    :goto_147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: opening provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1736
    if-eqz p6, :cond_163

    move-object/from16 v7, p6

    goto :goto_165

    :cond_163
    const-string v7, "(null)"

    :goto_165
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1738
    .local v6, "msg":Ljava/lang/String;
    const-string v7, "ContentProviderHelper"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    return-object v6
.end method

.method private checkTime(JLjava/lang/String;)V
    .registers 10
    .param p1, "startTime"    # J
    .param p3, "where"    # Ljava/lang/String;

    .line 2023
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2024
    .local v0, "now":J
    sub-long v2, v0, p1

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-lez v2, :cond_31

    .line 2026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slow operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v3, v0, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms so far, now at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContentProviderHelper"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    :cond_31
    return-void
.end method

.method private decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z
    .registers 12
    .param p1, "conn"    # Lcom/android/server/am/ContentProviderConnection;
    .param p2, "cpr"    # Lcom/android/server/am/ContentProviderRecord;
    .param p3, "externalProcessToken"    # Landroid/os/IBinder;
    .param p4, "stable"    # Z
    .param p5, "enforceDelay"    # Z
    .param p6, "updateOomAdj"    # Z

    .line 1575
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 1576
    invoke-virtual {p2, p3}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleLocked(Landroid/os/IBinder;)Z

    .line 1577
    return v0

    .line 1580
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderConnection;->totalRefCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_12

    .line 1581
    invoke-virtual {p1, p4}, Lcom/android/server/am/ContentProviderConnection;->decrementCount(Z)I

    .line 1582
    return v0

    .line 1584
    :cond_12
    if-eqz p5, :cond_23

    .line 1587
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p4, p6}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ContentProviderConnection;ZZ)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_26

    .line 1591
    :cond_23
    invoke-direct {p0, p1, p4, p6}, Lcom/android/server/am/ContentProviderHelper;->handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    .line 1593
    :goto_26
    return v2
.end method

.method private getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;
    .registers 58
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "callingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callingTag"    # Ljava/lang/String;
    .param p7, "stable"    # Z
    .param p8, "userId"    # I

    .line 166
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move/from16 v11, p4

    move/from16 v1, p8

    const/16 v26, 0x0

    .line 167
    .local v26, "conn":Lcom/android/server/am/ContentProviderConnection;
    const/4 v2, 0x0

    .line 168
    .local v2, "cpi":Landroid/content/pm/ProviderInfo;
    const/4 v3, 0x0

    .line 169
    .local v3, "providerRunning":Z
    move/from16 v25, p8

    .line 170
    .local v25, "expectedUserId":I
    iget-object v12, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 171
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1095

    move-wide v8, v4

    .line 173
    .local v8, "startTime":J
    const/4 v4, 0x0

    .line 174
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v14, :cond_64

    .line 175
    :try_start_1e
    iget-object v5, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v14}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    move-object v4, v5

    .line 176
    if-eqz v4, :cond_29

    move-object v10, v4

    goto :goto_65

    .line 177
    :cond_29
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find app for caller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 178
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") when getting content provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v3    # "providerRunning":Z
    .end local v25    # "expectedUserId":I
    .end local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    .end local p8    # "userId":I
    throw v5
    :try_end_5a
    .catchall {:try_start_1e .. :try_end_5a} :catchall_5a

    .line 664
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "startTime":J
    .restart local v2    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v3    # "providerRunning":Z
    .restart local v25    # "expectedUserId":I
    .restart local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    .restart local p8    # "userId":I
    :catchall_5a
    move-exception v0

    move-object v4, v0

    move v8, v11

    move-object/from16 v31, v12

    move-object v7, v14

    move-object v14, v15

    move-object v15, v13

    goto/16 :goto_109f

    .line 174
    .restart local v4    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "startTime":J
    :cond_64
    move-object v10, v4

    .line 183
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    .local v10, "r":Lcom/android/server/am/ProcessRecord;
    :goto_65
    const/4 v4, 0x1

    .line 185
    .local v4, "checkCrossUser":Z
    :try_start_66
    const-string v5, "getContentProviderImpl: getProviderByName"

    invoke-direct {v15, v8, v9, v5}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 188
    iget-object v5, v15, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v5, v13, v1}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v5
    :try_end_71
    .catchall {:try_start_66 .. :try_end_71} :catchall_1095

    .line 191
    .local v5, "cpr":Lcom/android/server/am/ContentProviderRecord;
    const/4 v7, 0x0

    if-nez v5, :cond_116

    if-eqz v1, :cond_116

    .line 192
    :try_start_76
    iget-object v6, v15, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v6, v13, v7}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v6

    move-object v5, v6

    .line 193
    if-eqz v5, :cond_fe

    .line 194
    iget-object v6, v5, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    move-object v2, v6

    .line 196
    iget-object v6, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;
    :try_end_86
    .catchall {:try_start_76 .. :try_end_86} :catchall_10a

    move/from16 v17, v3

    .end local v3    # "providerRunning":Z
    .local v17, "providerRunning":Z
    :try_start_88
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v18, v4

    .end local v4    # "checkCrossUser":Z
    .local v18, "checkCrossUser":Z
    iget-object v4, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v5

    .end local v5    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v19, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget v5, v2, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_aa

    iget-object v3, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 202
    if-nez v10, :cond_9e

    move v4, v11

    goto :goto_a0

    :cond_9e
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    :goto_a0
    iget-object v5, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 198
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v3

    if-nez v3, :cond_b8

    .line 203
    :cond_aa
    invoke-static {}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->getInstance()Lcom/miui/server/xspace/XSpaceManagerServiceStub;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 204
    invoke-virtual {v3, v4, v1}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->shouldCrossXSpace(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 206
    :cond_b8
    const/4 v1, 0x0

    .line 207
    .end local p8    # "userId":I
    .local v1, "userId":I
    const/4 v4, 0x0

    move v7, v1

    move/from16 v27, v4

    move-object/from16 v6, v19

    .end local v18    # "checkCrossUser":Z
    .restart local v4    # "checkCrossUser":Z
    goto/16 :goto_11e

    .line 208
    .end local v1    # "userId":I
    .end local v4    # "checkCrossUser":Z
    .restart local v18    # "checkCrossUser":Z
    .restart local p8    # "userId":I
    :cond_c1
    invoke-static/range {p2 .. p2}, Landroid/content/ContentProvider;->isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 209
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    .line 211
    .local v3, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v3, v1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 213
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_e3

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v5

    if-eqz v5, :cond_e3

    .line 214
    invoke-virtual {v3, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v5
    :try_end_df
    .catchall {:try_start_88 .. :try_end_df} :catchall_f2

    move v1, v5

    .line 215
    .end local p8    # "userId":I
    .restart local v1    # "userId":I
    const/4 v5, 0x0

    move v4, v5

    .end local v18    # "checkCrossUser":Z
    .local v5, "checkCrossUser":Z
    goto :goto_e5

    .line 217
    .end local v1    # "userId":I
    .end local v3    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v5    # "checkCrossUser":Z
    .restart local v18    # "checkCrossUser":Z
    .restart local p8    # "userId":I
    :cond_e3
    move/from16 v4, v18

    .end local v18    # "checkCrossUser":Z
    .end local p8    # "userId":I
    .restart local v1    # "userId":I
    .local v4, "checkCrossUser":Z
    :goto_e5
    move v7, v1

    move/from16 v27, v4

    move-object/from16 v6, v19

    goto :goto_11e

    .line 218
    .end local v1    # "userId":I
    .end local v4    # "checkCrossUser":Z
    .restart local v18    # "checkCrossUser":Z
    .restart local p8    # "userId":I
    :cond_eb
    const/4 v5, 0x0

    .line 219
    .end local v19    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v5, "cpr":Lcom/android/server/am/ContentProviderRecord;
    const/4 v2, 0x0

    move v7, v1

    move-object v6, v5

    move/from16 v27, v18

    goto :goto_11e

    .line 664
    .end local v5    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v8    # "startTime":J
    .end local v10    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "checkCrossUser":Z
    :catchall_f2
    move-exception v0

    move-object v4, v0

    move v8, v11

    move-object/from16 v31, v12

    move-object v7, v14

    move-object v14, v15

    move/from16 v3, v17

    move-object v15, v13

    goto/16 :goto_109f

    .line 193
    .end local v17    # "providerRunning":Z
    .local v3, "providerRunning":Z
    .restart local v4    # "checkCrossUser":Z
    .restart local v5    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v8    # "startTime":J
    .restart local v10    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_fe
    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    .end local v3    # "providerRunning":Z
    .end local v4    # "checkCrossUser":Z
    .end local v5    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v17    # "providerRunning":Z
    .restart local v18    # "checkCrossUser":Z
    .restart local v19    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    move v7, v1

    move/from16 v27, v18

    move-object/from16 v6, v19

    goto :goto_11e

    .line 664
    .end local v8    # "startTime":J
    .end local v10    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v17    # "providerRunning":Z
    .end local v18    # "checkCrossUser":Z
    .end local v19    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v3    # "providerRunning":Z
    :catchall_10a
    move-exception v0

    move/from16 v17, v3

    move-object v4, v0

    move v8, v11

    move-object/from16 v31, v12

    move-object v7, v14

    move-object v14, v15

    move-object v15, v13

    goto/16 :goto_109f

    .line 191
    .restart local v4    # "checkCrossUser":Z
    .restart local v5    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v8    # "startTime":J
    .restart local v10    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_116
    move/from16 v17, v3

    move/from16 v18, v4

    .line 224
    .end local v3    # "providerRunning":Z
    .end local v4    # "checkCrossUser":Z
    .restart local v17    # "providerRunning":Z
    .restart local v18    # "checkCrossUser":Z
    move v7, v1

    move-object v6, v5

    move/from16 v27, v18

    .end local v5    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v18    # "checkCrossUser":Z
    .end local p8    # "userId":I
    .local v6, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v7, "userId":I
    .local v27, "checkCrossUser":Z
    :goto_11e
    const/4 v1, 0x0

    .line 225
    .local v1, "dyingProc":Lcom/android/server/am/ProcessRecord;
    if-eqz v6, :cond_186

    :try_start_121
    iget-object v3, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_186

    .line 226
    iget-object v3, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v3
    :try_end_12b
    .catchall {:try_start_121 .. :try_end_12b} :catchall_179

    if-nez v3, :cond_12f

    const/4 v3, 0x1

    goto :goto_130

    :cond_12f
    const/4 v3, 0x0

    .line 233
    .end local v17    # "providerRunning":Z
    .restart local v3    # "providerRunning":Z
    :goto_130
    :try_start_130
    iget-object v4, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v4

    if-eqz v4, :cond_167

    iget-object v4, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v4

    if-eqz v4, :cond_167

    .line 234
    const-string v4, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v1

    .end local v1    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .local v18, "dyingProc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " was killed by AM but isn\'t really dead"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;
    :try_end_162
    .catchall {:try_start_130 .. :try_end_162} :catchall_16e

    move-object/from16 v28, v1

    move/from16 v29, v3

    .end local v18    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    goto :goto_18c

    .line 233
    :cond_167
    move-object/from16 v18, v1

    .line 240
    .end local v1    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    move/from16 v29, v3

    move-object/from16 v28, v18

    goto :goto_18c

    .line 664
    .end local v6    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v8    # "startTime":J
    .end local v10    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v27    # "checkCrossUser":Z
    :catchall_16e
    move-exception v0

    move-object v4, v0

    move v1, v7

    move v8, v11

    move-object/from16 v31, v12

    move-object v7, v14

    move-object v14, v15

    move-object v15, v13

    goto/16 :goto_109f

    .end local v3    # "providerRunning":Z
    .restart local v17    # "providerRunning":Z
    :catchall_179
    move-exception v0

    move-object v4, v0

    move v1, v7

    move v8, v11

    move-object/from16 v31, v12

    move-object v7, v14

    move-object v14, v15

    move/from16 v3, v17

    move-object v15, v13

    goto/16 :goto_109f

    .line 225
    .restart local v1    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v8    # "startTime":J
    .restart local v10    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v27    # "checkCrossUser":Z
    :cond_186
    move-object/from16 v18, v1

    .line 240
    .end local v1    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    move/from16 v29, v17

    move-object/from16 v28, v18

    .end local v17    # "providerRunning":Z
    .end local v18    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .local v28, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .local v29, "providerRunning":Z
    :goto_18c
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    if-eqz v29, :cond_4d8

    .line 241
    :try_start_191
    iget-object v1, v6, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;
    :try_end_193
    .catchall {:try_start_191 .. :try_end_193} :catchall_4c9

    move-object v14, v3

    move-object v3, v1

    .line 243
    .end local v2    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v3, "cpi":Landroid/content/pm/ProviderInfo;
    if-eqz v10, :cond_212

    :try_start_197
    invoke-virtual {v6, v10}, Lcom/android/server/am/ContentProviderRecord;->canRunHere(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_212

    .line 244
    iget-object v1, v6, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 245
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v16
    :try_end_1a3
    .catchall {:try_start_197 .. :try_end_1a3} :catchall_1ff

    .line 244
    const/16 v5, 0x2710

    move-object/from16 v1, p0

    move-object v2, v10

    move/from16 v4, p4

    const/4 v11, 0x1

    move v5, v7

    move-object/from16 v18, v10

    move-object v10, v6

    .end local v6    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v10, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v18, "r":Lcom/android/server/am/ProcessRecord;
    move/from16 v6, v27

    move/from16 v31, v7

    .end local v7    # "userId":I
    .local v31, "userId":I
    move-object/from16 v7, v16

    move-wide/from16 v32, v8

    .end local v8    # "startTime":J
    .local v32, "startTime":J
    :try_start_1b7
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    .line 251
    invoke-virtual {v10, v14, v11}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v1

    .line 253
    .local v1, "holder":Landroid/app/ContentProviderHolder;
    iput-object v14, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 255
    if-eqz v10, :cond_1e9

    iget v2, v10, Lcom/android/server/am/ContentProviderRecord;->uid:I

    const/16 v9, 0x2710

    if-le v2, v9, :cond_1e9

    .line 256
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v4

    const-string/jumbo v5, "provider"

    iget v8, v10, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 257
    invoke-virtual {v10}, Lcom/android/server/am/ContentProviderRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1e1

    .line 258
    invoke-virtual {v10}, Lcom/android/server/am/ContentProviderRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_1e2

    :cond_1e1
    move-object v9, v14

    .line 256
    :goto_1e2
    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerServiceStub;->isRestrictBackgroundAction(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z

    .line 260
    :cond_1e9
    monitor-exit v12
    :try_end_1ea
    .catchall {:try_start_1b7 .. :try_end_1ea} :catchall_1ee

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 664
    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .end local v10    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v18    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v27    # "checkCrossUser":Z
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v32    # "startTime":J
    :catchall_1ee
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v8, p4

    move-object v4, v0

    move-object v2, v3

    move-object v14, v15

    move/from16 v3, v29

    move/from16 v1, v31

    move-object/from16 v31, v12

    move-object v15, v13

    goto/16 :goto_109f

    .end local v31    # "userId":I
    .restart local v7    # "userId":I
    :catchall_1ff
    move-exception v0

    move/from16 v31, v7

    move-object/from16 v7, p1

    move/from16 v8, p4

    move-object v4, v0

    move-object v2, v3

    move-object v14, v15

    move/from16 v3, v29

    move/from16 v1, v31

    move-object/from16 v31, v12

    move-object v15, v13

    .end local v7    # "userId":I
    .restart local v31    # "userId":I
    goto/16 :goto_109f

    .line 243
    .end local v31    # "userId":I
    .restart local v6    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v7    # "userId":I
    .restart local v8    # "startTime":J
    .local v10, "r":Lcom/android/server/am/ProcessRecord;
    .restart local v27    # "checkCrossUser":Z
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    :cond_212
    move/from16 v31, v7

    move-wide/from16 v32, v8

    move-object/from16 v18, v10

    const/16 v9, 0x2710

    const/4 v11, 0x1

    move-object v10, v6

    .line 265
    .end local v6    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v7    # "userId":I
    .end local v8    # "startTime":J
    .local v10, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v18    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v31    # "userId":I
    .restart local v32    # "startTime":J
    :try_start_21c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1
    :try_end_220
    .catch Landroid/os/RemoteException; {:try_start_21c .. :try_end_220} :catch_27c
    .catchall {:try_start_21c .. :try_end_220} :catchall_26a

    .line 266
    move/from16 v2, v31

    .end local v31    # "userId":I
    .local v2, "userId":I
    :try_start_222
    invoke-interface {v1, v13, v4, v5, v2}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_253

    .line 268
    const-string v1, "ContentProviderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No provider info for content provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " when providerRunning is false, caller is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6
    :try_end_23f
    .catch Landroid/os/RemoteException; {:try_start_222 .. :try_end_23f} :catch_266
    .catchall {:try_start_222 .. :try_end_23f} :catchall_256

    move-object/from16 v8, v18

    .end local v18    # "r":Lcom/android/server/am/ProcessRecord;
    .local v8, "r":Lcom/android/server/am/ProcessRecord;
    :try_start_241
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24c
    .catch Landroid/os/RemoteException; {:try_start_241 .. :try_end_24c} :catch_251
    .catchall {:try_start_241 .. :try_end_24c} :catchall_256

    .line 270
    :try_start_24c
    monitor-exit v12
    :try_end_24d
    .catchall {:try_start_24c .. :try_end_24d} :catchall_256

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    .line 272
    :catch_251
    move-exception v0

    goto :goto_281

    .line 273
    .end local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_253
    move-object/from16 v8, v18

    .end local v18    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "r":Lcom/android/server/am/ProcessRecord;
    goto :goto_281

    .line 664
    .end local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v27    # "checkCrossUser":Z
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v32    # "startTime":J
    :catchall_256
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v8, p4

    move-object v4, v0

    move v1, v2

    move-object v2, v3

    move-object/from16 v31, v12

    move-object v14, v15

    move/from16 v3, v29

    move-object v15, v13

    goto/16 :goto_109f

    .line 272
    .restart local v10    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v18    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v27    # "checkCrossUser":Z
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "startTime":J
    :catch_266
    move-exception v0

    move-object/from16 v8, v18

    .end local v18    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "r":Lcom/android/server/am/ProcessRecord;
    goto :goto_281

    .line 664
    .end local v2    # "userId":I
    .end local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v27    # "checkCrossUser":Z
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v32    # "startTime":J
    .restart local v31    # "userId":I
    :catchall_26a
    move-exception v0

    move/from16 v2, v31

    move-object/from16 v7, p1

    move/from16 v8, p4

    move-object v4, v0

    move v1, v2

    move-object v2, v3

    move-object/from16 v31, v12

    move-object v14, v15

    move/from16 v3, v29

    move-object v15, v13

    .end local v31    # "userId":I
    .restart local v2    # "userId":I
    goto/16 :goto_109f

    .line 272
    .end local v2    # "userId":I
    .restart local v10    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v18    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v27    # "checkCrossUser":Z
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v31    # "userId":I
    .restart local v32    # "startTime":J
    :catch_27c
    move-exception v0

    move-object/from16 v8, v18

    move/from16 v2, v31

    .line 275
    .end local v18    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v31    # "userId":I
    .restart local v2    # "userId":I
    .restart local v8    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_281
    :try_start_281
    iget-object v1, v10, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 276
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1
    :try_end_287
    .catchall {:try_start_281 .. :try_end_287} :catchall_4b3

    .line 275
    move-wide v6, v4

    move-object/from16 v4, p0

    move-object v5, v8

    move-object v6, v3

    move/from16 v7, p4

    move-object/from16 v16, v8

    .end local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .local v16, "r":Lcom/android/server/am/ProcessRecord;
    move v8, v2

    move/from16 v9, v27

    move-object/from16 p8, v10

    move-object/from16 v30, v16

    .end local v10    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v16    # "r":Lcom/android/server/am/ProcessRecord;
    .local v30, "r":Lcom/android/server/am/ProcessRecord;
    .local p8, "cpr":Lcom/android/server/am/ContentProviderRecord;
    move-object v10, v1

    move/from16 v1, p4

    move-object/from16 v31, v12

    move-wide/from16 v11, v32

    :try_start_29e
    invoke-direct/range {v4 .. v12}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    .line 278
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_2a5
    .catchall {:try_start_29e .. :try_end_2a5} :catchall_4ad

    move-wide v11, v4

    .line 280
    .local v11, "origId":J
    :try_start_2a6
    const-string v4, "getContentProviderImpl: incProviderCountLocked"
    :try_end_2a8
    .catchall {:try_start_2a6 .. :try_end_2a8} :catchall_48b

    move-wide/from16 v9, v32

    .end local v32    # "startTime":J
    .local v9, "startTime":J
    :try_start_2aa
    invoke-direct {v15, v9, v10, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 283
    const/16 v21, 0x1

    iget-object v4, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;
    :try_end_2b3
    .catchall {:try_start_2aa .. :try_end_2b3} :catchall_47a

    move-object v8, v13

    move-object/from16 v13, p0

    move-object/from16 v7, p1

    move-object v6, v14

    move-object/from16 v14, v30

    move-object v5, v15

    move-object/from16 v15, p8

    move-object/from16 v16, p3

    move/from16 v17, p4

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    move/from16 v20, p7

    move-wide/from16 v22, v9

    move-object/from16 v24, v4

    :try_start_2cc
    invoke-direct/range {v13 .. v25}, Lcom/android/server/am/ContentProviderHelper;->incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v4
    :try_end_2d0
    .catchall {:try_start_2cc .. :try_end_2d0} :catchall_469

    move-object v14, v5

    move-object v5, v4

    .line 287
    .end local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v5, "conn":Lcom/android/server/am/ContentProviderConnection;
    :try_start_2d2
    const-string v4, "getContentProviderImpl: before updateOomAdj"

    invoke-direct {v14, v9, v10, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_2d7
    .catchall {:try_start_2d2 .. :try_end_2d7} :catchall_457

    .line 288
    move-object/from16 v13, p8

    .end local p8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v13, "cpr":Lcom/android/server/am/ContentProviderRecord;
    :try_start_2d9
    iget-object v4, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getVerifiedAdj()I

    move-result v4

    move v15, v4

    .line 289
    .local v15, "verifiedAdj":I
    iget-object v4, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v1, "updateOomAdj_getProvider"

    invoke-virtual {v4, v6, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v1
    :try_end_2ed
    .catchall {:try_start_2d9 .. :try_end_2ed} :catchall_447

    .line 296
    .local v1, "success":Z
    if-eqz v1, :cond_314

    :try_start_2ef
    iget-object v4, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4

    if-eq v15, v4, :cond_314

    iget-object v4, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 297
    invoke-direct {v14, v4}, Lcom/android/server/am/ContentProviderHelper;->isProcessAliveLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4
    :try_end_2ff
    .catchall {:try_start_2ef .. :try_end_2ff} :catchall_303

    if-nez v4, :cond_314

    .line 298
    const/4 v1, 0x0

    goto :goto_314

    .line 334
    .end local v1    # "success":Z
    .end local v15    # "verifiedAdj":I
    :catchall_303
    move-exception v0

    move-object v1, v0

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v26, v5

    move-wide/from16 v35, v9

    move/from16 v3, v29

    move-object/from16 v34, v30

    move-object v10, v8

    goto/16 :goto_49b

    .line 300
    .restart local v1    # "success":Z
    .restart local v15    # "verifiedAdj":I
    :cond_314
    :goto_314
    :try_start_314
    iget-object v4, v13, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;
    :try_end_318
    .catchall {:try_start_314 .. :try_end_318} :catchall_447

    move-object/from16 v6, v30

    .end local v30    # "r":Lcom/android/server/am/ProcessRecord;
    .local v6, "r":Lcom/android/server/am/ProcessRecord;
    :try_start_31a
    invoke-direct {v14, v6, v4, v8}, Lcom/android/server/am/ContentProviderHelper;->maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v4, "getContentProviderImpl: after updateOomAdj"

    invoke-direct {v14, v9, v10, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 302
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z
    :try_end_324
    .catchall {:try_start_31a .. :try_end_324} :catchall_436

    if-eqz v4, :cond_370

    .line 303
    :try_start_326
    const-string v4, "ContentProviderHelper"
    :try_end_328
    .catchall {:try_start_326 .. :try_end_328} :catchall_35f

    move/from16 v16, v2

    .end local v2    # "userId":I
    .local v16, "userId":I
    :try_start_32a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_32f
    .catchall {:try_start_32a .. :try_end_32f} :catchall_350

    move-object/from16 v17, v3

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v17, "cpi":Landroid/content/pm/ProviderInfo;
    :try_start_331
    const-string v3, "Adjust success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_342
    .catchall {:try_start_331 .. :try_end_342} :catchall_343

    goto :goto_374

    .line 334
    .end local v1    # "success":Z
    .end local v15    # "verifiedAdj":I
    :catchall_343
    move-exception v0

    move-object v1, v0

    move-object/from16 v26, v5

    move-object/from16 v34, v6

    move-wide/from16 v35, v9

    move/from16 v3, v29

    move-object v10, v8

    goto/16 :goto_49b

    .end local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    :catchall_350
    move-exception v0

    move-object/from16 v17, v3

    move-object v1, v0

    move-object/from16 v26, v5

    move-object/from16 v34, v6

    move-wide/from16 v35, v9

    move/from16 v3, v29

    move-object v10, v8

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_49b

    .end local v16    # "userId":I
    .end local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v2    # "userId":I
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    :catchall_35f
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object v1, v0

    move-object/from16 v26, v5

    move-object/from16 v34, v6

    move-wide/from16 v35, v9

    move/from16 v3, v29

    move-object v10, v8

    .end local v2    # "userId":I
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v16    # "userId":I
    .restart local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_49b

    .line 302
    .end local v16    # "userId":I
    .end local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v1    # "success":Z
    .restart local v2    # "userId":I
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v15    # "verifiedAdj":I
    :cond_370
    move/from16 v16, v2

    move-object/from16 v17, v3

    .line 309
    .end local v2    # "userId":I
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v16    # "userId":I
    .restart local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    :goto_374
    if-nez v1, :cond_409

    .line 314
    :try_start_376
    const-string v2, "ContentProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Existing provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is crashing; detaching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39e
    .catchall {:try_start_376 .. :try_end_39e} :catchall_3fc

    .line 316
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p0

    move-object/from16 v34, v6

    .end local v6    # "r":Lcom/android/server/am/ProcessRecord;
    .local v34, "r":Lcom/android/server/am/ProcessRecord;
    move-object v6, v13

    move-object/from16 v7, p3

    move/from16 v8, p7

    move-wide/from16 v35, v9

    .end local v9    # "startTime":J
    .local v35, "startTime":J
    move v9, v2

    move v10, v3

    :try_start_3ad
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/ContentProviderHelper;->decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z

    move-result v2

    .line 318
    .local v2, "lastRef":Z
    if-nez v2, :cond_3e8

    .line 322
    const-string v3, "ContentProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This wasn\'t the last ref our process had on the provider for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_3c0
    .catchall {:try_start_3ad .. :try_end_3c0} :catchall_3f8

    move-object/from16 v10, p2

    :try_start_3c2
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3cd
    .catchall {:try_start_3c2 .. :try_end_3cd} :catchall_42e

    .line 324
    nop

    .line 334
    :try_start_3ce
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v31
    :try_end_3d2
    .catchall {:try_start_3ce .. :try_end_3d2} :catchall_3d7

    .line 324
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v8, 0x0

    return-object v8

    .line 664
    .end local v1    # "success":Z
    .end local v2    # "lastRef":Z
    .end local v11    # "origId":J
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v15    # "verifiedAdj":I
    .end local v27    # "checkCrossUser":Z
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v35    # "startTime":J
    :catchall_3d7
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v8, p4

    move-object v4, v0

    move-object/from16 v26, v5

    move-object v15, v10

    move/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v29

    goto/16 :goto_109f

    .line 327
    .restart local v1    # "success":Z
    .restart local v2    # "lastRef":Z
    .restart local v11    # "origId":J
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v15    # "verifiedAdj":I
    .restart local v27    # "checkCrossUser":Z
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v35    # "startTime":J
    :cond_3e8
    move-object/from16 v10, p2

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 328
    .end local v29    # "providerRunning":Z
    .local v3, "providerRunning":Z
    const/16 v26, 0x0

    .line 329
    .end local v5    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :try_start_3ee
    iget-object v4, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;
    :try_end_3f0
    .catchall {:try_start_3ee .. :try_end_3f0} :catchall_3f4

    move-object v2, v4

    .line 330
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .local v2, "dyingProc":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v28, v2

    goto :goto_422

    .line 334
    .end local v1    # "success":Z
    .end local v2    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "verifiedAdj":I
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    :catchall_3f4
    move-exception v0

    move-object v1, v0

    goto/16 :goto_49b

    .end local v3    # "providerRunning":Z
    .end local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v5    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v29    # "providerRunning":Z
    :catchall_3f8
    move-exception v0

    move-object/from16 v10, p2

    goto :goto_42f

    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v35    # "startTime":J
    .restart local v6    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "startTime":J
    :catchall_3fc
    move-exception v0

    move-object/from16 v34, v6

    move-wide/from16 v35, v9

    move-object v10, v8

    move-object v1, v0

    move-object/from16 v26, v5

    move/from16 v3, v29

    .end local v6    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "startTime":J
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v35    # "startTime":J
    goto/16 :goto_49b

    .line 331
    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v35    # "startTime":J
    .restart local v1    # "success":Z
    .restart local v6    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "startTime":J
    .restart local v15    # "verifiedAdj":I
    :cond_409
    move-object/from16 v34, v6

    move-wide/from16 v35, v9

    move-object v10, v8

    const/4 v8, 0x0

    .end local v6    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "startTime":J
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v35    # "startTime":J
    :try_start_40f
    iget-object v2, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v3, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setVerifiedAdj(I)V
    :try_end_41e
    .catchall {:try_start_40f .. :try_end_41e} :catchall_42e

    move-object/from16 v26, v5

    move/from16 v3, v29

    .line 334
    .end local v1    # "success":Z
    .end local v5    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v15    # "verifiedAdj":I
    .end local v29    # "providerRunning":Z
    .restart local v3    # "providerRunning":Z
    .restart local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :goto_422
    :try_start_422
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 335
    move v15, v3

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v12, v28

    goto/16 :goto_4e7

    .line 334
    .end local v3    # "providerRunning":Z
    .end local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v5    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v29    # "providerRunning":Z
    :catchall_42e
    move-exception v0

    :goto_42f
    move-object v1, v0

    move-object/from16 v26, v5

    move/from16 v3, v29

    goto/16 :goto_49b

    .end local v16    # "userId":I
    .end local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v35    # "startTime":J
    .local v2, "userId":I
    .local v3, "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v6    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "startTime":J
    :catchall_436
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v34, v6

    move-wide/from16 v35, v9

    move-object v10, v8

    move-object v1, v0

    move-object/from16 v26, v5

    move/from16 v3, v29

    .end local v2    # "userId":I
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v6    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "startTime":J
    .restart local v16    # "userId":I
    .restart local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v35    # "startTime":J
    goto/16 :goto_49b

    .end local v16    # "userId":I
    .end local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v35    # "startTime":J
    .restart local v2    # "userId":I
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v9    # "startTime":J
    .restart local v30    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_447
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-wide/from16 v35, v9

    move-object/from16 v34, v30

    move-object v10, v8

    move-object v1, v0

    move-object/from16 v26, v5

    move/from16 v3, v29

    .end local v2    # "userId":I
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v9    # "startTime":J
    .end local v30    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "userId":I
    .restart local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v35    # "startTime":J
    goto :goto_49b

    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v16    # "userId":I
    .end local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v35    # "startTime":J
    .restart local v2    # "userId":I
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v9    # "startTime":J
    .restart local v30    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local p8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :catchall_457
    move-exception v0

    move-object/from16 v13, p8

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-wide/from16 v35, v9

    move-object/from16 v34, v30

    move-object v10, v8

    move-object v1, v0

    move-object/from16 v26, v5

    move/from16 v3, v29

    .end local v2    # "userId":I
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v9    # "startTime":J
    .end local v30    # "r":Lcom/android/server/am/ProcessRecord;
    .end local p8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v16    # "userId":I
    .restart local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v35    # "startTime":J
    goto :goto_49b

    .end local v5    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v16    # "userId":I
    .end local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v35    # "startTime":J
    .restart local v2    # "userId":I
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v9    # "startTime":J
    .restart local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v30    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local p8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :catchall_469
    move-exception v0

    move-object/from16 v13, p8

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object v14, v5

    move-wide/from16 v35, v9

    move-object/from16 v34, v30

    move-object v10, v8

    move-object v1, v0

    move/from16 v3, v29

    .end local v2    # "userId":I
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v9    # "startTime":J
    .end local v30    # "r":Lcom/android/server/am/ProcessRecord;
    .end local p8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v16    # "userId":I
    .restart local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v35    # "startTime":J
    goto :goto_49b

    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v16    # "userId":I
    .end local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v35    # "startTime":J
    .restart local v2    # "userId":I
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v9    # "startTime":J
    .restart local v30    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local p8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :catchall_47a
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-wide/from16 v35, v9

    move-object v10, v13

    move-object v14, v15

    move-object/from16 v34, v30

    move-object/from16 v13, p8

    move-object v1, v0

    move/from16 v3, v29

    .end local v2    # "userId":I
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v9    # "startTime":J
    .end local v30    # "r":Lcom/android/server/am/ProcessRecord;
    .end local p8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v16    # "userId":I
    .restart local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v35    # "startTime":J
    goto :goto_49b

    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v16    # "userId":I
    .end local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v35    # "startTime":J
    .restart local v2    # "userId":I
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v30    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "startTime":J
    .restart local p8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :catchall_48b
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object v10, v13

    move-object v14, v15

    move-object/from16 v34, v30

    move-wide/from16 v35, v32

    move-object/from16 v13, p8

    move-object v1, v0

    move/from16 v3, v29

    .end local v2    # "userId":I
    .end local v29    # "providerRunning":Z
    .end local v30    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v32    # "startTime":J
    .end local p8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v3, "providerRunning":Z
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v16    # "userId":I
    .restart local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v35    # "startTime":J
    :goto_49b
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 335
    nop

    .end local v3    # "providerRunning":Z
    .end local v16    # "userId":I
    .end local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v25    # "expectedUserId":I
    .end local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    throw v1
    :try_end_4a0
    .catchall {:try_start_422 .. :try_end_4a0} :catchall_4a0

    .line 664
    .end local v11    # "origId":J
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v27    # "checkCrossUser":Z
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v35    # "startTime":J
    .restart local v3    # "providerRunning":Z
    .restart local v16    # "userId":I
    .restart local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v25    # "expectedUserId":I
    .restart local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    :catchall_4a0
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v8, p4

    move-object v4, v0

    move-object v15, v10

    move/from16 v1, v16

    move-object/from16 v2, v17

    goto/16 :goto_109f

    .end local v16    # "userId":I
    .end local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v2    # "userId":I
    .local v3, "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v29    # "providerRunning":Z
    :catchall_4ad
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_4ba

    :catchall_4b3
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v31, v12

    :goto_4ba
    move-object v14, v15

    move-object/from16 v7, p1

    move/from16 v8, p4

    move-object v4, v0

    move-object v15, v13

    move/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v29

    .end local v2    # "userId":I
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v16    # "userId":I
    .restart local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_109f

    .end local v16    # "userId":I
    .end local v17    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v2, "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v7    # "userId":I
    :catchall_4c9
    move-exception v0

    move v1, v7

    move-object/from16 v31, v12

    move-object v14, v15

    move-object/from16 v7, p1

    move/from16 v8, p4

    move-object v4, v0

    move-object v15, v13

    move/from16 v3, v29

    .end local v7    # "userId":I
    .local v1, "userId":I
    goto/16 :goto_109f

    .line 240
    .end local v1    # "userId":I
    .local v6, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v7    # "userId":I
    .local v8, "startTime":J
    .local v10, "r":Lcom/android/server/am/ProcessRecord;
    .restart local v27    # "checkCrossUser":Z
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    :cond_4d8
    move v1, v7

    move-wide/from16 v35, v8

    move-object/from16 v34, v10

    move-object/from16 v31, v12

    move-object v10, v13

    move-object v14, v15

    move-object v8, v3

    move-object v13, v6

    .end local v6    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v7    # "userId":I
    .end local v8    # "startTime":J
    .end local v10    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "userId":I
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v35    # "startTime":J
    move-object/from16 v12, v28

    move/from16 v15, v29

    .line 338
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v29    # "providerRunning":Z
    .local v12, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .local v15, "providerRunning":Z
    :goto_4e7
    if-nez v15, :cond_cbf

    .line 340
    :try_start_4e9
    const-string v3, "getContentProviderImpl: before resolveContentProvider"
    :try_end_4eb
    .catch Landroid/os/RemoteException; {:try_start_4e9 .. :try_end_4eb} :catch_50e
    .catchall {:try_start_4e9 .. :try_end_4eb} :catchall_504

    move-wide/from16 v6, v35

    .end local v35    # "startTime":J
    .local v6, "startTime":J
    :try_start_4ed
    invoke-direct {v14, v6, v7, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 341
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/16 v4, 0xc00

    invoke-interface {v3, v10, v4, v5, v1}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    move-object v2, v3

    .line 345
    const-string v3, "getContentProviderImpl: after resolveContentProvider"

    invoke-direct {v14, v6, v7, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_500
    .catch Landroid/os/RemoteException; {:try_start_4ed .. :try_end_500} :catch_502
    .catchall {:try_start_4ed .. :try_end_500} :catchall_504

    .line 347
    move-object v11, v2

    goto :goto_512

    .line 346
    :catch_502
    move-exception v0

    goto :goto_511

    .line 664
    .end local v6    # "startTime":J
    .end local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v27    # "checkCrossUser":Z
    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_504
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v8, p4

    move-object v4, v0

    move v3, v15

    move-object v15, v10

    goto/16 :goto_109f

    .line 346
    .restart local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v27    # "checkCrossUser":Z
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v35    # "startTime":J
    :catch_50e
    move-exception v0

    move-wide/from16 v6, v35

    .end local v35    # "startTime":J
    .restart local v6    # "startTime":J
    :goto_511
    move-object v11, v2

    .line 348
    .end local v2    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v11, "cpi":Landroid/content/pm/ProviderInfo;
    :goto_512
    if-nez v11, :cond_548

    .line 350
    :try_start_514
    const-string v2, "ContentProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No provider info for content provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when providerRunning is false, caller is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v9, v34

    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .local v9, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    monitor-exit v31
    :try_end_539
    .catchall {:try_start_514 .. :try_end_539} :catchall_53d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v8

    .line 664
    .end local v6    # "startTime":J
    .end local v9    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v27    # "checkCrossUser":Z
    :catchall_53d
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v8, p4

    move-object v4, v0

    move-object v2, v11

    move v3, v15

    move-object v15, v10

    goto/16 :goto_109f

    .line 357
    .restart local v6    # "startTime":J
    .restart local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v27    # "checkCrossUser":Z
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_548
    move-object/from16 v9, v34

    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "r":Lcom/android/server/am/ProcessRecord;
    :try_start_54a
    iget-object v2, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v11, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v4, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v11, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v8, v11, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v2, v3, v4, v5, v8}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v2
    :try_end_558
    .catchall {:try_start_54a .. :try_end_558} :catchall_cae

    if-eqz v2, :cond_56f

    :try_start_55a
    iget-object v2, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 360
    if-nez v9, :cond_561

    move/from16 v3, p4

    goto :goto_563

    :cond_561
    iget v3, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    :goto_563
    iget-object v4, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 359
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v2

    if-eqz v2, :cond_56f

    const/4 v2, 0x1

    goto :goto_570

    :cond_56f
    const/4 v2, 0x0

    .line 363
    .local v2, "singleton":Z
    :goto_570
    if-nez v2, :cond_583

    invoke-static {}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->getInstance()Lcom/miui/server/xspace/XSpaceManagerServiceStub;

    move-result-object v3

    iget-object v4, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 364
    invoke-virtual {v3, v4, v1}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->shouldCrossXSpace(Ljava/lang/String;I)Z

    move-result v3
    :try_end_57e
    .catchall {:try_start_55a .. :try_end_57e} :catchall_53d

    if-eqz v3, :cond_581

    goto :goto_583

    :cond_581
    const/4 v3, 0x0

    goto :goto_584

    :cond_583
    :goto_583
    const/4 v3, 0x1

    :goto_584
    move/from16 v22, v3

    .line 366
    .end local v2    # "singleton":Z
    .local v22, "singleton":Z
    if-eqz v22, :cond_58b

    .line 367
    const/4 v1, 0x0

    move v8, v1

    goto :goto_58c

    .line 366
    :cond_58b
    move v8, v1

    .line 369
    .end local v1    # "userId":I
    .local v8, "userId":I
    :goto_58c
    :try_start_58c
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, v8}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 370
    const-string v1, "getContentProviderImpl: got app info for user"

    invoke-direct {v14, v6, v7, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_59b
    .catchall {:try_start_58c .. :try_end_59b} :catchall_c99

    .line 372
    if-nez v22, :cond_5a0

    const/16 v16, 0x1

    goto :goto_5a2

    :cond_5a0
    const/16 v16, 0x0

    :goto_5a2
    move/from16 v5, p4

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v11

    move/from16 v4, p4

    move/from16 p8, v15

    move v15, v5

    .end local v15    # "providerRunning":Z
    .local p8, "providerRunning":Z
    move v5, v8

    move-wide/from16 v32, v6

    .end local v6    # "startTime":J
    .restart local v32    # "startTime":J
    move/from16 v6, v16

    move-object/from16 v7, p2

    move v15, v8

    move-object/from16 v30, v9

    move-object/from16 v16, v13

    const/4 v13, 0x0

    .end local v8    # "userId":I
    .end local v9    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v15, "userId":I
    .local v16, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v30    # "r":Lcom/android/server/am/ProcessRecord;
    move-wide/from16 v8, v32

    :try_start_5bc
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    .line 375
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z
    :try_end_5c3
    .catchall {:try_start_5bc .. :try_end_5c3} :catchall_c86

    if-nez v1, :cond_5e6

    :try_start_5c5
    iget-object v1, v11, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d1

    goto :goto_5e6

    .line 379
    :cond_5d1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Attempt to launch content provider before system ready"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v15    # "userId":I
    .end local v25    # "expectedUserId":I
    .end local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    .end local p8    # "providerRunning":Z
    throw v1
    :try_end_5d9
    .catchall {:try_start_5c5 .. :try_end_5d9} :catchall_5d9

    .line 664
    .end local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v16    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v22    # "singleton":Z
    .end local v27    # "checkCrossUser":Z
    .end local v30    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v32    # "startTime":J
    .restart local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v15    # "userId":I
    .restart local v25    # "expectedUserId":I
    .restart local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    .restart local p8    # "providerRunning":Z
    :catchall_5d9
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v8, p4

    move/from16 v3, p8

    move-object v4, v0

    move-object v2, v11

    move v1, v15

    move-object v15, v10

    goto/16 :goto_109f

    .line 385
    .restart local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v22    # "singleton":Z
    .restart local v27    # "checkCrossUser":Z
    .restart local v30    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "startTime":J
    :cond_5e6
    :goto_5e6
    :try_start_5e6
    monitor-enter p0
    :try_end_5e7
    .catchall {:try_start_5e6 .. :try_end_5e7} :catchall_c86

    .line 386
    :try_start_5e7
    iget-boolean v1, v14, Lcom/android/server/am/ContentProviderHelper;->mSystemProvidersInstalled:Z
    :try_end_5e9
    .catchall {:try_start_5e7 .. :try_end_5e9} :catchall_c68

    if-nez v1, :cond_62d

    :try_start_5eb
    iget-object v1, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_62d

    const-string/jumbo v1, "system"

    iget-object v2, v11, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 387
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5ff

    goto :goto_62d

    .line 388
    :cond_5ff
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access system provider: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' before system providers are installed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "userId":I
    .end local v16    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v22    # "singleton":Z
    .end local v25    # "expectedUserId":I
    .end local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v27    # "checkCrossUser":Z
    .end local v30    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v32    # "startTime":J
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    .end local p8    # "providerRunning":Z
    throw v1
    :try_end_620
    .catchall {:try_start_5eb .. :try_end_620} :catchall_620

    .line 391
    .restart local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "userId":I
    .restart local v16    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v22    # "singleton":Z
    .restart local v25    # "expectedUserId":I
    .restart local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v27    # "checkCrossUser":Z
    .restart local v30    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "startTime":J
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    .restart local p8    # "providerRunning":Z
    :catchall_620
    move-exception v0

    move-object v1, v0

    move-object/from16 v20, v11

    move-object/from16 v28, v12

    move/from16 v19, v15

    move-object/from16 v48, v30

    move-object v15, v10

    goto/16 :goto_c73

    :cond_62d
    :goto_62d
    :try_start_62d
    monitor-exit p0
    :try_end_62e
    .catchall {:try_start_62d .. :try_end_62e} :catchall_c68

    .line 395
    :try_start_62e
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v9, 0x0

    invoke-virtual {v1, v15, v9}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v1
    :try_end_637
    .catchall {:try_start_62e .. :try_end_637} :catchall_c86

    if-nez v1, :cond_682

    .line 396
    :try_start_639
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is stopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    monitor-exit v31
    :try_end_67e
    .catchall {:try_start_639 .. :try_end_67e} :catchall_5d9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v13

    .line 402
    :cond_682
    :try_start_682
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v11, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, v11, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v1

    .line 403
    .local v8, "comp":Landroid/content/ComponentName;
    const-string v1, "getContentProviderImpl: before getProviderByClass"

    move-wide/from16 v6, v32

    .end local v32    # "startTime":J
    .restart local v6    # "startTime":J
    invoke-direct {v14, v6, v7, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 404
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, v8, v15}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v1

    .line 405
    .end local v16    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    const-string v2, "getContentProviderImpl: after getProviderByClass"

    invoke-direct {v14, v6, v7, v2}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_69e
    .catchall {:try_start_682 .. :try_end_69e} :catchall_c86

    .line 412
    if-eqz v1, :cond_6a9

    :try_start_6a0
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;
    :try_end_6a2
    .catchall {:try_start_6a0 .. :try_end_6a2} :catchall_5d9

    if-ne v12, v2, :cond_6a7

    if-eqz v12, :cond_6a7

    goto :goto_6a9

    :cond_6a7
    move v2, v9

    goto :goto_6aa

    :cond_6a9
    :goto_6a9
    const/4 v2, 0x1

    :goto_6aa
    move/from16 v23, v2

    .line 413
    .local v23, "firstClass":Z
    if-eqz v23, :cond_75c

    .line 414
    :try_start_6ae
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 419
    .local v2, "ident":J
    iget-object v4, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v5, v30

    .end local v30    # "r":Lcom/android/server/am/ProcessRecord;
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    invoke-direct {v14, v11, v5, v15, v4}, Lcom/android/server/am/ContentProviderHelper;->requestTargetProviderPermissionsReviewIfNeededLocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/am/ProcessRecord;ILandroid/content/Context;)Z

    move-result v4
    :try_end_6bc
    .catchall {:try_start_6ae .. :try_end_6bc} :catchall_74e

    if-nez v4, :cond_6e7

    .line 422
    :try_start_6be
    const-string v4, "ContentProviderHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "u"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " requires a permissions review for content provider "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    monitor-exit v31
    :try_end_6e2
    .catchall {:try_start_6be .. :try_end_6e2} :catchall_5d9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v4, 0x0

    return-object v4

    .line 428
    :cond_6e7
    :try_start_6e7
    const-string v4, "getContentProviderImpl: before getApplicationInfo"

    invoke-direct {v14, v6, v7, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 429
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iget-object v13, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-wide/16 v9, 0x400

    invoke-interface {v4, v13, v9, v10, v15}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 432
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    const-string v9, "getContentProviderImpl: after getApplicationInfo"

    invoke-direct {v14, v6, v7, v9}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 433
    if-nez v4, :cond_725

    .line 434
    const-string v9, "ContentProviderHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No package info for content provider "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, v11, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71b
    .catch Landroid/os/RemoteException; {:try_start_6e7 .. :try_end_71b} :catch_749
    .catchall {:try_start_6e7 .. :try_end_71b} :catchall_742

    .line 435
    nop

    .line 442
    :try_start_71c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v31
    :try_end_720
    .catchall {:try_start_71c .. :try_end_720} :catchall_74e

    .line 435
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v9, 0x0

    return-object v9

    .line 437
    :cond_725
    :try_start_725
    iget-object v9, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v4, v15}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    .line 438
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v19, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v4, Lcom/android/server/am/ContentProviderRecord;

    iget-object v9, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v4

    move-object/from16 v17, v9

    move-object/from16 v18, v11

    move-object/from16 v20, v8

    move/from16 v21, v22

    invoke-direct/range {v16 .. v21}, Lcom/android/server/am/ContentProviderRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V
    :try_end_73c
    .catch Landroid/os/RemoteException; {:try_start_725 .. :try_end_73c} :catch_749
    .catchall {:try_start_725 .. :try_end_73c} :catchall_742

    move-object v1, v4

    .line 442
    .end local v19    # "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_73d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 443
    move-object v13, v1

    goto :goto_75f

    .line 442
    :catchall_742
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 443
    nop

    .end local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v15    # "userId":I
    .end local v25    # "expectedUserId":I
    .end local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    .end local p8    # "providerRunning":Z
    throw v4

    .line 439
    .restart local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v15    # "userId":I
    .restart local v25    # "expectedUserId":I
    .restart local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    .restart local p8    # "providerRunning":Z
    :catch_749
    move-exception v0

    .line 442
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_74d
    .catchall {:try_start_73d .. :try_end_74d} :catchall_74e

    .line 443
    goto :goto_75e

    .line 664
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v2    # "ident":J
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "startTime":J
    .end local v8    # "comp":Landroid/content/ComponentName;
    .end local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v22    # "singleton":Z
    .end local v23    # "firstClass":Z
    .end local v27    # "checkCrossUser":Z
    :catchall_74e
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v8, p4

    move/from16 v3, p8

    move-object v4, v0

    move-object v2, v11

    move v1, v15

    move-object/from16 v15, p2

    goto/16 :goto_109f

    .line 413
    .restart local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v6    # "startTime":J
    .restart local v8    # "comp":Landroid/content/ComponentName;
    .restart local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v22    # "singleton":Z
    .restart local v23    # "firstClass":Z
    .restart local v27    # "checkCrossUser":Z
    .restart local v30    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_75c
    move-object/from16 v5, v30

    .line 446
    .end local v30    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_75e
    move-object v13, v1

    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_75f
    :try_start_75f
    const-string v1, "getContentProviderImpl: now have ContentProviderRecord"

    invoke-direct {v14, v6, v7, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_764
    .catchall {:try_start_75f .. :try_end_764} :catchall_c60

    .line 448
    if-eqz v5, :cond_7ad

    :try_start_766
    invoke-virtual {v13, v5}, Lcom/android/server/am/ContentProviderRecord;->canRunHere(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_7ad

    .line 454
    if-eqz v13, :cond_79d

    iget v1, v13, Lcom/android/server/am/ContentProviderRecord;->uid:I

    const/16 v10, 0x2710

    if-le v1, v10, :cond_79d

    .line 455
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v1

    const-string/jumbo v2, "provider"

    iget v9, v13, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 456
    invoke-virtual {v13}, Lcom/android/server/am/ContentProviderRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_78d

    .line 457
    invoke-virtual {v13}, Lcom/android/server/am/ContentProviderRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto :goto_78e

    :cond_78d
    const/4 v10, 0x0

    .line 455
    :goto_78e
    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v17, v12

    move-object v12, v5

    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .local v12, "r":Lcom/android/server/am/ProcessRecord;
    .local v17, "dyingProc":Lcom/android/server/am/ProcessRecord;
    move v5, v9

    move-object v9, v8

    move-wide v7, v6

    .end local v6    # "startTime":J
    .end local v8    # "comp":Landroid/content/ComponentName;
    .local v7, "startTime":J
    .local v9, "comp":Landroid/content/ComponentName;
    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerServiceStub;->isRestrictBackgroundAction(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z

    goto :goto_7a2

    .line 454
    .end local v7    # "startTime":J
    .end local v9    # "comp":Landroid/content/ComponentName;
    .end local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "startTime":J
    .restart local v8    # "comp":Landroid/content/ComponentName;
    .local v12, "dyingProc":Lcom/android/server/am/ProcessRecord;
    :cond_79d
    move-object v9, v8

    move-object/from16 v17, v12

    move-object v12, v5

    move-wide v7, v6

    .line 459
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "startTime":J
    .end local v8    # "comp":Landroid/content/ComponentName;
    .restart local v7    # "startTime":J
    .restart local v9    # "comp":Landroid/content/ComponentName;
    .local v12, "r":Lcom/android/server/am/ProcessRecord;
    .restart local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    :goto_7a2
    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-virtual {v13, v1, v6}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v1

    monitor-exit v31
    :try_end_7a9
    .catchall {:try_start_766 .. :try_end_7a9} :catchall_74e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 448
    .end local v7    # "startTime":J
    .end local v9    # "comp":Landroid/content/ComponentName;
    .end local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "startTime":J
    .restart local v8    # "comp":Landroid/content/ComponentName;
    .local v12, "dyingProc":Lcom/android/server/am/ProcessRecord;
    :cond_7ad
    move-object v9, v8

    move-object/from16 v17, v12

    const/16 v10, 0x2710

    move-object v12, v5

    move-wide v7, v6

    const/4 v6, 0x1

    .line 462
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "startTime":J
    .end local v8    # "comp":Landroid/content/ComponentName;
    .restart local v7    # "startTime":J
    .restart local v9    # "comp":Landroid/content/ComponentName;
    .local v12, "r":Lcom/android/server/am/ProcessRecord;
    .restart local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    :try_start_7b5
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z
    :try_end_7b7
    .catchall {:try_start_7b5 .. :try_end_7b7} :catchall_c60

    if-eqz v1, :cond_806

    .line 463
    :try_start_7b9
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LAUNCHING REMOTE PROVIDER (myuid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v12, :cond_7cf

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_7d0

    :cond_7cf
    const/4 v3, 0x0

    :goto_7d0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pruid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    .line 465
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 463
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_806
    .catchall {:try_start_7b9 .. :try_end_806} :catchall_74e

    .line 470
    :cond_806
    :try_start_806
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_80c
    .catchall {:try_start_806 .. :try_end_80c} :catchall_c60

    move v5, v1

    .line 472
    .local v5, "numLaunchingProviders":I
    const/4 v1, 0x0

    move v4, v1

    .local v4, "i":I
    :goto_80f
    if-ge v4, v5, :cond_85f

    .line 473
    :try_start_811
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v13, :cond_85c

    .line 475
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote provider process for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isKilled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 476
    iget-object v3, v13, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_83c

    const-string/jumbo v3, "null"

    goto :goto_846

    :cond_83c
    iget-object v3, v13, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_846
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", caller is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85b
    .catchall {:try_start_811 .. :try_end_85b} :catchall_74e

    .line 479
    goto :goto_85f

    .line 472
    :cond_85c
    add-int/lit8 v4, v4, 0x1

    goto :goto_80f

    .line 484
    :cond_85f
    :goto_85f
    if-lt v4, v5, :cond_bc3

    .line 485
    :try_start_861
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_865
    .catchall {:try_start_861 .. :try_end_865} :catchall_bb2

    move-wide/from16 v18, v1

    .line 488
    .local v18, "origId":J
    :try_start_867
    iget-object v1, v13, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v3, p5

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_871
    .catchall {:try_start_867 .. :try_end_871} :catchall_b9f

    if-nez v1, :cond_880

    .line 490
    :try_start_873
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v2, v13, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x1f

    invoke-virtual {v1, v2, v15, v6}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V
    :try_end_880
    .catchall {:try_start_873 .. :try_end_880} :catchall_897

    .line 496
    :cond_880
    :try_start_880
    const-string v1, "getContentProviderImpl: before set stopped state"

    invoke-direct {v14, v7, v8, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 498
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, v13, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v1, v2, v6, v15}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V

    .line 500
    const-string v1, "getContentProviderImpl: after set stopped state"

    invoke-direct {v14, v7, v8, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_896
    .catch Landroid/os/RemoteException; {:try_start_880 .. :try_end_896} :catch_8d0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_880 .. :try_end_896} :catch_8a7
    .catchall {:try_start_880 .. :try_end_896} :catchall_897

    goto :goto_8d1

    .line 584
    :catchall_897
    move-exception v0

    move-object/from16 v6, p2

    move-object v1, v0

    move/from16 v21, v4

    move/from16 v24, v5

    move-object/from16 v20, v9

    move-object/from16 v34, v12

    move/from16 v37, v15

    goto/16 :goto_bad

    .line 502
    :catch_8a7
    move-exception v0

    move-object v1, v0

    .line 503
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_8a9
    const-string v2, "ContentProviderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed trying to unstop package "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, v13, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ": "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8cf
    .catchall {:try_start_8a9 .. :try_end_8cf} :catchall_897

    goto :goto_8d2

    .line 501
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_8d0
    move-exception v0

    .line 505
    :goto_8d1
    nop

    .line 508
    :goto_8d2
    :try_start_8d2
    const-string v1, "getContentProviderImpl: looking for process record"

    invoke-direct {v14, v7, v8, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 509
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v11, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v6, v13, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v6}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1
    :try_end_8e3
    .catchall {:try_start_8d2 .. :try_end_8e3} :catchall_b9f

    move-object v10, v1

    .line 512
    .local v10, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v10, :cond_a51

    :try_start_8e6
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    move-object v6, v1

    .local v6, "thread":Landroid/app/IApplicationThread;
    if-eqz v1, :cond_a2f

    .line 513
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v1

    if-nez v1, :cond_a1f

    .line 514
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z
    :try_end_8f5
    .catchall {:try_start_8e6 .. :try_end_8f5} :catchall_a3f

    if-eqz v1, :cond_90f

    .line 515
    :try_start_8f7
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installing in existing process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90f
    .catchall {:try_start_8f7 .. :try_end_90f} :catchall_897

    .line 518
    :cond_90f
    :try_start_90f
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v1

    const-string/jumbo v2, "provider"

    iget v3, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    move-object/from16 v16, v6

    .end local v6    # "thread":Landroid/app/IApplicationThread;
    .local v16, "thread":Landroid/app/IApplicationThread;
    iget-object v6, v11, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;
    :try_end_91c
    .catchall {:try_start_90f .. :try_end_91c} :catchall_a3f

    move/from16 v20, v3

    move/from16 v3, p4

    move/from16 v21, v4

    .end local v4    # "i":I
    .local v21, "i":I
    move-object/from16 v4, p5

    move/from16 v24, v5

    .end local v5    # "numLaunchingProviders":I
    .local v24, "numLaunchingProviders":I
    move/from16 v5, v20

    move-object/from16 v20, v9

    move/from16 v28, v15

    move-object/from16 v9, v16

    const/4 v15, 0x1

    .end local v15    # "userId":I
    .end local v16    # "thread":Landroid/app/IApplicationThread;
    .local v9, "thread":Landroid/app/IApplicationThread;
    .local v20, "comp":Landroid/content/ComponentName;
    .local v28, "userId":I
    :try_start_92f
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerServiceStub;->isRestrictBackgroundAction(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z

    .line 520
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    move-object v6, v1

    .line 521
    .local v6, "pr":Lcom/android/server/am/ProcessProviderRecord;
    iget-object v1, v11, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/android/server/am/ProcessProviderRecord;->hasProvider(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a00

    .line 522
    const-string v1, "getContentProviderImpl: scheduling install"

    invoke-direct {v14, v7, v8, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 523
    iget-object v1, v11, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v1, v13}, Lcom/android/server/am/ProcessProviderRecord;->installProvider(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V
    :try_end_947
    .catchall {:try_start_92f .. :try_end_947} :catchall_a13

    .line 526
    :try_start_947
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v1

    iget-object v2, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;
    :try_end_94d
    .catch Landroid/os/RemoteException; {:try_start_947 .. :try_end_94d} :catch_9f4
    .catchall {:try_start_947 .. :try_end_94d} :catchall_a13

    move/from16 v5, p4

    move/from16 v4, v28

    const/4 v3, 0x0

    .end local v28    # "userId":I
    .local v4, "userId":I
    :try_start_952
    invoke-interface {v1, v5, v12, v2, v3}, Lcom/android/server/am/SmartPowerServiceStub;->shouldInterceptProvider(ILcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)Z

    move-result v1
    :try_end_956
    .catch Landroid/os/RemoteException; {:try_start_952 .. :try_end_956} :catch_9e9
    .catchall {:try_start_952 .. :try_end_956} :catchall_9de

    if-eqz v1, :cond_9b5

    .line 529
    :try_start_958
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartPower intercept request for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_965
    .catch Landroid/os/RemoteException; {:try_start_958 .. :try_end_965} :catch_9a7
    .catchall {:try_start_958 .. :try_end_965} :catchall_99d

    move-object/from16 v3, p2

    :try_start_967
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ": caller is "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97c
    .catch Landroid/os/RemoteException; {:try_start_967 .. :try_end_97c} :catch_99b
    .catchall {:try_start_967 .. :try_end_97c} :catchall_992

    .line 531
    nop

    .line 584
    :try_start_97d
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v31
    :try_end_981
    .catchall {:try_start_97d .. :try_end_981} :catchall_986

    .line 531
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, 0x0

    return-object v1

    .line 664
    .end local v6    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v7    # "startTime":J
    .end local v9    # "thread":Landroid/app/IApplicationThread;
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "origId":J
    .end local v20    # "comp":Landroid/content/ComponentName;
    .end local v21    # "i":I
    .end local v22    # "singleton":Z
    .end local v23    # "firstClass":Z
    .end local v24    # "numLaunchingProviders":I
    .end local v27    # "checkCrossUser":Z
    :catchall_986
    move-exception v0

    move-object/from16 v7, p1

    move-object v15, v3

    move v1, v4

    move v8, v5

    move-object v2, v11

    move/from16 v3, p8

    move-object v4, v0

    goto/16 :goto_109f

    .line 584
    .restart local v7    # "startTime":J
    .restart local v12    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "origId":J
    .restart local v20    # "comp":Landroid/content/ComponentName;
    .restart local v21    # "i":I
    .restart local v22    # "singleton":Z
    .restart local v23    # "firstClass":Z
    .restart local v24    # "numLaunchingProviders":I
    .restart local v27    # "checkCrossUser":Z
    :catchall_992
    move-exception v0

    move-object v1, v0

    move-object v6, v3

    move/from16 v37, v4

    move-object/from16 v34, v12

    goto/16 :goto_bad

    .line 538
    .restart local v6    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v9    # "thread":Landroid/app/IApplicationThread;
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    :catch_99b
    move-exception v0

    goto :goto_9aa

    .line 584
    .end local v6    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v9    # "thread":Landroid/app/IApplicationThread;
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_99d
    move-exception v0

    move-object/from16 v6, p2

    move-object v1, v0

    move/from16 v37, v4

    move-object/from16 v34, v12

    goto/16 :goto_bad

    .line 538
    .restart local v6    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v9    # "thread":Landroid/app/IApplicationThread;
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    :catch_9a7
    move-exception v0

    move-object/from16 v3, p2

    :goto_9aa
    move/from16 v37, v4

    move-object/from16 v29, v6

    move-object/from16 v28, v10

    const/16 v16, 0x0

    move v10, v5

    goto/16 :goto_a0a

    .line 533
    :cond_9b5
    move-object/from16 v3, p2

    :try_start_9b7
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v1
    :try_end_9bb
    .catch Landroid/os/RemoteException; {:try_start_9b7 .. :try_end_9bb} :catch_9d4
    .catchall {:try_start_9b7 .. :try_end_9bb} :catchall_9de

    const/4 v15, 0x0

    .line 534
    move/from16 v2, p4

    const/16 v16, 0x0

    move-object v3, v12

    move/from16 v37, v4

    .end local v4    # "userId":I
    .local v37, "userId":I
    move-object v4, v10

    move-object/from16 v28, v10

    move v10, v5

    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v28, "proc":Lcom/android/server/am/ProcessRecord;
    move-object v5, v13

    move-object/from16 v29, v6

    .end local v6    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .local v29, "pr":Lcom/android/server/am/ProcessProviderRecord;
    move v6, v15

    :try_start_9cb
    invoke-interface/range {v1 .. v6}, Lcom/android/server/am/SmartPowerServiceStub;->onContentProviderStatusChanged(ILcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)V

    .line 537
    invoke-interface {v9, v11}, Landroid/app/IApplicationThread;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    :try_end_9d1
    .catch Landroid/os/RemoteException; {:try_start_9cb .. :try_end_9d1} :catch_9d2
    .catchall {:try_start_9cb .. :try_end_9d1} :catchall_a6d

    .line 539
    goto :goto_a0a

    .line 538
    :catch_9d2
    move-exception v0

    goto :goto_a0a

    .end local v28    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v29    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v37    # "userId":I
    .restart local v4    # "userId":I
    .restart local v6    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    :catch_9d4
    move-exception v0

    move/from16 v37, v4

    move-object/from16 v29, v6

    move-object/from16 v28, v10

    const/16 v16, 0x0

    goto :goto_9f2

    .line 584
    .end local v6    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v9    # "thread":Landroid/app/IApplicationThread;
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_9de
    move-exception v0

    move v10, v5

    move-object/from16 v6, p2

    move-object v1, v0

    move/from16 v37, v4

    move-object/from16 v34, v12

    .end local v4    # "userId":I
    .restart local v37    # "userId":I
    goto/16 :goto_bad

    .line 538
    .end local v37    # "userId":I
    .restart local v4    # "userId":I
    .restart local v6    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v9    # "thread":Landroid/app/IApplicationThread;
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    :catch_9e9
    move-exception v0

    move/from16 v16, v3

    move/from16 v37, v4

    move-object/from16 v29, v6

    move-object/from16 v28, v10

    :goto_9f2
    move v10, v5

    .end local v4    # "userId":I
    .end local v6    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v28    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v37    # "userId":I
    goto :goto_a0a

    .end local v29    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v37    # "userId":I
    .restart local v6    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v28, "userId":I
    :catch_9f4
    move-exception v0

    move-object/from16 v29, v6

    move/from16 v37, v28

    const/16 v16, 0x0

    move-object/from16 v28, v10

    move/from16 v10, p4

    .end local v6    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v28, "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v37    # "userId":I
    goto :goto_a0a

    .line 521
    .end local v29    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v37    # "userId":I
    .restart local v6    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v28, "userId":I
    :cond_a00
    move-object/from16 v29, v6

    move/from16 v37, v28

    const/16 v16, 0x0

    move-object/from16 v28, v10

    move/from16 v10, p4

    .line 541
    .end local v6    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v28, "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v37    # "userId":I
    :goto_a0a
    move-object/from16 v6, p2

    move-object/from16 v34, v12

    move-object/from16 v10, v28

    const/4 v15, 0x0

    goto/16 :goto_b6c

    .line 584
    .end local v9    # "thread":Landroid/app/IApplicationThread;
    .end local v37    # "userId":I
    .local v28, "userId":I
    :catchall_a13
    move-exception v0

    move/from16 v10, p4

    move-object/from16 v6, p2

    move-object v1, v0

    move-object/from16 v34, v12

    move/from16 v37, v28

    .end local v28    # "userId":I
    .restart local v37    # "userId":I
    goto/16 :goto_bad

    .line 513
    .end local v20    # "comp":Landroid/content/ComponentName;
    .end local v21    # "i":I
    .end local v24    # "numLaunchingProviders":I
    .end local v37    # "userId":I
    .local v4, "i":I
    .restart local v5    # "numLaunchingProviders":I
    .local v6, "thread":Landroid/app/IApplicationThread;
    .local v9, "comp":Landroid/content/ComponentName;
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "userId":I
    :cond_a1f
    move/from16 v21, v4

    move/from16 v24, v5

    move-object/from16 v20, v9

    move-object/from16 v28, v10

    move/from16 v37, v15

    const/16 v16, 0x0

    move/from16 v10, p4

    move-object v9, v6

    .end local v4    # "i":I
    .end local v5    # "numLaunchingProviders":I
    .end local v6    # "thread":Landroid/app/IApplicationThread;
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "userId":I
    .local v9, "thread":Landroid/app/IApplicationThread;
    .restart local v20    # "comp":Landroid/content/ComponentName;
    .restart local v21    # "i":I
    .restart local v24    # "numLaunchingProviders":I
    .local v28, "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v37    # "userId":I
    goto :goto_a5f

    .line 512
    .end local v20    # "comp":Landroid/content/ComponentName;
    .end local v21    # "i":I
    .end local v24    # "numLaunchingProviders":I
    .end local v28    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v37    # "userId":I
    .restart local v4    # "i":I
    .restart local v5    # "numLaunchingProviders":I
    .restart local v6    # "thread":Landroid/app/IApplicationThread;
    .local v9, "comp":Landroid/content/ComponentName;
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "userId":I
    :cond_a2f
    move/from16 v21, v4

    move/from16 v24, v5

    move-object/from16 v20, v9

    move-object/from16 v28, v10

    move/from16 v37, v15

    const/16 v16, 0x0

    move/from16 v10, p4

    move-object v9, v6

    .end local v4    # "i":I
    .end local v5    # "numLaunchingProviders":I
    .end local v6    # "thread":Landroid/app/IApplicationThread;
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "userId":I
    .local v9, "thread":Landroid/app/IApplicationThread;
    .restart local v20    # "comp":Landroid/content/ComponentName;
    .restart local v21    # "i":I
    .restart local v24    # "numLaunchingProviders":I
    .restart local v28    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v37    # "userId":I
    goto :goto_a5f

    .line 584
    .end local v20    # "comp":Landroid/content/ComponentName;
    .end local v21    # "i":I
    .end local v24    # "numLaunchingProviders":I
    .end local v28    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v37    # "userId":I
    .restart local v4    # "i":I
    .restart local v5    # "numLaunchingProviders":I
    .local v9, "comp":Landroid/content/ComponentName;
    .restart local v15    # "userId":I
    :catchall_a3f
    move-exception v0

    move/from16 v10, p4

    move/from16 v21, v4

    move/from16 v24, v5

    move-object/from16 v20, v9

    move-object/from16 v6, p2

    move-object v1, v0

    move-object/from16 v34, v12

    move/from16 v37, v15

    .end local v4    # "i":I
    .end local v5    # "numLaunchingProviders":I
    .end local v9    # "comp":Landroid/content/ComponentName;
    .end local v15    # "userId":I
    .restart local v20    # "comp":Landroid/content/ComponentName;
    .restart local v21    # "i":I
    .restart local v24    # "numLaunchingProviders":I
    .restart local v37    # "userId":I
    goto/16 :goto_bad

    .line 512
    .end local v20    # "comp":Landroid/content/ComponentName;
    .end local v21    # "i":I
    .end local v24    # "numLaunchingProviders":I
    .end local v37    # "userId":I
    .restart local v4    # "i":I
    .restart local v5    # "numLaunchingProviders":I
    .restart local v9    # "comp":Landroid/content/ComponentName;
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "userId":I
    :cond_a51
    move/from16 v21, v4

    move/from16 v24, v5

    move-object/from16 v20, v9

    move-object/from16 v28, v10

    move/from16 v37, v15

    const/16 v16, 0x0

    move/from16 v10, p4

    .line 543
    .end local v4    # "i":I
    .end local v5    # "numLaunchingProviders":I
    .end local v9    # "comp":Landroid/content/ComponentName;
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "userId":I
    .restart local v20    # "comp":Landroid/content/ComponentName;
    .restart local v21    # "i":I
    .restart local v24    # "numLaunchingProviders":I
    .restart local v28    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v37    # "userId":I
    :goto_a5f
    :try_start_a5f
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a62
    .catchall {:try_start_a5f .. :try_end_a62} :catchall_b98

    .line 545
    if-eqz v12, :cond_a75

    :try_start_a64
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_a75

    .line 546
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_a6c
    .catchall {:try_start_a64 .. :try_end_a6c} :catchall_a6d

    .local v1, "callerPackage":Ljava/lang/String;
    goto :goto_a82

    .line 584
    .end local v1    # "callerPackage":Ljava/lang/String;
    .end local v28    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_a6d
    move-exception v0

    move-object/from16 v6, p2

    move-object v1, v0

    move-object/from16 v34, v12

    goto/16 :goto_bad

    .line 548
    .restart local v28    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_a75
    :try_start_a75
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 549
    .local v1, "callingPid":I
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerServiceStub;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v2
    :try_end_a81
    .catchall {:try_start_a75 .. :try_end_a81} :catchall_b98

    move-object v1, v2

    .line 552
    .local v1, "callerPackage":Ljava/lang/String;
    :goto_a82
    :try_start_a82
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v2
    :try_end_a86
    .catchall {:try_start_a82 .. :try_end_a86} :catchall_b8a

    move-object/from16 v15, p1

    move/from16 v9, v37

    .end local v37    # "userId":I
    .local v9, "userId":I
    :try_start_a8a
    invoke-virtual {v2, v15, v10, v13, v9}, Lcom/android/server/am/ActivityManagerServiceStub;->checkRunningCompatibility(Landroid/app/IApplicationThread;ILcom/android/server/am/ContentProviderRecord;I)Z

    move-result v2
    :try_end_a8e
    .catchall {:try_start_a8a .. :try_end_a8e} :catchall_b81

    if-nez v2, :cond_ae0

    .line 555
    :try_start_a90
    const-string v2, "ContentProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch app for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_a9d
    .catchall {:try_start_a90 .. :try_end_a9d} :catchall_ad6

    move-object/from16 v6, p2

    :try_start_a9f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": caller is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab4
    .catchall {:try_start_a9f .. :try_end_ab4} :catchall_ad4

    .line 557
    nop

    .line 560
    :try_start_ab5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_ab8
    .catchall {:try_start_ab5 .. :try_end_ab8} :catchall_acc

    .line 584
    :try_start_ab8
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v31
    :try_end_abc
    .catchall {:try_start_ab8 .. :try_end_abc} :catchall_ac1

    .line 557
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v2, 0x0

    return-object v2

    .line 664
    .end local v1    # "callerPackage":Ljava/lang/String;
    .end local v7    # "startTime":J
    .end local v12    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "origId":J
    .end local v20    # "comp":Landroid/content/ComponentName;
    .end local v21    # "i":I
    .end local v22    # "singleton":Z
    .end local v23    # "firstClass":Z
    .end local v24    # "numLaunchingProviders":I
    .end local v27    # "checkCrossUser":Z
    .end local v28    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_ac1
    move-exception v0

    move/from16 v3, p8

    move-object v4, v0

    move v1, v9

    move v8, v10

    move-object v2, v11

    move-object v7, v15

    move-object v15, v6

    goto/16 :goto_109f

    .line 584
    .restart local v7    # "startTime":J
    .restart local v12    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "origId":J
    .restart local v20    # "comp":Landroid/content/ComponentName;
    .restart local v21    # "i":I
    .restart local v22    # "singleton":Z
    .restart local v23    # "firstClass":Z
    .restart local v24    # "numLaunchingProviders":I
    .restart local v27    # "checkCrossUser":Z
    :catchall_acc
    move-exception v0

    move-object v1, v0

    move/from16 v37, v9

    move-object/from16 v34, v12

    goto/16 :goto_bad

    .line 560
    .restart local v1    # "callerPackage":Ljava/lang/String;
    .restart local v28    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_ad4
    move-exception v0

    goto :goto_ad9

    :catchall_ad6
    move-exception v0

    move-object/from16 v6, p2

    :goto_ad9
    move-object v2, v0

    move/from16 v37, v9

    move-object/from16 v34, v12

    goto/16 :goto_b90

    :cond_ae0
    move-object/from16 v6, p2

    :try_start_ae2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 561
    nop

    .line 563
    const-string v2, "getContentProviderImpl: before start process"

    invoke-direct {v14, v7, v8, v2}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 564
    iget-object v2, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v11, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v4, v13, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v41, 0x0

    const/16 v42, 0x0

    new-instance v5, Lcom/android/server/am/HostingRecord;
    :try_end_af7
    .catchall {:try_start_ae2 .. :try_end_af7} :catchall_b7a

    move/from16 v37, v9

    .end local v9    # "userId":I
    .restart local v37    # "userId":I
    :try_start_af9
    const-string v9, "content provider"

    new-instance v10, Landroid/content/ComponentName;

    iget-object v15, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_b01
    .catchall {:try_start_af9 .. :try_end_b01} :catchall_b78

    move-object/from16 v34, v12

    .end local v12    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    :try_start_b03
    iget-object v12, v11, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v15, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v9, v10}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    move-object/from16 v40, v4

    move-object/from16 v43, v5

    move-object/from16 v47, v1

    invoke-virtual/range {v38 .. v47}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    move-object v10, v2

    .line 572
    .end local v28    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    const-string v2, "getContentProviderImpl: after start process"

    invoke-direct {v14, v7, v8, v2}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 573
    if-nez v10, :cond_b6b

    .line 574
    const-string v2, "ContentProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": process is bad"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b61
    .catchall {:try_start_b03 .. :try_end_b61} :catchall_b95

    .line 578
    nop

    .line 584
    :try_start_b62
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v31
    :try_end_b66
    .catchall {:try_start_b62 .. :try_end_b66} :catchall_be1

    .line 578
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v15, 0x0

    return-object v15

    .line 573
    :cond_b6b
    const/4 v15, 0x0

    .line 581
    .end local v1    # "callerPackage":Ljava/lang/String;
    :goto_b6c
    :try_start_b6c
    iput-object v10, v13, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 582
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b73
    .catchall {:try_start_b6c .. :try_end_b73} :catchall_b95

    .line 584
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    :try_start_b73
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_b76
    .catchall {:try_start_b73 .. :try_end_b76} :catchall_be1

    .line 585
    goto/16 :goto_bd2

    .line 584
    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v12    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_b78
    move-exception v0

    goto :goto_b9b

    .end local v37    # "userId":I
    .restart local v9    # "userId":I
    :catchall_b7a
    move-exception v0

    move/from16 v37, v9

    move-object/from16 v34, v12

    move-object v1, v0

    .end local v9    # "userId":I
    .end local v12    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v37    # "userId":I
    goto :goto_bad

    .line 560
    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v37    # "userId":I
    .restart local v1    # "callerPackage":Ljava/lang/String;
    .restart local v9    # "userId":I
    .restart local v12    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v28    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_b81
    move-exception v0

    move-object/from16 v6, p2

    move/from16 v37, v9

    move-object/from16 v34, v12

    move-object v2, v0

    .end local v9    # "userId":I
    .end local v12    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v37    # "userId":I
    goto :goto_b90

    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v12    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_b8a
    move-exception v0

    move-object/from16 v6, p2

    move-object/from16 v34, v12

    move-object v2, v0

    .end local v12    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_b90
    :try_start_b90
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 561
    nop

    .end local v7    # "startTime":J
    .end local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "origId":J
    .end local v20    # "comp":Landroid/content/ComponentName;
    .end local v21    # "i":I
    .end local v22    # "singleton":Z
    .end local v23    # "firstClass":Z
    .end local v24    # "numLaunchingProviders":I
    .end local v25    # "expectedUserId":I
    .end local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v27    # "checkCrossUser":Z
    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v37    # "userId":I
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    .end local p8    # "providerRunning":Z
    throw v2
    :try_end_b95
    .catchall {:try_start_b90 .. :try_end_b95} :catchall_b95

    .line 584
    .end local v1    # "callerPackage":Ljava/lang/String;
    .end local v28    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v7    # "startTime":J
    .restart local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "origId":J
    .restart local v20    # "comp":Landroid/content/ComponentName;
    .restart local v21    # "i":I
    .restart local v22    # "singleton":Z
    .restart local v23    # "firstClass":Z
    .restart local v24    # "numLaunchingProviders":I
    .restart local v25    # "expectedUserId":I
    .restart local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v27    # "checkCrossUser":Z
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v37    # "userId":I
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    .restart local p8    # "providerRunning":Z
    :catchall_b95
    move-exception v0

    move-object v1, v0

    goto :goto_bad

    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v12    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_b98
    move-exception v0

    move-object/from16 v6, p2

    :goto_b9b
    move-object/from16 v34, v12

    move-object v1, v0

    .end local v12    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    goto :goto_bad

    .end local v20    # "comp":Landroid/content/ComponentName;
    .end local v21    # "i":I
    .end local v24    # "numLaunchingProviders":I
    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v37    # "userId":I
    .restart local v4    # "i":I
    .restart local v5    # "numLaunchingProviders":I
    .local v9, "comp":Landroid/content/ComponentName;
    .restart local v12    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "userId":I
    :catchall_b9f
    move-exception v0

    move-object/from16 v6, p2

    move/from16 v21, v4

    move/from16 v24, v5

    move-object/from16 v20, v9

    move-object/from16 v34, v12

    move/from16 v37, v15

    move-object v1, v0

    .end local v4    # "i":I
    .end local v5    # "numLaunchingProviders":I
    .end local v9    # "comp":Landroid/content/ComponentName;
    .end local v12    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "userId":I
    .restart local v20    # "comp":Landroid/content/ComponentName;
    .restart local v21    # "i":I
    .restart local v24    # "numLaunchingProviders":I
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v37    # "userId":I
    :goto_bad
    :try_start_bad
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 585
    nop

    .end local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v25    # "expectedUserId":I
    .end local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v37    # "userId":I
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    .end local p8    # "providerRunning":Z
    throw v1
    :try_end_bb2
    .catchall {:try_start_bad .. :try_end_bb2} :catchall_be1

    .line 664
    .end local v7    # "startTime":J
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "origId":J
    .end local v20    # "comp":Landroid/content/ComponentName;
    .end local v21    # "i":I
    .end local v22    # "singleton":Z
    .end local v23    # "firstClass":Z
    .end local v24    # "numLaunchingProviders":I
    .end local v27    # "checkCrossUser":Z
    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v15    # "userId":I
    .restart local v25    # "expectedUserId":I
    .restart local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    .restart local p8    # "providerRunning":Z
    :catchall_bb2
    move-exception v0

    move/from16 v37, v15

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    move/from16 v8, p4

    move/from16 v3, p8

    move-object v4, v0

    move-object v2, v11

    move/from16 v1, v37

    .end local v15    # "userId":I
    .restart local v37    # "userId":I
    goto/16 :goto_109f

    .line 484
    .end local v37    # "userId":I
    .restart local v4    # "i":I
    .restart local v5    # "numLaunchingProviders":I
    .restart local v7    # "startTime":J
    .restart local v9    # "comp":Landroid/content/ComponentName;
    .restart local v12    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v15    # "userId":I
    .restart local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v22    # "singleton":Z
    .restart local v23    # "firstClass":Z
    .restart local v27    # "checkCrossUser":Z
    :cond_bc3
    move-object/from16 v6, p2

    move/from16 v21, v4

    move/from16 v24, v5

    move-object/from16 v20, v9

    move-object/from16 v34, v12

    move/from16 v37, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 588
    .end local v4    # "i":I
    .end local v5    # "numLaunchingProviders":I
    .end local v9    # "comp":Landroid/content/ComponentName;
    .end local v12    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "userId":I
    .restart local v20    # "comp":Landroid/content/ComponentName;
    .restart local v21    # "i":I
    .restart local v24    # "numLaunchingProviders":I
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v37    # "userId":I
    :goto_bd2
    :try_start_bd2
    const-string v1, "getContentProviderImpl: updating data structures"

    invoke-direct {v14, v7, v8, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_bd7
    .catchall {:try_start_bd2 .. :try_end_bd7} :catchall_c4d

    .line 592
    if-eqz v23, :cond_bef

    .line 593
    :try_start_bd9
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    move-object/from16 v9, v20

    .end local v20    # "comp":Landroid/content/ComponentName;
    .restart local v9    # "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v9, v13}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V
    :try_end_be0
    .catchall {:try_start_bd9 .. :try_end_be0} :catchall_be1

    goto :goto_bf1

    .line 664
    .end local v7    # "startTime":J
    .end local v9    # "comp":Landroid/content/ComponentName;
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v21    # "i":I
    .end local v22    # "singleton":Z
    .end local v23    # "firstClass":Z
    .end local v24    # "numLaunchingProviders":I
    .end local v27    # "checkCrossUser":Z
    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_be1
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v8, p4

    move/from16 v3, p8

    move-object v4, v0

    move-object v15, v6

    move-object v2, v11

    move/from16 v1, v37

    goto/16 :goto_109f

    .line 592
    .restart local v7    # "startTime":J
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v20    # "comp":Landroid/content/ComponentName;
    .restart local v21    # "i":I
    .restart local v22    # "singleton":Z
    .restart local v23    # "firstClass":Z
    .restart local v24    # "numLaunchingProviders":I
    .restart local v27    # "checkCrossUser":Z
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_bef
    move-object/from16 v9, v20

    .line 596
    .end local v20    # "comp":Landroid/content/ComponentName;
    .restart local v9    # "comp":Landroid/content/ComponentName;
    :goto_bf1
    :try_start_bf1
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, v6, v13}, Lcom/android/server/am/ProviderMap;->putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    .line 597
    const/4 v10, 0x0

    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;
    :try_end_bfb
    .catchall {:try_start_bf1 .. :try_end_bfb} :catchall_c4d

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object v3, v13

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v32, v7

    .end local v7    # "startTime":J
    .restart local v32    # "startTime":J
    move-object/from16 v7, p6

    move-object/from16 v18, v9

    .end local v9    # "comp":Landroid/content/ComponentName;
    .local v18, "comp":Landroid/content/ComponentName;
    move/from16 v8, p7

    move/from16 v15, v16

    move/from16 v19, v37

    .end local v37    # "userId":I
    .local v19, "userId":I
    move v9, v10

    move-object/from16 v15, p2

    move-object/from16 v20, v11

    .end local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v20, "cpi":Landroid/content/pm/ProviderInfo;
    move-wide/from16 v10, v32

    move-object/from16 v28, v17

    move-object/from16 v16, v34

    .end local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .local v16, "r":Lcom/android/server/am/ProcessRecord;
    .local v28, "dyingProc":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v48, v16

    move-object/from16 v16, v13

    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v16, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v48, "r":Lcom/android/server/am/ProcessRecord;
    move/from16 v13, v25

    :try_start_c23
    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ContentProviderHelper;->incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v1
    :try_end_c27
    .catchall {:try_start_c23 .. :try_end_c27} :catchall_c75

    .line 599
    .end local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v1, "conn":Lcom/android/server/am/ContentProviderConnection;
    if-eqz v1, :cond_c3d

    .line 600
    const/4 v2, 0x1

    :try_start_c2a
    iput-boolean v2, v1, Lcom/android/server/am/ContentProviderConnection;->waiting:Z
    :try_end_c2c
    .catchall {:try_start_c2a .. :try_end_c2c} :catchall_c2d

    goto :goto_c3d

    .line 664
    .end local v16    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v18    # "comp":Landroid/content/ComponentName;
    .end local v21    # "i":I
    .end local v22    # "singleton":Z
    .end local v23    # "firstClass":Z
    .end local v24    # "numLaunchingProviders":I
    .end local v27    # "checkCrossUser":Z
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v32    # "startTime":J
    .end local v48    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_c2d
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v8, p4

    move/from16 v3, p8

    move-object v4, v0

    move-object/from16 v26, v1

    move/from16 v1, v19

    move-object/from16 v2, v20

    goto/16 :goto_109f

    .line 603
    .restart local v16    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v27    # "checkCrossUser":Z
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "startTime":J
    .restart local v48    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_c3d
    :goto_c3d
    move-object/from16 v7, p1

    move/from16 v8, p4

    move-object v6, v1

    move-object/from16 v13, v16

    move/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v9, v48

    const/4 v10, 0x0

    goto/16 :goto_d12

    .line 664
    .end local v1    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v16    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v19    # "userId":I
    .end local v20    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v27    # "checkCrossUser":Z
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v32    # "startTime":J
    .end local v48    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v37    # "userId":I
    :catchall_c4d
    move-exception v0

    move-object v15, v6

    move-object/from16 v20, v11

    move/from16 v19, v37

    move-object/from16 v7, p1

    move/from16 v8, p4

    move/from16 v3, p8

    move-object v4, v0

    move/from16 v1, v19

    move-object/from16 v2, v20

    .end local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v37    # "userId":I
    .restart local v19    # "userId":I
    .restart local v20    # "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_109f

    .end local v19    # "userId":I
    .end local v20    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v15    # "userId":I
    :catchall_c60
    move-exception v0

    move-object/from16 v20, v11

    move/from16 v19, v15

    move-object/from16 v15, p2

    goto :goto_c8c

    .line 391
    .local v12, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v22    # "singleton":Z
    .restart local v27    # "checkCrossUser":Z
    .restart local v30    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "startTime":J
    :catchall_c68
    move-exception v0

    move-object/from16 v20, v11

    move-object/from16 v28, v12

    move/from16 v19, v15

    move-object/from16 v48, v30

    move-object v15, v10

    move-object v1, v0

    .end local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "userId":I
    .end local v30    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v19    # "userId":I
    .restart local v20    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v48    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_c73
    :try_start_c73
    monitor-exit p0
    :try_end_c74
    .catchall {:try_start_c73 .. :try_end_c74} :catchall_c83

    .end local v19    # "userId":I
    .end local v20    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v25    # "expectedUserId":I
    .end local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    .end local p8    # "providerRunning":Z
    :try_start_c74
    throw v1
    :try_end_c75
    .catchall {:try_start_c74 .. :try_end_c75} :catchall_c75

    .line 664
    .end local v16    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v22    # "singleton":Z
    .end local v27    # "checkCrossUser":Z
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v32    # "startTime":J
    .end local v48    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v19    # "userId":I
    .restart local v20    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v25    # "expectedUserId":I
    .restart local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    .restart local p8    # "providerRunning":Z
    :catchall_c75
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v8, p4

    move/from16 v3, p8

    move-object v4, v0

    move/from16 v1, v19

    move-object/from16 v2, v20

    goto/16 :goto_109f

    .line 391
    .restart local v16    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v22    # "singleton":Z
    .restart local v27    # "checkCrossUser":Z
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "startTime":J
    .restart local v48    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_c83
    move-exception v0

    move-object v1, v0

    goto :goto_c73

    .line 664
    .end local v16    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v19    # "userId":I
    .end local v20    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v22    # "singleton":Z
    .end local v27    # "checkCrossUser":Z
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v32    # "startTime":J
    .end local v48    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v15    # "userId":I
    :catchall_c86
    move-exception v0

    move-object/from16 v20, v11

    move/from16 v19, v15

    move-object v15, v10

    :goto_c8c
    move-object/from16 v7, p1

    move/from16 v8, p4

    move/from16 v3, p8

    move-object v4, v0

    move/from16 v1, v19

    move-object/from16 v2, v20

    .end local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v15    # "userId":I
    .restart local v19    # "userId":I
    .restart local v20    # "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_109f

    .end local v19    # "userId":I
    .end local v20    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local p8    # "providerRunning":Z
    .local v8, "userId":I
    .restart local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v15, "providerRunning":Z
    :catchall_c99
    move-exception v0

    move/from16 v19, v8

    move-object/from16 v20, v11

    move/from16 p8, v15

    move-object v15, v10

    move-object/from16 v7, p1

    move/from16 v8, p4

    move/from16 v3, p8

    move-object v4, v0

    move/from16 v1, v19

    move-object/from16 v2, v20

    .end local v8    # "userId":I
    .end local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v15    # "providerRunning":Z
    .restart local v19    # "userId":I
    .restart local v20    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local p8    # "providerRunning":Z
    goto/16 :goto_109f

    .end local v19    # "userId":I
    .end local v20    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local p8    # "providerRunning":Z
    .local v1, "userId":I
    .restart local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v15    # "providerRunning":Z
    :catchall_cae
    move-exception v0

    move-object/from16 v20, v11

    move/from16 p8, v15

    move-object v15, v10

    move-object/from16 v7, p1

    move/from16 v8, p4

    move/from16 v3, p8

    move-object v4, v0

    move-object/from16 v2, v20

    .end local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v15    # "providerRunning":Z
    .restart local v20    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local p8    # "providerRunning":Z
    goto/16 :goto_109f

    .line 604
    .end local v20    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local p8    # "providerRunning":Z
    .local v2, "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v15    # "providerRunning":Z
    .restart local v27    # "checkCrossUser":Z
    .restart local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v35    # "startTime":J
    :cond_cbf
    move-object/from16 v28, v12

    move-object/from16 v16, v13

    move/from16 p8, v15

    move-object/from16 v48, v34

    move-wide/from16 v32, v35

    move-object v15, v10

    .end local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v15    # "providerRunning":Z
    .end local v34    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v35    # "startTime":J
    .restart local v16    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "startTime":J
    .restart local v48    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local p8    # "providerRunning":Z
    :try_start_cca
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v3
    :try_end_cce
    .catchall {:try_start_cca .. :try_end_cce} :catchall_108a

    move-object/from16 v7, p1

    move/from16 v8, p4

    move-object/from16 v5, v16

    .end local v16    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v5, "cpr":Lcom/android/server/am/ContentProviderRecord;
    :try_start_cd4
    invoke-virtual {v3, v7, v8, v5, v1}, Lcom/android/server/am/ActivityManagerServiceStub;->checkRunningCompatibility(Landroid/app/IApplicationThread;ILcom/android/server/am/ContentProviderRecord;I)Z

    move-result v3
    :try_end_cd8
    .catchall {:try_start_cd4 .. :try_end_cd8} :catchall_1083

    if-nez v3, :cond_d0a

    .line 607
    :try_start_cda
    const-string v3, "ContentProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to launch app if providerRunning is true for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": caller is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v9, v48

    .end local v48    # "r":Lcom/android/server/am/ProcessRecord;
    .local v9, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    monitor-exit v31
    :try_end_cff
    .catchall {:try_start_cda .. :try_end_cff} :catchall_d04

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v10, 0x0

    return-object v10

    .line 664
    .end local v5    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v9    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v27    # "checkCrossUser":Z
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v32    # "startTime":J
    :catchall_d04
    move-exception v0

    move/from16 v3, p8

    move-object v4, v0

    goto/16 :goto_109f

    .line 604
    .restart local v5    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v27    # "checkCrossUser":Z
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "startTime":J
    .restart local v48    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_d0a
    move-object/from16 v9, v48

    const/4 v10, 0x0

    .end local v48    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "r":Lcom/android/server/am/ProcessRecord;
    move v11, v1

    move-object v12, v2

    move-object v13, v5

    move-object/from16 v6, v26

    .line 613
    .end local v1    # "userId":I
    .end local v2    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v5    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v6, "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v11, "userId":I
    .local v12, "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_d12
    :try_start_d12
    const-string v1, "getContentProviderImpl: done!"

    move-wide/from16 v4, v32

    .end local v32    # "startTime":J
    .local v4, "startTime":J
    invoke-direct {v14, v4, v5, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 615
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 616
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 615
    invoke-virtual {v1, v11, v10, v8, v2}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V
    :try_end_d26
    .catchall {:try_start_d12 .. :try_end_d26} :catchall_1074

    .line 618
    if-eqz v7, :cond_e83

    .line 620
    :try_start_d28
    monitor-enter v13
    :try_end_d29
    .catchall {:try_start_d28 .. :try_end_d29} :catchall_e75

    .line 621
    :try_start_d29
    iget-object v1, v13, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;
    :try_end_d2b
    .catchall {:try_start_d29 .. :try_end_d2b} :catchall_e5e

    if-nez v1, :cond_dc5

    .line 622
    :try_start_d2d
    iget-object v1, v13, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;
    :try_end_d2f
    .catchall {:try_start_d2d .. :try_end_d2f} :catchall_dbc

    if-nez v1, :cond_d97

    .line 623
    :try_start_d31
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": launching app became null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v1, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 628
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 627
    invoke-static {v1, v2, v3, v15}, Lcom/android/server/am/EventLogTags;->writeAmProviderLostProcess(ILjava/lang/String;ILjava/lang/String;)V

    .line 631
    monitor-exit v13
    :try_end_d7f
    .catchall {:try_start_d31 .. :try_end_d7f} :catchall_d8e

    :try_start_d7f
    monitor-exit v31
    :try_end_d80
    .catchall {:try_start_d7f .. :try_end_d80} :catchall_d84

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v10

    .line 664
    .end local v4    # "startTime":J
    .end local v9    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v27    # "checkCrossUser":Z
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    :catchall_d84
    move-exception v0

    move/from16 v3, p8

    move-object v4, v0

    move-object/from16 v26, v6

    move v1, v11

    move-object v2, v12

    goto/16 :goto_109f

    .line 643
    .restart local v4    # "startTime":J
    .restart local v9    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v27    # "checkCrossUser":Z
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    :catchall_d8e
    move-exception v0

    move-object v1, v0

    move-wide/from16 v17, v4

    move-object v10, v6

    move/from16 v16, v11

    goto/16 :goto_e65

    .line 634
    :cond_d97
    if-eqz v6, :cond_d9c

    .line 635
    const/4 v1, 0x1

    :try_start_d9a
    iput-boolean v1, v6, Lcom/android/server/am/ContentProviderConnection;->waiting:Z
    :try_end_d9c
    .catchall {:try_start_d9a .. :try_end_d9c} :catchall_d8e

    .line 637
    :cond_d9c
    :try_start_d9c
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 639
    .local v1, "msg":Landroid/os/Message;
    iput-object v13, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 640
    iget-object v2, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    sget v3, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I
    :try_end_dae
    .catchall {:try_start_d9c .. :try_end_dae} :catchall_dbc

    move/from16 v16, v11

    .end local v11    # "userId":I
    .local v16, "userId":I
    int-to-long v10, v3

    :try_start_db1
    invoke-virtual {v2, v1, v10, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_db4
    .catchall {:try_start_db1 .. :try_end_db4} :catchall_db5

    goto :goto_dc7

    .line 643
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_db5
    move-exception v0

    move-object v1, v0

    move-wide/from16 v17, v4

    move-object v10, v6

    goto/16 :goto_e65

    .end local v16    # "userId":I
    .restart local v11    # "userId":I
    :catchall_dbc
    move-exception v0

    move/from16 v16, v11

    move-object v1, v0

    move-wide/from16 v17, v4

    move-object v10, v6

    .end local v11    # "userId":I
    .restart local v16    # "userId":I
    goto/16 :goto_e65

    .line 621
    .end local v16    # "userId":I
    .restart local v11    # "userId":I
    :cond_dc5
    move/from16 v16, v11

    .line 643
    .end local v11    # "userId":I
    .restart local v16    # "userId":I
    :goto_dc7
    :try_start_dc7
    monitor-exit v13
    :try_end_dc8
    .catchall {:try_start_dc7 .. :try_end_dc8} :catchall_e58

    .line 645
    :try_start_dc8
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v1

    iget-object v2, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    invoke-interface {v1, v8, v9, v2, v3}, Lcom/android/server/am/SmartPowerServiceStub;->shouldInterceptProvider(ILcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)Z

    move-result v1
    :try_end_dd3
    .catchall {:try_start_dc8 .. :try_end_dd3} :catchall_e4c

    if-eqz v1, :cond_e08

    .line 648
    :try_start_dd5
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartPower intercept request for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": caller is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    monitor-exit v31
    :try_end_df8
    .catchall {:try_start_dd5 .. :try_end_df8} :catchall_dfd

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, 0x0

    return-object v1

    .line 664
    .end local v4    # "startTime":J
    .end local v9    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v27    # "checkCrossUser":Z
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    :catchall_dfd
    move-exception v0

    move/from16 v3, p8

    move-object v4, v0

    move-object/from16 v26, v6

    move-object v2, v12

    move/from16 v1, v16

    goto/16 :goto_109f

    .line 652
    .restart local v4    # "startTime":J
    .restart local v9    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v27    # "checkCrossUser":Z
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    :cond_e08
    :try_start_e08
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v1

    iget-object v10, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;
    :try_end_e0e
    .catchall {:try_start_e08 .. :try_end_e0e} :catchall_e4c

    const/4 v11, 0x1

    move/from16 v2, p4

    move-object v3, v9

    move-wide/from16 v17, v4

    .end local v4    # "startTime":J
    .local v17, "startTime":J
    move-object v4, v10

    move-object v5, v13

    move-object v10, v6

    .end local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v10, "conn":Lcom/android/server/am/ContentProviderConnection;
    move v6, v11

    :try_start_e18
    invoke-interface/range {v1 .. v6}, Lcom/android/server/am/SmartPowerServiceStub;->onContentProviderStatusChanged(ILcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)V

    .line 654
    iget v1, v13, Lcom/android/server/am/ContentProviderRecord;->uid:I

    const/16 v11, 0x2710

    if-le v1, v11, :cond_e42

    .line 655
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v1

    const-string/jumbo v2, "provider"

    iget v5, v13, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 656
    invoke-virtual {v13}, Lcom/android/server/am/ContentProviderRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_e3a

    .line 657
    invoke-virtual {v13}, Lcom/android/server/am/ContentProviderRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_e3b

    :cond_e3a
    const/4 v6, 0x0

    .line 655
    :goto_e3b
    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerServiceStub;->isRestrictBackgroundAction(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z

    .line 662
    :cond_e42
    const/4 v1, 0x0

    invoke-virtual {v13, v10, v1}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v1

    monitor-exit v31
    :try_end_e48
    .catchall {:try_start_e18 .. :try_end_e48} :catchall_e67

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 664
    .end local v9    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v17    # "startTime":J
    .end local v27    # "checkCrossUser":Z
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :catchall_e4c
    move-exception v0

    move-object v10, v6

    move/from16 v3, p8

    move-object v4, v0

    move-object/from16 v26, v10

    move-object v2, v12

    move/from16 v1, v16

    .end local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v10    # "conn":Lcom/android/server/am/ContentProviderConnection;
    goto/16 :goto_109f

    .line 643
    .end local v10    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v4    # "startTime":J
    .restart local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v9    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v27    # "checkCrossUser":Z
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    :catchall_e58
    move-exception v0

    move-wide/from16 v17, v4

    move-object v10, v6

    move-object v1, v0

    .end local v4    # "startTime":J
    .end local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v10    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v17    # "startTime":J
    goto :goto_e65

    .end local v10    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v16    # "userId":I
    .end local v17    # "startTime":J
    .restart local v4    # "startTime":J
    .restart local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v11    # "userId":I
    :catchall_e5e
    move-exception v0

    move-wide/from16 v17, v4

    move-object v10, v6

    move/from16 v16, v11

    move-object v1, v0

    .end local v4    # "startTime":J
    .end local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v11    # "userId":I
    .restart local v10    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v16    # "userId":I
    .restart local v17    # "startTime":J
    :goto_e65
    :try_start_e65
    monitor-exit v13
    :try_end_e66
    .catchall {:try_start_e65 .. :try_end_e66} :catchall_e72

    .end local v10    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v12    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v16    # "userId":I
    .end local v25    # "expectedUserId":I
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    .end local p8    # "providerRunning":Z
    :try_start_e66
    throw v1
    :try_end_e67
    .catchall {:try_start_e66 .. :try_end_e67} :catchall_e67

    .line 664
    .end local v9    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v17    # "startTime":J
    .end local v27    # "checkCrossUser":Z
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v10    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v12    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v16    # "userId":I
    .restart local v25    # "expectedUserId":I
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    .restart local p8    # "providerRunning":Z
    :catchall_e67
    move-exception v0

    move/from16 v3, p8

    move-object v4, v0

    move-object/from16 v26, v10

    move-object v2, v12

    move/from16 v1, v16

    goto/16 :goto_109f

    .line 643
    .restart local v9    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v17    # "startTime":J
    .restart local v27    # "checkCrossUser":Z
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    :catchall_e72
    move-exception v0

    move-object v1, v0

    goto :goto_e65

    .line 664
    .end local v9    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v16    # "userId":I
    .end local v17    # "startTime":J
    .end local v27    # "checkCrossUser":Z
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v11    # "userId":I
    :catchall_e75
    move-exception v0

    move-object v10, v6

    move/from16 v16, v11

    move/from16 v3, p8

    move-object v4, v0

    move-object/from16 v26, v10

    move-object v2, v12

    move/from16 v1, v16

    .end local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v11    # "userId":I
    .restart local v10    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v16    # "userId":I
    goto/16 :goto_109f

    .line 618
    .end local v10    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v16    # "userId":I
    .restart local v4    # "startTime":J
    .restart local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v9    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "userId":I
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v27    # "checkCrossUser":Z
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    :cond_e83
    move-wide/from16 v17, v4

    move-object v10, v6

    move/from16 v16, v11

    const/16 v11, 0x2710

    .line 664
    .end local v4    # "startTime":J
    .end local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v9    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "userId":I
    .end local v27    # "checkCrossUser":Z
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v10    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v16    # "userId":I
    :try_start_e8a
    monitor-exit v31
    :try_end_e8b
    .catchall {:try_start_e8a .. :try_end_e8b} :catchall_1068

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 669
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget v3, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v3, v3

    add-long v17, v1, v3

    .line 670
    .local v17, "timeout":J
    const/4 v1, 0x0

    .line 671
    .local v1, "timedOut":Z
    monitor-enter v13

    .line 672
    :goto_e99
    :try_start_e99
    iget-object v2, v13, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;
    :try_end_e9b
    .catchall {:try_start_e99 .. :try_end_e9b} :catchall_105f

    if-nez v2, :cond_f63

    .line 673
    :try_start_e9d
    iget-object v2, v13, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_ef1

    .line 674
    const-string v2, "ContentProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": launching app became null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 678
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v3, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 677
    invoke-static {v2, v3, v4, v15}, Lcom/android/server/am/EventLogTags;->writeAmProviderLostProcess(ILjava/lang/String;ILjava/lang/String;)V

    .line 680
    monitor-exit v13
    :try_end_eef
    .catchall {:try_start_e9d .. :try_end_eef} :catchall_f5d

    const/4 v2, 0x0

    return-object v2

    .line 683
    :cond_ef1
    :try_start_ef1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v17, v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 684
    .local v2, "wait":J
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v6, :cond_f35

    .line 685
    const-string v6, "ActivityManager_MU"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting to start provider "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " launchingApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_f35
    if-eqz v10, :cond_f3a

    .line 689
    const/4 v4, 0x1

    iput-boolean v4, v10, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 691
    :cond_f3a
    invoke-virtual {v13, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 692
    iget-object v4, v13, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;
    :try_end_f3f
    .catch Ljava/lang/InterruptedException; {:try_start_ef1 .. :try_end_f3f} :catch_f55
    .catchall {:try_start_ef1 .. :try_end_f3f} :catchall_f4c

    if-nez v4, :cond_f49

    .line 693
    const/4 v1, 0x1

    .line 698
    if-eqz v10, :cond_f47

    .line 699
    const/4 v4, 0x0

    :try_start_f45
    iput-boolean v4, v10, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 703
    .end local v2    # "wait":J
    :cond_f47
    move v9, v1

    goto :goto_f64

    .line 698
    :cond_f49
    if-eqz v10, :cond_f5b

    .line 699
    goto :goto_f58

    .line 698
    :catchall_f4c
    move-exception v0

    move-object v2, v0

    if-eqz v10, :cond_f53

    .line 699
    const/4 v3, 0x0

    iput-boolean v3, v10, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 701
    :cond_f53
    nop

    .end local v1    # "timedOut":Z
    .end local v10    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v12    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v16    # "userId":I
    .end local v17    # "timeout":J
    .end local v25    # "expectedUserId":I
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    .end local p8    # "providerRunning":Z
    throw v2

    .line 696
    .restart local v1    # "timedOut":Z
    .restart local v10    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v12    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v16    # "userId":I
    .restart local v17    # "timeout":J
    .restart local v25    # "expectedUserId":I
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    .restart local p8    # "providerRunning":Z
    :catch_f55
    move-exception v0

    .line 698
    if-eqz v10, :cond_f5b

    .line 699
    :goto_f58
    const/4 v2, 0x0

    iput-boolean v2, v10, Lcom/android/server/am/ContentProviderConnection;->waiting:Z
    :try_end_f5b
    .catchall {:try_start_f45 .. :try_end_f5b} :catchall_f5d

    .line 701
    :cond_f5b
    goto/16 :goto_e99

    .line 703
    :catchall_f5d
    move-exception v0

    move/from16 v29, p8

    move-object v2, v0

    goto/16 :goto_1063

    .line 672
    :cond_f63
    move v9, v1

    .line 703
    .end local v1    # "timedOut":Z
    .local v9, "timedOut":Z
    :goto_f64
    :try_start_f64
    monitor-exit v13
    :try_end_f65
    .catchall {:try_start_f64 .. :try_end_f65} :catchall_1059

    .line 704
    if-eqz v9, :cond_fe7

    .line 706
    const-string/jumbo v1, "unknown"

    .line 707
    .local v1, "callerName":Ljava/lang/String;
    if-eqz v7, :cond_f8d

    .line 708
    iget-object v2, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2

    :try_start_f71
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 709
    iget-object v3, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 710
    invoke-virtual {v3, v7}, Lcom/android/server/am/ProcessList;->getLRURecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 711
    .local v3, "record":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_f81

    .line 712
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v1, v4

    .line 714
    .end local v3    # "record":Lcom/android/server/am/ProcessRecord;
    :cond_f81
    monitor-exit v2
    :try_end_f82
    .catchall {:try_start_f71 .. :try_end_f82} :catchall_f86

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_f8d

    :catchall_f86
    move-exception v0

    move-object v3, v0

    :try_start_f88
    monitor-exit v2
    :try_end_f89
    .catchall {:try_start_f88 .. :try_end_f89} :catchall_f86

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v3

    .line 717
    :cond_f8d
    :goto_f8d
    const-string v2, "ContentProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout waiting for provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " providerRunning="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v6, p8

    .end local p8    # "providerRunning":Z
    .local v6, "providerRunning":Z
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 720
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 717
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v2, 0x0

    return-object v2

    .line 724
    .end local v1    # "callerName":Ljava/lang/String;
    .end local v6    # "providerRunning":Z
    .restart local p8    # "providerRunning":Z
    :cond_fe7
    move/from16 v6, p8

    const/4 v2, 0x0

    .end local p8    # "providerRunning":Z
    .restart local v6    # "providerRunning":Z
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v1

    iget-object v3, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x1

    invoke-interface {v1, v8, v2, v3, v4}, Lcom/android/server/am/SmartPowerServiceStub;->shouldInterceptProvider(ILcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)Z

    move-result v1

    if-eqz v1, :cond_1018

    .line 727
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartPower intercept request for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": caller is null from other"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/16 v19, 0x0

    return-object v19

    .line 731
    :cond_1018
    const/16 v19, 0x0

    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const/16 v20, 0x1

    move/from16 v2, p4

    move-object v5, v13

    move/from16 v29, v6

    .end local v6    # "providerRunning":Z
    .local v29, "providerRunning":Z
    move/from16 v6, v20

    invoke-interface/range {v1 .. v6}, Lcom/android/server/am/SmartPowerServiceStub;->onContentProviderStatusChanged(ILcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)V

    .line 733
    iget v1, v13, Lcom/android/server/am/ContentProviderRecord;->uid:I

    if-le v1, v11, :cond_1053

    .line 734
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v1

    const-string/jumbo v2, "provider"

    iget v5, v13, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 736
    invoke-virtual {v13}, Lcom/android/server/am/ContentProviderRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_104a

    invoke-virtual {v13}, Lcom/android/server/am/ContentProviderRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_104c

    :cond_104a
    move-object/from16 v6, v19

    .line 734
    :goto_104c
    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerServiceStub;->isRestrictBackgroundAction(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z

    .line 738
    :cond_1053
    const/4 v1, 0x0

    invoke-virtual {v13, v10, v1}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v1

    return-object v1

    .line 703
    .end local v29    # "providerRunning":Z
    .restart local p8    # "providerRunning":Z
    :catchall_1059
    move-exception v0

    move/from16 v29, p8

    move-object v2, v0

    move v1, v9

    .end local p8    # "providerRunning":Z
    .restart local v29    # "providerRunning":Z
    goto :goto_1063

    .end local v9    # "timedOut":Z
    .end local v29    # "providerRunning":Z
    .local v1, "timedOut":Z
    .restart local p8    # "providerRunning":Z
    :catchall_105f
    move-exception v0

    move/from16 v29, p8

    move-object v2, v0

    .end local p8    # "providerRunning":Z
    .restart local v29    # "providerRunning":Z
    :goto_1063
    :try_start_1063
    monitor-exit v13
    :try_end_1064
    .catchall {:try_start_1063 .. :try_end_1064} :catchall_1065

    throw v2

    :catchall_1065
    move-exception v0

    move-object v2, v0

    goto :goto_1063

    .line 664
    .end local v1    # "timedOut":Z
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v17    # "timeout":J
    .end local v29    # "providerRunning":Z
    .restart local p8    # "providerRunning":Z
    :catchall_1068
    move-exception v0

    move/from16 v29, p8

    move-object v4, v0

    move-object/from16 v26, v10

    move-object v2, v12

    move/from16 v1, v16

    move/from16 v3, v29

    .end local p8    # "providerRunning":Z
    .restart local v29    # "providerRunning":Z
    goto :goto_109f

    .end local v10    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v16    # "userId":I
    .end local v29    # "providerRunning":Z
    .local v6, "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v11    # "userId":I
    .restart local p8    # "providerRunning":Z
    :catchall_1074
    move-exception v0

    move/from16 v29, p8

    move-object v10, v6

    move/from16 v16, v11

    move-object v4, v0

    move-object/from16 v26, v10

    move-object v2, v12

    move/from16 v1, v16

    move/from16 v3, v29

    .end local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v11    # "userId":I
    .end local p8    # "providerRunning":Z
    .restart local v10    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v16    # "userId":I
    .restart local v29    # "providerRunning":Z
    goto :goto_109f

    .end local v10    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v12    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v16    # "userId":I
    .end local v29    # "providerRunning":Z
    .local v1, "userId":I
    .local v2, "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v26    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local p8    # "providerRunning":Z
    :catchall_1083
    move-exception v0

    move/from16 v29, p8

    move-object v4, v0

    move/from16 v3, v29

    .end local p8    # "providerRunning":Z
    .restart local v29    # "providerRunning":Z
    goto :goto_109f

    .end local v29    # "providerRunning":Z
    .restart local p8    # "providerRunning":Z
    :catchall_108a
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v8, p4

    move/from16 v29, p8

    move-object v4, v0

    move/from16 v3, v29

    .end local p8    # "providerRunning":Z
    .restart local v29    # "providerRunning":Z
    goto :goto_109f

    .end local v1    # "userId":I
    .end local v29    # "providerRunning":Z
    .local v3, "providerRunning":Z
    .local p8, "userId":I
    :catchall_1095
    move-exception v0

    move/from16 v17, v3

    move v8, v11

    move-object/from16 v31, v12

    move-object v7, v14

    move-object v14, v15

    move-object v15, v13

    move-object v4, v0

    .end local p8    # "userId":I
    .restart local v1    # "userId":I
    :goto_109f
    :try_start_109f
    monitor-exit v31
    :try_end_10a0
    .catchall {:try_start_109f .. :try_end_10a0} :catchall_10a4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :catchall_10a4
    move-exception v0

    move-object v4, v0

    goto :goto_109f
.end method

.method private handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .registers 14
    .param p1, "conn"    # Lcom/android/server/am/ContentProviderConnection;
    .param p2, "stable"    # Z
    .param p3, "updateOomAdj"    # Z

    .line 1608
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1610
    if-eqz p1, :cond_88

    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v1, :cond_88

    invoke-virtual {p1, p2}, Lcom/android/server/am/ContentProviderConnection;->decrementCount(Z)I

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_88

    .line 1614
    :cond_13
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 1615
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderConnection;->stopAssociation()V

    .line 1616
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1617
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_32

    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v2}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 1618
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 1620
    :cond_32
    iget-object v2, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ProcessProviderRecord;->removeProviderConnection(Lcom/android/server/am/ContentProviderConnection;)Z

    .line 1622
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/android/server/am/SmartPowerServiceStub;->onProviderConnectionChanged(Lcom/android/server/am/ContentProviderConnection;Z)V

    .line 1624
    iget-object v2, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_5c

    .line 1629
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_5c

    .line 1630
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ProcessProviderRecord;->setLastProviderTime(J)V

    .line 1633
    :cond_5c
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v6, v1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v6, v6, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, v1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iget-object v9, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    .line 1635
    if-eqz p3, :cond_83

    .line 1636
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v4, "updateOomAdj_removeProvider"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    .line 1639
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_3 .. :try_end_84} :catchall_8d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1640
    return-void

    .line 1611
    :cond_88
    :goto_88
    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_8d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1639
    :catchall_8d
    move-exception v1

    :try_start_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1598
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1599
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    .line 1600
    return v1

    .line 1598
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1603
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;
    .registers 39
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cpr"    # Lcom/android/server/am/ContentProviderRecord;
    .param p3, "externalProcessToken"    # Landroid/os/IBinder;
    .param p4, "callingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callingTag"    # Ljava/lang/String;
    .param p7, "stable"    # Z
    .param p8, "updateLru"    # Z
    .param p9, "startTime"    # J
    .param p11, "processList"    # Lcom/android/server/am/ProcessList;
    .param p12, "expectedUserId"    # I

    .line 1526
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p7

    move-wide/from16 v4, p9

    const/4 v6, 0x0

    if-nez v1, :cond_17

    .line 1527
    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    invoke-virtual {v2, v7, v8, v9}, Lcom/android/server/am/ContentProviderRecord;->addExternalProcessHandleLocked(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 1528
    return-object v6

    .line 1532
    :cond_17
    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 1533
    .local v10, "pr":Lcom/android/server/am/ProcessProviderRecord;
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-virtual {v10}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v12

    .local v12, "size":I
    :goto_24
    if-ge v11, v12, :cond_35

    .line 1534
    invoke-virtual {v10, v11}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v13

    .line 1535
    .local v13, "conn":Lcom/android/server/am/ContentProviderConnection;
    iget-object v14, v13, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-ne v14, v2, :cond_32

    .line 1536
    invoke-virtual {v13, v3}, Lcom/android/server/am/ContentProviderConnection;->incrementCount(Z)I

    .line 1537
    return-object v13

    .line 1533
    .end local v13    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :cond_32
    add-int/lit8 v11, v11, 0x1

    goto :goto_24

    .line 1542
    .end local v11    # "i":I
    .end local v12    # "size":I
    :cond_35
    new-instance v11, Lcom/android/server/am/ContentProviderConnection;

    move-object/from16 v12, p5

    move/from16 v13, p12

    invoke-direct {v11, v2, v1, v12, v13}, Lcom/android/server/am/ContentProviderConnection;-><init>(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    .line 1544
    .local v11, "conn":Lcom/android/server/am/ContentProviderConnection;
    invoke-virtual {v11}, Lcom/android/server/am/ContentProviderConnection;->startAssociationIfNeeded()V

    .line 1545
    invoke-virtual {v11, v3}, Lcom/android/server/am/ContentProviderConnection;->initializeCount(Z)V

    .line 1546
    iget-object v14, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1547
    iget-object v14, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_56

    .line 1548
    iget-object v14, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v15, 0x40

    invoke-virtual {v14, v15}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    .line 1550
    :cond_56
    invoke-virtual {v10, v11}, Lcom/android/server/am/ProcessProviderRecord;->addProviderConnection(Lcom/android/server/am/ContentProviderConnection;)V

    .line 1552
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v11, v15}, Lcom/android/server/am/SmartPowerServiceStub;->onProviderConnectionChanged(Lcom/android/server/am/ContentProviderConnection;Z)V

    .line 1554
    iget-object v14, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v15, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v19

    iget v3, v2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v7, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v7, v7, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v25, v10

    .end local v10    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .local v25, "pr":Lcom/android/server/am/ProcessProviderRecord;
    iget-object v10, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v14

    move/from16 v17, v15

    move-object/from16 v18, v6

    move/from16 v20, v3

    move-wide/from16 v21, v7

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;IIJLandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$Association;

    .line 1556
    if-eqz p8, :cond_b3

    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_b3

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1557
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    const/16 v6, 0xfa

    if-gt v3, v6, :cond_b0

    .line 1564
    const-string v3, "getContentProviderImpl: before updateLruProcess"

    invoke-direct {v0, v4, v5, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 1565
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    move-object/from16 v7, p11

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v6, v8}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1566
    const-string v3, "getContentProviderImpl: after updateLruProcess"

    invoke-direct {v0, v4, v5, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    goto :goto_b5

    .line 1557
    :cond_b0
    move-object/from16 v7, p11

    goto :goto_b5

    .line 1556
    :cond_b3
    move-object/from16 v7, p11

    .line 1568
    :goto_b5
    return-object v11
.end method

.method private isProcessAliveLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 10
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1802
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 1803
    .local v0, "pid":I
    const-string v1, "ActivityManager"

    const/4 v2, 0x0

    if-gtz v0, :cond_24

    .line 1804
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v3, :cond_23

    .line 1805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process hasn\'t started yet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_23
    return v2

    .line 1809
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/stat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1810
    .local v3, "procStatFile":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v2

    .line 1811
    sget-object v5, Lcom/android/server/am/ContentProviderHelper;->PROCESS_STATE_STATS_FORMAT:[I

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v4, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-nez v4, :cond_67

    .line 1813
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v4, :cond_66

    .line 1814
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UNABLE TO RETRIEVE STATE FOR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :cond_66
    return v2

    .line 1819
    :cond_67
    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    aget-wide v4, v4, v2

    .line 1820
    .local v4, "state":J
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v6, :cond_91

    .line 1821
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RETRIEVED STATE FOR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    long-to-int v7, v4

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :cond_91
    const-wide/16 v6, 0x5a

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b3

    const-wide/16 v6, 0x58

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b3

    const-wide/16 v6, 0x78

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b3

    const-wide/16 v6, 0x4b

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b3

    .line 1825
    invoke-static {v0}, Landroid/os/Process;->getUidForPid(I)I

    move-result v1

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v1, v6, :cond_b2

    const/4 v2, 0x1

    :cond_b2
    return v2

    .line 1827
    :cond_b3
    return v2
.end method

.method private maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "providerPkgName"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;

    .line 1774
    if-eqz p1, :cond_4d

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_c

    goto :goto_4d

    .line 1779
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    .line 1780
    .local v0, "userState":Lcom/android/server/am/UserState;
    if-nez v0, :cond_19

    return-void

    .line 1781
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1782
    .local v1, "now":J
    iget-object v3, v0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1783
    .local v3, "lastReported":Ljava/lang/Long;
    if-eqz v3, :cond_34

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    sub-long v6, v1, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_4c

    .line 1784
    :cond_34
    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v4, :cond_43

    .line 1786
    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4, p3, p2, v5}, Landroid/app/usage/UsageStatsManagerInternal;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1789
    :cond_43
    iget-object v4, v0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, p3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    :cond_4c
    return-void

    .line 1776
    .end local v0    # "userState":Lcom/android/server/am/UserState;
    .end local v1    # "now":J
    .end local v3    # "lastReported":Ljava/lang/Long;
    :cond_4d
    :goto_4d
    return-void
.end method

.method private requestTargetProviderPermissionsReviewIfNeededLocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/am/ProcessRecord;ILandroid/content/Context;)Z
    .registers 12
    .param p1, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p2, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "userId"    # I
    .param p4, "context"    # Landroid/content/Context;

    .line 1849
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 1851
    return v1

    .line 1854
    :cond_10
    const/4 v0, 0x0

    if-eqz p2, :cond_1e

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1855
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_1e

    :cond_1c
    move v1, v0

    goto :goto_1f

    :cond_1e
    :goto_1e
    nop

    .line 1858
    .local v1, "callerForeground":Z
    :goto_1f
    const-string/jumbo v2, "u"

    const-string v3, "ContentProviderHelper"

    if-nez v1, :cond_4d

    .line 1859
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Instantiating a provider in package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " requires a permissions review"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    return v0

    .line 1864
    :cond_4d
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1865
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10800000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1866
    iget-object v5, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string v6, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1868
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v5, :cond_84

    .line 1869
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Launching permission review for package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :cond_84
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 1874
    .local v2, "userHandle":Landroid/os/UserHandle;
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v5, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;

    invoke-direct {v5, p4, v4, v2}, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1876
    return v0
.end method


# virtual methods
.method appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "connection"    # Landroid/os/IBinder;

    .line 1020
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.REMOVE_TASKS"

    const-string v2, "appNotRespondingViaProvider()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 1024
    .local v0, "conn":Lcom/android/server/am/ContentProviderConnection;
    const-string v1, "ContentProviderHelper"

    if-nez v0, :cond_16

    .line 1025
    const-string v2, "ContentProviderConnection is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    return-void

    .line 1029
    :cond_16
    nop

    .line 1031
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v2, :cond_28

    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_28

    .line 1032
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_2a

    :cond_28
    const-string v2, ""

    .line 1029
    :goto_2a
    const-wide/16 v3, 0x40

    const-string v5, "appNotRespondingViaProvider: "

    invoke-static {v3, v4, v5, v2}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 1034
    :try_start_31
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 1035
    .local v2, "host":Lcom/android/server/am/ProcessRecord;
    if-nez v2, :cond_40

    .line 1036
    const-string v5, "Failed to find hosting ProcessRecord"

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_4e

    .line 1042
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1037
    return-void

    .line 1040
    :cond_40
    :try_start_40
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    const-string v5, "ContentProvider not responding"

    invoke-virtual {v1, v2, v5}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_4e

    .line 1042
    .end local v2    # "host":Lcom/android/server/am/ProcessRecord;
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1043
    nop

    .line 1044
    return-void

    .line 1042
    :catchall_4e
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1043
    throw v1
.end method

.method checkAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1976
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 1977
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 1978
    .local v2, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-ne v3, p1, :cond_17

    .line 1979
    return v1

    .line 1976
    .end local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1982
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
    .registers 14
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1218
    const/4 v0, 0x1

    .line 1219
    .local v0, "checkUser":Z
    const/4 v1, -0x1

    if-ne p2, v1, :cond_13

    .line 1220
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "ContentProviderHelper"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    .line 1225
    :cond_13
    invoke-static {p1}, Landroid/content/ContentProvider;->isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1226
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 1227
    .local v1, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1229
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1230
    invoke-virtual {v1, p2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p2

    .line 1231
    const/4 v0, 0x0

    .line 1235
    .end local v1    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_32
    const/4 v1, 0x0

    .line 1237
    .local v1, "cpi":Landroid/content/pm/ProviderInfo;
    :try_start_33
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-wide/32 v3, 0xc0e00

    invoke-interface {v2, p1, v3, v4, p2}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v2
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3e} :catch_40

    move-object v1, v2

    .line 1245
    goto :goto_41

    .line 1244
    :catch_40
    move-exception v2

    .line 1246
    :goto_41
    if-nez v1, :cond_67

    .line 1247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; expected to find a valid ContentProvider for this authority"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1251
    :cond_67
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1254
    .local v2, "callingPid":I
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v3

    .line 1255
    :try_start_70
    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    move-object v10, v4

    .line 1256
    .local v10, "r":Lcom/android/server/am/ProcessRecord;
    if-nez v10, :cond_90

    .line 1257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find PID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    monitor-exit v3

    return-object v4

    .line 1259
    :cond_90
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1260
    .local v9, "appName":Ljava/lang/String;
    monitor-exit v3
    :try_end_95
    .catchall {:try_start_70 .. :try_end_95} :catchall_a3

    .line 1262
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v3, p0

    move-object v4, v1

    move v5, v2

    move v7, p2

    move v8, v0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1260
    .end local v9    # "appName":Ljava/lang/String;
    .end local v10    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_a3
    move-exception v4

    :try_start_a4
    monitor-exit v3
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw v4
.end method

.method checkContentProviderUriPermission(Landroid/net/Uri;III)I
    .registers 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I
    .param p4, "modeFlags"    # I

    .line 1267
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    iget-object v0, v7, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const-string v11, "ContentProviderHelper"

    const/4 v12, -0x1

    if-eqz v0, :cond_24

    .line 1268
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to check Uri permission because caller is holding WM lock; assuming permission denied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1270
    return v12

    .line 1273
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    .line 1274
    .local v13, "name":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1275
    .local v14, "ident":J
    const/16 v16, 0x0

    .line 1277
    .local v16, "holder":Landroid/app/ContentProviderHolder;
    const/4 v3, 0x0

    const/4 v6, 0x0

    :try_start_30
    const-string v5, "*checkContentProviderUriPermission*"
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_32} :catch_fa
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_32} :catch_cc
    .catchall {:try_start_30 .. :try_end_32} :catchall_c7

    move-object/from16 v1, p0

    move-object v2, v13

    move/from16 v4, p3

    move-object v12, v6

    move/from16 v6, p2

    :try_start_3a
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object v0
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3e} :catch_c3
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3e} :catch_bf
    .catchall {:try_start_3a .. :try_end_3e} :catchall_ba

    move-object v1, v0

    .line 1279
    .end local v16    # "holder":Landroid/app/ContentProviderHolder;
    .local v1, "holder":Landroid/app/ContentProviderHolder;
    if-eqz v1, :cond_a5

    .line 1281
    :try_start_41
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    move-object v2, v0

    .line 1283
    .local v2, "packageManagerInt":Landroid/content/pm/PackageManagerInternal;
    nop

    .line 1284
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_53} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_53} :catch_99
    .catchall {:try_start_41 .. :try_end_53} :catchall_92

    move-object v3, v0

    .line 1285
    .local v3, "androidPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v3, :cond_69

    .line 1286
    nop

    .line 1302
    if-eqz v1, :cond_63

    .line 1303
    :try_start_59
    invoke-virtual {v7, v13, v12, v9}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_63

    .line 1306
    :catchall_5d
    move-exception v0

    move-object v4, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    throw v4

    .line 1306
    :cond_63
    :goto_63
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    nop

    .line 1286
    const/4 v4, -0x1

    return v4

    .line 1289
    :cond_69
    :try_start_69
    new-instance v0, Landroid/content/AttributionSource;

    .line 1290
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v10, v4, v12}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    .line 1291
    .local v4, "attributionSource":Landroid/content/AttributionSource;
    iget-object v0, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_75} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_75} :catch_99
    .catchall {:try_start_69 .. :try_end_75} :catchall_92

    move/from16 v5, p4

    :try_start_77
    invoke-interface {v0, v4, v8, v10, v5}, Landroid/content/IContentProvider;->checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I

    move-result v0
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_7b} :catch_90
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7b} :catch_8e
    .catchall {:try_start_77 .. :try_end_7b} :catchall_8c

    .line 1302
    if-eqz v1, :cond_87

    .line 1303
    :try_start_7d
    invoke-virtual {v7, v13, v12, v9}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_81

    goto :goto_87

    .line 1306
    :catchall_81
    move-exception v0

    move-object v6, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    throw v6

    .line 1306
    :cond_87
    :goto_87
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    nop

    .line 1291
    return v0

    .line 1301
    .end local v2    # "packageManagerInt":Landroid/content/pm/PackageManagerInternal;
    .end local v3    # "androidPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "attributionSource":Landroid/content/AttributionSource;
    :catchall_8c
    move-exception v0

    goto :goto_95

    .line 1297
    :catch_8e
    move-exception v0

    goto :goto_9c

    .line 1294
    :catch_90
    move-exception v0

    goto :goto_a2

    .line 1301
    :catchall_92
    move-exception v0

    move/from16 v5, p4

    :goto_95
    move-object/from16 v16, v1

    goto/16 :goto_129

    .line 1297
    :catch_99
    move-exception v0

    move/from16 v5, p4

    :goto_9c
    move-object/from16 v16, v1

    goto :goto_d0

    .line 1294
    :catch_9f
    move-exception v0

    move/from16 v5, p4

    :goto_a2
    move-object/from16 v16, v1

    goto :goto_fe

    .line 1302
    :cond_a5
    move/from16 v5, p4

    if-eqz v1, :cond_b3

    .line 1303
    :try_start_a9
    invoke-virtual {v7, v13, v12, v9}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_ad

    goto :goto_b3

    .line 1306
    :catchall_ad
    move-exception v0

    move-object v2, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    throw v2

    .line 1306
    :cond_b3
    :goto_b3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    nop

    .line 1308
    nop

    .line 1309
    const/4 v2, -0x1

    return v2

    .line 1301
    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v16    # "holder":Landroid/app/ContentProviderHolder;
    :catchall_ba
    move-exception v0

    move/from16 v5, p4

    goto/16 :goto_129

    .line 1297
    :catch_bf
    move-exception v0

    move/from16 v5, p4

    goto :goto_d0

    .line 1294
    :catch_c3
    move-exception v0

    move/from16 v5, p4

    goto :goto_fe

    .line 1301
    :catchall_c7
    move-exception v0

    move/from16 v5, p4

    move-object v12, v6

    goto :goto_129

    .line 1297
    :catch_cc
    move-exception v0

    move/from16 v5, p4

    move-object v12, v6

    :goto_d0
    move-object v1, v0

    .line 1298
    .local v1, "e":Ljava/lang/Exception;
    :try_start_d1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while determining type of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e7
    .catchall {:try_start_d1 .. :try_end_e7} :catchall_128

    .line 1299
    nop

    .line 1302
    if-eqz v16, :cond_f4

    .line 1303
    :try_start_ea
    invoke-virtual {v7, v13, v12, v9}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_ee

    goto :goto_f4

    .line 1306
    :catchall_ee
    move-exception v0

    move-object v2, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    throw v2

    .line 1306
    :cond_f4
    :goto_f4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    nop

    .line 1299
    const/4 v2, -0x1

    return v2

    .line 1294
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_fa
    move-exception v0

    move/from16 v5, p4

    move-object v12, v6

    :goto_fe
    move-object v1, v0

    .line 1295
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_ff
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content provider dead retrieving "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_115
    .catchall {:try_start_ff .. :try_end_115} :catchall_128

    .line 1296
    nop

    .line 1302
    if-eqz v16, :cond_122

    .line 1303
    :try_start_118
    invoke-virtual {v7, v13, v12, v9}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_11c

    goto :goto_122

    .line 1306
    :catchall_11c
    move-exception v0

    move-object v2, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    throw v2

    .line 1306
    :cond_122
    :goto_122
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    nop

    .line 1296
    const/4 v2, -0x1

    return v2

    .line 1301
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_128
    move-exception v0

    .line 1302
    :goto_129
    if-eqz v16, :cond_135

    .line 1303
    :try_start_12b
    invoke-virtual {v7, v13, v12, v9}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_12e
    .catchall {:try_start_12b .. :try_end_12e} :catchall_12f

    goto :goto_135

    .line 1306
    :catchall_12f
    move-exception v0

    move-object v1, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    throw v1

    .line 1306
    :cond_135
    :goto_135
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    nop

    .line 1308
    throw v0
.end method

.method cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "alwaysBad"    # Z

    .line 1990
    const/4 v0, 0x0

    .line 1991
    .local v0, "restart":Z
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_39

    .line 1992
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .line 1993
    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-eq v4, p1, :cond_18

    .line 1994
    goto :goto_36

    .line 1997
    :cond_18
    iget v4, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_21

    .line 1999
    const/4 p2, 0x1

    .line 2001
    :cond_21
    if-nez p2, :cond_33

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isBad()Z

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {v3}, Lcom/android/server/am/ContentProviderRecord;->hasConnectionOrHandle()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2002
    const/4 v0, 0x1

    goto :goto_36

    .line 2004
    :cond_33
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/am/ContentProviderHelper;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    .line 1991
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_36
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2007
    .end local v1    # "i":I
    :cond_39
    return v0
.end method

.method cleanupLaunchingProvidersLocked()V
    .registers 4

    .line 2011
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2f

    .line 2012
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    .line 2013
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2c

    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 2014
    monitor-enter v1

    .line 2015
    const/4 v2, 0x0

    :try_start_22
    iput-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 2016
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2017
    monitor-exit v1

    goto :goto_2c

    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw v2

    .line 2011
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2020
    .end local v0    # "i":I
    :cond_2f
    return-void
.end method

.method doGetProviderMimeTypeAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V
    .registers 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "resultCallback"    # Landroid/os/RemoteCallback;

    .line 1159
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual/range {p3 .. p3}, Landroid/os/RemoteCallback;->isAlive()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1160
    return-void

    .line 1163
    :cond_f
    iget-object v0, v7, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "getProviderMimeTypeAsync"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1164
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    .line 1165
    .local v11, "name":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1166
    .local v12, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 1167
    .local v13, "callingPid":I
    iget-object v0, v7, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, v9}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v14

    .line 1168
    .local v14, "safeUserId":I
    invoke-direct {v7, v13, v12, v9}, Lcom/android/server/am/ContentProviderHelper;->canClearIdentity(III)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    goto :goto_38

    :cond_36
    const-wide/16 v0, 0x0

    :goto_38
    move-wide v15, v0

    .line 1171
    .local v15, "ident":J
    const/4 v3, 0x0

    :try_start_3a
    const-string v5, "*getmimetype*"

    move-object/from16 v1, p0

    move-object v2, v11

    move v4, v12

    move v6, v14

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object v0
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_45} :catch_78
    .catchall {:try_start_3a .. :try_end_45} :catchall_76

    move-object v6, v0

    .line 1173
    .local v6, "holder":Landroid/app/ContentProviderHolder;
    if-eqz v6, :cond_6d

    .line 1176
    :try_start_48
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v0

    const-string/jumbo v1, "provider"

    const/4 v3, 0x0

    iget-object v2, v6, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    move v2, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerServiceStub;->isRestrictBackgroundAction(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5b} :catch_5c
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_5b} :catch_78
    .catchall {:try_start_48 .. :try_end_5b} :catchall_76

    .line 1179
    goto :goto_5d

    .line 1178
    :catch_5c
    move-exception v0

    .line 1181
    :goto_5d
    :try_start_5d
    iget-object v0, v6, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v7, v11, v14, v10}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v0, v8, v1}, Landroid/content/IContentProvider;->getTypeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    goto :goto_72

    .line 1191
    :cond_6d
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v10, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_72} :catch_78
    .catchall {:try_start_5d .. :try_end_72} :catchall_76

    .line 1197
    .end local v6    # "holder":Landroid/app/ContentProviderHolder;
    :goto_72
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1198
    goto :goto_97

    .line 1197
    :catchall_76
    move-exception v0

    goto :goto_98

    .line 1193
    :catch_78
    move-exception v0

    .line 1194
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_79
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content provider dead retrieving "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1195
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v10, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_96
    .catchall {:try_start_79 .. :try_end_96} :catchall_76

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_72

    .line 1199
    :goto_97
    return-void

    .line 1197
    :goto_98
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1198
    throw v0
.end method

.method protected dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z

    .line 2074
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method protected dumpProviderProto(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .line 2083
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/ProviderMap;->dumpProviderProto(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method dumpProvidersLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;

    .line 2032
    new-instance v0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 2033
    .local v0, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v0, p3, p4}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build([Ljava/lang/String;I)I

    .line 2035
    const-string v1, "ACTIVITY MANAGER CONTENT PROVIDERS (dumpsys activity providers)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2037
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, p2, p5, p6}, Lcom/android/server/am/ProviderMap;->dumpProvidersLocked(Ljava/io/PrintWriter;ZLjava/lang/String;)Z

    move-result v1

    .line 2038
    .local v1, "needSep":Z
    move v2, v1

    .line 2040
    .local v2, "printedAnything":Z
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_60

    .line 2041
    const/4 v3, 0x0

    .line 2042
    .local v3, "printed":Z
    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_25
    if-ltz v4, :cond_60

    .line 2043
    iget-object v5, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ContentProviderRecord;

    .line 2044
    .local v5, "r":Lcom/android/server/am/ContentProviderRecord;
    if-eqz p6, :cond_3e

    iget-object v6, v5, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p6, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 2045
    goto :goto_5d

    .line 2047
    :cond_3e
    if-nez v3, :cond_4d

    .line 2048
    if-eqz v1, :cond_45

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2049
    :cond_45
    const/4 v1, 0x1

    .line 2050
    const-string v6, "  Launching content providers:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2051
    const/4 v3, 0x1

    .line 2052
    const/4 v2, 0x1

    .line 2054
    :cond_4d
    const-string v6, "  Launching #"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2055
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2042
    .end local v5    # "r":Lcom/android/server/am/ContentProviderRecord;
    :goto_5d
    add-int/lit8 v4, v4, -0x1

    goto :goto_25

    .line 2059
    .end local v3    # "printed":Z
    .end local v4    # "i":I
    :cond_60
    if-nez v2, :cond_67

    .line 2060
    const-string v3, "  (nothing)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2062
    :cond_67
    return-void
.end method

.method generateApplicationProvidersLocked(Lcom/android/server/am/ProcessRecord;)Ljava/util/List;
    .registers 23
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1324
    const/4 v3, 0x0

    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    const-wide/32 v7, 0x10000c00

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1328
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_19} :catch_11e

    .line 1331
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    nop

    .line 1332
    if-nez v0, :cond_1d

    .line 1333
    return-object v3

    .line 1336
    :cond_1d
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    const-string v5, "ActivityManager_MU"

    if-eqz v4, :cond_3b

    .line 1337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateApplicationProvidersLocked, app.info.uid = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_3b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 1341
    .local v4, "numProviders":I
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 1342
    .local v6, "pr":Lcom/android/server/am/ProcessProviderRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v6, v7}, Lcom/android/server/am/ProcessProviderRecord;->ensureProviderCapacity(I)V

    .line 1343
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4a
    if-ge v7, v4, :cond_114

    .line 1345
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ProviderInfo;

    .line 1346
    .local v8, "cpi":Landroid/content/pm/ProviderInfo;
    iget-object v9, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v13, v8, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v15

    .line 1348
    .local v15, "singleton":Z
    const/16 v16, 0x1

    if-eqz v15, :cond_71

    iget v9, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eqz v9, :cond_71

    .line 1353
    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1354
    add-int/lit8 v4, v4, -0x1

    .line 1355
    add-int/lit8 v7, v7, -0x1

    .line 1356
    goto/16 :goto_10f

    .line 1358
    :cond_71
    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v17

    .line 1359
    .local v17, "isInstantApp":Z
    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v9, :cond_8a

    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_88

    goto :goto_8a

    :cond_88
    const/4 v9, 0x0

    goto :goto_8c

    :cond_8a
    :goto_8a
    move/from16 v9, v16

    :goto_8c
    move/from16 v18, v9

    .line 1361
    .local v18, "splitInstalled":Z
    if-eqz v17, :cond_9b

    if-nez v18, :cond_9b

    .line 1364
    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1365
    add-int/lit8 v4, v4, -0x1

    .line 1366
    add-int/lit8 v7, v7, -0x1

    .line 1367
    goto/16 :goto_10f

    .line 1370
    :cond_9b
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v9

    .line 1371
    .local v14, "comp":Landroid/content/ComponentName;
    iget-object v9, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget v10, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v9, v14, v10}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v19

    .line 1372
    .local v19, "cpr":Lcom/android/server/am/ContentProviderRecord;
    if-nez v19, :cond_c4

    .line 1373
    new-instance v20, Lcom/android/server/am/ContentProviderRecord;

    iget-object v10, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v9, v20

    move-object v11, v8

    move-object v13, v14

    move-object v3, v14

    .end local v14    # "comp":Landroid/content/ComponentName;
    .local v3, "comp":Landroid/content/ComponentName;
    move v14, v15

    invoke-direct/range {v9 .. v14}, Lcom/android/server/am/ContentProviderRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V

    .line 1374
    .end local v19    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v9, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v10, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v10, v3, v9}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    goto :goto_c7

    .line 1372
    .end local v3    # "comp":Landroid/content/ComponentName;
    .end local v9    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v14    # "comp":Landroid/content/ComponentName;
    .restart local v19    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_c4
    move-object v3, v14

    .end local v14    # "comp":Landroid/content/ComponentName;
    .restart local v3    # "comp":Landroid/content/ComponentName;
    move-object/from16 v9, v19

    .line 1376
    .end local v19    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v9    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_c7
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v10, :cond_e3

    .line 1377
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateApplicationProvidersLocked, cpi.uid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_e3
    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v10, v9}, Lcom/android/server/am/ProcessProviderRecord;->installProvider(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    .line 1380
    iget-boolean v10, v8, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v10, :cond_f6

    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string v11, "android"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_105

    .line 1385
    :cond_f6
    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v11, v11, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v13, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2, v10, v11, v12, v13}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1388
    :cond_105
    iget-object v10, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x4

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 1343
    .end local v3    # "comp":Landroid/content/ComponentName;
    .end local v8    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v9    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v15    # "singleton":Z
    .end local v17    # "isInstantApp":Z
    .end local v18    # "splitInstalled":Z
    :goto_10f
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto/16 :goto_4a

    .line 1391
    .end local v7    # "i":I
    :cond_114
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11c

    const/4 v3, 0x0

    goto :goto_11d

    :cond_11c
    move-object v3, v0

    :goto_11d
    return-object v3

    .line 1329
    .end local v0    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v4    # "numProviders":I
    .end local v6    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    :catch_11e
    move-exception v0

    .line 1330
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v3, 0x0

    return-object v3
.end method

.method getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;
    .registers 19
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "stable"    # Z

    .line 119
    move-object v9, p0

    move-object v10, p2

    move-object/from16 v11, p3

    iget-object v0, v9, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "getContentProvider"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const-string v1, "ContentProviderHelper"

    if-eqz v0, :cond_41

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sdk sandbox process "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is accessing content provider "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". This access will most likely be blocked in the future"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_41
    if-eqz p1, :cond_88

    .line 134
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 135
    .local v12, "callingUid":I
    if-eqz v10, :cond_77

    iget-object v0, v9, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0, v12, p2}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_54

    goto :goto_77

    .line 137
    :cond_54
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given calling package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_77
    :goto_77
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move v4, v12

    move-object v5, p2

    move/from16 v7, p5

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;

    move-result-object v0

    return-object v0

    .line 128
    .end local v12    # "callingUid":I
    :cond_88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "null IApplicationThread when getting content provider "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;
    .registers 20
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "tag"    # Ljava/lang/String;

    .line 146
    move-object v6, p0

    iget-object v0, v6, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.ACCESS_CONTENT_PROVIDERS_EXTERNALLY"

    const-string v2, "Do not have permission in call getContentProviderExternal()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, v6, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 150
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 149
    const/4 v11, 0x0

    const/4 v12, 0x2

    const-string v13, "getContentProvider"

    const/4 v14, 0x0

    move/from16 v10, p2

    invoke-virtual/range {v7 .. v14}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 152
    .end local p2    # "userId":I
    .local v7, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 153
    if-eqz p4, :cond_2a

    move-object/from16 v4, p4

    goto :goto_2d

    :cond_2a
    const-string v0, "*external*"

    move-object v4, v0

    .line 152
    :goto_2d
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object v0

    return-object v0
.end method

.method getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "callingUid"    # I
    .param p4, "callingTag"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 158
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;

    move-result-object v0

    return-object v0
.end method

.method getProviderInfoLocked(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .registers 8
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "pmFlags"    # I

    .line 1759
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v0

    .line 1760
    .local v0, "cpr":Lcom/android/server/am/ContentProviderRecord;
    if-eqz v0, :cond_b

    .line 1761
    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    return-object v1

    .line 1764
    :cond_b
    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    or-int/lit16 v2, p3, 0x800

    int-to-long v2, v2

    invoke-interface {v1, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_17

    return-object v1

    .line 1766
    :catch_17
    move-exception v1

    .line 1767
    .local v1, "ex":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return-object v2
.end method

.method getProviderMap()Lcom/android/server/am/ProviderMap;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    return-object v0
.end method

.method getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;
    .registers 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1061
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v9, "ContentProviderHelper"

    iget-object v0, v7, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "getProviderMimeType"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1062
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    .line 1063
    .local v10, "name":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1064
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1065
    .local v12, "callingPid":I
    const-wide/16 v0, 0x0

    .line 1066
    .local v0, "ident":J
    const/4 v2, 0x0

    .line 1067
    .local v2, "clearedIdentity":Z
    iget-object v3, v7, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v13

    .line 1068
    .end local p2    # "userId":I
    .local v13, "userId":I
    invoke-direct {v7, v12, v11, v13}, Lcom/android/server/am/ContentProviderHelper;->canClearIdentity(III)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1069
    const/4 v2, 0x1

    .line 1070
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v14, v0

    move/from16 v16, v2

    goto :goto_39

    .line 1068
    :cond_36
    move-wide v14, v0

    move/from16 v16, v2

    .line 1072
    .end local v0    # "ident":J
    .end local v2    # "clearedIdentity":Z
    .local v14, "ident":J
    .local v16, "clearedIdentity":Z
    :goto_39
    const/16 v17, 0x0

    .line 1074
    .local v17, "holder":Landroid/app/ContentProviderHolder;
    const/4 v3, 0x0

    const/4 v6, 0x0

    :try_start_3d
    const-string v5, "*getmimetype*"
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_3f} :catch_f9
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3f} :catch_c6
    .catchall {:try_start_3d .. :try_end_3f} :catchall_c1

    move-object/from16 v1, p0

    move-object v2, v10

    move v4, v11

    move/from16 v18, v11

    move-object v11, v6

    .end local v11    # "callingUid":I
    .local v18, "callingUid":I
    move v6, v13

    :try_start_47
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object v0
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4b} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4b} :catch_bd
    .catchall {:try_start_47 .. :try_end_4b} :catchall_ba

    move-object v1, v0

    .line 1076
    .end local v17    # "holder":Landroid/app/ContentProviderHolder;
    .local v1, "holder":Landroid/app/ContentProviderHolder;
    if-eqz v1, :cond_a2

    .line 1077
    :try_start_4e
    iget-object v0, v1, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    move-object v2, v0

    .line 1078
    .local v2, "providerConnection":Landroid/os/IBinder;
    iget-object v0, v1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v0}, Landroid/content/pm/ProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    move-object v3, v0

    .line 1083
    .local v3, "providerName":Landroid/content/ComponentName;
    new-instance v0, Lcom/android/server/am/ContentProviderHelper$1;

    invoke-direct {v0, v7, v3, v2}, Lcom/android/server/am/ContentProviderHelper$1;-><init>(Lcom/android/server/am/ContentProviderHelper;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    move-object v4, v0

    .line 1090
    .local v4, "providerNotResponding":Ljava/lang/Runnable;
    iget-object v0, v7, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_67} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_67} :catch_9a
    .catchall {:try_start_4e .. :try_end_67} :catchall_95

    .line 1092
    :try_start_67
    iget-object v0, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {v0, v8}, Landroid/content/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_8b

    .line 1094
    :try_start_6d
    iget-object v5, v7, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_74} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_74} :catch_9a
    .catchall {:try_start_6d .. :try_end_74} :catchall_95

    .line 1105
    if-nez v16, :cond_7a

    .line 1106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1109
    :cond_7a
    if-eqz v1, :cond_86

    .line 1110
    :try_start_7c
    invoke-virtual {v7, v10, v11, v13}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_86

    .line 1113
    :catchall_80
    move-exception v0

    move-object v5, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    throw v5

    .line 1113
    :cond_86
    :goto_86
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    nop

    .line 1092
    return-object v0

    .line 1094
    :catchall_8b
    move-exception v0

    :try_start_8c
    iget-object v5, v7, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1095
    nop

    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .end local v10    # "name":Ljava/lang/String;
    .end local v12    # "callingPid":I
    .end local v13    # "userId":I
    .end local v14    # "ident":J
    .end local v16    # "clearedIdentity":Z
    .end local v18    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v0
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_95} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_95} :catch_9a
    .catchall {:try_start_8c .. :try_end_95} :catchall_95

    .line 1105
    .end local v2    # "providerConnection":Landroid/os/IBinder;
    .end local v3    # "providerName":Landroid/content/ComponentName;
    .end local v4    # "providerNotResponding":Ljava/lang/Runnable;
    .restart local v1    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v12    # "callingPid":I
    .restart local v13    # "userId":I
    .restart local v14    # "ident":J
    .restart local v16    # "clearedIdentity":Z
    .restart local v18    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_95
    move-exception v0

    move-object/from16 v17, v1

    goto/16 :goto_12c

    .line 1100
    :catch_9a
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_ca

    .line 1097
    :catch_9e
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_fd

    .line 1105
    :cond_a2
    if-nez v16, :cond_a8

    .line 1106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1109
    :cond_a8
    if-eqz v1, :cond_b4

    .line 1110
    :try_start_aa
    invoke-virtual {v7, v10, v11, v13}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    goto :goto_b4

    .line 1113
    :catchall_ae
    move-exception v0

    move-object v2, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    throw v2

    .line 1113
    :cond_b4
    :goto_b4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    nop

    .line 1115
    nop

    .line 1117
    return-object v11

    .line 1105
    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v17    # "holder":Landroid/app/ContentProviderHolder;
    :catchall_ba
    move-exception v0

    goto/16 :goto_12c

    .line 1100
    :catch_bd
    move-exception v0

    goto :goto_ca

    .line 1097
    :catch_bf
    move-exception v0

    goto :goto_fd

    .line 1105
    .end local v18    # "callingUid":I
    .restart local v11    # "callingUid":I
    :catchall_c1
    move-exception v0

    move/from16 v18, v11

    move-object v11, v6

    .end local v11    # "callingUid":I
    .restart local v18    # "callingUid":I
    goto :goto_12c

    .line 1100
    .end local v18    # "callingUid":I
    .restart local v11    # "callingUid":I
    :catch_c6
    move-exception v0

    move/from16 v18, v11

    move-object v11, v6

    .end local v11    # "callingUid":I
    .restart local v18    # "callingUid":I
    :goto_ca
    move-object v1, v0

    .line 1101
    .local v1, "e":Ljava/lang/Exception;
    :try_start_cb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while determining type of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e1
    .catchall {:try_start_cb .. :try_end_e1} :catchall_ba

    .line 1102
    nop

    .line 1105
    if-nez v16, :cond_e8

    .line 1106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1109
    :cond_e8
    if-eqz v17, :cond_f4

    .line 1110
    :try_start_ea
    invoke-virtual {v7, v10, v11, v13}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_ee

    goto :goto_f4

    .line 1113
    :catchall_ee
    move-exception v0

    move-object v2, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    throw v2

    .line 1113
    :cond_f4
    :goto_f4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    nop

    .line 1102
    return-object v11

    .line 1097
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v18    # "callingUid":I
    .restart local v11    # "callingUid":I
    :catch_f9
    move-exception v0

    move/from16 v18, v11

    move-object v11, v6

    .end local v11    # "callingUid":I
    .restart local v18    # "callingUid":I
    :goto_fd
    move-object v1, v0

    .line 1098
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_fe
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content provider dead retrieving "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_114
    .catchall {:try_start_fe .. :try_end_114} :catchall_ba

    .line 1099
    nop

    .line 1105
    if-nez v16, :cond_11b

    .line 1106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1109
    :cond_11b
    if-eqz v17, :cond_127

    .line 1110
    :try_start_11d
    invoke-virtual {v7, v10, v11, v13}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_120
    .catchall {:try_start_11d .. :try_end_120} :catchall_121

    goto :goto_127

    .line 1113
    :catchall_121
    move-exception v0

    move-object v2, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    throw v2

    .line 1113
    :cond_127
    :goto_127
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    nop

    .line 1099
    return-object v11

    .line 1105
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_12c
    if-nez v16, :cond_132

    .line 1106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1109
    :cond_132
    if-eqz v17, :cond_13e

    .line 1110
    :try_start_134
    invoke-virtual {v7, v10, v11, v13}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_137
    .catchall {:try_start_134 .. :try_end_137} :catchall_138

    goto :goto_13e

    .line 1113
    :catchall_138
    move-exception v0

    move-object v1, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    throw v1

    .line 1113
    :cond_13e
    :goto_13e
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    nop

    .line 1115
    throw v0
.end method

.method getProviderMimeTypeAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "resultCallback"    # Landroid/os/RemoteCallback;

    .line 1153
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/am/ContentProviderHelper$1WithCallingIdentityRequest;

    new-instance v2, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ContentProviderHelper;Landroid/net/Uri;ILandroid/os/RemoteCallback;)V

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/am/ContentProviderHelper$1WithCallingIdentityRequest;-><init>(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/Runnable;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1155
    return-void
.end method

.method installEncryptionUnawareProviders(I)V
    .registers 13
    .param p1, "userId"    # I

    .line 1471
    const v0, 0x40008

    .line 1474
    .local v0, "matchFlags":I
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1475
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1476
    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 1477
    .local v2, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1478
    .local v3, "numProc":I
    const/4 v4, 0x0

    .local v4, "iProc":I
    :goto_1c
    if-ge v4, v3, :cond_54

    .line 1479
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 1480
    .local v5, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v6, 0x0

    .local v6, "iApp":I
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    .local v7, "numApps":I
    :goto_29
    if-ge v6, v7, :cond_51

    .line 1481
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 1482
    .local v8, "app":Lcom/android/server/am/ProcessRecord;
    iget v9, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v9, p1, :cond_4e

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    if-eqz v9, :cond_4e

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isUnlocked()Z

    move-result v9

    if-eqz v9, :cond_42

    .line 1483
    goto :goto_4e

    .line 1486
    :cond_42
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v9

    new-instance v10, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;

    invoke-direct {v10, p0, v8}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v9, v10}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 1480
    .end local v8    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_4e
    :goto_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 1478
    .end local v5    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v6    # "iApp":I
    .end local v7    # "numApps":I
    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1518
    .end local v2    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;>;"
    .end local v3    # "numProc":I
    .end local v4    # "iProc":I
    :cond_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_8 .. :try_end_55} :catchall_59

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1519
    return-void

    .line 1518
    :catchall_59
    move-exception v2

    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v2
.end method

.method public final installSystemProviders()V
    .registers 10

    .line 1429
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1430
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1431
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v1

    const-string/jumbo v2, "system"

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1432
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ContentProviderHelper;->generateApplicationProvidersLocked(Lcom/android/server/am/ProcessRecord;)Ljava/util/List;

    move-result-object v2

    .line 1433
    .local v2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    const/4 v3, 0x1

    if-eqz v2, :cond_5a

    .line 1434
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_25
    if-ltz v4, :cond_5a

    .line 1435
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ProviderInfo;

    .line 1436
    .local v5, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v3

    if-nez v6, :cond_57

    .line 1437
    const-string v6, "ContentProviderHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not installing system proc provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": not system .apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1434
    .end local v5    # "pi":Landroid/content/pm/ProviderInfo;
    :cond_57
    add-int/lit8 v4, v4, -0x1

    goto :goto_25

    .line 1443
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "i":I
    :cond_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_ae

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1445
    if-eqz v2, :cond_67

    .line 1446
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->installSystemProviders(Ljava/util/List;)V

    .line 1448
    :cond_67
    monitor-enter p0

    .line 1449
    :try_start_68
    iput-boolean v3, p0, Lcom/android/server/am/ContentProviderHelper;->mSystemProvidersInstalled:Z

    .line 1450
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_ab

    .line 1452
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerConstants;->start(Landroid/content/ContentResolver;)V

    .line 1453
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v1, Lcom/android/server/am/CoreSettingsObserver;

    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, v3}, Lcom/android/server/am/CoreSettingsObserver;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mCoreSettingsObserver:Lcom/android/server/am/CoreSettingsObserver;

    .line 1454
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->installSystemProviders()V

    .line 1455
    new-instance v0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;-><init>(Lcom/android/server/am/ContentProviderHelper;)V

    .line 1456
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->start(Landroid/content/ContentResolver;)Lcom/android/server/am/SettingsToPropertiesMapper;

    .line 1457
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster;->initSettings()V

    .line 1460
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/RescueParty;->onSettingsProviderPublished(Landroid/content/Context;)V

    .line 1461
    return-void

    .line 1450
    :catchall_ab
    move-exception v0

    :try_start_ac
    monitor-exit p0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v0

    .line 1443
    .end local v2    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :catchall_ae
    move-exception v1

    :try_start_af
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$checkContentProviderAssociation$4$com-android-server-am-ContentProviderHelper(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "callingApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 1749
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, p3, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1751
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 1753
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$decProviderCountLocked$3$com-android-server-am-ContentProviderHelper(Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .registers 4
    .param p1, "conn"    # Lcom/android/server/am/ContentProviderConnection;
    .param p2, "stable"    # Z
    .param p3, "updateOomAdj"    # Z

    .line 1588
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    .line 1589
    return-void
.end method

.method synthetic lambda$doGetProviderMimeTypeAsync$1$com-android-server-am-ContentProviderHelper(Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "safeUserId"    # I
    .param p3, "resultCallback"    # Landroid/os/RemoteCallback;
    .param p4, "result"    # Landroid/os/Bundle;

    .line 1182
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1184
    .local v0, "identity":J
    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_10

    .line 1186
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1187
    nop

    .line 1188
    invoke-virtual {p3, p4}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1189
    return-void

    .line 1186
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1187
    throw v2
.end method

.method synthetic lambda$getProviderMimeTypeAsync$0$com-android-server-am-ContentProviderHelper(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "resultCallback"    # Landroid/os/RemoteCallback;

    .line 1154
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->doGetProviderMimeTypeAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V

    return-void
.end method

.method synthetic lambda$installEncryptionUnawareProviders$2$com-android-server-am-ContentProviderHelper(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 19
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pkgName"    # Ljava/lang/String;

    move-object/from16 v1, p1

    .line 1488
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/32 v2, 0x40008

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->userId:I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_b8

    .line 1489
    move-object/from16 v5, p2

    :try_start_d
    invoke-interface {v0, v5, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1490
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    .line 1491
    .local v2, "thread":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_b1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b1

    .line 1492
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v4, v3

    const/4 v7, 0x0

    :goto_23
    if-ge v7, v4, :cond_ae

    aget-object v8, v3, v7

    .line 1494
    .local v8, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1495
    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_39

    iget-boolean v9, v8, Landroid/content/pm/ProviderInfo;->multiprocess:Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_34} :catch_b4

    if-eqz v9, :cond_37

    goto :goto_39

    :cond_37
    const/4 v9, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    move v9, v10

    .line 1497
    .local v9, "processMatch":Z
    :goto_3a
    move-object/from16 v11, p0

    :try_start_3c
    iget-object v12, v11, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v14, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v6, v8, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v12, v13, v14, v15, v6}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_53

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v6, :cond_51

    goto :goto_53

    :cond_51
    const/4 v6, 0x0

    goto :goto_54

    :cond_53
    :goto_53
    move v6, v10

    .line 1500
    .local v6, "userMatch":Z
    :goto_54
    iget-object v12, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v12

    .line 1501
    .local v12, "isInstantApp":Z
    iget-object v13, v8, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v13, :cond_6d

    iget-object v13, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v14, v8, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    .line 1502
    invoke-static {v13, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_68} :catch_ac

    if-eqz v13, :cond_6b

    goto :goto_6d

    :cond_6b
    const/4 v10, 0x0

    goto :goto_6e

    :cond_6d
    :goto_6d
    nop

    .line 1504
    .local v10, "splitInstalled":Z
    :goto_6e
    const-string v13, "ContentProviderHelper"

    if-eqz v9, :cond_92

    if-eqz v6, :cond_92

    if-eqz v12, :cond_78

    if-eqz v10, :cond_92

    .line 1506
    :cond_78
    :try_start_78
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Installing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    invoke-interface {v2, v8}, Landroid/app/IApplicationThread;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    goto :goto_a8

    .line 1509
    :cond_92
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_a8} :catch_ac

    .line 1492
    .end local v6    # "userMatch":Z
    .end local v8    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v9    # "processMatch":Z
    .end local v10    # "splitInstalled":Z
    .end local v12    # "isInstantApp":Z
    :goto_a8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_23

    .line 1513
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    :catch_ac
    move-exception v0

    goto :goto_bd

    .line 1492
    .restart local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v2    # "thread":Landroid/app/IApplicationThread;
    :cond_ae
    move-object/from16 v11, p0

    goto :goto_b3

    .line 1491
    :cond_b1
    move-object/from16 v11, p0

    .line 1514
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    :goto_b3
    goto :goto_bd

    .line 1513
    :catch_b4
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_bd

    :catch_b8
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v5, p2

    .line 1515
    :goto_bd
    return-void
.end method

.method processContentProviderPublishTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1314
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ContentProviderHelper;->cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    .line 1315
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x7

    const/4 v6, 0x0

    const-string/jumbo v7, "timeout publishing content providers"

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    .line 1319
    return-void
.end method

.method publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    .registers 23
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IApplicationThread;",
            "Ljava/util/List<",
            "Landroid/app/ContentProviderHolder;",
            ">;)V"
        }
    .end annotation

    .line 759
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-nez v3, :cond_9

    .line 760
    return-void

    .line 763
    :cond_9
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "publishContentProviders"

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedOrSdkSandboxCaller(Ljava/lang/String;)V

    .line 764
    iget-object v4, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 765
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    move-object v5, v0

    .line 766
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_3c

    .line 767
    const-string v0, "ActivityManager_MU"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ProcessRecord uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_3c
    if-eqz v5, :cond_179

    .line 775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 776
    .local v6, "origId":J
    const/4 v0, 0x0

    .line 777
    .local v0, "providersPublished":Z
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "size":I
    :goto_48
    if-ge v8, v9, :cond_13f

    .line 778
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ContentProviderHolder;

    .line 779
    .local v10, "src":Landroid/app/ContentProviderHolder;
    if-eqz v10, :cond_137

    iget-object v11, v10, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v11, :cond_137

    iget-object v11, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v11, :cond_5e

    .line 780
    move/from16 v16, v9

    goto/16 :goto_139

    .line 782
    :cond_5e
    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v12, v10, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessProviderRecord;->getProvider(Ljava/lang/String;)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v11

    .line 783
    .local v11, "dst":Lcom/android/server/am/ContentProviderRecord;
    if-nez v11, :cond_6e

    .line 784
    move/from16 v16, v9

    goto/16 :goto_139

    .line 786
    :cond_6e
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v12, :cond_8c

    .line 787
    const-string v12, "ActivityManager_MU"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ContentProviderRecord uid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_8c
    const/4 v12, 0x1

    .line 791
    .end local v0    # "providersPublished":Z
    .local v12, "providersPublished":Z
    new-instance v0, Landroid/content/ComponentName;

    iget-object v13, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v14, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v14, v14, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v0

    .line 792
    .local v13, "comp":Landroid/content/ComponentName;
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v0, v13, v11}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    .line 793
    iget-object v0, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v14, ";"

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 794
    .local v14, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_ac
    array-length v15, v14

    if-ge v0, v15, :cond_bd

    .line 795
    iget-object v15, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    move/from16 v16, v9

    .end local v9    # "size":I
    .local v16, "size":I
    aget-object v9, v14, v0

    invoke-virtual {v15, v9, v11}, Lcom/android/server/am/ProviderMap;->putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    .line 794
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v16

    goto :goto_ac

    .end local v16    # "size":I
    .restart local v9    # "size":I
    :cond_bd
    move/from16 v16, v9

    .line 798
    .end local v0    # "j":I
    .end local v9    # "size":I
    .restart local v16    # "size":I
    const/4 v0, 0x0

    .line 799
    .local v0, "wasInLaunchingProviders":Z
    const/4 v9, 0x0

    .local v9, "j":I
    iget-object v15, v1, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move/from16 v19, v9

    move v9, v0

    move/from16 v0, v19

    .local v0, "j":I
    .local v9, "wasInLaunchingProviders":Z
    .local v15, "numLaunching":I
    :goto_cc
    move/from16 v17, v12

    .end local v12    # "providersPublished":Z
    .local v17, "providersPublished":Z
    if-ge v0, v15, :cond_e7

    .line 800
    iget-object v12, v1, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v11, :cond_e2

    .line 801
    iget-object v12, v1, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 802
    const/4 v9, 0x1

    .line 803
    add-int/lit8 v0, v0, -0x1

    .line 804
    add-int/lit8 v15, v15, -0x1

    .line 799
    :cond_e2
    const/4 v12, 0x1

    add-int/2addr v0, v12

    move/from16 v12, v17

    goto :goto_cc

    .line 807
    .end local v0    # "j":I
    .end local v15    # "numLaunching":I
    :cond_e7
    if-eqz v9, :cond_fb

    .line 808
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v12, 0x49

    invoke-virtual {v0, v12, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 810
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v12, 0x39

    invoke-virtual {v0, v12, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 818
    :cond_fb
    iget-object v0, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v15, v13

    .end local v13    # "comp":Landroid/content/ComponentName;
    .local v15, "comp":Landroid/content/ComponentName;
    iget-wide v12, v12, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    move/from16 v18, v9

    .end local v9    # "wasInLaunchingProviders":Z
    .local v18, "wasInLaunchingProviders":Z
    iget-object v9, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5, v0, v12, v13, v9}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 820
    monitor-enter v11
    :try_end_112
    .catchall {:try_start_14 .. :try_end_112} :catchall_1a6

    .line 821
    :try_start_112
    iget-object v0, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    iput-object v0, v11, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 822
    invoke-virtual {v11, v5}, Lcom/android/server/am/ContentProviderRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 823
    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 824
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    .line 825
    monitor-exit v11
    :try_end_121
    .catchall {:try_start_112 .. :try_end_121} :catchall_134

    .line 826
    const/4 v0, 0x0

    :try_start_122
    iput v0, v11, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    .line 827
    invoke-direct {v1, v5}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 828
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v9, 0x40

    invoke-virtual {v0, v9}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V
    :try_end_131
    .catchall {:try_start_122 .. :try_end_131} :catchall_1a6

    .line 777
    .end local v10    # "src":Landroid/app/ContentProviderHolder;
    .end local v11    # "dst":Lcom/android/server/am/ContentProviderRecord;
    .end local v14    # "names":[Ljava/lang/String;
    .end local v15    # "comp":Landroid/content/ComponentName;
    .end local v18    # "wasInLaunchingProviders":Z
    :cond_131
    move/from16 v0, v17

    goto :goto_139

    .line 825
    .restart local v10    # "src":Landroid/app/ContentProviderHolder;
    .restart local v11    # "dst":Lcom/android/server/am/ContentProviderRecord;
    .restart local v14    # "names":[Ljava/lang/String;
    .restart local v15    # "comp":Landroid/content/ComponentName;
    .restart local v18    # "wasInLaunchingProviders":Z
    :catchall_134
    move-exception v0

    :try_start_135
    monitor-exit v11
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_134

    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    :try_start_136
    throw v0

    .line 779
    .end local v11    # "dst":Lcom/android/server/am/ContentProviderRecord;
    .end local v14    # "names":[Ljava/lang/String;
    .end local v15    # "comp":Landroid/content/ComponentName;
    .end local v16    # "size":I
    .end local v17    # "providersPublished":Z
    .end local v18    # "wasInLaunchingProviders":Z
    .local v0, "providersPublished":Z
    .local v9, "size":I
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    :cond_137
    move/from16 v16, v9

    .line 777
    .end local v9    # "size":I
    .end local v10    # "src":Landroid/app/ContentProviderHolder;
    .restart local v16    # "size":I
    :goto_139
    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v16

    goto/16 :goto_48

    .end local v16    # "size":I
    .restart local v9    # "size":I
    :cond_13f
    move/from16 v16, v9

    .line 833
    .end local v8    # "i":I
    .end local v9    # "size":I
    if-eqz v0, :cond_171

    .line 834
    iget-object v8, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v9, "updateOomAdj_getProvider"

    invoke-virtual {v8, v5, v9}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    .line 835
    const/4 v8, 0x0

    .restart local v8    # "i":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    .restart local v9    # "size":I
    :goto_150
    if-ge v8, v9, :cond_171

    .line 836
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ContentProviderHolder;

    .line 837
    .restart local v10    # "src":Landroid/app/ContentProviderHolder;
    if-eqz v10, :cond_16e

    iget-object v11, v10, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v11, :cond_16e

    iget-object v11, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v11, :cond_163

    .line 838
    goto :goto_16e

    .line 840
    :cond_163
    iget-object v11, v10, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v12, v10, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {v1, v5, v11, v12}, Lcom/android/server/am/ContentProviderHelper;->maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    .end local v10    # "src":Landroid/app/ContentProviderHolder;
    :cond_16e
    :goto_16e
    add-int/lit8 v8, v8, 0x1

    goto :goto_150

    .line 845
    .end local v8    # "i":I
    .end local v9    # "size":I
    :cond_171
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 846
    .end local v0    # "providersPublished":Z
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "origId":J
    monitor-exit v4
    :try_end_175
    .catchall {:try_start_136 .. :try_end_175} :catchall_1a6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 847
    return-void

    .line 770
    .restart local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_179
    :try_start_179
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find app for caller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 771
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") when publishing content providers"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    throw v0

    .line 846
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    :catchall_1a6
    move-exception v0

    monitor-exit v4
    :try_end_1a8
    .catchall {:try_start_179 .. :try_end_1a8} :catchall_1a6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method refContentProvider(Landroid/os/IBinder;II)Z
    .registers 9
    .param p1, "connection"    # Landroid/os/IBinder;
    .param p2, "stable"    # I
    .param p3, "unstable"    # I

    .line 928
    const-string/jumbo v0, "refContentProvider: "

    :try_start_3
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/ContentProviderConnection;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_6} :catch_3a

    .line 933
    .local v1, "conn":Lcom/android/server/am/ContentProviderConnection;
    nop

    .line 934
    if-eqz v1, :cond_32

    .line 938
    nop

    .line 939
    iget-object v2, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v2, :cond_1b

    iget-object v2, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_1b

    .line 940
    iget-object v2, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_1d

    :cond_1b
    const-string v2, ""

    .line 938
    :goto_1d
    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v0, v2}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 942
    :try_start_22
    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/ContentProviderConnection;->adjustCounts(II)V

    .line 943
    iget-boolean v0, v1, Lcom/android/server/am/ContentProviderConnection;->dead:Z
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2d

    .line 945
    xor-int/lit8 v0, v0, 0x1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 943
    return v0

    .line 945
    :catchall_2d
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 946
    throw v0

    .line 935
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "connection is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    .end local v1    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :catch_3a
    move-exception v1

    .line 930
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not a ContentProviderConnection"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 931
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "ContentProviderHelper"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method removeContentProvider(Landroid/os/IBinder;Z)V
    .registers 16
    .param p1, "connection"    # Landroid/os/IBinder;
    .param p2, "stable"    # Z

    .line 853
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "removeContentProvider"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedOrSdkSandboxCaller(Ljava/lang/String;)V

    .line 854
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 858
    .local v0, "ident":J
    :try_start_c
    move-object v2, p1

    check-cast v2, Lcom/android/server/am/ContentProviderConnection;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_f} :catch_60
    .catchall {:try_start_c .. :try_end_f} :catchall_5e

    .line 864
    .local v2, "conn":Lcom/android/server/am/ContentProviderConnection;
    nop

    .line 865
    if-eqz v2, :cond_56

    .line 868
    :try_start_12
    const-string/jumbo v3, "removeContentProvider: "

    .line 870
    iget-object v4, v2, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v4, :cond_26

    iget-object v4, v2, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v4, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v4, :cond_26

    .line 871
    iget-object v4, v2, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v4, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_28

    :cond_26
    const-string v4, ""

    .line 868
    :goto_28
    const-wide/16 v10, 0x40

    invoke-static {v10, v11, v3, v4}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_5e

    .line 873
    :try_start_2d
    iget-object v12, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_50

    :try_start_30
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 874
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, v2

    move v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/ContentProviderHelper;->decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z

    .line 875
    monitor-exit v12
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_4a

    :try_start_3e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_50

    .line 877
    :try_start_41
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_5e

    .line 878
    nop

    .line 880
    .end local v2    # "conn":Lcom/android/server/am/ContentProviderConnection;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 881
    nop

    .line 882
    return-void

    .line 875
    .restart local v2    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :catchall_4a
    move-exception v3

    :try_start_4b
    monitor-exit v12
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local v2    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "connection":Landroid/os/IBinder;
    .end local p2    # "stable":Z
    throw v3
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_50

    .line 877
    .restart local v0    # "ident":J
    .restart local v2    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "connection":Landroid/os/IBinder;
    .restart local p2    # "stable":Z
    :catchall_50
    move-exception v3

    :try_start_51
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 878
    nop

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "connection":Landroid/os/IBinder;
    .end local p2    # "stable":Z
    throw v3

    .line 866
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "connection":Landroid/os/IBinder;
    .restart local p2    # "stable":Z
    :cond_56
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "connection is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "connection":Landroid/os/IBinder;
    .end local p2    # "stable":Z
    throw v3

    .line 880
    .end local v2    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "connection":Landroid/os/IBinder;
    .restart local p2    # "stable":Z
    :catchall_5e
    move-exception v2

    goto :goto_86

    .line 859
    :catch_60
    move-exception v2

    .line 860
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeContentProvider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not a ContentProviderConnection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 862
    .local v3, "msg":Ljava/lang/String;
    const-string v4, "ContentProviderHelper"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "connection":Landroid/os/IBinder;
    .end local p2    # "stable":Z
    throw v4
    :try_end_86
    .catchall {:try_start_51 .. :try_end_86} :catchall_5e

    .line 880
    .end local v2    # "e":Ljava/lang/ClassCastException;
    .end local v3    # "msg":Ljava/lang/String;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "connection":Landroid/os/IBinder;
    .restart local p2    # "stable":Z
    :goto_86
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 881
    throw v2
.end method

.method removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    .line 885
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.ACCESS_CONTENT_PROVIDERS_EXTERNALLY"

    const-string v2, "Do not have permission in call removeContentProviderExternal()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 890
    .local v0, "ident":J
    :try_start_d
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    .line 892
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 893
    nop

    .line 894
    return-void

    .line 892
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 893
    throw v2
.end method

.method removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    .line 897
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 898
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v1

    .line 899
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    if-nez v1, :cond_13

    .line 904
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_89

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 908
    :cond_13
    :try_start_13
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    .local v2, "comp":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v3, v2, p3}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v3

    .line 910
    .local v3, "localCpr":Lcom/android/server/am/ContentProviderRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 911
    invoke-virtual {v3, p2}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleLocked(Landroid/os/IBinder;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 912
    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v6, "updateOomAdj_removeProvider"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    goto :goto_84

    .line 915
    :cond_3d
    const-string v4, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to remove content provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with no external reference for token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 919
    :cond_66
    const-string v4, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to remove content provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with no external references."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v2    # "comp":Landroid/content/ComponentName;
    .end local v3    # "localCpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_13 .. :try_end_85} :catchall_89

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 923
    return-void

    .line 922
    :catchall_89
    move-exception v1

    :try_start_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z
    .registers 24
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cpr"    # Lcom/android/server/am/ContentProviderRecord;
    .param p3, "always"    # Z

    .line 1888
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1889
    .local v4, "inLaunching":Z
    const/4 v5, 0x1

    if-eqz v4, :cond_1c

    if-nez p3, :cond_1c

    iget v0, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    add-int/2addr v0, v5

    iput v0, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    const/4 v6, 0x3

    if-le v0, v6, :cond_1c

    .line 1891
    const/4 v0, 0x1

    move v6, v0

    .end local p3    # "always":Z
    .local v0, "always":Z
    goto :goto_1e

    .line 1894
    .end local v0    # "always":Z
    .restart local p3    # "always":Z
    :cond_1c
    move/from16 v6, p3

    .end local p3    # "always":Z
    .local v6, "always":Z
    :goto_1e
    const/4 v7, 0x0

    if-eqz v4, :cond_23

    if-eqz v6, :cond_70

    .line 1895
    :cond_23
    monitor-enter p2

    .line 1896
    const/4 v0, 0x0

    :try_start_25
    iput-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 1897
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->notifyAll()V

    .line 1898
    invoke-virtual {v3, v7}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    .line 1899
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x49

    invoke-virtual {v0, v8, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1901
    monitor-exit p2
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_185

    .line 1902
    iget v0, v3, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1905
    .local v0, "userId":I
    iget-object v8, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget-object v9, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v0}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v8

    if-ne v8, v3, :cond_4e

    .line 1906
    iget-object v8, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget-object v9, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v0}, Lcom/android/server/am/ProviderMap;->removeProviderByClass(Landroid/content/ComponentName;I)V

    .line 1908
    :cond_4e
    iget-object v8, v3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1909
    .local v8, "names":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_59
    array-length v10, v8

    if-ge v9, v10, :cond_70

    .line 1912
    iget-object v10, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    aget-object v11, v8, v9

    invoke-virtual {v10, v11, v0}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v10

    if-ne v10, v3, :cond_6d

    .line 1913
    iget-object v10, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    aget-object v11, v8, v9

    invoke-virtual {v10, v11, v0}, Lcom/android/server/am/ProviderMap;->removeProviderByName(Ljava/lang/String;I)V

    .line 1909
    :cond_6d
    add-int/lit8 v9, v9, 0x1

    goto :goto_59

    .line 1918
    .end local v0    # "userId":I
    .end local v8    # "names":[Ljava/lang/String;
    .end local v9    # "j":I
    :cond_70
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    move v8, v0

    .local v8, "i":I
    :goto_78
    if-ltz v8, :cond_175

    .line 1919
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/am/ContentProviderConnection;

    .line 1920
    .local v9, "conn":Lcom/android/server/am/ContentProviderConnection;
    iget-boolean v0, v9, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    if-eqz v0, :cond_8f

    .line 1924
    if-eqz v4, :cond_8f

    if-nez v6, :cond_8f

    .line 1925
    move/from16 p3, v6

    goto/16 :goto_16d

    .line 1928
    :cond_8f
    iget-object v10, v9, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 1929
    .local v10, "capp":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v11

    .line 1930
    .local v11, "thread":Landroid/app/IApplicationThread;
    iput-boolean v5, v9, Lcom/android/server/am/ContentProviderConnection;->dead:Z

    .line 1931
    invoke-virtual {v9}, Lcom/android/server/am/ContentProviderConnection;->stableCount()I

    move-result v0

    if-lez v0, :cond_10a

    .line 1932
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 1933
    .local v0, "pid":I
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v12

    if-nez v12, :cond_107

    if-eqz v11, :cond_107

    if-eqz v0, :cond_107

    sget v12, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v12, :cond_107

    .line 1936
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v12

    invoke-virtual {v12, v3, v2, v10}, Lcom/android/server/am/ActivityManagerServiceStub;->isKillProvider(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v12

    if-eqz v12, :cond_107

    .line 1937
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "depends on provider "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 1938
    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " in dying proc "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1939
    if-eqz v2, :cond_d9

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_db

    :cond_d9
    const-string v13, "??"

    :goto_db
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (adj "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1940
    if-eqz v2, :cond_f2

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_f4

    :cond_f2
    const-string v13, "??"

    :goto_f4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xc

    .line 1937
    invoke-virtual {v10, v12, v13, v7, v5}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 1945
    .end local v0    # "pid":I
    :cond_107
    move/from16 p3, v6

    goto :goto_16d

    :cond_10a
    if-eqz v11, :cond_16b

    iget-object v0, v9, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-eqz v0, :cond_16b

    .line 1947
    :try_start_112
    iget-object v0, v9, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v11, v0}, Landroid/app/IApplicationThread;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_11d
    .catch Landroid/os/RemoteException; {:try_start_112 .. :try_end_11d} :catch_11e

    .line 1949
    goto :goto_11f

    .line 1948
    :catch_11e
    move-exception v0

    .line 1952
    :goto_11f
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1953
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_139

    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v0}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_139

    .line 1954
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v12, 0x40

    invoke-virtual {v0, v12}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 1956
    :cond_139
    iget-object v0, v9, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ProcessProviderRecord;->removeProviderConnection(Lcom/android/server/am/ContentProviderConnection;)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 1958
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    .line 1959
    invoke-interface {v0, v9, v7}, Lcom/android/server/am/SmartPowerServiceStub;->onProviderConnectionChanged(Lcom/android/server/am/ContentProviderConnection;Z)V

    .line 1961
    iget-object v12, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v13, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v14, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v15, v3, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 p3, v6

    .end local v6    # "always":Z
    .restart local p3    # "always":Z
    iget-wide v5, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-wide/from16 v16, v5

    move-object/from16 v18, v0

    move-object/from16 v19, v7

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_16d

    .line 1956
    .end local p3    # "always":Z
    .restart local v6    # "always":Z
    :cond_168
    move/from16 p3, v6

    .end local v6    # "always":Z
    .restart local p3    # "always":Z
    goto :goto_16d

    .line 1945
    .end local p3    # "always":Z
    .restart local v6    # "always":Z
    :cond_16b
    move/from16 p3, v6

    .line 1918
    .end local v6    # "always":Z
    .end local v9    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v10    # "capp":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "thread":Landroid/app/IApplicationThread;
    .restart local p3    # "always":Z
    :goto_16d
    add-int/lit8 v8, v8, -0x1

    move/from16 v6, p3

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto/16 :goto_78

    .end local p3    # "always":Z
    .restart local v6    # "always":Z
    :cond_175
    move/from16 p3, v6

    .line 1967
    .end local v6    # "always":Z
    .end local v8    # "i":I
    .restart local p3    # "always":Z
    if-eqz v4, :cond_184

    if-eqz p3, :cond_184

    .line 1968
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1969
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    .line 1970
    const/4 v4, 0x0

    .line 1972
    :cond_184
    return v4

    .line 1901
    .end local p3    # "always":Z
    .restart local v6    # "always":Z
    :catchall_185
    move-exception v0

    move/from16 p3, v6

    .end local v6    # "always":Z
    .restart local p3    # "always":Z
    :goto_188
    :try_start_188
    monitor-exit p2
    :try_end_189
    .catchall {:try_start_188 .. :try_end_189} :catchall_18a

    throw v0

    :catchall_18a
    move-exception v0

    goto :goto_188
.end method

.method unstableProviderDied(Landroid/os/IBinder;)V
    .registers 12
    .param p1, "connection"    # Landroid/os/IBinder;

    .line 952
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_115

    .line 957
    .local v0, "conn":Lcom/android/server/am/ContentProviderConnection;
    nop

    .line 958
    if-eqz v0, :cond_10d

    .line 962
    const-string/jumbo v1, "unstableProviderDied: "

    .line 964
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_1a

    .line 965
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_1c

    :cond_1a
    const-string v2, ""

    .line 962
    :goto_1c
    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v1, v2}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 970
    :try_start_21
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_108

    :try_start_24
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 971
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 972
    .local v2, "provider":Landroid/content/IContentProvider;
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_102

    :try_start_2c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_108

    .line 974
    if-nez v2, :cond_35

    .line 1015
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 976
    return-void

    .line 980
    :cond_35
    :try_start_35
    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 982
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_108

    :try_start_42
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 983
    const-string v5, "ContentProviderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unstableProviderDied: caller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " says "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " died, but we don\'t agree"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_42 .. :try_end_73} :catchall_7a

    .line 1015
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 985
    return-void

    .line 986
    :catchall_7a
    move-exception v5

    :try_start_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    :try_start_7c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "connection":Landroid/os/IBinder;
    throw v5

    .line 990
    .restart local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "connection":Landroid/os/IBinder;
    :cond_80
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_108

    :try_start_83
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 991
    iget-object v5, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v5, v5, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-eq v5, v2, :cond_94

    .line 993
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_83 .. :try_end_8d} :catchall_fc

    .line 1015
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 993
    return-void

    .line 996
    :cond_94
    :try_start_94
    iget-object v5, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v5, v5, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 997
    .local v5, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v5, :cond_f4

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    if-nez v6, :cond_a1

    goto :goto_f4

    .line 1004
    :cond_a1
    iget-object v6, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "ContentProviderHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Process "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1005
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") early provider death"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1004
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1007
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_d9
    .catchall {:try_start_94 .. :try_end_d9} :catchall_fc

    .line 1009
    .local v6, "token":J
    :try_start_d9
    iget-object v8, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v9, "unstable content provider"

    invoke-virtual {v8, v5, v9}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_e1
    .catchall {:try_start_d9 .. :try_end_e1} :catchall_ee

    .line 1011
    :try_start_e1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1012
    nop

    .line 1013
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "token":J
    monitor-exit v1
    :try_end_e6
    .catchall {:try_start_e1 .. :try_end_e6} :catchall_fc

    :try_start_e6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_108

    .line 1015
    .end local v2    # "provider":Landroid/content/IContentProvider;
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1016
    nop

    .line 1017
    return-void

    .line 1011
    .restart local v2    # "provider":Landroid/content/IContentProvider;
    .restart local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "token":J
    :catchall_ee
    move-exception v8

    :try_start_ef
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1012
    nop

    .end local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v2    # "provider":Landroid/content/IContentProvider;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "connection":Landroid/os/IBinder;
    throw v8

    .line 999
    .end local v6    # "token":J
    .restart local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v2    # "provider":Landroid/content/IContentProvider;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "connection":Landroid/os/IBinder;
    :cond_f4
    :goto_f4
    monitor-exit v1
    :try_end_f5
    .catchall {:try_start_ef .. :try_end_f5} :catchall_fc

    .line 1015
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 999
    return-void

    .line 1013
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_fc
    move-exception v5

    :try_start_fd
    monitor-exit v1
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fc

    :try_start_fe
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "connection":Landroid/os/IBinder;
    throw v5
    :try_end_102
    .catchall {:try_start_fe .. :try_end_102} :catchall_108

    .line 972
    .end local v2    # "provider":Landroid/content/IContentProvider;
    .restart local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "connection":Landroid/os/IBinder;
    :catchall_102
    move-exception v2

    :try_start_103
    monitor-exit v1
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_102

    :try_start_104
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "connection":Landroid/os/IBinder;
    throw v2
    :try_end_108
    .catchall {:try_start_104 .. :try_end_108} :catchall_108

    .line 1015
    .restart local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "connection":Landroid/os/IBinder;
    :catchall_108
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1016
    throw v1

    .line 959
    :cond_10d
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "connection is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 953
    .end local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :catch_115
    move-exception v0

    .line 954
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refContentProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not a ContentProviderConnection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 955
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "ContentProviderHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
