.class public final Landroid/graphics/pdf/PdfEditor;
.super Ljava/lang/Object;
.source "PdfEditor.java"


# static fields
.field private static final blacklist sPdfiumLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mInput:Landroid/os/ParcelFileDescriptor;

.field private greylist-max-o mNativeDocument:J

.field private greylist-max-o mPageCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 77
    if-eqz p1, :cond_59

    .line 83
    :try_start_b
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->SEEK_SET:I

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 84
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J
    :try_end_20
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_20} :catch_50

    .line 87
    nop

    .line 88
    iput-object p1, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 90
    sget-object p1, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter p1

    .line 91
    :try_start_26
    iget-object v4, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-static {v4, v0, v1}, Landroid/graphics/pdf/PdfEditor;->nativeOpen(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_4d

    .line 93
    :try_start_32
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageCount(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_44

    .line 98
    nop

    .line 99
    :try_start_3b
    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_4d

    .line 101
    iget-object p1, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v0, "close"

    invoke-virtual {p1, v0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 102
    return-void

    .line 94
    :catchall_44
    move-exception v0

    .line 95
    :try_start_45
    iget-wide v4, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v4, v5}, Landroid/graphics/pdf/PdfEditor;->nativeClose(J)V

    .line 96
    iput-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    .line 97
    throw v0

    .line 99
    :catchall_4d
    move-exception v0

    monitor-exit p1
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_4d

    throw v0

    .line 85
    :catch_50
    move-exception p1

    .line 86
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "file descriptor not seekable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_59
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "input cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o doClose()V
    .registers 7

    .line 297
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 298
    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_b
    iget-wide v4, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v4, v5}, Landroid/graphics/pdf/PdfEditor;->nativeClose(J)V

    .line 300
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_14

    .line 301
    iput-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    goto :goto_17

    .line 300
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1

    .line 304
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_23

    .line 305
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 308
    :cond_23
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 309
    return-void
.end method

.method private static native greylist-max-o nativeClose(J)V
.end method

.method private static native greylist-max-o nativeGetPageCount(J)I
.end method

.method private static native greylist-max-o nativeGetPageCropBox(JILandroid/graphics/Rect;)Z
.end method

.method private static native greylist-max-o nativeGetPageMediaBox(JILandroid/graphics/Rect;)Z
.end method

.method private static native greylist-max-o nativeGetPageSize(JILandroid/graphics/Point;)V
.end method

.method private static native greylist-max-o nativeOpen(IJ)J
.end method

.method private static native greylist-max-o nativeRemovePage(JI)I
.end method

.method private static native greylist-max-o nativeScaleForPrinting(J)Z
.end method

.method private static native greylist-max-o nativeSetPageCropBox(JILandroid/graphics/Rect;)V
.end method

.method private static native greylist-max-o nativeSetPageMediaBox(JILandroid/graphics/Rect;)V
.end method

.method private static native greylist-max-o nativeSetTransformAndClip(JIJIIII)V
.end method

.method private static native greylist-max-o nativeWrite(JI)V
.end method

.method private greylist-max-o throwIfClosed()V
    .registers 3

    .line 312
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_5

    .line 315
    return-void

    .line 313
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfCropBoxNull(Landroid/graphics/Rect;)V
    .registers 3

    .line 354
    if-eqz p1, :cond_3

    .line 357
    return-void

    .line 355
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cropBox cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o throwIfMediaBoxNull(Landroid/graphics/Rect;)V
    .registers 3

    .line 342
    if-eqz p1, :cond_3

    .line 345
    return-void

    .line 343
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "mediaBox cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o throwIfNotNullAndNotAfine(Landroid/graphics/Matrix;)V
    .registers 3

    .line 324
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isAffine()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_11

    .line 325
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Matrix must be afine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 327
    :cond_11
    :goto_11
    return-void
.end method

.method private greylist-max-o throwIfOutCropBoxNull(Landroid/graphics/Rect;)V
    .registers 3

    .line 348
    if-eqz p1, :cond_3

    .line 351
    return-void

    .line 349
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "outCropBox cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o throwIfOutMediaBoxNull(Landroid/graphics/Rect;)V
    .registers 3

    .line 336
    if-eqz p1, :cond_3

    .line 339
    return-void

    .line 337
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "outMediaBox cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o throwIfOutSizeNull(Landroid/graphics/Point;)V
    .registers 3

    .line 330
    if-eqz p1, :cond_3

    .line 333
    return-void

    .line 331
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "outSize cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o throwIfPageNotInDocument(I)V
    .registers 3

    .line 318
    if-ltz p1, :cond_7

    iget v0, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    if-ge p1, v0, :cond_7

    .line 321
    return-void

    .line 319
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid page index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public greylist-max-o close()V
    .registers 1

    .line 279
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 280
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->doClose()V

    .line 281
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 286
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 287
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 290
    :cond_9
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->doClose()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 292
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 293
    nop

    .line 294
    return-void

    .line 292
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 293
    throw v0
.end method

.method public greylist-max-o getPageCount()I
    .registers 2

    .line 110
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 111
    iget v0, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    return v0
.end method

.method public greylist-max-o getPageCropBox(ILandroid/graphics/Rect;)Z
    .registers 6

    .line 216
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 217
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutCropBoxNull(Landroid/graphics/Rect;)V

    .line 218
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 220
    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_c
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageCropBox(JILandroid/graphics/Rect;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 222
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw p1
.end method

.method public greylist-max-o getPageMediaBox(ILandroid/graphics/Rect;)Z
    .registers 6

    .line 184
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 185
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutMediaBoxNull(Landroid/graphics/Rect;)V

    .line 186
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 188
    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_c
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageMediaBox(JILandroid/graphics/Rect;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 190
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw p1
.end method

.method public greylist-max-o getPageSize(ILandroid/graphics/Point;)V
    .registers 6

    .line 168
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 169
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutSizeNull(Landroid/graphics/Point;)V

    .line 170
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 172
    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_c
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageSize(JILandroid/graphics/Point;)V

    .line 174
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw p1
.end method

.method public greylist-max-o removePage(I)V
    .registers 5

    .line 120
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 121
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 123
    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_9
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1}, Landroid/graphics/pdf/PdfEditor;->nativeRemovePage(JI)I

    move-result p1

    iput p1, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    .line 125
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public greylist-max-o setPageCropBox(ILandroid/graphics/Rect;)V
    .registers 6

    .line 232
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 233
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfCropBoxNull(Landroid/graphics/Rect;)V

    .line 234
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 236
    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_c
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeSetPageCropBox(JILandroid/graphics/Rect;)V

    .line 238
    monitor-exit v0

    .line 239
    return-void

    .line 238
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw p1
.end method

.method public greylist-max-o setPageMediaBox(ILandroid/graphics/Rect;)V
    .registers 6

    .line 200
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 201
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfMediaBoxNull(Landroid/graphics/Rect;)V

    .line 202
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 204
    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_c
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeSetPageMediaBox(JILandroid/graphics/Rect;)V

    .line 206
    monitor-exit v0

    .line 207
    return-void

    .line 206
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw p1
.end method

.method public greylist-max-o setTransformAndClip(ILandroid/graphics/Matrix;Landroid/graphics/Rect;)V
    .registers 15

    .line 139
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 140
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    .line 141
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfNotNullAndNotAfine(Landroid/graphics/Matrix;)V

    .line 142
    if-nez p2, :cond_d

    .line 143
    sget-object p2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 145
    :cond_d
    if-nez p3, :cond_30

    .line 146
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 147
    invoke-virtual {p0, p1, p3}, Landroid/graphics/pdf/PdfEditor;->getPageSize(ILandroid/graphics/Point;)V

    .line 149
    sget-object v1, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_1a
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v5

    iget v9, p3, Landroid/graphics/Point;->x:I

    iget v10, p3, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, p1

    invoke-static/range {v2 .. v10}, Landroid/graphics/pdf/PdfEditor;->nativeSetTransformAndClip(JIJIIII)V

    .line 152
    monitor-exit v1

    .line 153
    goto :goto_46

    .line 152
    :catchall_2c
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_2c

    throw p1

    .line 154
    :cond_30
    move v4, p1

    sget-object p1, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter p1

    .line 155
    :try_start_34
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v5

    iget v7, p3, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->top:I

    iget v9, p3, Landroid/graphics/Rect;->right:I

    iget v10, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v2 .. v10}, Landroid/graphics/pdf/PdfEditor;->nativeSetTransformAndClip(JIJIIII)V

    .line 157
    monitor-exit p1

    .line 159
    :goto_46
    return-void

    .line 157
    :catchall_47
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_47

    throw p2
.end method

.method public greylist-max-o shouldScaleForPrinting()Z
    .registers 4

    .line 247
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 249
    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_6
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2}, Landroid/graphics/pdf/PdfEditor;->nativeScaleForPrinting(J)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 251
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public greylist-max-o write(Landroid/os/ParcelFileDescriptor;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    .line 266
    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_18

    .line 267
    :try_start_6
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/graphics/pdf/PdfEditor;->nativeWrite(JI)V

    .line 268
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_15

    .line 270
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 271
    nop

    .line 272
    return-void

    .line 268
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 270
    :catchall_18
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 271
    throw v0
.end method
