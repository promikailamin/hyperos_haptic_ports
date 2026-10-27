.class public Landroid/database/CursorWindow;
.super Landroid/database/sqlite/SQLiteClosable;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/database/CursorWindow;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o STATS_TAG:Ljava/lang/String; = "CursorWindowStats"

.field private static greylist sCursorWindowSize:I


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mStartPos:I

.field public greylist mWindowPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    const/4 v0, -0x1

    sput v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    .line 751
    new-instance v0, Landroid/database/CursorWindow$1;

    invoke-direct {v0}, Landroid/database/CursorWindow$1;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 195
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 197
    invoke-static {p1}, Landroid/database/CursorWindow;->nativeCreateFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    .line 198
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_26

    .line 201
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeGetName(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 202
    invoke-direct {p0}, Landroid/database/CursorWindow;->createCloseGuard()Ldalvik/system/CloseGuard;

    move-result-object p1

    iput-object p1, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 203
    return-void

    .line 199
    :cond_26
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/database/CursorWindow-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4

    .line 146
    invoke-static {}, Landroid/database/CursorWindow;->getCursorWindowSize()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    .line 147
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;J)V
    .registers 7

    .line 164
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 165
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_35

    .line 168
    const/4 v2, 0x0

    iput v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 169
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_17

    :cond_15
    const-string p1, "<unnamed>"

    :goto_17
    iput-object p1, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 170
    iget-object p1, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    long-to-int p2, p2

    invoke-static {p1, p2}, Landroid/database/CursorWindow;->nativeCreate(Ljava/lang/String;I)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    .line 171
    iget-wide p1, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2f

    .line 174
    invoke-direct {p0}, Landroid/database/CursorWindow;->createCloseGuard()Ldalvik/system/CloseGuard;

    move-result-object p1

    iput-object p1, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 175
    return-void

    .line 172
    :cond_2f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 166
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Window size cannot be less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method private blacklist createCloseGuard()Ldalvik/system/CloseGuard;
    .registers 3

    .line 207
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    .line 208
    const-string v1, "CursorWindow.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 209
    return-object v0
.end method

.method private blacklist createCloseGuard$ravenwood()Ldalvik/system/CloseGuard;
    .registers 2

    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o dispose()V
    .registers 5

    .line 229
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 230
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 232
    :cond_9
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 233
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeDispose(J)V

    .line 234
    iput-wide v2, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    .line 236
    :cond_18
    return-void
.end method

.method private static greylist-max-o getCursorWindowSize()I
    .registers 2

    .line 791
    sget v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    if-gez v0, :cond_13

    .line 794
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    sput v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    .line 797
    :cond_13
    sget v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    return v0
.end method

.method private static blacklist getCursorWindowSize$ravenwood()I
    .registers 1

    .line 801
    const/16 v0, 0x400

    return v0
.end method

