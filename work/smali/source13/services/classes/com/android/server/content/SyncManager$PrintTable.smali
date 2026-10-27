.class Lcom/android/server/content/SyncManager$PrintTable;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrintTable"
.end annotation


# instance fields
.field private final mCols:I

.field private mTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "cols"    # I

    .line 4133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4130
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    .line 4134
    iput p1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    .line 4135
    return-void
.end method

.method private printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "formats"    # [Ljava/lang/String;
    .param p3, "row"    # [Ljava/lang/Object;

    .line 4184
    const/4 v0, 0x0

    .local v0, "j":I
    array-length v1, p3

    .local v1, "rowLength":I
    :goto_2
    if-ge v0, v1, :cond_23

    .line 4185
    aget-object v2, p2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, p3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 4186
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4184
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4188
    .end local v0    # "j":I
    .end local v1    # "rowLength":I
    :cond_23
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4189
    return-void
.end method


# virtual methods
.method public getNumRows()I
    .registers 2

    .line 4192
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method varargs set(II[Ljava/lang/Object;)V
    .registers 10
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "values"    # [Ljava/lang/Object;

    .line 4138
    array-length v0, p3

    add-int/2addr v0, p2

    iget v1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-gt v0, v1, :cond_44

    .line 4142
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_c
    const-string v1, ""

    if-gt v0, p1, :cond_26

    .line 4143
    iget v2, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v2, v2, [Ljava/lang/String;

    .line 4144
    .local v2, "list":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4145
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1a
    iget v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-ge v3, v4, :cond_23

    .line 4146
    aput-object v1, v2, v3

    .line 4145
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 4142
    .end local v2    # "list":[Ljava/lang/String;
    .end local v3    # "j":I
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 4149
    .end local v0    # "i":I
    :cond_26
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 4150
    .local v0, "rowArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    array-length v3, p3

    if-ge v2, v3, :cond_43

    .line 4151
    aget-object v3, p3, v2

    .line 4152
    .local v3, "value":Ljava/lang/Object;
    add-int v4, p2, v2

    if-nez v3, :cond_3a

    move-object v5, v1

    goto :goto_3e

    :cond_3a
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3e
    aput-object v5, v0, v4

    .line 4150
    .end local v3    # "value":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 4154
    .end local v2    # "i":I
    :cond_43
    return-void

    .line 4139
    .end local v0    # "rowArray":[Ljava/lang/String;
    :cond_44
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Table only has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " columns. can\'t set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writeTo(Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 4157
    iget v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v0, v0, [Ljava/lang/String;

    .line 4158
    .local v0, "formats":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 4159
    .local v1, "totalLength":I
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_6
    iget v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_41

    .line 4160
    const/4 v3, 0x0

    .line 4161
    .local v3, "maxLength":I
    iget-object v6, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 4162
    .local v7, "row":[Ljava/lang/Object;
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    .line 4163
    .local v8, "length":I
    if-le v8, v3, :cond_2c

    .line 4164
    move v3, v8

    .line 4166
    .end local v7    # "row":[Ljava/lang/Object;
    .end local v8    # "length":I
    :cond_2c
    goto :goto_13

    .line 4167
    :cond_2d
    add-int/2addr v1, v3

    .line 4168
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v4, "%%-%ds"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 4159
    .end local v3    # "maxLength":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4170
    .end local v2    # "col":I
    :cond_41
    sub-int/2addr v3, v5

    const-string v2, "%s"

    aput-object v2, v0, v3

    .line 4171
    iget-object v2, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4172
    iget v2, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    sub-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 4173
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_58
    if-ge v2, v1, :cond_62

    .line 4174
    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4173
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 4176
    .end local v2    # "i":I
    :cond_62
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4177
    const/4 v2, 0x1

    .restart local v2    # "i":I
    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "mTableSize":I
    :goto_6c
    if-ge v2, v3, :cond_7c

    .line 4178
    iget-object v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 4179
    .local v4, "row":[Ljava/lang/Object;
    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4177
    .end local v4    # "row":[Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 4181
    .end local v2    # "i":I
    .end local v3    # "mTableSize":I
    :cond_7c
    return-void
.end method
