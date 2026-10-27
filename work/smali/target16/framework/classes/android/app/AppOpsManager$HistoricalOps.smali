.class public final Landroid/app/AppOpsManager$HistoricalOps;
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
    name = "HistoricalOps"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBeginTimeMillis:J

.field private blacklist mEndTimeMillis:J

.field private blacklist mHistoricalUidOps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AppOpsManager$HistoricalUidOps;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6204
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$HistoricalOps$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$HistoricalOps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJ)V
    .registers 6

    .line 5768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5769
    cmp-long v0, p1, p3

    if-gtz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 5770
    iput-wide p1, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    .line 5771
    iput-wide p3, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 5772
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 7

    .line 5775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5776
    iget-wide v0, p1, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    iput-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    .line 5777
    iget-wide v0, p1, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    iput-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 5778
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    iget-wide v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 5779
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-eqz v0, :cond_46

    .line 5780
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v0

    .line 5781
    nop

    :goto_23
    if-ge v1, v0, :cond_46

    .line 5782
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v2

    .line 5783
    new-instance v3, Landroid/app/AppOpsManager$HistoricalUidOps;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/app/AppOpsManager$HistoricalUidOps;-><init>(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/app/AppOpsManager-IA;)V

    .line 5784
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-nez v2, :cond_3a

    .line 5785
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    .line 5787
    :cond_3a
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5781
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 5790
    :cond_46
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 5792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5793
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    .line 5794
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 5795
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 5796
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_52

    .line 5797
    nop

    .line 5798
    const-class v1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/content/pm/ParceledListSlice;

    .line 5797
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;

    .line 5799
    if-eqz p1, :cond_2f

    .line 5800
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    goto :goto_30

    :cond_2f
    const/4 p1, 0x0

    .line 5801
    :goto_30
    if-nez p1, :cond_33

    .line 5802
    return-void

    .line 5804
    :cond_33
    const/4 v1, 0x0

    :goto_34
    array-length v2, v0

    if-ge v1, v2, :cond_52

    .line 5805
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-nez v2, :cond_42

    .line 5806
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    .line 5808
    :cond_42
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    aget v3, v0, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalUidOps;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5804
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 5811
    :cond_52
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/AppOpsManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist getOrCreateHistoricalUidOps(I)Landroid/app/AppOpsManager$HistoricalUidOps;
    .registers 4

    .line 6145
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 6146
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    .line 6148
    :cond_b
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalUidOps;

    .line 6149
    if-nez v0, :cond_1f

    .line 6150
    new-instance v0, Landroid/app/AppOpsManager$HistoricalUidOps;

    invoke-direct {v0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;-><init>(I)V

    .line 6151
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6153
    :cond_1f
    return-object v0
.end method

.method public static blacklist round(D)D
    .registers 4

    .line 6162
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private blacklist splice(DZ)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 13

    .line 5848
    if-eqz p3, :cond_12

    .line 5849
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    .line 5850
    iget-wide v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    long-to-double v2, v2

    .line 5851
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    double-to-long v2, v2

    .line 5852
    iput-wide v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    goto :goto_21

    .line 5854
    :cond_12
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    long-to-double v0, v0

    .line 5855
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v2, p1

    sub-double/2addr v0, v2

    double-to-long v0, v0

    .line 5856
    iget-wide v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 5857
    iput-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 5860
    :goto_21
    nop

    .line 5861
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result p3

    .line 5862
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_28
    if-ge v5, p3, :cond_52

    .line 5863
    invoke-virtual {p0, v5}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v6

    .line 5864
    invoke-static {v6, p1, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalUidOps;D)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v6

    .line 5865
    if-eqz v6, :cond_4f

    .line 5866
    if-nez v4, :cond_3b

    .line 5867
    new-instance v4, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 5869
    :cond_3b
    iget-object v7, v4, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-nez v7, :cond_46

    .line 5870
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, v4, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    .line 5872
    :cond_46
    iget-object v7, v4, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v8

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5862
    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 5875
    :cond_52
    return-object v4
.end method


# virtual methods
.method public blacklist accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 5

    .line 6137
    invoke-interface {p1, p0}, Landroid/app/AppOpsManager$HistoricalOpsVisitor;->visitHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 6138
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v0

    .line 6139
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 6140
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 6139
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 6142
    :cond_14
    return-void
.end method

.method public blacklist addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;IIJJ)V
    .registers 12

    .line 5998
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalOps;->getOrCreateHistoricalUidOps(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object p2

    move-object v0, p2

    move-object p2, p3

    move-object p3, p4

    move p4, p5

    move p5, p6

    move-wide p6, p7

    move-wide p8, p9

    const/4 p10, 0x0

    move-object p0, v0

    invoke-static/range {p0 .. p10}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 6000
    return-void
.end method

.method public blacklist addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 12

    .line 6007
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalOps;->getOrCreateHistoricalUidOps(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object p2

    move-object p0, p2

    move-object p2, p3

    move-object p3, p4

    move p4, p5

    move p5, p6

    move-wide p6, p7

    move-wide p8, p9

    move-object p10, p11

    invoke-static/range {p0 .. p10}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 6009
    return-void
.end method

.method public blacklist clearHistory(ILjava/lang/String;)V
    .registers 4

    .line 6097
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalOps;->getOrCreateHistoricalUidOps(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v0

    .line 6098
    invoke-static {v0, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$mclearHistory(Landroid/app/AppOpsManager$HistoricalUidOps;Ljava/lang/String;)V

    .line 6099
    invoke-static {v0}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalUidOps;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 6100
    iget-object p2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 6102
    :cond_12
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 6106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 6167
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 6168
    return v0

    .line 6170
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3b

    .line 6173
    :cond_12
    check-cast p1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 6174
    iget-wide v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    iget-wide v4, p1, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d

    .line 6175
    return v1

    .line 6177
    :cond_1d
    iget-wide v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    iget-wide v4, p1, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_26

    .line 6178
    return v1

    .line 6180
    :cond_26
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-nez v2, :cond_2f

    .line 6181
    iget-object p1, p1, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-eqz p1, :cond_3a

    .line 6182
    return v1

    .line 6184
    :cond_2f
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    iget-object p1, p1, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 6185
    return v1

    .line 6187
    :cond_3a
    return v0

    .line 6171
    :cond_3b
    :goto_3b
    return v1
.end method

.method public blacklist filter(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJ)V
    .registers 28

    .line 5920
    move-object/from16 v0, p0

    move-wide/from16 v1, p7

    move-wide/from16 v3, p9

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v5

    .line 5921
    iget-wide v7, v0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    .line 5922
    iget-wide v7, v0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 5923
    sub-long v1, v3, v1

    long-to-double v1, v1

    long-to-double v3, v5

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    .line 5925
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v1

    .line 5926
    add-int/lit8 v1, v1, -0x1

    :goto_2b
    if-ltz v1, :cond_6a

    .line 5927
    iget-object v2, v0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/app/AppOpsManager$HistoricalUidOps;

    .line 5928
    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_48

    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v2

    move/from16 v3, p1

    if-eq v3, v2, :cond_4a

    .line 5929
    iget-object v2, v0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_67

    .line 5928
    :cond_48
    move/from16 v3, p1

    .line 5931
    :cond_4a
    iget-wide v13, v0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    iget-wide v6, v0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    move-object/from16 v8, p4

    move/from16 v10, p5

    move/from16 v9, p6

    move-wide v15, v6

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v5 .. v16}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalUidOps;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIDJJ)V

    .line 5933
    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v2

    if-nez v2, :cond_67

    .line 5934
    iget-object v2, v0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 5926
    :cond_67
    :goto_67
    add-int/lit8 v1, v1, -0x1

    goto :goto_2b

    .line 5938
    :cond_6a
    return-void
.end method

.method public whitelist getBeginTimeMillis()J
    .registers 3

    .line 6040
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    return-wide v0
.end method

.method public blacklist getDurationMillis()J
    .registers 5

    .line 5957
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    iget-wide v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getEndTimeMillis()J
    .registers 3

    .line 6048
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    return-wide v0
.end method

.method public whitelist getUidCount()I
    .registers 2

    .line 6059
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    .line 6060
    const/4 v0, 0x0

    return v0

    .line 6062
    :cond_6
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getUidOps(I)Landroid/app/AppOpsManager$HistoricalUidOps;
    .registers 3

    .line 6089
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    .line 6090
    const/4 p1, 0x0

    return-object p1

    .line 6092
    :cond_6
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager$HistoricalUidOps;

    return-object p1
.end method

.method public whitelist getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;
    .registers 3

    .line 6075
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-eqz v0, :cond_d

    .line 6078
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager$HistoricalUidOps;

    return-object p1

    .line 6076
    :cond_d
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 6192
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    iget-wide v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 6193
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6194
    return v0
.end method

.method public blacklist increaseAccessCount(IILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 11

    .line 5965
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_13

    .line 5966
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalOps;->getOrCreateHistoricalUidOps(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object p2

    move-object p0, p2

    move-object p2, p3

    move-object p3, p4

    move p4, p5

    move p5, p6

    move-wide p6, p7

    invoke-static/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 5969
    :cond_13
    return-void
.end method

.method public blacklist increaseAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 11

    .line 5987
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_13

    .line 5988
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalOps;->getOrCreateHistoricalUidOps(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object p2

    move-object p0, p2

    move-object p2, p3

    move-object p3, p4

    move p4, p5

    move p5, p6

    move-wide p6, p7

    invoke-static/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 5991
    :cond_13
    return-void
.end method

.method public blacklist increaseRejectCount(IILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 11

    .line 5976
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_13

    .line 5977
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalOps;->getOrCreateHistoricalUidOps(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object p2

    move-object p0, p2

    move-object p2, p3

    move-object p3, p4

    move p4, p5

    move p5, p6

    move-wide p6, p7

    invoke-static/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 5980
    :cond_13
    return-void
.end method

.method public blacklist isEmpty()Z
    .registers 5

    .line 5942
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-ltz v0, :cond_e

    .line 5943
    return v1

    .line 5945
    :cond_e
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v0

    .line 5946
    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_28

    .line 5947
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalUidOps;

    .line 5948
    invoke-static {v2}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalUidOps;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 5949
    const/4 v0, 0x0

    return v0

    .line 5946
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 5952
    :cond_28
    return v1
.end method

.method public blacklist merge(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 7

    .line 5886
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    iget-wide v2, p1, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    .line 5887
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    iget-wide v2, p1, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 5888
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v0

    .line 5889
    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_44

    .line 5890
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v2

    .line 5891
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOps(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v3

    .line 5892
    if-eqz v3, :cond_2d

    .line 5893
    invoke-static {v3, v2}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/app/AppOpsManager$HistoricalUidOps;)V

    goto :goto_41

    .line 5895
    :cond_2d
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-nez v3, :cond_38

    .line 5896
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    .line 5898
    :cond_38
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5889
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 5901
    :cond_44
    return-void
.end method

.method public blacklist offsetBeginAndEndTime(J)V
    .registers 5

    .line 6015
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    .line 6016
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 6017
    return-void
.end method

.method public blacklist setBeginAndEndTime(JJ)V
    .registers 5

    .line 6021
    iput-wide p1, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    .line 6022
    iput-wide p3, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 6023
    return-void
.end method

.method public blacklist setBeginTime(J)V
    .registers 3

    .line 6027
    iput-wide p1, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    .line 6028
    return-void
.end method

.method public blacklist setEndTime(J)V
    .registers 3

    .line 6032
    iput-wide p1, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 6033
    return-void
.end method

.method public blacklist spliceFromBeginning(D)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 4

    .line 5821
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/AppOpsManager$HistoricalOps;->splice(DZ)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p1

    return-object p1
.end method

.method public blacklist spliceFromEnd(D)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 4

    .line 5832
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/AppOpsManager$HistoricalOps;->splice(DZ)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 6200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 6111
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6112
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6113
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-eqz v0, :cond_46

    .line 6114
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 6115
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6116
    const/4 v1, 0x0

    move v2, v1

    :goto_19
    if-ge v2, v0, :cond_27

    .line 6117
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6116
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 6119
    :cond_27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6120
    nop

    :goto_2d
    if-ge v1, v0, :cond_3d

    .line 6121
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalUidOps;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6120
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 6123
    :cond_3d
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6124
    goto :goto_4a

    .line 6125
    :cond_46
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6127
    :goto_4a
    return-void
.end method
