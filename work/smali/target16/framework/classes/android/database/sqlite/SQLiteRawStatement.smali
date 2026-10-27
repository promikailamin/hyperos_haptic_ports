.class public final Landroid/database/sqlite/SQLiteRawStatement;
.super Ljava/lang/Object;
.source "SQLiteRawStatement.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteRawStatement$SQLiteDataType;
    }
.end annotation


# static fields
.field private static final blacklist SQLITE_BUSY:I = 0x5

.field public static final whitelist SQLITE_DATA_TYPE_BLOB:I = 0x4

.field public static final whitelist SQLITE_DATA_TYPE_FLOAT:I = 0x2

.field public static final whitelist SQLITE_DATA_TYPE_INTEGER:I = 0x1

.field public static final whitelist SQLITE_DATA_TYPE_NULL:I = 0x5

.field public static final whitelist SQLITE_DATA_TYPE_TEXT:I = 0x3

.field private static final blacklist SQLITE_DONE:I = 0x65

.field private static final blacklist SQLITE_LOCKED:I = 0x6

.field private static final blacklist SQLITE_ROW:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "SQLiteRawStatement"


# instance fields
.field private final blacklist mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private blacklist mPreparedStatement:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

.field private final blacklist mSession:Landroid/database/sqlite/SQLiteSession;

.field private final blacklist mSql:Ljava/lang/String;

.field private final blacklist mStatement:J

.field private blacklist mThread:Ljava/lang/Thread;


