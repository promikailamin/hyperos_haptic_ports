.class public Lcom/android/server/am/ProcessList$3;
.super Ljava/lang/Object;
.source "ProcessList.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 4

    .line 4677
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v0

    sub-int/2addr p0, v0

    if-eqz p0, :cond_14

    return p0

    .line 4681
    :cond_14
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 4682
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v0

    sub-int/2addr p0, v0

    if-eqz p0, :cond_28

    return p0

    .line 4686
    :cond_28
    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    if-eqz p0, :cond_3c

    return p0

    :cond_3c
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 4673
    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessList$3;->compare(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p0

    return p0
.end method
