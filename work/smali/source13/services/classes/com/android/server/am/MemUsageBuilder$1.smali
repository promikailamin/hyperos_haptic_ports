.class Lcom/android/server/am/MemUsageBuilder$1;
.super Ljava/lang/Object;
.source "MemUsageBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MemUsageBuilder;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/ProcessMemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MemUsageBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/MemUsageBuilder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/MemUsageBuilder;

    .line 125
    iput-object p1, p0, Lcom/android/server/am/MemUsageBuilder$1;->this$0:Lcom/android/server/am/MemUsageBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ProcessMemInfo;Lcom/android/server/am/ProcessMemInfo;)I
    .registers 9
    .param p1, "lhs"    # Lcom/android/server/am/ProcessMemInfo;
    .param p2, "rhs"    # Lcom/android/server/am/ProcessMemInfo;

    .line 127
    iget v0, p1, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    iget v1, p2, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_11

    .line 128
    iget v0, p1, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    iget v1, p2, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ge v0, v1, :cond_f

    goto :goto_10

    :cond_f
    move v2, v3

    :goto_10
    return v2

    .line 130
    :cond_11
    iget-wide v0, p1, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-wide v4, p2, Lcom/android/server/am/ProcessMemInfo;->pss:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_23

    .line 131
    iget-wide v0, p1, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-wide v4, p2, Lcom/android/server/am/ProcessMemInfo;->pss:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_22

    move v2, v3

    :cond_22
    return v2

    .line 133
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 125
    check-cast p1, Lcom/android/server/am/ProcessMemInfo;

    check-cast p2, Lcom/android/server/am/ProcessMemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MemUsageBuilder$1;->compare(Lcom/android/server/am/ProcessMemInfo;Lcom/android/server/am/ProcessMemInfo;)I

    move-result p1

    return p1
.end method
