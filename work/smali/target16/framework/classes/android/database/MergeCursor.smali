.class public Landroid/database/MergeCursor;
.super Landroid/database/AbstractCursor;
.source "MergeCursor.java"


# instance fields
.field private greylist-max-o mCursor:Landroid/database/Cursor;

.field private greylist-max-o mCursors:[Landroid/database/Cursor;

.field private greylist-max-o mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor whitelist <init>([Landroid/database/Cursor;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 28
    new-instance v0, Landroid/database/MergeCursor$1;

    invoke-direct {v0, p0}, Landroid/database/MergeCursor$1;-><init>(Landroid/database/MergeCursor;)V

    iput-object v0, p0, Landroid/database/MergeCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 45
    iput-object p1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    .line 46
    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    .line 48
    nop

    :goto_12
    iget-object p1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length p1, p1

    if-ge v0, p1, :cond_2a

    .line 49
    iget-object p1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object p1, p1, v0

    if-nez p1, :cond_1e

    goto :goto_27

    .line 51
    :cond_1e
    iget-object p1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object p1, p1, v0

    iget-object v1, p0, Landroid/database/MergeCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 48
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 53
    :cond_2a
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 173
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 174
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_17

    .line 175
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-nez v2, :cond_d

    goto :goto_14

    .line 176
    :cond_d
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 174
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 178
    :cond_17
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 179
    return-void
.end method

.method public whitelist deactivate()V
    .registers 4

    .line 162
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 163
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_16

    .line 164
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_13

    .line 165
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    .line 163
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 168
    :cond_16
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    .line 169
    return-void
.end method

.method public whitelist getBlob(I)[B
    .registers 3

    .line 146
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    return-object p1
.end method

.method public whitelist getColumnNames()[Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 153
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 155
    :cond_b
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCount()I
    .registers 5

    .line 58
    nop

    .line 59
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 60
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_1a

    .line 61
    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_17

    .line 62
    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 60
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 65
    :cond_1a
    return v2
.end method

.method public whitelist getDouble(I)D
    .registers 4

    .line 129
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getFloat(I)F
    .registers 3

    .line 123
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public whitelist getInt(I)I
    .registers 3

    .line 111
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method public whitelist getLong(I)J
    .registers 4

    .line 117
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getShort(I)S
    .registers 3

    .line 105
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    return p1
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .registers 3

    .line 99
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getType(I)I
    .registers 3

    .line 134
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result p1

    return p1
.end method

.method public whitelist isNull(I)Z
    .registers 3

    .line 140
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    return p1
.end method

.method public whitelist onMove(II)Z
    .registers 7

    .line 72
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    .line 73
    nop

    .line 74
    iget-object p1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length p1, p1

    .line 75
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_a
    if-ge v1, p1, :cond_31

    .line 76
    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-nez v3, :cond_13

    .line 77
    goto :goto_2e

    .line 80
    :cond_13
    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v3, v2

    if-ge p2, v3, :cond_25

    .line 81
    iget-object p1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object p1, p1, v1

    iput-object p1, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    .line 82
    goto :goto_31

    .line 85
    :cond_25
    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 75
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 89
    :cond_31
    :goto_31
    iget-object p1, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_3d

    .line 90
    iget-object p1, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    sub-int/2addr p2, v2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    .line 91
    return p1

    .line 93
    :cond_3d
    return v0
.end method

.method public whitelist registerContentObserver(Landroid/database/ContentObserver;)V
    .registers 5

    .line 183
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 184
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_16

    .line 185
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_13

    .line 186
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 184
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 189
    :cond_16
    return-void
.end method

.method public whitelist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 5

    .line 202
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 203
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_16

    .line 204
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_13

    .line 205
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 203
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 208
    :cond_16
    return-void
.end method

.method public whitelist requery()Z
    .registers 5

    .line 223
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 224
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_1c

    .line 225
    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v2

    if-nez v3, :cond_e

    .line 226
    goto :goto_19

    .line 229
    :cond_e
    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v2

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v3

    if-nez v3, :cond_19

    .line 230
    return v1

    .line 224
    :cond_19
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 234
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 5

    .line 192
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 193
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_16

    .line 194
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_13

    .line 195
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 193
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 198
    :cond_16
    return-void
.end method

.method public whitelist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 5

    .line 212
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 213
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_16

    .line 214
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_13

    .line 215
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 213
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 218
    :cond_16
    return-void
.end method
