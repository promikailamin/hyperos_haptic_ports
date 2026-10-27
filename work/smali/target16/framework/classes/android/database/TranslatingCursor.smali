.class public Landroid/database/TranslatingCursor;
.super Landroid/database/CrossProcessCursorWrapper;
.source "TranslatingCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/TranslatingCursor$Config;,
        Landroid/database/TranslatingCursor$Translator;
    }
.end annotation


# instance fields
.field private final blacklist mAuxiliaryColumnIndex:I

.field private final blacklist mConfig:Landroid/database/TranslatingCursor$Config;

.field private final blacklist mDropLast:Z

.field private final blacklist mTranslateColumnIndices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTranslator:Landroid/database/TranslatingCursor$Translator;


# direct methods
.method public constructor blacklist <init>(Landroid/database/Cursor;Landroid/database/TranslatingCursor$Config;Landroid/database/TranslatingCursor$Translator;Z)V
    .registers 6

    .line 67
    invoke-direct {p0, p1}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 69
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/TranslatingCursor$Config;

    iput-object v0, p0, Landroid/database/TranslatingCursor;->mConfig:Landroid/database/TranslatingCursor$Config;

    .line 70
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/database/TranslatingCursor$Translator;

    iput-object p3, p0, Landroid/database/TranslatingCursor;->mTranslator:Landroid/database/TranslatingCursor$Translator;

    .line 71
    iput-boolean p4, p0, Landroid/database/TranslatingCursor;->mDropLast:Z

    .line 73
    iget-object p3, p2, Landroid/database/TranslatingCursor$Config;->auxiliaryColumn:Ljava/lang/String;

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Landroid/database/TranslatingCursor;->mAuxiliaryColumnIndex:I

    .line 74
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    iput-object p3, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    .line 75
    const/4 p3, 0x0

    :goto_25
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result p4

    if-ge p3, p4, :cond_43

    .line 76
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object p4

    .line 77
    iget-object v0, p2, Landroid/database/TranslatingCursor$Config;->translateColumns:[Ljava/lang/String;

    invoke-static {v0, p4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_40

    .line 78
    iget-object p4, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_40
    add-int/lit8 p3, p3, 0x1

    goto :goto_25

    .line 81
    :cond_43
    return-void
.end method

.method public static blacklist query(Landroid/database/TranslatingCursor$Config;Landroid/database/TranslatingCursor$Translator;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 16

    .line 105
    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/database/TranslatingCursor$Config;->auxiliaryColumn:Ljava/lang/String;

    .line 106
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    move v0, v1

    goto :goto_14

    :cond_13
    :goto_13
    move v0, v2

    .line 107
    :goto_14
    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, p0, Landroid/database/TranslatingCursor$Config;->translateColumns:[Ljava/lang/String;

    .line 108
    invoke-static {p4, v3}, Lcom/android/internal/util/ArrayUtils;->containsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_22
    move v1, v2

    .line 112
    :cond_23
    if-nez v1, :cond_2a

    .line 113
    invoke-virtual/range {p2 .. p11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 118
    :cond_2a
    if-nez v0, :cond_36

    .line 119
    const-class p10, Ljava/lang/String;

    iget-object p11, p0, Landroid/database/TranslatingCursor$Config;->auxiliaryColumn:Ljava/lang/String;

    invoke-static {p10, p4, p11}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    .line 123
    :cond_36
    invoke-virtual/range {p2 .. p9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 125
    new-instance p3, Landroid/database/TranslatingCursor;

    xor-int/lit8 p4, v0, 0x1

    invoke-direct {p3, p2, p0, p1, p4}, Landroid/database/TranslatingCursor;-><init>(Landroid/database/Cursor;Landroid/database/TranslatingCursor$Config;Landroid/database/TranslatingCursor$Translator;Z)V

    return-object p3
.end method


# virtual methods
.method public whitelist copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .registers 5

    .line 203
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 206
    invoke-super {p0, p1, p2}, Landroid/database/CrossProcessCursorWrapper;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 208
    return-void

    .line 204
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public whitelist fillWindow(ILandroid/database/CursorWindow;)V
    .registers 3

    .line 131
    invoke-static {p0, p1, p2}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    .line 132
    return-void
.end method

.method public whitelist getBlob(I)[B
    .registers 4

    .line 212
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 215
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getBlob(I)[B

    move-result-object p1

    return-object p1

    .line 213
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public whitelist getColumnCount()I
    .registers 2

    .line 85
    iget-boolean v0, p0, Landroid/database/TranslatingCursor;->mDropLast:Z

    if-eqz v0, :cond_b

    .line 86
    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 88
    :cond_b
    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public whitelist getColumnNames()[Ljava/lang/String;
    .registers 4

    .line 94
    iget-boolean v0, p0, Landroid/database/TranslatingCursor;->mDropLast:Z

    if-eqz v0, :cond_16

    .line 95
    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->getColumnCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 97
    :cond_16
    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDouble(I)D
    .registers 4

    .line 148
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 151
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getDouble(I)D

    move-result-wide v0

    return-wide v0

    .line 149
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public whitelist getFloat(I)F
    .registers 4

    .line 157
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 160
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getFloat(I)F

    move-result p1

    return p1

    .line 158
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public whitelist getInt(I)I
    .registers 4

    .line 166
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 169
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getInt(I)I

    move-result p1

    return p1

    .line 167
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public whitelist getLong(I)J
    .registers 4

    .line 175
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 178
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 176
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public whitelist getShort(I)S
    .registers 4

    .line 184
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 187
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getShort(I)S

    move-result p1

    return p1

    .line 185
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .registers 5

    .line 193
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 194
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslator:Landroid/database/TranslatingCursor$Translator;

    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/database/TranslatingCursor;->mAuxiliaryColumnIndex:I

    .line 195
    invoke-virtual {p0, p1}, Landroid/database/TranslatingCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-interface {v0, v1, v2, p1, p0}, Landroid/database/TranslatingCursor$Translator;->translate(Ljava/lang/String;ILjava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 197
    :cond_1d
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getType(I)I
    .registers 4

    .line 221
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 222
    const/4 p1, 0x3

    return p1

    .line 224
    :cond_e
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getType(I)I

    move-result p1

    return p1
.end method

.method public whitelist getWindow()Landroid/database/CursorWindow;
    .registers 2

    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWrappedCursor()Landroid/database/Cursor;
    .registers 3

    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Returning underlying cursor risks leaking data"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isNull(I)Z
    .registers 4

    .line 230
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 231
    invoke-virtual {p0, p1}, Landroid/database/TranslatingCursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1

    .line 233
    :cond_16
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->isNull(I)Z

    move-result p1

    return p1
.end method
