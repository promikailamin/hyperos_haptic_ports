.class public Lcom/miui/enterprise/signature/EnterpriseV2Verifier;
.super Ljava/lang/Object;
.source "EnterpriseV2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;
    }
.end annotation


# static fields
.field public static final whitelist APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field public static final whitelist APK_SIG_BLOCK_MAGIC_HI:J = 0x3234206b636f6c42L

.field public static final whitelist APK_SIG_BLOCK_MAGIC_LO:J = 0x20676953204b5041L

.field private static final blacklist APK_SIG_BLOCK_MIN_SIZE:I = 0x20

.field public static final whitelist CHANNEL_BLOCK_ID:I = 0x29fc459a

.field public static final whitelist CONTENT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final blacklist UINT16_MAX_VALUE:I = 0xffff

.field private static final blacklist ZIP64_EOCD_LOCATOR_SIG_REVERSE_BYTE_ORDER:I = 0x504b0607

.field private static final blacklist ZIP64_EOCD_LOCATOR_SIZE:I = 0x14

.field private static final blacklist ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET:I = 0x10

.field private static final blacklist ZIP_EOCD_CENTRAL_DIR_SIZE_FIELD_OFFSET:I = 0xc

.field private static final blacklist ZIP_EOCD_COMMENT_LENGTH_FIELD_OFFSET:I = 0x14

.field public static final whitelist ZIP_EOCD_REC_MIN_SIZE:I = 0x16

.field private static final blacklist ZIP_EOCD_REC_SIG:I = 0x6054b50


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 557
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_9

    .line 560
    return-void

    .line 558
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 217
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_9

    .line 220
    return-void

    .line 218
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/miui/enterprise/signature/Pair;
    .registers 15
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "centralDirOffset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "J)",
            "Lcom/miui/enterprise/signature/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 331
    const-wide/16 v0, 0x20

    cmp-long v0, p1, v0

    if-ltz v0, :cond_f3

    .line 339
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 340
    .local v0, "footer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 341
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 342
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 343
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    const-wide v3, 0x20676953204b5041L

    cmp-long v1, v1, v3

    if-nez v1, :cond_eb

    const/16 v1, 0x10

    .line 344
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    const-wide v3, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v1, v1, v3

    if-nez v1, :cond_eb

    .line 349
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 350
    .local v2, "apkSigBlockSizeInFooter":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_d2

    const-wide/32 v4, 0x7ffffff7

    cmp-long v4, v2, v4

    if-gtz v4, :cond_d2

    .line 355
    const-wide/16 v4, 0x8

    add-long/2addr v4, v2

    long-to-int v4, v4

    .line 356
    .local v4, "totalSize":I
    int-to-long v5, v4

    sub-long v5, p1, v5

    .line 357
    .local v5, "apkSigBlockOffset":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_b9

    .line 361
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 362
    .local v7, "apkSigBlock":Ljava/nio/ByteBuffer;
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 363
    invoke-virtual {p0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 364
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    invoke-virtual {p0, v8, v9, v10}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 365
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    .line 366
    .local v8, "apkSigBlockSizeInHeader":J
    cmp-long v1, v8, v2

    if-nez v1, :cond_96

    .line 371
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/miui/enterprise/signature/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/miui/enterprise/signature/Pair;

    move-result-object v1

    return-object v1

    .line 367
    :cond_96
    new-instance v1, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APK Signing Block sizes in header and footer do not match: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " vs "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    .end local v7    # "apkSigBlock":Ljava/nio/ByteBuffer;
    .end local v8    # "apkSigBlockSizeInHeader":J
    :cond_b9
    new-instance v1, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APK Signing Block offset out of range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    .end local v4    # "totalSize":I
    .end local v5    # "apkSigBlockOffset":J
    :cond_d2
    new-instance v1, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APK Signing Block size out of range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    .end local v2    # "apkSigBlockSizeInFooter":J
    :cond_eb
    new-instance v1, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;

    const-string v2, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v1, v2}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    .end local v0    # "footer":Ljava/nio/ByteBuffer;
    :cond_f3
    new-instance v0, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist findZipEndOfCentralDirectoryRecord(Ljava/nio/ByteBuffer;)I
    .registers 9
    .param p0, "zipContents"    # Ljava/nio/ByteBuffer;

    .line 494
    invoke-static {p0}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 506
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 507
    .local v0, "archiveSize":I
    const/4 v1, -0x1

    const/16 v2, 0x16

    if-ge v0, v2, :cond_d

    .line 508
    return v1

    .line 510
    :cond_d
    add-int/lit8 v2, v0, -0x16

    const v3, 0xffff

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 511
    .local v2, "maxCommentLength":I
    add-int/lit8 v3, v0, -0x16

    .line 512
    .local v3, "eocdWithEmptyCommentStartPosition":I
    const/4 v4, 0x0

    .local v4, "expectedCommentLength":I
    :goto_19
    if-gt v4, v2, :cond_32

    .line 514
    sub-int v5, v3, v4

    .line 515
    .local v5, "eocdStartPos":I
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    const v7, 0x6054b50

    if-ne v6, v7, :cond_2f

    .line 516
    add-int/lit8 v6, v5, 0x14

    .line 517
    invoke-static {p0, v6}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    move-result v6

    .line 519
    .local v6, "actualCommentLength":I
    if-ne v6, v4, :cond_2f

    .line 520
    return v5

    .line 513
    .end local v5    # "eocdStartPos":I
    .end local v6    # "actualCommentLength":I
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 525
    .end local v4    # "expectedCommentLength":I
    :cond_32
    return v1
