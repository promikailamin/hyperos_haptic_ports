.class public final Landroid/app/AppOpsManager$HistoricalUidOps;
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
    name = "HistoricalUidOps"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$HistoricalUidOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHistoricalPackageOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$HistoricalPackageOps;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Landroid/app/AppOpsManager$HistoricalUidOps;->addDiscreteAccess(ILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearHistory(Landroid/app/AppOpsManager$HistoricalUidOps;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->clearHistory(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalUidOps;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIDJJ)V
    .registers 12

    invoke-direct/range {p0 .. p11}, Landroid/app/AppOpsManager$HistoricalUidOps;->filter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIDJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalUidOps;->increaseAccessCount(ILjava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalUidOps;->increaseAccessDuration(ILjava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalUidOps;->increaseRejectCount(ILjava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalUidOps;)Z
    .registers 1

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/app/AppOpsManager$HistoricalUidOps;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->merge(Landroid/app/AppOpsManager$HistoricalUidOps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalUidOps;D)Landroid/app/AppOpsManager$HistoricalUidOps;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->splice(D)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6437
    new-instance v0, Landroid/app/AppOpsManager$HistoricalUidOps$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$HistoricalUidOps$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$HistoricalUidOps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2

    .line 6228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6229
    iput p1, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    .line 6230
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/AppOpsManager$HistoricalUidOps;)V
    .registers 7

    .line 6232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6233
    iget v0, p1, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    .line 6234
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    .line 6235
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_2f

    .line 6236
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v2

    .line 6237
    new-instance v3, Landroid/app/AppOpsManager$HistoricalPackageOps;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager-IA;)V

    .line 6238
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_23

    .line 6239
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    .line 6241
    :cond_23
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6235
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 6243
    :cond_2f
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/app/AppOpsManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;-><init>(Landroid/app/AppOpsManager$HistoricalUidOps;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 6245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    .line 6248
    sget-object v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayMap(Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object p1

    iput-object p1, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    .line 6249
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/AppOpsManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 5

    .line 6416
    invoke-interface {p1, p0}, Landroid/app/AppOpsManager$HistoricalOpsVisitor;->visitHistoricalUidOps(Landroid/app/AppOpsManager$HistoricalUidOps;)V

    .line 6417
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    .line 6418
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 6419
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 6418
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 6421
    :cond_14
    return-void
.end method

.method private blacklist addDiscreteAccess(ILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 11

    .line 6343
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object p2

    move-object p0, p2

    move-object p2, p3

    move p3, p4

    move p4, p5

    move-wide p5, p6

    move-wide p7, p8

    move-object p9, p10

    invoke-static/range {p0 .. p9}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 6345
    return-void
.end method

.method private blacklist clearHistory(Ljava/lang/String;)V
    .registers 3

    .line 6399
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_9

    .line 6400
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6402
    :cond_9
    return-void
.end method

.method private blacklist filter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIDJJ)V
    .registers 24

    .line 6291
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    .line 6292
    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_3d

    .line 6293
    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v1

    .line 6294
    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_20

    .line 6295
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6294
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 6296
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_3a

    .line 6298
    :cond_20
    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v1 .. v11}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalPackageOps;Ljava/lang/String;[Ljava/lang/String;IIDJJ)V

    .line 6300
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v1

    if-nez v1, :cond_3a

    .line 6301
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 6292
    :cond_3a
    :goto_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 6305
    :cond_3d
    return-void
.end method

.method private blacklist getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .registers 4

    .line 6425
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 6426
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    .line 6428
    :cond_b
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 6429
    if-nez v0, :cond_1f

    .line 6430
    new-instance v0, Landroid/app/AppOpsManager$HistoricalPackageOps;

    invoke-direct {v0, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Ljava/lang/String;)V

    .line 6431
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6433
    :cond_1f
    return-object v0
.end method

.method private blacklist increaseAccessCount(ILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 8

    .line 6321
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object p2

    move-object p0, p2

    move-object p2, p3

    move p3, p4

    move p4, p5

    move-wide p5, p6

    invoke-static/range {p0 .. p6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V

    .line 6323
    return-void
.end method

.method private blacklist increaseAccessDuration(ILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 8

    .line 6335
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object p2

    move-object p0, p2

    move-object p2, p3

    move p3, p4

    move p4, p5

    move-wide p5, p6

    invoke-static/range {p0 .. p6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V

    .line 6337
    return-void
.end method

.method private blacklist increaseRejectCount(ILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 8

    .line 6328
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object p2

    move-object p0, p2

    move-object p2, p3

    move p3, p4

    move p4, p5

    move-wide p5, p6

    invoke-static/range {p0 .. p6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V

    .line 6330
    return-void
.end method

.method private blacklist isEmpty()Z
    .registers 4

    .line 6308
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    .line 6309
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_1b

    .line 6310
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 6311
    invoke-static {v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalPackageOps;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 6312
    const/4 v0, 0x0

    return v0

    .line 6309
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 6315
    :cond_1b
    return v1
.end method

.method private blacklist merge(Landroid/app/AppOpsManager$HistoricalUidOps;)V
    .registers 7

    .line 6271
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    .line 6272
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_31

    .line 6273
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v2

    .line 6274
    nop

    .line 6275
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6274
    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v3

    .line 6276
    if-eqz v3, :cond_1a

    .line 6277
    invoke-static {v3, v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalPackageOps;)V

    goto :goto_2e

    .line 6279
    :cond_1a
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_25

    .line 6280
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    .line 6282
    :cond_25
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6272
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6285
    :cond_31
    return-void
.end method

.method private blacklist splice(D)Landroid/app/AppOpsManager$HistoricalUidOps;
    .registers 9

    .line 6252
    nop

    .line 6253
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    .line 6254
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_33

    .line 6255
    invoke-virtual {p0, v2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v3

    .line 6256
    invoke-static {v3, p1, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalPackageOps;D)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v3

    .line 6257
    if-eqz v3, :cond_30

    .line 6258
    if-nez v1, :cond_1c

    .line 6259
    new-instance v1, Landroid/app/AppOpsManager$HistoricalUidOps;

    iget v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    invoke-direct {v1, v4}, Landroid/app/AppOpsManager$HistoricalUidOps;-><init>(I)V

    .line 6261
    :cond_1c
    iget-object v4, v1, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_27

    .line 6262
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v1, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    .line 6264
    :cond_27
    iget-object v4, v1, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6254
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 6267
    :cond_33
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 6406
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 6451
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 6452
    return v0

    .line 6454
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 6457
    :cond_12
    check-cast p1, Landroid/app/AppOpsManager$HistoricalUidOps;

    .line 6458
    iget v2, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    iget v3, p1, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    if-eq v2, v3, :cond_1b

    .line 6459
    return v1

    .line 6461
    :cond_1b
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_24

    .line 6462
    iget-object p1, p1, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-eqz p1, :cond_2f

    .line 6463
    return v1

    .line 6465
    :cond_24
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 6466
    return v1

    .line 6468
    :cond_2f
    return v0

    .line 6455
    :cond_30
    :goto_30
    return v1
.end method

.method public whitelist getPackageCount()I
    .registers 2

    .line 6362
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    .line 6363
    const/4 v0, 0x0

    return v0

    .line 6365
    :cond_6
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .registers 3

    .line 6392
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    .line 6393
    const/4 p1, 0x0

    return-object p1

    .line 6395
    :cond_6
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager$HistoricalPackageOps;

    return-object p1
.end method

.method public whitelist getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .registers 3

    .line 6378
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_d

    .line 6381
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager$HistoricalPackageOps;

    return-object p1

    .line 6379
    :cond_d
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist getUid()I
    .registers 2

    .line 6351
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 6473
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    .line 6474
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-eqz v1, :cond_f

    .line 6475
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    add-int/2addr v0, v1

    .line 6476
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 6411
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6412
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArrayMap(Landroid/util/ArrayMap;I)V

    .line 6413
    return-void
.end method
