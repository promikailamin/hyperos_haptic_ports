.class public final Landroid/media/MediaRoute2Info$Builder;
.super Ljava/lang/Object;
.source "MediaRoute2Info.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAddress:Ljava/lang/String;

.field private blacklist mAllowedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAlsoAllowPrivilegedPackages:Z

.field private blacklist mClientPackageName:Ljava/lang/String;

.field private blacklist mConnectionState:I

.field private blacklist mDeduplicationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDescription:Ljava/lang/CharSequence;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIconUri:Landroid/net/Uri;

.field private final blacklist mId:Ljava/lang/String;

.field private blacklist mIsSystem:Z

.field private blacklist mIsVisibilityRestricted:Z

.field private final blacklist mName:Ljava/lang/CharSequence;

.field private blacklist mProviderId:Ljava/lang/String;

.field private blacklist mProviderPackageName:Ljava/lang/String;

.field private blacklist mRequiredPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mRoutingTypeFlags:I

.field private blacklist mSuitabilityStatus:I

.field private blacklist mTemporaryVisibilityPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mType:I

.field private blacklist mVolume:I

.field private blacklist mVolumeHandling:I

.field private blacklist mVolumeMax:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAddress(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowedPackages(Landroid/media/MediaRoute2Info$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAlsoAllowPrivilegedPackages(Landroid/media/MediaRoute2Info$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/MediaRoute2Info$Builder;->mAlsoAllowPrivilegedPackages:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientPackageName(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mClientPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectionState(Landroid/media/MediaRoute2Info$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mConnectionState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeduplicationIds(Landroid/media/MediaRoute2Info$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDescription(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/media/MediaRoute2Info$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFeatures(Landroid/media/MediaRoute2Info$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconUri(Landroid/media/MediaRoute2Info$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSystem(Landroid/media/MediaRoute2Info$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsSystem:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsVisibilityRestricted(Landroid/media/MediaRoute2Info$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsVisibilityRestricted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProviderId(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProviderPackageName(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequiredPermissions(Landroid/media/MediaRoute2Info$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mRequiredPermissions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoutingTypeFlags(Landroid/media/MediaRoute2Info$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mRoutingTypeFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuitabilityStatus(Landroid/media/MediaRoute2Info$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mSuitabilityStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTemporaryVisibilityPackages(Landroid/media/MediaRoute2Info$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mTemporaryVisibilityPackages:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/media/MediaRoute2Info$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolume(Landroid/media/MediaRoute2Info$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolume:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeHandling(Landroid/media/MediaRoute2Info$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeMax(Landroid/media/MediaRoute2Info$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeMax:I

    return p0
.end method

.method public constructor whitelist <init>(Landroid/media/MediaRoute2Info;)V
    .registers 3

    .line 1435
    invoke-static {p1}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmId(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 1436
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 5

    .line 1446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1372
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    .line 1374
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/MediaRoute2Info$Builder;->mRoutingTypeFlags:I

    .line 1382
    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    .line 1447
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b7

    .line 1450
    const-string v0, "routeInfo must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1452
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mId:Ljava/lang/String;

    .line 1453
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmName(Landroid/media/MediaRoute2Info;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mName:Ljava/lang/CharSequence;

    .line 1454
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmFeatures(Landroid/media/MediaRoute2Info;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    .line 1455
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmType(Landroid/media/MediaRoute2Info;)I

    move-result p1

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    .line 1456
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmRoutingTypeFlags(Landroid/media/MediaRoute2Info;)I

    move-result p1

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mRoutingTypeFlags:I

    .line 1457
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmIsSystem(Landroid/media/MediaRoute2Info;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/media/MediaRoute2Info$Builder;->mIsSystem:Z

    .line 1458
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmIconUri(Landroid/media/MediaRoute2Info;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mIconUri:Landroid/net/Uri;

    .line 1459
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmDescription(Landroid/media/MediaRoute2Info;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 1460
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmConnectionState(Landroid/media/MediaRoute2Info;)I

    move-result p1

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mConnectionState:I

    .line 1461
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmClientPackageName(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mClientPackageName:Ljava/lang/String;

    .line 1462
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmProviderPackageName(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderPackageName:Ljava/lang/String;

    .line 1463
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmVolumeHandling(Landroid/media/MediaRoute2Info;)I

    move-result p1

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    .line 1464
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmVolumeMax(Landroid/media/MediaRoute2Info;)I

    move-result p1

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeMax:I

    .line 1465
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmVolume(Landroid/media/MediaRoute2Info;)I

    move-result p1

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolume:I

    .line 1466
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmAddress(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mAddress:Ljava/lang/String;

    .line 1467
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmDeduplicationIds(Landroid/media/MediaRoute2Info;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    .line 1468
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmExtras(Landroid/media/MediaRoute2Info;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_8c

    .line 1469
    new-instance p1, Landroid/os/Bundle;

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmExtras(Landroid/media/MediaRoute2Info;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    .line 1471
    :cond_8c
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmProviderId(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderId:Ljava/lang/String;

    .line 1472
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmIsVisibilityRestricted(Landroid/media/MediaRoute2Info;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/media/MediaRoute2Info$Builder;->mIsVisibilityRestricted:Z

    .line 1473
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmAllowedPackages(Landroid/media/MediaRoute2Info;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    .line 1474
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmAlsoAllowPrivilegedPackages(Landroid/media/MediaRoute2Info;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/media/MediaRoute2Info$Builder;->mAlsoAllowPrivilegedPackages:Z

    .line 1475
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmSuitabilityStatus(Landroid/media/MediaRoute2Info;)I

    move-result p1

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mSuitabilityStatus:I

    .line 1476
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmRequiredPermissions(Landroid/media/MediaRoute2Info;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mRequiredPermissions:Ljava/util/List;

    .line 1477
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmTemporaryVisibilityPackages(Landroid/media/MediaRoute2Info;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mTemporaryVisibilityPackages:Ljava/util/Set;

    .line 1478
    return-void

    .line 1448
    :cond_b7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 5

    .line 1411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1372
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    .line 1374
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/MediaRoute2Info$Builder;->mRoutingTypeFlags:I

    .line 1382
    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    .line 1412
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 1415
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1418
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mId:Ljava/lang/String;

    .line 1419
    iput-object p2, p0, Landroid/media/MediaRoute2Info$Builder;->mName:Ljava/lang/CharSequence;

    .line 1420
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    .line 1421
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    .line 1422
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    .line 1423
    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mSuitabilityStatus:I

    .line 1424
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mRequiredPermissions:Ljava/util/List;

    .line 1425
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mTemporaryVisibilityPackages:Ljava/util/Set;

    .line 1426
    return-void

    .line 1416
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1413
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 3

    .line 1491
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1494
    iget-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1495
    return-object p0

    .line 1492
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "feature must not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist addFeatures(Ljava/util/Collection;)Landroid/media/MediaRoute2Info$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    .line 1509
    const-string v0, "features must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1510
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1511
    invoke-virtual {p0, v0}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 1512
    goto :goto_9

    .line 1513
    :cond_19
    return-object p0
.end method

.method public whitelist build()Landroid/media/MediaRoute2Info;
    .registers 3

    .line 1825
    iget-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1828
    new-instance v0, Landroid/media/MediaRoute2Info;

    invoke-direct {v0, p0}, Landroid/media/MediaRoute2Info;-><init>(Landroid/media/MediaRoute2Info$Builder;)V

    return-object v0

    .line 1826
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "features must not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearFeatures()Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    .line 1521
    iget-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1522
    return-object p0
.end method

.method public blacklist setAddress(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    .line 1654
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mAddress:Ljava/lang/String;

    .line 1655
    return-object p0
.end method

.method public whitelist setClientPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    .line 1605
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mClientPackageName:Ljava/lang/String;

    .line 1606
    return-object p0
.end method

.method public whitelist setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    .line 1596
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mConnectionState:I

    .line 1597
    return-object p0
.end method

.method public whitelist setDeduplicationIds(Ljava/util/Set;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    .line 1663
    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    .line 1664
    return-object p0
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    .line 1583
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 1584
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/media/MediaRoute2Info$Builder;
    .registers 3

    .line 1674
    if-nez p1, :cond_6

    .line 1675
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    .line 1676
    return-object p0

    .line 1678
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    .line 1679
    return-object p0
.end method

.method public whitelist setIconUri(Landroid/net/Uri;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    .line 1574
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mIconUri:Landroid/net/Uri;

    .line 1575
    return-object p0
.end method

.method public blacklist setProviderId(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 3

    .line 1688
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1691
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderId:Ljava/lang/String;

    .line 1692
    return-object p0

    .line 1689
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "providerId must not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setProviderPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    .line 1617
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderPackageName:Ljava/lang/String;

    .line 1618
    return-object p0
.end method

.method public whitelist setRequiredPermissions(Ljava/util/List;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    .line 1786
    invoke-static {p1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mRequiredPermissions:Ljava/util/List;

    .line 1787
    return-object p0
.end method

.method public whitelist setRequiredPermissions(Ljava/util/Set;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    .line 1771
    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaRoute2Info$Builder;->setRequiredPermissions(Ljava/util/List;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setSuitabilityStatus(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    .line 1814
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mSuitabilityStatus:I

    .line 1815
    return-object p0
.end method

.method public blacklist setSupportedRoutingTypes(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    .line 1544
    invoke-static {p1}, Landroid/media/MediaRoute2Info;->-$$Nest$smvalidateRoutingTypeFlags(I)I

    move-result p1

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mRoutingTypeFlags:I

    .line 1545
    return-object p0
.end method

.method public blacklist setSystemRoute(Z)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    .line 1554
    iput-boolean p1, p0, Landroid/media/MediaRoute2Info$Builder;->mIsSystem:Z

    .line 1555
    return-object p0
.end method

.method public blacklist setTemporaryAllowedPackages(Ljava/util/Set;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    .line 1797
    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mTemporaryVisibilityPackages:Ljava/util/Set;

    .line 1798
    return-object p0
.end method

.method public whitelist setType(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    .line 1532
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    .line 1533
    return-object p0
.end method

.method public whitelist setVisibilityPublic()Landroid/media/MediaRoute2Info$Builder;
    .registers 3

    .line 1709
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsVisibilityRestricted:Z

    .line 1710
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    .line 1711
    iput-boolean v0, p0, Landroid/media/MediaRoute2Info$Builder;->mAlsoAllowPrivilegedPackages:Z

    .line 1712
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mRequiredPermissions:Ljava/util/List;

    .line 1713
    return-object p0
.end method

.method public whitelist setVisibilityRestricted(Ljava/util/Set;)Landroid/media/MediaRoute2Info$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    .line 1731
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsVisibilityRestricted:Z

    .line 1732
    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    .line 1733
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/media/MediaRoute2Info$Builder;->mAlsoAllowPrivilegedPackages:Z

    .line 1734
    return-object p0
.end method

.method public whitelist setVisibilityRestricted(Ljava/util/Set;Z)Landroid/media/MediaRoute2Info$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    .line 1753
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsVisibilityRestricted:Z

    .line 1754
    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    .line 1755
    iput-boolean p2, p0, Landroid/media/MediaRoute2Info$Builder;->mAlsoAllowPrivilegedPackages:Z

    .line 1756
    return-object p0
.end method

.method public whitelist setVolume(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    .line 1644
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolume:I

    .line 1645
    return-object p0
.end method

.method public whitelist setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    .line 1626
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    .line 1627
    return-object p0
.end method

.method public whitelist setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    .line 1635
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeMax:I

    .line 1636
    return-object p0
.end method