.end method

.method static blacklist findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Lcom/miui/enterprise/signature/Pair;
    .registers 5
    .param p0, "zip"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Lcom/miui/enterprise/signature/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 418
    .local v0, "fileSize":J
    const-wide/16 v2, 0x16

    cmp-long v2, v0, v2

    if-gez v2, :cond_c

    .line 419
    const/4 v2, 0x0

    return-object v2

    .line 425
    :cond_c
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Lcom/miui/enterprise/signature/Pair;

    move-result-object v2

    .line 426
    .local v2, "result":Lcom/miui/enterprise/signature/Pair;, "Lcom/miui/enterprise/signature/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    if-eqz v2, :cond_14

    .line 427
    return-object v2

    .line 433
    :cond_14
    const v3, 0xffff

    invoke-static {p0, v3}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Lcom/miui/enterprise/signature/Pair;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Lcom/miui/enterprise/signature/Pair;
    .registers 11
    .param p0, "zip"    # Ljava/io/RandomAccessFile;
    .param p1, "maxCommentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "I)",
            "Lcom/miui/enterprise/signature/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    if-ltz p1, :cond_5e

    const v0, 0xffff

    if-gt p1, v0, :cond_5e

    .line 462
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 463
    .local v0, "fileSize":J
    const-wide/16 v2, 0x16

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-gez v4, :cond_13

    .line 465
    return-object v5

    .line 468
    :cond_13
    int-to-long v6, p1

    sub-long v2, v0, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p1, v2

    .line 470
    add-int/lit8 v2, p1, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 471
    .local v2, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 472
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    sub-long v3, v0, v3

    .line 473
    .local v3, "bufOffsetInFile":J
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 474
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 475
    invoke-static {v2}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->findZipEndOfCentralDirectoryRecord(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 476
    .local v6, "eocdOffsetInBuf":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_47

    .line 478
    return-object v5

    .line 481
    :cond_47
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 482
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 483
    .local v5, "eocd":Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 484
    int-to-long v7, v6

    add-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/miui/enterprise/signature/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/miui/enterprise/signature/Pair;

    move-result-object v7

    return-object v7

    .line 459
    .end local v0    # "fileSize":J
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "bufOffsetInFile":J
    .end local v5    # "eocd":Ljava/nio/ByteBuffer;
    .end local v6    # "eocdOffsetInBuf":I
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxCommentSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getAllIdValue(Ljava/nio/ByteBuffer;)Ljava/util/Map;
    .registers 12
    .param p0, "apkSchemeBlock"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 139
    invoke-static {p0}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 146
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    const/16 v1, 0x8

    invoke-static {p0, v1, v0}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 147
    .local v0, "pairs":Ljava/nio/ByteBuffer;
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 148
    .local v2, "idValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    const/4 v3, 0x0

    .line 149
    .local v3, "entryCount":I
    :goto_15
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 150
    add-int/lit8 v3, v3, 0x1

    .line 151
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lt v4, v1, :cond_a6

    .line 155
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 156
    .local v4, "lenLong":J
    const-wide/16 v6, 0x4

    cmp-long v6, v4, v6

    const-string v7, " size out of range: "

    const-string v8, "APK Signing Block entry #"

    if-ltz v6, :cond_87

    const-wide/32 v9, 0x7fffffff

    cmp-long v6, v4, v9

    if-gtz v6, :cond_87

    .line 161
    long-to-int v6, v4

    .line 162
    .local v6, "len":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v9, v6

    .line 163
    .local v9, "nextEntryPos":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-gt v6, v10, :cond_5a

    .line 168
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 169
    .local v7, "id":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    add-int/lit8 v10, v6, -0x4

    invoke-static {v0, v10}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface {v2, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    nop

    .line 173
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    .end local v4    # "lenLong":J
    .end local v6    # "len":I
    .end local v7    # "id":I
    .end local v9    # "nextEntryPos":I
    goto :goto_15

    .line 164
    .restart local v4    # "lenLong":J
    .restart local v6    # "len":I
    .restart local v9    # "nextEntryPos":I
    :cond_5a
    new-instance v1, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 166
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    .end local v6    # "len":I
    .end local v9    # "nextEntryPos":I
    :cond_87
    new-instance v1, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    .end local v4    # "lenLong":J
    :cond_a6
    new-instance v1, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_bf
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c6

    .line 181
    return-object v2

    .line 177
    :cond_c6
    new-instance v1, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not have Id-Value Pair in APK Signing Block entry #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist getAllIdValueMap(Ljava/io/File;)Ljava/util/Map;
    .registers 6
    .param p0, "channelFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    if-eqz p0, :cond_46

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_46

    .line 116
    :cond_10
    :try_start_10
    invoke-static {p0}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->getApkSigningBlock(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 117
    .local v1, "apkSigningBlock":Ljava/nio/ByteBuffer;
    if-nez v1, :cond_17

    .line 118
    return-object v0

    .line 120
    :cond_17
    invoke-static {v1}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->getAllIdValue(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1b} :catch_40
    .catch Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException; {:try_start_10 .. :try_end_1b} :catch_1c

    return-object v0

    .line 123
    .end local v1    # "apkSigningBlock":Ljava/nio/ByteBuffer;
    :catch_1c
    move-exception v1

    .line 125
    .local v1, "e":Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APK : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not have apk signature block"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_45

    .line 121
    .end local v1    # "e":Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;
    :catch_40
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 126
    .end local v1    # "e":Ljava/io/IOException;
    nop

    .line 127
    :goto_45
    return-object v0

    .line 112
    :cond_46
    :goto_46
    return-object v0
.end method

.method public static whitelist getApkSigningBlock(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 10
    .param p0, "channelFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    if-eqz p0, :cond_54

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_54

    .line 267
    :cond_f
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_16
    invoke-static {v0}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/miui/enterprise/signature/Pair;

    move-result-object v1

    .line 270
    .local v1, "eocdAndOffsetInFile":Lcom/miui/enterprise/signature/Pair;, "Lcom/miui/enterprise/signature/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    invoke-virtual {v1}, Lcom/miui/enterprise/signature/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 271
    .local v2, "eocd":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Lcom/miui/enterprise/signature/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 273
    .local v3, "eocdOffset":J
    invoke-static {v0, v3, v4}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v5

    if-nez v5, :cond_42

    .line 278
    invoke-static {v2, v3, v4}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v5

    .line 280
    .local v5, "centralDirOffset":J
    invoke-static {v0, v5, v6}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/miui/enterprise/signature/Pair;

    move-result-object v7

    .line 281
    .local v7, "apkSignatureBlock":Lcom/miui/enterprise/signature/Pair;, "Lcom/miui/enterprise/signature/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    invoke-virtual {v7}, Lcom/miui/enterprise/signature/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;
    :try_end_3e
    .catchall {:try_start_16 .. :try_end_3e} :catchall_4a

    .line 282
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 281
    return-object v8

    .line 274
    .end local v5    # "centralDirOffset":J
    .end local v7    # "apkSignatureBlock":Lcom/miui/enterprise/signature/Pair;, "Lcom/miui/enterprise/signature/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    :cond_42
    :try_start_42
    new-instance v5, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;

    const-string v6, "ZIP64 APK not supported"

    invoke-direct {v5, v6}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    .end local p0    # "channelFile":Ljava/io/File;
    throw v5
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4a

    .line 267
    .end local v1    # "eocdAndOffsetInFile":Lcom/miui/enterprise/signature/Pair;, "Lcom/miui/enterprise/signature/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .end local v2    # "eocd":Ljava/nio/ByteBuffer;
    .end local v3    # "eocdOffset":J
    .restart local v0    # "apk":Ljava/io/RandomAccessFile;
    .restart local p0    # "channelFile":Ljava/io/File;
    :catchall_4a
    move-exception v1

    :try_start_4b
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_53
    throw v1

    .line 265
    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    :cond_54
    :goto_54
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .registers 7
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .line 195
    if-ltz p1, :cond_31

    .line 198
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 199
    .local v0, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 200
    .local v1, "position":I
    add-int v2, v1, p1

    .line 201
    .local v2, "limit":I
    if-lt v2, v1, :cond_2b

    if-gt v2, v0, :cond_2b

    .line 204
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 206
    :try_start_13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 207
    .local v3, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 208
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_26

    .line 209
    nop

    .line 211
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 209
    return-object v3

    .line 211
    .end local v3    # "result":Ljava/nio/ByteBuffer;
    :catchall_26
    move-exception v3

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 212
    throw v3

    .line 202
    :cond_2b
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 196
    .end local v0    # "originalLimit":I
    .end local v1    # "position":I
    .end local v2    # "limit":I
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getByteBufferValueById(Ljava/io/File;I)Ljava/nio/ByteBuffer;
    .registers 4
    .param p0, "channelFile"    # Ljava/io/File;
    .param p1, "id"    # I

    .line 91
    const/4 v0, 0x0

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_22

    .line 95
    :cond_10
    invoke-static {p0}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->getAllIdValueMap(Ljava/io/File;)Ljava/util/Map;

    move-result-object v1

    .line 97
    .local v1, "idValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    if-eqz v1, :cond_21

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0

    .line 101
    :cond_21
    return-object v0

    .line 92
    .end local v1    # "idValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    :cond_22
    :goto_22
    return-object v0
.end method

.method public static whitelist getByteValueById(Ljava/io/File;I)[B
    .registers 7
    .param p0, "channelFile"    # Ljava/io/File;
    .param p1, "id"    # I

    .line 70
    const/4 v0, 0x0

    if-eqz p0, :cond_32

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_32

    .line 74
    :cond_10
    invoke-static {p0, p1}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->getByteBufferValueById(Ljava/io/File;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 77
    .local v1, "value":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_31

    .line 78
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    .line 80
    :cond_31
    return-object v0

    .line 71
    .end local v1    # "value":Ljava/nio/ByteBuffer;
    :cond_32
    :goto_32
    return-object v0
.end method

.method public static whitelist getCentralDirOffset(Ljava/nio/ByteBuffer;J)J
    .registers 9
    .param p0, "eocd"    # Ljava/nio/ByteBuffer;
    .param p1, "eocdOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 306
    invoke-static {p0}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 307
    .local v0, "centralDirOffset":J
    cmp-long v2, v0, p1

    if-gez v2, :cond_1b

    .line 312
    invoke-static {p0}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 313
    .local v2, "centralDirSize":J
    add-long v4, v0, v2

    cmp-long v4, v4, p1

    if-nez v4, :cond_13

    .line 318
    return-wide v0

    .line 314
    :cond_13
    new-instance v4, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;

    const-string v5, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {v4, v5}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 308
    .end local v2    # "centralDirSize":J
    :cond_1b
    new-instance v2, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZIP Central Directory offset out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". ZIP End of Central Directory offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist getEocd(Ljava/io/RandomAccessFile;)Lcom/miui/enterprise/signature/Pair;
    .registers 4
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Lcom/miui/enterprise/signature/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 294
    nop

    .line 295
    invoke-static {p0}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Lcom/miui/enterprise/signature/Pair;

    move-result-object v0

    .line 296
    .local v0, "eocdAndOffsetInFile":Lcom/miui/enterprise/signature/Pair;, "Lcom/miui/enterprise/signature/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    if-eqz v0, :cond_8

    .line 300
    return-object v0

    .line 297
    :cond_8
    new-instance v1, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;

    const-string v2, "Not an APK file: ZIP End of Central Directory record not found"

    invoke-direct {v1, v2}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist getUnsignedInt16(Ljava/nio/ByteBuffer;I)I
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 529
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static whitelist getUnsignedInt32(Ljava/nio/ByteBuffer;I)J
    .registers 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 572
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist getV2SignValueById(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "filePath"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_38

    .line 46
    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "channelFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_37

    .line 50
    :cond_1c
    const v2, 0x29fc459a

    invoke-static {v1, v2}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->getByteValueById(Ljava/io/File;I)[B

    move-result-object v2

    .line 52
    .local v2, "buffer":[B
    if-eqz v2, :cond_35

    :try_start_25
    array-length v3, v2

    if-lez v3, :cond_35

    .line 53
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25 .. :try_end_2f} :catch_30

    return-object v3

    .line 55
    :catch_30
    move-exception v3

    .line 56
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_36

    .line 57
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_35
    nop

    .line 59
    :goto_36
    return-object v0

    .line 48
    .end local v2    # "buffer":[B
    :cond_37
    :goto_37
    return-object v0

    .line 43
    .end local v1    # "channelFile":Ljava/io/File;
    :cond_38
    :goto_38
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "filepath is null"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    return-object v0
.end method

.method public static whitelist getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J
    .registers 3
    .param p0, "zipEndOfCentralDirectory"    # Ljava/nio/ByteBuffer;

    .line 538
    invoke-static {p0}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 539
    nop

    .line 541
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    .line 539
    invoke-static {p0, v0}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J
    .registers 3
    .param p0, "zipEndOfCentralDirectory"    # Ljava/nio/ByteBuffer;

    .line 550
    invoke-static {p0}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 551
    nop

    .line 553
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    .line 551
    invoke-static {p0, v0}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final whitelist isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z
    .registers 8
    .param p0, "zip"    # Ljava/io/RandomAccessFile;
    .param p1, "zipEndOfCentralDirectoryPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    const-wide/16 v0, 0x14

    sub-long v0, p1, v0

    .line 388
    .local v0, "locatorPosition":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_c

    .line 389
    return v3

    .line 392
    :cond_c
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 395
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const v4, 0x504b0607

    if-ne v2, v4, :cond_19

    const/4 v3, 0x1

    :cond_19
    return v3
.end method

.method public static whitelist sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .registers 9
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 229
    if-ltz p1, :cond_87

    .line 232
    if-lt p2, p1, :cond_64

    .line 235
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 236
    .local v0, "capacity":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt p2, v1, :cond_41

    .line 239
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 240
    .local v1, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 242
    .local v2, "originalPosition":I
    const/4 v3, 0x0

    :try_start_17
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 243
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 244
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 245
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 246
    .local v4, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_36

    .line 247
    nop

    .line 249
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 250
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 251
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 247
    return-object v4

    .line 249
    .end local v4    # "result":Ljava/nio/ByteBuffer;
    :catchall_36
    move-exception v4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 250
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 251
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 252
    throw v4

    .line 237
    .end local v1    # "originalLimit":I
    .end local v2    # "originalPosition":I
    :cond_41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end > capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    .end local v0    # "capacity":I
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end < start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist str2Zip(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "outPath"    # Ljava/lang/String;

    .line 563
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_21

    .line 564
    .local v0, "ftpOutStream":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 565
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    .line 566
    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_21

    .line 568
    .end local v0    # "ftpOutStream":Ljava/io/FileOutputStream;
    goto :goto_25

    .line 563
    .restart local v0    # "ftpOutStream":Ljava/io/FileOutputStream;
    :catchall_17
    move-exception v1

    :try_start_18
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v2

    :try_start_1d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "message":Ljava/lang/String;
    .end local p1    # "outPath":Ljava/lang/String;
    :goto_20
    throw v1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_21

    .line 566
    .end local v0    # "ftpOutStream":Ljava/io/FileOutputStream;
    .restart local p0    # "message":Ljava/lang/String;
    .restart local p1    # "outPath":Ljava/lang/String;
    :catch_21
    move-exception v0

    .line 567
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 569
    .end local v0    # "e":Ljava/io/IOException;
    :goto_25
    return-void
.end method
