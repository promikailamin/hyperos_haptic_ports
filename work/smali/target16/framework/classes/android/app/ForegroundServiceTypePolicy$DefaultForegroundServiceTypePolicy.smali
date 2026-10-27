.class public Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;
.super Landroid/app/ForegroundServiceTypePolicy;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultForegroundServiceTypePolicy"
.end annotation


# instance fields
.field private final blacklist mForegroundServiceTypePolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPermissionEnforcementToPolicyInfoMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 6

    .line 1415
    invoke-direct {p0}, Landroid/app/ForegroundServiceTypePolicy;-><init>()V

    .line 1403
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    .line 1409
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mPermissionEnforcementToPolicyInfoMap:Landroid/util/ArrayMap;

    .line 1416
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/4 v1, -0x1

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MANIFEST:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1418
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    sget-object v1, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_NONE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1420
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/4 v1, 0x1

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_DATA_SYNC:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1422
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/4 v1, 0x2

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MEDIA_PLAYBACK:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1424
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/4 v1, 0x4

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_PHONE_CALL:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1426
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x8

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_LOCATION:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1428
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x10

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_CONNECTED_DEVICE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1430
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x20

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MEDIA_PROJECTION:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1432
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x40

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_CAMERA:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1434
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x80

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MICROPHONE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1436
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x100

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_HEALTH:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1438
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x200

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_REMOTE_MESSAGING:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1440
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x400

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_SYSTEM_EXEMPTED:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1442
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x800

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_SHORT_SERVICE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1444
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x2000

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MEDIA_PROCESSING:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1448
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/high16 v1, 0x40000000    # 2.0f

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_SPECIAL_USE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1450
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_a2
    if-ge v2, v0, :cond_b6

    .line 1451
    iget-object v1, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    .line 1452
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 1453
    iget-object v3, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mPermissionEnforcementToPolicyInfoMap:Landroid/util/ArrayMap;

    iget-object v4, v1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    add-int/lit8 v2, v2, 0x1

    goto :goto_a2

    .line 1455
    :cond_b6
    return-void
.end method


# virtual methods
.method public blacklist checkForegroundServiceTypePolicy(Landroid/content/Context;Ljava/lang/String;IIZLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;)I
    .registers 12

    .line 1479
    invoke-virtual {p6, p3}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isTypeDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1480
    const/4 p1, 0x3

    return p1

    .line 1482
    :cond_8
    nop

    .line 1484
    iget-object v0, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 1485
    iget-object v0, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    move p0, p4

    move-object p4, p2

    move p2, p3

    move p3, p0

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->checkPermissions(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v0

    goto :goto_1f

    .line 1484
    :cond_1a
    move v4, p4

    move-object p4, p2

    move p2, p3

    move p3, v4

    move v0, v1

    .line 1489
    :goto_1f
    const/4 v2, 0x1

    if-nez v0, :cond_41

    .line 1490
    nop

    .line 1492
    iget-object v3, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    if-eqz v3, :cond_33

    .line 1493
    iget-object v0, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->checkPermissions(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v0

    .line 1495
    if-nez v0, :cond_31

    .line 1497
    goto :goto_34

    .line 1495
    :cond_31
    move v1, v2

    goto :goto_34

    .line 1492
    :cond_33
    move v1, v2

    .line 1501
    :goto_34
    if-eqz v1, :cond_41

    iget-object v1, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    if-eqz v1, :cond_41

    .line 1502
    iget-object v0, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v0

    .line 1506
    :cond_41
    if-eqz v0, :cond_54

    .line 1508
    iget-boolean p1, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagValue:Z

    if-eqz p1, :cond_52

    const-wide/32 p3, 0xf2dd77a    # 1.258200034E-315

    invoke-static {p3, p4, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 1509
    const/4 p1, 0x5

    goto :goto_53

    .line 1510
    :cond_52
    const/4 p1, 0x4

    .line 1507
    :goto_53
    return p1

    .line 1513
    :cond_54
    invoke-virtual {p6, p2}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isTypeDeprecated(I)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 1514
    const/4 p1, 0x2

    return p1

    .line 1516
    :cond_5c
    return v2
.end method

.method public blacklist getForegroundServiceTypePolicyInfo(II)Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;
    .registers 5

    .line 1460
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 1461
    if-nez p1, :cond_2e

    .line 1463
    iget-object p1, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 1464
    if-eqz p1, :cond_15

    goto :goto_2e

    .line 1466
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid default fgs type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1469
    :cond_2e
    :goto_2e
    return-object p1
.end method

.method public blacklist updatePermissionEnforcementFlagIfNecessary(Ljava/lang/String;)V
    .registers 3

    .line 1521
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mPermissionEnforcementToPolicyInfoMap:Landroid/util/ArrayMap;

    .line 1522
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 1523
    if-eqz v0, :cond_d

    .line 1524
    invoke-static {v0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->-$$Nest$mupdatePermissionEnforcementFlagIfNecessary(Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;Ljava/lang/String;)V

    .line 1526
    :cond_d
    return-void
.end method
