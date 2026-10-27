.class public Lcom/android/server/content/SyncManager$PrintTable;
.super Ljava/lang/Object;
.source "SyncManager.java"


# instance fields
.field public final mCols:I

.field public mTable:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 4255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4252
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    .line 4256
    iput p1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    return-void
.end method


# virtual methods
.method public getNumRows()I
    .registers 1

    .line 4314
    iget-object p0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    .line 4306
    array-length p0, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_22

    .line 4307
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 4308
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4310
    :cond_22
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public varargs set(II[Ljava/lang/Object;)V
    .registers 9

    .line 4260
    array-length v0, p3

    add-int/2addr v0, p2

    iget v1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-gt v0, v1, :cond_43

    .line 4264
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    const-string v1, ""

    const/4 v2, 0x0

    if-gt v0, p1, :cond_26

    .line 4265
    iget v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v3, v3, [Ljava/lang/String;

    .line 4266
    iget-object v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4267
    :goto_1a
    iget v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-ge v2, v4, :cond_23

    .line 4268
    aput-object v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 4271
    :cond_26
    iget-object p0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 4272
    :goto_2e
    array-length p1, p3

    if-ge v2, p1, :cond_42

    .line 4273
    aget-object p1, p3, v2

    add-int v0, p2, v2

    if-nez p1, :cond_39

    move-object p1, v1

    goto :goto_3d

    .line 4274
    :cond_39
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3d
    aput-object p1, p0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_42
    return-void

    .line 4261
    :cond_43
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Table only has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " columns. can\'t set "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " at column "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeTo(Ljava/io/PrintWriter;)V
    .registers 11

    .line 4279
    iget v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 4281
    :goto_7
    iget v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-ge v2, v4, :cond_3f

    .line 4283
    iget-object v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    move v7, v6

    :cond_13
    :goto_13
    if-ge v7, v5, :cond_2b

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, [Ljava/lang/Object;

    .line 4284
    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_13

    move v6, v8

    goto :goto_13

    :cond_2b
    add-int/2addr v3, v6

    .line 4290
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%%-%ds"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_3f
    const/4 v2, 0x1

    sub-int/2addr v4, v2

    .line 4292
    const-string v5, "%s"

    aput-object v5, v0, v4

    .line 4293
    iget-object v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4294
    iget v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    sub-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    :goto_56
    if-ge v1, v3, :cond_60

    .line 4296
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 4298
    :cond_60
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4299
    iget-object v1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_69
    if-ge v2, v1, :cond_79

    .line 4300
    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 4301
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    :cond_79
    return-void
.end method
