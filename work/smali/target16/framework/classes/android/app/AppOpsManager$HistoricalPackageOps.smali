.class public final Landroid/app/AppOpsManager$HistoricalPackageOps;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoricalPackageOps"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$HistoricalPackageOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAttributedHistoricalOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$AttributedHistoricalOps;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Landroid/app/AppOpsManager$HistoricalPackageOps;->addDiscreteAccess(ILjava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalPackageOps;Ljava/lang/String;[Ljava/lang/String;IIDJJ)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Landroid/app/AppOpsManager$HistoricalPackageOps;->filter(Ljava/lang/String;[Ljava/lang/String;IIDJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->increaseAccessCount(ILjava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->increaseAccessDuration(ILjava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->increaseRejectCount(ILjava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalPackageOps;)Z
    .registers 1

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalPackageOps;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->merge(Landroid/app/AppOpsManager$HistoricalPackageOps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalPackageOps;D)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->splice(D)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6731
    new-instance v0, Landroid/app/AppOpsManager$HistoricalPackageOps$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$HistoricalPackageOps$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/AppOpsManager$HistoricalPackageOps;)V
    .registers 7

    .line 6495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6496
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    .line 6497
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 6498
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_2f

    .line 6499
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v2

    .line 6500
    new-instance v3, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/app/AppOpsManager$AttributedHistoricalOps;-><init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager-IA;)V

    .line 6501
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_23

    .line 6502
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 6504
    :cond_23
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6498
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 6506
    :cond_2f
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Landroid/app/AppOpsManager$HistoricalPackageOps;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 6508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6509
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    .line 6510
    sget-object v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayMap(Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object p1

    iput-object p1, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 6511
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/AppOpsManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 6491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6492
    iput-object p1, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    .line 6493
    return-void
.end method

.method private blacklist accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 5

    .line 6570
    invoke-interface {p1, p0}, Landroid/app/AppOpsManager$HistoricalOpsVisitor;->visitHistoricalPackageOps(Landroid/app/AppOpsManager$HistoricalPackageOps;)V

    .line 6571
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 6572
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 6573
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$maccept(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 6572
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 6575
    :cond_14
    return-void
.end method

.method private blacklist addDiscreteAccess(ILjava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 10

    .line 6609
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object p2

    move-object p0, p2

    move p2, p3

    move p3, p4

    move-wide p4, p5

    move-wide p6, p7

    move-object p8, p9

    invoke-static/range {p0 .. p8}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 6611
    return-void
.end method

.method private blacklist filter(Ljava/lang/String;[Ljava/lang/String;IIDJJ)V
    .registers 22

    .line 6553
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 6554
    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_3a

    .line 6555
    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v1

    .line 6556
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_20

    .line 6557
    invoke-virtual {v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 6556
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 6558
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_37

    .line 6560
    :cond_20
    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-static/range {v1 .. v10}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mfilter(Landroid/app/AppOpsManager$AttributedHistoricalOps;[Ljava/lang/String;IIDJJ)V

    .line 6562
    invoke-virtual {v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v1

    if-nez v1, :cond_37

    .line 6563
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 6554
    :cond_37
    :goto_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 6567
    :cond_3a
    return-void
.end method

.method private blacklist getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .registers 4

    .line 6624
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 6625
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 6627
    :cond_b
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 6629
    if-nez v0, :cond_1f

    .line 6630
    new-instance v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    invoke-direct {v0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;-><init>(Ljava/lang/String;)V

    .line 6631
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6633
    :cond_1f
    return-object v0
.end method

.method private blacklist increaseAccessCount(ILjava/lang/String;IIJ)V
    .registers 7

    .line 6590
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object p2

    move-object p0, p2

    move p2, p3

    move p3, p4

    move-wide p4, p5

    invoke-static/range {p0 .. p5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V

    .line 6592
    return-void
.end method

.method private blacklist increaseAccessDuration(ILjava/lang/String;IIJ)V
    .registers 7

    .line 6602
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object p2

    move-object p0, p2

    move p2, p3

    move p3, p4

    move-wide p4, p5

    invoke-static/range {p0 .. p5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V

    .line 6604
    return-void
.end method

.method private blacklist increaseRejectCount(ILjava/lang/String;IIJ)V
    .registers 7

    .line 6596
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object p2

    move-object p0, p2

    move p2, p3

    move p3, p4

    move-wide p4, p5

    invoke-static/range {p0 .. p5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V

    .line 6598
    return-void
.end method

.method private blacklist isEmpty()Z
    .registers 4

    .line 6578
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 6579
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_1b

    .line 6580
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 6581
    invoke-static {v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$misEmpty(Landroid/app/AppOpsManager$AttributedHistoricalOps;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 6582
    const/4 v0, 0x0

    return v0

    .line 6579
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 6585
    :cond_1b
    return v1
.end method

.method private blacklist merge(Landroid/app/AppOpsManager$HistoricalPackageOps;)V
    .registers 7

    .line 6533
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 6534
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_31

    .line 6535
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v2

    .line 6536
    nop

    .line 6537
    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 6536
    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v3

    .line 6538
    if-eqz v3, :cond_1a

    .line 6539
    invoke-static {v3, v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mmerge(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    goto :goto_2e

    .line 6541
    :cond_1a
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_25

    .line 6542
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 6544
    :cond_25
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6534
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6548
    :cond_31
    return-void
.end method

.method private blacklist splice(D)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .registers 9

    .line 6514
    nop

    .line 6515
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 6516
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_33

    .line 6517
    invoke-virtual {p0, v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v3

    .line 6518
    invoke-static {v3, p1, p2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$msplice(Landroid/app/AppOpsManager$AttributedHistoricalOps;D)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v3

    .line 6519
    if-eqz v3, :cond_30

    .line 6520
    if-nez v1, :cond_1c

    .line 6521
    new-instance v1, Landroid/app/AppOpsManager$HistoricalPackageOps;

    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    invoke-direct {v1, v4}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Ljava/lang/String;)V

    .line 6523
    :cond_1c
    iget-object v4, v1, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_27

    .line 6524
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v1, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 6526
    :cond_27
    iget-object v4, v1, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6516
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 6529
    :cond_33
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 6722
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 6746
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 6747
    return v0

    .line 6749
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    .line 6752
    :cond_12
    check-cast p1, Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 6753
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 6754
    return v1

    .line 6756
    :cond_1f
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_28

    .line 6757
    iget-object p1, p1, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-eqz p1, :cond_33

    .line 6758
    return v1

    .line 6760
    :cond_28
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    .line 6761
    return v1

    .line 6763
    :cond_33
    return v0

    .line 6750
    :cond_34
    :goto_34
    return v1
.end method

.method public whitelist getAttributedOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .registers 3

    .line 6812
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    .line 6813
    const/4 p1, 0x0

    return-object p1

    .line 6815
    :cond_6
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    return-object p1
.end method

.method public whitelist getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .registers 3

    .line 6798
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_d

    .line 6801
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    return-object p1

    .line 6799
    :cond_d
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist getAttributedOpsCount()I
    .registers 2

    .line 6782
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    .line 6783
    const/4 v0, 0x0

    return v0

    .line 6785
    :cond_6
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 7

    .line 6700
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 6701
    return-object v1

    .line 6704
    :cond_6
    nop

    .line 6705
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 6706
    const/4 v2, 0x0

    move-object v3, v1

    :goto_d
    if-ge v2, v0, :cond_27

    .line 6707
    invoke-virtual {p0, v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v4

    .line 6708
    if-eqz v4, :cond_24

    .line 6709
    if-nez v3, :cond_21

    .line 6710
    new-instance v3, Landroid/app/AppOpsManager$HistoricalOp;

    invoke-direct {v3, v4, v1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager-IA;)V

    goto :goto_24

    .line 6712
    :cond_21
    invoke-static {v3, v4}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp;)V

    .line 6706
    :cond_24
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 6717
    :cond_27
    return-object v3
.end method

.method public whitelist getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 9

    .line 6670
    nop

    .line 6671
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 6673
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_8
    const/16 v4, 0xaa

    if-ge v2, v4, :cond_2d

    .line 6674
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v4

    .line 6676
    move v5, v1

    :goto_11
    if-ge v5, v0, :cond_2a

    .line 6677
    invoke-virtual {p0, v5}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v6

    if-eqz v6, :cond_27

    .line 6678
    if-ne v3, p1, :cond_24

    .line 6679
    invoke-virtual {p0, v4}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object p1

    return-object p1

    .line 6681
    :cond_24
    add-int/lit8 v3, v3, 0x1

    .line 6682
    goto :goto_2a

    .line 6676
    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 6673
    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6688
    :cond_2d
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist getOpCount()I
    .registers 8

    .line 6643
    nop

    .line 6644
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 6646
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_8
    const/16 v4, 0xaa

    if-ge v2, v4, :cond_26

    .line 6647
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v4

    .line 6649
    move v5, v1

    :goto_11
    if-ge v5, v0, :cond_23

    .line 6650
    invoke-virtual {p0, v5}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v6

    if-eqz v6, :cond_20

    .line 6651
    add-int/lit8 v3, v3, 0x1

    .line 6652
    goto :goto_23

    .line 6649
    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 6646
    :cond_23
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6657
    :cond_26
    return v3
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 6619
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 6768
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    .line 6769
    :goto_d
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1a

    .line 6770
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->hashCode()I

    move-result v1

    goto :goto_1b

    :cond_1a
    nop

    :goto_1b
    add-int/2addr v0, v1

    .line 6771
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 6727
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6728
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArrayMap(Landroid/util/ArrayMap;I)V

    .line 6729
    return-void
.end method