.method private static native greylist-max-o nativeAllocRow(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeClear(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeCopyStringToBuffer(JIILandroid/database/CharArrayBuffer;)V
.end method

.method private static native greylist-max-o nativeCreate(Ljava/lang/String;I)J
.end method

.method private static native greylist-max-o nativeCreateFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native greylist-max-o nativeDispose(J)V
.end method

.method private static native greylist-max-o nativeFreeLastRow(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetBlob(JII)[B
.end method

.method private static native greylist-max-o nativeGetDouble(JII)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetLong(JII)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetName(J)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetNumRows(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetString(JII)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetType(JII)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativePutBlob(J[BII)Z
.end method

.method private static native greylist-max-o nativePutDouble(JDII)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativePutLong(JJII)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativePutNull(JII)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativePutString(JLjava/lang/String;II)Z
.end method

.method private static native greylist-max-o nativeSetNumColumns(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method public static whitelist newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;
    .registers 2

    .line 763
    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/CursorWindow;

    return-object p0
.end method


# virtual methods
.method public whitelist allocRow()Z
    .registers 3

    .line 330
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 332
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeAllocRow(J)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 334
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 332
    return v0

    .line 334
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 335
    throw v0
.end method

.method public whitelist clear()V
    .registers 3

    .line 255
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 257
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 258
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeClear(J)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 260
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 261
    nop

    .line 262
    return-void

    .line 260
    :catchall_10
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 261
    throw v0
.end method

.method public whitelist copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .registers 7

    .line 538
    if-eqz p3, :cond_17

    .line 541
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 543
    :try_start_5
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v2

    invoke-static {v0, v1, p1, p2, p3}, Landroid/database/CursorWindow;->nativeCopyStringToBuffer(JIILandroid/database/CharArrayBuffer;)V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_12

    .line 545
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 546
    nop

    .line 547
    return-void

    .line 545
    :catchall_12
    move-exception p1

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 546
    throw p1

    .line 539
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CharArrayBuffer should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 767
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 219
    :try_start_0
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 220
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 222
    :cond_9
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 224
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 225
    nop

    .line 226
    return-void

    .line 224
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 225
    throw v0
.end method

.method public whitelist freeLastRow()V
    .registers 3

    .line 342
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 344
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeFreeLastRow(J)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    .line 346
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 347
    nop

    .line 348
    return-void

    .line 346
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 347
    throw v0
.end method

.method public whitelist getBlob(II)[B
    .registers 6

    .line 463
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 465
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Landroid/database/CursorWindow;->nativeGetBlob(JII)[B

    move-result-object p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 467
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 465
    return-object p1

    .line 467
    :catchall_10
    move-exception p1

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 468
    throw p1
.end method

.method public whitelist getDouble(II)D
    .registers 6

    .line 604
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 606
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Landroid/database/CursorWindow;->nativeGetDouble(JII)D

    move-result-wide p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 608
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 606
    return-wide p1

    .line 608
    :catchall_10
    move-exception p1

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 609
    throw p1
.end method

.method public whitelist getFloat(II)F
    .registers 3

    .line 657
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public whitelist getInt(II)I
    .registers 3

    .line 641
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public whitelist getLong(II)J
    .registers 6

    .line 572
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 574
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Landroid/database/CursorWindow;->nativeGetLong(JII)J

    move-result-wide p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 576
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 574
    return-wide p1

    .line 576
    :catchall_10
    move-exception p1

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 577
    throw p1
.end method

.method public greylist-max-o getName()Ljava/lang/String;
    .registers 2

    .line 243
    iget-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNumRows()I
    .registers 3

    .line 296
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 298
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeGetNumRows(J)I

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 300
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 298
    return v0

    .line 300
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 301
    throw v0
.end method

.method public whitelist getShort(II)S
    .registers 3

    .line 625
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide p1

    long-to-int p1, p1

    int-to-short p1, p1

    return p1
.end method

.method public whitelist getStartPosition()I
    .registers 2

    .line 274
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    return v0
.end method

.method public whitelist getString(II)Ljava/lang/String;
    .registers 6

    .line 498
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 500
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Landroid/database/CursorWindow;->nativeGetString(JII)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 502
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 500
    return-object p1

    .line 502
    :catchall_10
    move-exception p1

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 503
    throw p1
.end method

.method public whitelist getType(II)I
    .registers 6

    .line 433
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 435
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Landroid/database/CursorWindow;->nativeGetType(JII)I

    move-result p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 437
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 435
    return p1

    .line 437
    :catchall_10
    move-exception p1

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 438
    throw p1
.end method

.method public whitelist isBlob(II)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 376
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result p1

    .line 377
    const/4 p2, 0x4

    if-eq p1, p2, :cond_c

    if-nez p1, :cond_a

    goto :goto_c

    :cond_a
    const/4 p1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p1, 0x1

    :goto_d
    return p1
.end method

.method public whitelist isFloat(II)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 405
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public whitelist isLong(II)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 391
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_8

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    :goto_9
    return p2
.end method

.method public whitelist isNull(II)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public whitelist isString(II)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 420
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result p1

    .line 421
    const/4 p2, 0x3

    if-eq p1, p2, :cond_c

    if-nez p1, :cond_a

    goto :goto_c

    :cond_a
    const/4 p1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p1, 0x1

    :goto_d
    return p1
.end method

.method protected whitelist onAllReferencesReleased()V
    .registers 1

    .line 786
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V

    .line 787
    return-void
.end method

.method public whitelist putBlob([BII)Z
    .registers 7

    .line 670
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 673
    :try_start_6
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p2, v2

    invoke-static {v0, v1, p1, p2, p3}, Landroid/database/CursorWindow;->nativePutBlob(J[BII)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_13

    .line 675
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 673
    return p1

    .line 675
    :catchall_13
    move-exception p1

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 676
    throw p1
.end method

.method public whitelist putDouble(DII)Z
    .registers 11

    .line 727
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 729
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v4, p3, v2

    move-wide v2, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/database/CursorWindow;->nativePutDouble(JDII)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 731
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 729
    return p1

    .line 731
    :catchall_13
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 732
    throw p1
.end method

.method public whitelist putLong(JII)Z
    .registers 11

    .line 708
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 710
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v4, p3, v2

    move-wide v2, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/database/CursorWindow;->nativePutLong(JJII)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 712
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 710
    return p1

    .line 712
    :catchall_13
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 713
    throw p1
.end method

.method public whitelist putNull(II)Z
    .registers 6

    .line 743
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 745
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Landroid/database/CursorWindow;->nativePutNull(JII)Z

    move-result p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 747
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 745
    return p1

    .line 747
    :catchall_10
    move-exception p1

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 748
    throw p1
.end method

.method public whitelist putString(Ljava/lang/String;II)Z
    .registers 7

    .line 689
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 692
    :try_start_6
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int/2addr p2, v2

    invoke-static {v0, v1, p1, p2, p3}, Landroid/database/CursorWindow;->nativePutString(JLjava/lang/String;II)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_13

    .line 694
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 692
    return p1

    .line 694
    :catchall_13
    move-exception p1

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 695
    throw p1
.end method

.method public whitelist setNumColumns(I)Z
    .registers 4

    .line 316
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 318
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1, p1}, Landroid/database/CursorWindow;->nativeSetNumColumns(JI)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 320
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 318
    return p1

    .line 320
    :catchall_d
    move-exception p1

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 321
    throw p1
.end method

.method public whitelist setStartPosition(I)V
    .registers 2

    .line 287
    iput p1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 288
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/database/CursorWindow;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 771
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 773
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1, p1}, Landroid/database/CursorWindow;->nativeWriteToParcel(JLandroid/os/Parcel;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_19

    .line 776
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 777
    nop

    .line 779
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_18

    .line 780
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 782
    :cond_18
    return-void

    .line 776
    :catchall_19
    move-exception p1

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 777
    throw p1
.end method
