.class public Lcom/android/server/am/AppProfiler$2;
.super Ljava/lang/Object;
.source "AppProfiler.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;)V
    .registers 2

    .line 1678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ProcessMemInfo;Lcom/android/server/am/ProcessMemInfo;)I
    .registers 8

    .line 1680
    iget p0, p1, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    iget v0, p2, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p0, v0, :cond_c

    if-ge p0, v0, :cond_b

    return v2

    :cond_b
    return v1

    .line 1683
    :cond_c
    iget-wide p0, p1, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-wide v3, p2, Lcom/android/server/am/ProcessMemInfo;->pss:J

    cmp-long p2, p0, v3

    if-eqz p2, :cond_1a

    cmp-long p0, p0, v3

    if-gez p0, :cond_19

    return v1

    :cond_19
    return v2

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1678
    check-cast p1, Lcom/android/server/am/ProcessMemInfo;

    check-cast p2, Lcom/android/server/am/ProcessMemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppProfiler$2;->compare(Lcom/android/server/am/ProcessMemInfo;Lcom/android/server/am/ProcessMemInfo;)I

    move-result p0

    return p0
.end method
