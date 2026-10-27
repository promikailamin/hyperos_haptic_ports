.class public final Landroid/content/pm/UserProperties$Builder;
.super Ljava/lang/Object;
.source "UserProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/UserProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowStoppingUserWithDelayedLocking:Z

.field private blacklist mAlwaysVisible:Z

.field private blacklist mAuthAlwaysRequiredToDisableQuietMode:Z

.field private blacklist mCredentialShareableWithParent:Z

.field private blacklist mCrossProfileContentSharingStrategy:I

.field private blacklist mCrossProfileIntentFilterAccessControl:I

.field private blacklist mCrossProfileIntentResolutionStrategy:I

.field private blacklist mDeleteAppWithParent:Z

.field private blacklist mInheritDevicePolicy:I

.field private blacklist mItemsRestrictedOnHomeScreen:Z

.field private blacklist mMediaSharedWithParent:Z

.field private blacklist mProfileApiVisibility:I

.field private blacklist mShowInLauncher:I

.field private blacklist mShowInQuietMode:I

.field private blacklist mShowInSettings:I

.field private blacklist mShowInSharingSurfaces:I

.field private blacklist mStartWithParent:Z

.field private blacklist mUpdateCrossProfileIntentFiltersOnOTA:Z

.field private blacklist mUseParentsContacts:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 1438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1407
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mShowInLauncher:I

    .line 1408
    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mStartWithParent:Z

    .line 1409
    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mShowInSettings:I

    .line 1410
    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mShowInQuietMode:I

    .line 1412
    const/4 v1, 0x1

    iput v1, p0, Landroid/content/pm/UserProperties$Builder;->mShowInSharingSurfaces:I

    .line 1414
    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mInheritDevicePolicy:I

    .line 1415
    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mUseParentsContacts:Z

    .line 1416
    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    .line 1417
    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileIntentFilterAccessControl:I

    .line 1420
    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileIntentResolutionStrategy:I

    .line 1422
    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mMediaSharedWithParent:Z

    .line 1423
    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mCredentialShareableWithParent:Z

    .line 1424
    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mAuthAlwaysRequiredToDisableQuietMode:Z

    .line 1425
    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mAllowStoppingUserWithDelayedLocking:Z

    .line 1426
    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mDeleteAppWithParent:Z

    .line 1427
    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mAlwaysVisible:Z

    .line 1428
    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileContentSharingStrategy:I

    .line 1430
    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mProfileApiVisibility:I

    .line 1431
    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mItemsRestrictedOnHomeScreen:Z

    .line 1438
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/content/pm/UserProperties;
    .registers 23

    .line 1612
    move-object/from16 v0, p0

    new-instance v1, Landroid/content/pm/UserProperties;

    move-object v2, v1

    iget v1, v0, Landroid/content/pm/UserProperties$Builder;->mShowInLauncher:I

    move-object v3, v2

    iget-boolean v2, v0, Landroid/content/pm/UserProperties$Builder;->mStartWithParent:Z

    move-object v4, v3

    iget v3, v0, Landroid/content/pm/UserProperties$Builder;->mShowInSettings:I

    move-object v5, v4

    iget v4, v0, Landroid/content/pm/UserProperties$Builder;->mShowInQuietMode:I

    move-object v6, v5

    iget v5, v0, Landroid/content/pm/UserProperties$Builder;->mShowInSharingSurfaces:I

    move-object v7, v6

    iget v6, v0, Landroid/content/pm/UserProperties$Builder;->mInheritDevicePolicy:I

    move-object v8, v7

    iget-boolean v7, v0, Landroid/content/pm/UserProperties$Builder;->mUseParentsContacts:Z

    move-object v9, v8

    iget-boolean v8, v0, Landroid/content/pm/UserProperties$Builder;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    move-object v10, v9

    iget v9, v0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileIntentFilterAccessControl:I

    move-object v11, v10

    iget v10, v0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileIntentResolutionStrategy:I

    move-object v12, v11

    iget-boolean v11, v0, Landroid/content/pm/UserProperties$Builder;->mMediaSharedWithParent:Z

    move-object v13, v12

    iget-boolean v12, v0, Landroid/content/pm/UserProperties$Builder;->mCredentialShareableWithParent:Z

    move-object v14, v13

    iget-boolean v13, v0, Landroid/content/pm/UserProperties$Builder;->mAuthAlwaysRequiredToDisableQuietMode:Z

    move-object v15, v14

    iget-boolean v14, v0, Landroid/content/pm/UserProperties$Builder;->mAllowStoppingUserWithDelayedLocking:Z

    move-object/from16 v16, v15

    iget-boolean v15, v0, Landroid/content/pm/UserProperties$Builder;->mDeleteAppWithParent:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Landroid/content/pm/UserProperties$Builder;->mAlwaysVisible:Z

    move/from16 v18, v1

    iget v1, v0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileContentSharingStrategy:I

    move/from16 v19, v1

    iget v1, v0, Landroid/content/pm/UserProperties$Builder;->mProfileApiVisibility:I

    iget-boolean v0, v0, Landroid/content/pm/UserProperties$Builder;->mItemsRestrictedOnHomeScreen:Z

    const/16 v20, 0x0

    move/from16 v21, v19

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v16, v18

    move/from16 v18, v1

    move/from16 v1, v17

    move/from16 v17, v21

    invoke-direct/range {v0 .. v20}, Landroid/content/pm/UserProperties;-><init>(IZIIIIZZIIZZZZZZIIZLandroid/content/pm/UserProperties-IA;)V

    return-object v0
