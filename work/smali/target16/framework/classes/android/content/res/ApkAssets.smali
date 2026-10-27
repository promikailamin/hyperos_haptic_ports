.class public final Landroid/content/res/ApkAssets;
.super Ljava/lang/Object;
.source "ApkAssets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ApkAssets$FormatType;,
        Landroid/content/res/ApkAssets$PropertyFlags;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist FORMAT_APK:I = 0x0

.field private static final blacklist FORMAT_ARSC:I = 0x2

.field private static final blacklist FORMAT_DIR:I = 0x3

.field private static final blacklist FORMAT_IDMAP:I = 0x1

.field public static final blacklist PROPERTY_DISABLE_INCREMENTAL_HARDENING:I = 0x10

.field public static final blacklist PROPERTY_DYNAMIC:I = 0x2

.field public static final blacklist PROPERTY_LOADER:I = 0x4

.field public static final blacklist PROPERTY_ONLY_OVERLAYABLES:I = 0x20

.field private static final blacklist PROPERTY_OVERLAY:I = 0x8

.field public static final blacklist PROPERTY_SYSTEM:I = 0x1

.field private static final blacklist UPTODATE_ALWAYS_TRUE:I = 0x2

.field private static final blacklist UPTODATE_FALSE:I = 0x0

.field private static final blacklist UPTODATE_TRUE:I = 0x1


# instance fields
.field private final blacklist mAssets:Landroid/content/res/loader/AssetsProvider;

.field private final blacklist mFlags:I

.field private final blacklist mIsOverlay:Z

.field private blacklist mName:Ljava/lang/String;

.field private greylist-max-o mNativePtr:J

.field private blacklist mPreviousUpToDateResult:I

.field private greylist-max-o mStringBlock:Landroid/content/res/StringBlock;


# direct methods
.method private constructor blacklist <init>(IILandroid/content/res/loader/AssetsProvider;Ljava/lang/String;)V
    .registers 5

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 p4, 0x1

    iput p4, p0, Landroid/content/res/ApkAssets;->mPreviousUpToDateResult:I

    .line 353
    iput p2, p0, Landroid/content/res/ApkAssets;->mFlags:I

    .line 354
    iput-object p3, p0, Landroid/content/res/ApkAssets;->mAssets:Landroid/content/res/loader/AssetsProvider;

    .line 355
    if-ne p1, p4, :cond_d

    goto :goto_e

    :cond_d
    const/4 p4, 0x0

    :goto_e
    iput-boolean p4, p0, Landroid/content/res/ApkAssets;->mIsOverlay:Z

    .line 357
    return-void
.end method

