.class public final Landroid/app/AppOpsManager$AttributedHistoricalOps;
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
    name = "AttributedHistoricalOps"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$AttributedHistoricalOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHistoricalOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$HistoricalOp;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$maccept(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->addDiscreteAccess(IIIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfilter(Landroid/app/AppOpsManager$AttributedHistoricalOps;[Ljava/lang/String;IIDJJ)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->filter([Ljava/lang/String;IIDJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->increaseAccessCount(IIIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->increaseAccessDuration(IIIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->increaseRejectCount(IIIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misEmpty(Landroid/app/AppOpsManager$AttributedHistoricalOps;)Z
    .registers 1

    invoke-direct {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmerge(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->merge(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msplice(Landroid/app/AppOpsManager$AttributedHistoricalOps;D)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->splice(D)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 7107
    new-instance v0, Landroid/app/AppOpsManager$AttributedHistoricalOps$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$AttributedHistoricalOps$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .registers 7

    .line 6841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6842
    iget-object v0, p1, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 6843
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    .line 6844
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_2f

    .line 6845
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    .line 6846
    new-instance v3, Landroid/app/AppOpsManager$HistoricalOp;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager-IA;)V

    .line 6847
    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_23

    .line 6848
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6850
    :cond_23
    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6844
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 6852
    :cond_2f
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;-><init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 7088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7092
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 7093
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    move-object v1, v2

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7094
    :goto_12
    nop

    .line 7095
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_25

    .line 7096
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 7097
    const-class v0, Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 7100
    :cond_25
    iput-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 7101
    iput-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 7104
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 6837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6838
    iput-object p1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 6839
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/util/ArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$HistoricalOp;",
            ">;)V"
        }
    .end annotation

    .line 7023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7024
    iput-object p1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 7025
    iput-object p2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 7028
    return-void
.end method

.method private blacklist accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 5

    .line 6978
    invoke-interface {p1, p0}, Landroid/app/AppOpsManager$HistoricalOpsVisitor;->visitHistoricalAttributionOps(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    .line 6979
    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    .line 6980
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 6981
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 6980
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 6983
    :cond_14
    return-void
.end method

.method private blacklist addDiscreteAccess(IIIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 9

    .line 6933
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object p1

    move-object p0, p1

    move p1, p2

    move p2, p3

    move-wide p3, p4

    move-wide p5, p6

    move-object p7, p8

    invoke-static/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalOp;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 6935
    return-void
.end method

.method private blacklist filter([Ljava/lang/String;IIDJJ)V
    .registers 20

    .line 6892
    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    .line 6893
    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_31

    .line 6894
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOp;

    .line 6895
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_25

    .line 6896
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v1

    .line 6895
    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 6897
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2e

    .line 6899
    :cond_25
    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-static/range {v2 .. v9}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalOp;IDJJ)V

    .line 6893
    :goto_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 6902
    :cond_31
    return-void
.end method

.method private blacklist getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 4

    .line 6986
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 6987
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6989
    :cond_b
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    .line 6990
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$HistoricalOp;

    .line 6991
    if-nez v1, :cond_25

    .line 6992
    new-instance v1, Landroid/app/AppOpsManager$HistoricalOp;

    invoke-direct {v1, p1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(I)V

    .line 6993
    iget-object p1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6995
    :cond_25
    return-object v1
.end method

.method private blacklist increaseAccessCount(IIIJ)V
    .registers 6

    .line 6917
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object p1

    invoke-static {p1, p2, p3, p4, p5}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V

    .line 6918
    return-void
.end method

.method private blacklist increaseAccessDuration(IIIJ)V
    .registers 6

    .line 6927
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object p1

    invoke-static {p1, p2, p3, p4, p5}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V

    .line 6928
    return-void
.end method

.method private blacklist increaseRejectCount(IIIJ)V
    .registers 6

    .line 6922
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object p1

    invoke-static {p1, p2, p3, p4, p5}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V

    .line 6923
    return-void
.end method

.method private blacklist isEmpty()Z
    .registers 4

    .line 6905
    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    .line 6906
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_1b

    .line 6907
    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOp;

    .line 6908
    invoke-static {v2}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalOp;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 6909
    const/4 v0, 0x0

    return v0

    .line 6906
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 6912
    :cond_1b
    return v1
.end method

.method private blacklist merge(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .registers 7

    .line 6874
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    .line 6875
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_30

    .line 6876
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    .line 6877
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v3

    .line 6878
    if-eqz v3, :cond_19

    .line 6879
    invoke-static {v3, v2}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp;)V

    goto :goto_2d

    .line 6881
    :cond_19
    iget-object v3, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_24

    .line 6882
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6884
    :cond_24
    iget-object v3, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6875
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6887
    :cond_30
    return-void
.end method

.method private blacklist splice(D)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .registers 10

    .line 6855
    nop

    .line 6856
    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    .line 6857
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_8
    if-ge v2, v0, :cond_34

    .line 6858
    invoke-virtual {p0, v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v4

    .line 6859
    invoke-static {v4, p1, p2}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalOp;D)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v4

    .line 6860
    if-eqz v4, :cond_31

    .line 6861
    if-nez v3, :cond_1d

    .line 6862
    new-instance v3, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    iget-object v5, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    invoke-direct {v3, v5, v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;-><init>(Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 6864
    :cond_1d
    iget-object v5, v3, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v5, :cond_28

    .line 6865
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v3, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6867
    :cond_28
    iget-object v5, v3, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6857
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6870
    :cond_34
    return-object v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 7083
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 7045
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 7046
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 7048
    :cond_12
    check-cast p1, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 7050
    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 7051
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 7052
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    .line 7050
    :goto_2a
    return v0

    .line 7046
    :cond_2b
    :goto_2b
    return v1
.end method

.method public whitelist getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 3

    .line 6971
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    .line 6972
    const/4 p1, 0x0

    return-object p1

    .line 6974
    :cond_6
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager$HistoricalOp;

    return-object p1
.end method

.method public whitelist getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 3

    .line 6958
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_d

    .line 6961
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager$HistoricalOp;

    return-object p1

    .line 6959
    :cond_d
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist getOpCount()I
    .registers 2

    .line 6944
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    .line 6945
    const/4 v0, 0x0

    return v0

    .line 6947
    :cond_6
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .registers 2

    .line 7035
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 7061
    nop

    .line 7062
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 7063
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7064
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 7073
    nop

    .line 7074
    iget-object p2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    if-eqz p2, :cond_8

    const/4 p2, 0x1

    int-to-byte p2, p2

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 7075
    :goto_9
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_10

    or-int/lit8 p2, p2, 0x2

    int-to-byte p2, p2

    .line 7076
    :cond_10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7077
    iget-object p2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    if-eqz p2, :cond_1c

    iget-object p2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7078
    :cond_1c
    iget-object p2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-eqz p2, :cond_25

    iget-object p2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 7079
    :cond_25
    return-void
.end method