.end method

.method public blacklist setAllowStoppingUserWithDelayedLocking(Z)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1552
    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mAllowStoppingUserWithDelayedLocking:Z

    .line 1554
    return-object p0
.end method

.method public blacklist setAlwaysVisible(Z)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1569
    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mAlwaysVisible:Z

    .line 1570
    return-object p0
.end method

.method public blacklist setAuthAlwaysRequiredToDisableQuietMode(Z)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1542
    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mAuthAlwaysRequiredToDisableQuietMode:Z

    .line 1544
    return-object p0
.end method

.method public blacklist setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1533
    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mCredentialShareableWithParent:Z

    .line 1534
    return-object p0
.end method

.method public blacklist setCrossProfileContentSharingStrategy(I)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1582
    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileContentSharingStrategy:I

    .line 1583
    return-object p0
.end method

.method public blacklist setCrossProfileIntentFilterAccessControl(I)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1512
    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileIntentFilterAccessControl:I

    .line 1513
    return-object p0
.end method

.method public blacklist setCrossProfileIntentResolutionStrategy(I)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1521
    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileIntentResolutionStrategy:I

    .line 1522
    return-object p0
.end method

.method public blacklist setDeleteAppWithParent(Z)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1561
    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mDeleteAppWithParent:Z

    .line 1562
    return-object p0
.end method

.method public blacklist setInheritDevicePolicy(I)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1487
    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mInheritDevicePolicy:I

    .line 1488
    return-object p0
.end method

.method public blacklist setItemsRestrictedOnHomeScreen(Z)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1601
    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mItemsRestrictedOnHomeScreen:Z

    .line 1602
    return-object p0
.end method

.method public blacklist setMediaSharedWithParent(Z)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1527
    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mMediaSharedWithParent:Z

    .line 1528
    return-object p0
.end method

.method public blacklist setProfileApiVisibility(I)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1592
    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mProfileApiVisibility:I

    .line 1593
    return-object p0
.end method

.method public blacklist setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1442
    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mShowInLauncher:I

    .line 1443
    return-object p0
.end method

.method public blacklist setShowInQuietMode(I)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1467
    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mShowInQuietMode:I

    .line 1468
    return-object p0
.end method

.method public blacklist setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1456
    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mShowInSettings:I

    .line 1457
    return-object p0
.end method

.method public blacklist setShowInSharingSurfaces(I)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1478
    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mShowInSharingSurfaces:I

    .line 1479
    return-object p0
.end method

.method public blacklist setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1448
    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mStartWithParent:Z

    .line 1449
    return-object p0
.end method

.method public blacklist setUpdateCrossProfileIntentFiltersOnOTA(Z)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1502
    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    .line 1503
    return-object p0
.end method

.method public blacklist setUseParentsContacts(Z)Landroid/content/pm/UserProperties$Builder;
    .registers 2

    .line 1493
    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mUseParentsContacts:Z

    .line 1494
    return-object p0
.end method