.method private constructor blacklist <init>(ILandroid/content/res/loader/AssetsProvider;)V
    .registers 5

    .line 346
    const/4 v0, 0x0

    const-string v1, "empty"

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/content/res/ApkAssets;-><init>(IILandroid/content/res/loader/AssetsProvider;Ljava/lang/String;)V

    .line 347
    invoke-static {p1, p2}, Landroid/content/res/ApkAssets;->nativeLoadEmpty(ILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 348
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    .line 349
    return-void
.end method

.method private constructor blacklist <init>(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    invoke-direct {p0, p1, p4, p5, p3}, Landroid/content/res/ApkAssets;-><init>(IILandroid/content/res/loader/AssetsProvider;Ljava/lang/String;)V

    .line 329
    const-string v0, "fd"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 330
    const-string v0, "friendlyName"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    invoke-static {p1, p2, p3, p4, p5}, Landroid/content/res/ApkAssets;->nativeLoadFd(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 332
    new-instance p1, Landroid/content/res/StringBlock;

    iget-wide p2, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {p2, p3}, Landroid/content/res/ApkAssets;->nativeGetStringBlock(J)J

    move-result-wide p2

    const/4 p4, 0x1

    invoke-direct {p1, p2, p3, p4}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object p1, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    .line 333
    return-void
.end method

.method private constructor blacklist <init>(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-direct {p0, p1, p8, p9, p3}, Landroid/content/res/ApkAssets;-><init>(IILandroid/content/res/loader/AssetsProvider;Ljava/lang/String;)V

    .line 339
    const-string v0, "fd"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 340
    const-string v0, "friendlyName"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 341
    invoke-static/range {p1 .. p9}, Landroid/content/res/ApkAssets;->nativeLoadFdOffsets(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 342
    new-instance p1, Landroid/content/res/StringBlock;

    iget-wide p2, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {p2, p3}, Landroid/content/res/ApkAssets;->nativeGetStringBlock(J)J

    move-result-wide p2

    const/4 p4, 0x1

    invoke-direct {p1, p2, p3, p4}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object p1, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    .line 343
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/content/res/ApkAssets;-><init>(IILandroid/content/res/loader/AssetsProvider;Ljava/lang/String;)V

    .line 320
    const-string/jumbo v0, "path"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    invoke-static {p1, p2, p3, p4}, Landroid/content/res/ApkAssets;->nativeLoad(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 322
    new-instance p1, Landroid/content/res/StringBlock;

    iget-wide p2, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {p2, p3}, Landroid/content/res/ApkAssets;->nativeGetStringBlock(J)J

    move-result-wide p2

    const/4 p4, 0x1

    invoke-direct {p1, p2, p3, p4}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object p1, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    .line 323
    return-void
.end method

.method private static blacklist getFlagValuesForNative([Ljava/lang/String;)[Z
    .registers 5

    .line 525
    array-length v0, p0

    new-array v0, v0, [Z

    .line 526
    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_37

    .line 527
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->getFlagValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 528
    if-nez v2, :cond_2e

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find flag value for native: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ApkAssets"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 531
    :cond_2e
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 526
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 534
    :cond_37
    return-object v0
.end method

.method private static blacklist intervalMs(JJ)D
    .registers 4

    .line 438
    sub-long/2addr p2, p0

    long-to-double p0, p2

    const-wide p2, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static blacklist loadEmptyForLoader(ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 3

    .line 314
    new-instance v0, Landroid/content/res/ApkAssets;

    invoke-direct {v0, p0, p1}, Landroid/content/res/ApkAssets;-><init>(ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static blacklist loadFromDir(Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1, p2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static blacklist loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static blacklist loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static greylist-max-o loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static blacklist loadFromPath(Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static blacklist loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static blacklist loadTableFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x2

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static blacklist loadTableFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x2

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method private static native blacklist nativeDefinesOverlayable(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeDestroy(J)V
.end method

.method private static native greylist-max-o nativeGetAssetPath(J)Ljava/lang/String;
.end method

.method private static native blacklist nativeGetDebugName(J)Ljava/lang/String;
.end method

.method private static native blacklist nativeGetOverlayableInfo(JLjava/lang/String;)Landroid/content/om/OverlayableInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeGetStringBlock(J)J
.end method

.method private static native blacklist nativeIsUpToDate(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeLoad(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nativeLoadEmpty(ILandroid/content/res/loader/AssetsProvider;)J
.end method

.method private static native blacklist nativeLoadFd(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nativeLoadFdOffsets(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeOpenXml(JLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public blacklist close()V
    .registers 5

    .line 500
    monitor-enter p0

    .line 501
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 502
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    if-eqz v0, :cond_12

    .line 503
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    invoke-virtual {v0}, Landroid/content/res/StringBlock;->close()V

    .line 505
    :cond_12
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeDestroy(J)V

    .line 506
    iput-wide v2, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 508
    :cond_19
    monitor-exit p0

    .line 509
    return-void

    .line 508
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public blacklist definesOverlayable()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    monitor-enter p0

    .line 433
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeDefinesOverlayable(J)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 434
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "debugName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "assetPath="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 493
    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->close()V

    .line 494
    return-void
.end method

.method public greylist getAssetPath()Ljava/lang/String;
    .registers 3

    .line 361
    monitor-enter p0

    .line 362
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeGetAssetPath(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 363
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public blacklist getAssetsProvider()Landroid/content/res/loader/AssetsProvider;
    .registers 2

    .line 394
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mAssets:Landroid/content/res/loader/AssetsProvider;

    return-object v0
.end method

.method public blacklist getDebugName()Ljava/lang/String;
    .registers 5

    .line 368
    monitor-enter p0

    .line 369
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const-string v0, "<destroyed>"

    goto :goto_12

    :cond_c
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeGetDebugName(J)Ljava/lang/String;

    move-result-object v0

    :goto_12
    monitor-exit p0

    return-object v0

    .line 370
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public blacklist getOverlayableInfo(Ljava/lang/String;)Landroid/content/om/OverlayableInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    monitor-enter p0

    .line 426
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/content/res/ApkAssets;->nativeGetOverlayableInfo(JLjava/lang/String;)Landroid/content/om/OverlayableInfo;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 427
    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method greylist-max-o getStringFromPool(I)Ljava/lang/CharSequence;
    .registers 3

    .line 375
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    if-nez v0, :cond_6

    .line 376
    const/4 p1, 0x0

    return-object p1

    .line 379
    :cond_6
    monitor-enter p0

    .line 380
    :try_start_7
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 381
    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public blacklist isForLoader()Z
    .registers 2

    .line 386
    iget v0, p0, Landroid/content/res/ApkAssets;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isOverlay()Z
    .registers 2

    .line 483
    iget-boolean v0, p0, Landroid/content/res/ApkAssets;->mIsOverlay:Z

    return v0
.end method

.method public blacklist isSharedLib()Z
    .registers 2

    .line 479
    iget v0, p0, Landroid/content/res/ApkAssets;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isSystem()Z
    .registers 3

    .line 475
    iget v0, p0, Landroid/content/res/ApkAssets;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public greylist-max-o isUpToDate()Z
    .registers 6

    .line 449
    iget v0, p0, Landroid/content/res/ApkAssets;->mPreviousUpToDateResult:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    .line 450
    iget v0, p0, Landroid/content/res/ApkAssets;->mPreviousUpToDateResult:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_c

    move v1, v2

    :cond_c
    return v1

    .line 455
    :cond_d
    monitor-enter p0

    .line 457
    :try_start_e
    iget-wide v3, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/content/res/ApkAssets;->nativeIsUpToDate(J)I

    move-result v0

    .line 459
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1b

    .line 470
    iput v0, p0, Landroid/content/res/ApkAssets;->mPreviousUpToDateResult:I

    .line 471
    if-eqz v0, :cond_1a

    move v1, v2

    :cond_1a
    return v1

    .line 459
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public greylist-max-o openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    const-string v0, "fileName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 408
    monitor-enter p0

    .line 409
    :try_start_6
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/content/res/ApkAssets;->nativeOpenXml(JLjava/lang/String;)J

    move-result-wide v0

    .line 410
    new-instance p1, Landroid/content/res/XmlBlock;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p1, v2, v0, v1, v3}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;JZ)V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_31

    .line 411
    :try_start_13
    invoke-virtual {p1}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_27

    .line 414
    if-eqz v0, :cond_1f

    .line 417
    nop

    .line 418
    :try_start_1a
    invoke-virtual {p1}, Landroid/content/res/XmlBlock;->close()V

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_31

    .line 417
    return-object v0

    .line 415
    :cond_1f
    :try_start_1f
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "block.newParser() returned a null parser"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    .line 410
    :catchall_27
    move-exception v0

    :try_start_28
    invoke-virtual {p1}, Landroid/content/res/XmlBlock;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception p1

    :try_start_2d
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_30
    throw v0

    .line 419
    :catchall_31
    move-exception p1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_31

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApkAssets{path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->getDebugName()Ljava/lang/String;

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