# direct methods
.method constructor blacklist <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 4

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    .line 167
    iput-object p1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 168
    iget-object p1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object p1

    iput-object p1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSession:Landroid/database/sqlite/SQLiteSession;

    .line 169
    iget-object p1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSession:Landroid/database/sqlite/SQLiteSession;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 170
    iput-object p2, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSql:Ljava/lang/String;

    .line 172
    iget-object p1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSession:Landroid/database/sqlite/SQLiteSession;

    iget-object p2, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSql:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Landroid/database/sqlite/SQLiteSession;->acquirePersistentStatement(Ljava/lang/String;Ljava/io/Closeable;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object p1

    iput-object p1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mPreparedStatement:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 173
    iget-object p1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mPreparedStatement:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    iget-wide p1, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    iput-wide p1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    .line 174
    return-void
.end method

.method private static native blacklist nativeBindBlob(JI[BII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindDouble(JID)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindInt(JII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindLong(JIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindNull(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindParameterCount(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindParameterIndex(JLjava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindParameterName(JI)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindText(JILjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeClearBindings(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnBlob(JI)[B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnBuffer(JI[BIII)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnBytes(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnCount(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnDouble(JI)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnInt(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnLong(JI)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnName(JI)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnText(JI)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnType(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeReset(JZ)V
.end method

.method private static native blacklist nativeStep(JZ)I
.end method

.method private blacklist throwIfInvalid()V
    .registers 4

    .line 182
    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_31

    .line 184
    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_15

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "method called on a closed statement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method called on a foreign thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_31
    return-void
.end method

.method private blacklist throwIfInvalidBounds(III)V
    .registers 8

    .line 197
    if-ltz p1, :cond_59

    .line 200
    const-string v0, " for array length "

    const-string v1, "invalid offset "

    if-ltz p2, :cond_3a

    if-ge p2, p1, :cond_3a

    .line 204
    if-lez p3, :cond_11

    sub-int v2, p1, p2

    if-lt v2, p3, :cond_11

    .line 209
    return-void

    .line 205
    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " and length "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_3a
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 198
    :cond_59
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid array length "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public whitelist bindBlob(I[B)V
    .registers 9

    .line 395
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 398
    :try_start_6
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    array-length v5, p2

    const/4 v4, 0x0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindBlob(JI[BII)V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_14

    .line 400
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 401
    nop

    .line 402
    return-void

    .line 400
    :catchall_14
    move-exception v0

    move-object p1, v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 401
    throw p1
.end method

.method public whitelist bindBlob(I[BII)V
    .registers 12

    .line 421
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 423
    array-length v0, p2

    invoke-direct {p0, v0, p3, p4}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalidBounds(III)V

    .line 425
    :try_start_a
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindBlob(JI[BII)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_18

    .line 427
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 428
    nop

    .line 429
    return-void

    .line 427
    :catchall_18
    move-exception v0

    move-object p1, v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 428
    throw p1
.end method

.method public whitelist bindDouble(ID)V
    .registers 6

    .line 444
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 446
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindDouble(JID)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    .line 448
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 449
    nop

    .line 450
    return-void

    .line 448
    :catchall_d
    move-exception p1

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 449
    throw p1
.end method

.method public whitelist bindInt(II)V
    .registers 5

    .line 464
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 466
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindInt(JII)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    .line 468
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 469
    nop

    .line 470
    return-void

    .line 468
    :catchall_d
    move-exception p1

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 469
    throw p1
.end method

.method public whitelist bindLong(IJ)V
    .registers 6

    .line 484
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 486
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindLong(JIJ)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    .line 488
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 489
    nop

    .line 490
    return-void

    .line 488
    :catchall_d
    move-exception p1

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 489
    throw p1
.end method

.method public whitelist bindNull(I)V
    .registers 4

    .line 504
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 506
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindNull(JI)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    .line 508
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 509
    nop

    .line 510
    return-void

    .line 508
    :catchall_d
    move-exception p1

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 509
    throw p1
.end method

.method public whitelist bindText(ILjava/lang/String;)V
    .registers 5

    .line 525
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 528
    :try_start_6
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindText(JILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_10

    .line 530
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 531
    nop

    .line 532
    return-void

    .line 530
    :catchall_10
    move-exception p1

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 531
    throw p1
.end method

.method public whitelist clearBindings()V
    .registers 3

    .line 314
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 316
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeClearBindings(J)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    .line 318
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 319
    nop

    .line 320
    return-void

    .line 318
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 319
    throw v0
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 217
    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    .line 220
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 221
    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSession:Landroid/database/sqlite/SQLiteSession;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mPreparedStatement:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    invoke-virtual {v0, v1, p0}, Landroid/database/sqlite/SQLiteSession;->releasePersistentStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;Ljava/io/Closeable;)V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    .line 224
    :cond_11
    return-void
.end method

.method public whitelist getColumnBlob(I)[B
    .registers 4

    .line 646
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 648
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnBlob(JI)[B

    move-result-object p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 650
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 648
    return-object p1

    .line 650
    :catchall_d
    move-exception p1

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 651
    throw p1
.end method

.method public whitelist getColumnDouble(I)D
    .registers 4

    .line 707
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 709
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnDouble(JI)D

    move-result-wide v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 711
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 709
    return-wide v0

    .line 711
    :catchall_d
    move-exception p1

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 712
    throw p1
.end method

.method public whitelist getColumnInt(I)I
    .registers 4

    .line 732
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 734
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnInt(JI)I

    move-result p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 736
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 734
    return p1

    .line 736
    :catchall_d
    move-exception p1

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 737
    throw p1
.end method

.method public whitelist getColumnLength(I)I
    .registers 4

    .line 619
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 621
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnBytes(JI)I

    move-result p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 623
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 621
    return p1

    .line 623
    :catchall_d
    move-exception p1

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 624
    throw p1
.end method

.method public whitelist getColumnLong(I)J
    .registers 4

    .line 757
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 759
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnLong(JI)J

    move-result-wide v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 761
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 759
    return-wide v0

    .line 761
    :catchall_d
    move-exception p1

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 762
    throw p1
.end method

.method public whitelist getColumnName(I)Ljava/lang/String;
    .registers 4

    .line 593
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 595
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnName(JI)Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 597
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 595
    return-object p1

    .line 597
    :catchall_d
    move-exception p1

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 598
    throw p1
.end method

.method public whitelist getColumnText(I)Ljava/lang/String;
    .registers 4

    .line 783
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 785
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnText(JI)Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 787
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 785
    return-object p1

    .line 787
    :catchall_d
    move-exception p1

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 788
    throw p1
.end method

.method public whitelist getColumnType(I)I
    .registers 4

    .line 570
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 572
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnType(JI)I

    move-result p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 574
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 572
    return p1

    .line 574
    :catchall_d
    move-exception p1

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 575
    throw p1
.end method

.method public whitelist getParameterCount()I
    .registers 3

    .line 332
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 334
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindParameterCount(J)I

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 336
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 334
    return v0

    .line 336
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 337
    throw v0
.end method

.method public whitelist getParameterIndex(Ljava/lang/String;)I
    .registers 4

    .line 352
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 355
    :try_start_6
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindParameterIndex(JLjava/lang/String;)I

    move-result p1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    .line 357
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 355
    return p1

    .line 357
    :catchall_10
    move-exception p1

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 358
    throw p1
.end method

.method public whitelist getParameterName(I)Ljava/lang/String;
    .registers 4

    .line 374
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 376
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindParameterName(JI)Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 378
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 376
    return-object p1

    .line 378
    :catchall_d
    move-exception p1

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 379
    throw p1
.end method

.method public whitelist getResultColumnCount()I
    .registers 3

    .line 543
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 545
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnCount(J)I

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 547
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 545
    return v0

    .line 547
    :catchall_d
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 548
    throw v0
.end method

.method public whitelist isOpen()Z
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist readColumnBlob(I[BIII)I
    .registers 14

    .line 680
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 682
    array-length v0, p2

    invoke-direct {p0, v0, p3, p4}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalidBounds(III)V

    .line 684
    :try_start_a
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnBuffer(JI[BIII)I

    move-result p1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_19

    .line 686
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 684
    return p1

    .line 686
    :catchall_19
    move-exception v0

    move-object p1, v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 687
    throw p1
.end method

.method public whitelist reset()V
    .registers 4

    .line 297
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 299
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteRawStatement;->nativeReset(JZ)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_e

    .line 301
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 302
    nop

    .line 303
    return-void

    .line 301
    :catchall_e
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 302
    throw v0
.end method

.method public whitelist step()Z
    .registers 5

    .line 248
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 250
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteRawStatement;->nativeStep(JZ)I

    move-result v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_73

    .line 251
    const-string v1, "database "

    sparse-switch v0, :sswitch_data_78

    .line 263
    :try_start_f
    new-instance v1, Landroid/database/sqlite/SQLiteException;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_73

    goto :goto_5b

    .line 255
    :sswitch_12
    nop

    .line 265
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 255
    const/4 v0, 0x0

    return v0

    .line 253
    :sswitch_18
    nop

    .line 265
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 253
    return v2

    .line 259
    :sswitch_1d
    :try_start_1d
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteRawStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " locked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteDatabaseLockedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :sswitch_3c
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteRawStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " busy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteDatabaseLockedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :goto_5b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_73
    .catchall {:try_start_1d .. :try_end_73} :catchall_73

    .line 265
    :catchall_73
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 266
    throw v0

    :sswitch_data_78
    .sparse-switch
        0x5 -> :sswitch_3c
        0x6 -> :sswitch_1d
        0x64 -> :sswitch_18
        0x65 -> :sswitch_12
    .end sparse-switch
.end method

.method public blacklist stepNoThrow()I
    .registers 4

    .line 280
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    .line 282
    :try_start_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteRawStatement;->nativeStep(JZ)I

    move-result v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 284
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 282
    return v0

    .line 284
    :catchall_e
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 285
    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 793
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteRawStatement;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteRawStatement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 796
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteRawStatement: (closed) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
