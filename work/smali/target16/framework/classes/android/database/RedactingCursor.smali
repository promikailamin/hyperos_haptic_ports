.class public Landroid/database/RedactingCursor;
.super Landroid/database/CrossProcessCursorWrapper;
.source "RedactingCursor.java"


# instance fields
.field private final blacklist mRedactions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/database/Cursor;Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 34
    iput-object p2, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    .line 35
    return-void
.end method

.method public static blacklist create(Landroid/database/Cursor;Ljava/util/Map;)Landroid/database/Cursor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 49
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 50
    const/4 v2, 0x0

    :goto_a
    array-length v3, v1

    if-ge v2, v3, :cond_21

    .line 51
    aget-object v3, v1, v2

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 52
    aget-object v3, v1, v2

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 56
    :cond_21
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_28

    .line 57
    return-object p0

    .line 59
    :cond_28
    new-instance p1, Landroid/database/RedactingCursor;

    invoke-direct {p1, p0, v0}, Landroid/database/RedactingCursor;-><init>(Landroid/database/Cursor;Landroid/util/SparseArray;)V

    return-object p1
.end method


# virtual methods
.method public whitelist copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .registers 4

    .line 143
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 144
    if-ltz v0, :cond_1c

    .line 145
    iget-object p1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 146
    iget-object p1, p2, Landroid/database/CharArrayBuffer;->data:[C

    array-length p1, p1

    iput p1, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_1f

    .line 148
    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/database/CrossProcessCursorWrapper;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 150
    :goto_1f
    return-void
.end method

.method public whitelist fillWindow(ILandroid/database/CursorWindow;)V
    .registers 3

    .line 66
    invoke-static {p0, p1, p2}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    .line 67
    return-void
.end method

.method public whitelist getBlob(I)[B
    .registers 3

    .line 154
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 155
    if-ltz v0, :cond_11

    .line 156
    iget-object p1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    .line 158
    :cond_11
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getBlob(I)[B

    move-result-object p1

    return-object p1
.end method

.method public whitelist getDouble(I)D
    .registers 4

    .line 83
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 84
    if-ltz v0, :cond_15

    .line 85
    iget-object p1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 87
    :cond_15
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getFloat(I)F
    .registers 3

    .line 93
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 94
    if-ltz v0, :cond_15

    .line 95
    iget-object p1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 97
    :cond_15
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public whitelist getInt(I)I
    .registers 3

    .line 103
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 104
    if-ltz v0, :cond_15

    .line 105
    iget-object p1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 107
    :cond_15
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getInt(I)I

    move-result p1

    return p1
.end method

.method public whitelist getLong(I)J
    .registers 4

    .line 113
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 114
    if-ltz v0, :cond_15

    .line 115
    iget-object p1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 117
    :cond_15
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getShort(I)S
    .registers 3

    .line 123
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 124
    if-ltz v0, :cond_15

    .line 125
    iget-object p1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1

    .line 127
    :cond_15
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getShort(I)S

    move-result p1

    return p1
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .registers 3

    .line 133
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 134
    if-ltz v0, :cond_11

    .line 135
    iget-object p1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 137
    :cond_11
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getType(I)I
    .registers 3

    .line 164
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 165
    if-ltz v0, :cond_13

    .line 166
    iget-object p1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 168
    :cond_13
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getType(I)I

    move-result p1

    return p1
.end method

.method public whitelist getWindow()Landroid/database/CursorWindow;
    .registers 2

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWrappedCursor()Landroid/database/Cursor;
    .registers 3

    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Returning underlying cursor risks leaking redacted data"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isNull(I)Z
    .registers 3

    .line 174
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 175
    if-ltz v0, :cond_14

    .line 176
    iget-object p1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1

    .line 178
    :cond_14
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->isNull(I)Z

    move-result p1

    return p1
.end method
