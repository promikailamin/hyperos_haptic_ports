.class public Lcom/android/server/backup/utils/TarBackupReader;
.super Ljava/lang/Object;
.source "TarBackupReader.java"


# static fields
.field private static final TAR_HEADER_LENGTH_FILESIZE:I = 0xc

.field private static final TAR_HEADER_LENGTH_MODE:I = 0x8

.field private static final TAR_HEADER_LENGTH_MODTIME:I = 0xc

.field private static final TAR_HEADER_LENGTH_PATH:I = 0x64

.field private static final TAR_HEADER_LENGTH_PATH_PREFIX:I = 0x9b

.field private static final TAR_HEADER_LONG_RADIX:I = 0x8

.field private static final TAR_HEADER_OFFSET_FILESIZE:I = 0x7c

.field private static final TAR_HEADER_OFFSET_MODE:I = 0x64

.field private static final TAR_HEADER_OFFSET_MODTIME:I = 0x88

.field private static final TAR_HEADER_OFFSET_PATH:I = 0x0

.field private static final TAR_HEADER_OFFSET_PATH_PREFIX:I = 0x159

.field private static final TAR_HEADER_OFFSET_TYPE_CHAR:I = 0x9c


# instance fields
.field private final mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

.field private final mInputStream:Ljava/io/InputStream;

.field private mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private mWidgetData:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V
    .registers 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bytesReadListener"    # Lcom/android/server/backup/utils/BytesReadListener;
    .param p3, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 95
    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    .line 96
    iput-object p2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    .line 97
    iput-object p3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 98
    return-void
.end method

.method private static extractLine([BI[Ljava/lang/String;)I
    .registers 8
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "outStr"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 690
    array-length v0, p0

    .line 691
    .local v0, "end":I
    if-ge p1, v0, :cond_1d

    .line 696
    move v1, p1

    .local v1, "pos":I
    :goto_4
    if-ge v1, v0, :cond_10

    .line 697
    aget-byte v2, p0, v1

    .line 700
    .local v2, "c":B
    const/16 v3, 0xa

    if-ne v2, v3, :cond_d

    .line 701
    goto :goto_10

    .line 696
    .end local v2    # "c":B
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 704
    :cond_10
    :goto_10
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, p1

    invoke-direct {v3, p0, p1, v4}, Ljava/lang/String;-><init>([BII)V

    aput-object v3, p2, v2

    .line 705
    add-int/lit8 v1, v1, 0x1

    .line 706
    return v1

    .line 692
    .end local v1    # "pos":I
    :cond_1d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Incomplete data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static extractRadix([BIII)J
    .registers 13
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "maxChars"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 785
    const-wide/16 v0, 0x0

    .line 786
    .local v0, "value":J
    add-int v2, p1, p2

    .line 787
    .local v2, "end":I
    move v3, p1

    .local v3, "i":I
    :goto_5
    if-ge v3, v2, :cond_48

    .line 788
    aget-byte v4, p0, v3

    .line 790
    .local v4, "b":B
    if-eqz v4, :cond_48

    const/16 v5, 0x20

    if-ne v4, v5, :cond_10

    .line 791
    goto :goto_48

    .line 793
    :cond_10
    const/16 v5, 0x30

    if-lt v4, v5, :cond_24

    add-int/lit8 v5, p3, 0x30

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_24

    .line 797
    int-to-long v5, p3

    mul-long/2addr v5, v0

    add-int/lit8 v7, v4, -0x30

    int-to-long v7, v7

    add-long v0, v5, v7

    .line 787
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 794
    .restart local v4    # "b":B
    :cond_24
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid number in header: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' for radix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 799
    .end local v3    # "i":I
    .end local v4    # "b":B
    :cond_48
    :goto_48
    return-wide v0
.end method

.method private static extractString([BII)Ljava/lang/String;
    .registers 8
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 803
    add-int v0, p1, p2

    .line 804
    .local v0, "end":I
    move v1, p1

    .line 806
    .local v1, "eos":I
    :goto_3
    if-ge v1, v0, :cond_c

    aget-byte v2, p0, v1

    if-eqz v2, :cond_c

    .line 807
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 809
    :cond_c
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p1

    const-string v4, "US-ASCII"

    invoke-direct {v2, p0, p1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method private static hexLog([B)V
    .registers 10
    .param p0, "block"    # [B

    .line 813
    const/4 v0, 0x0

    .line 814
    .local v0, "offset":I
    array-length v1, p0

    .line 815
    .local v1, "remaining":I
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 816
    .local v2, "buf":Ljava/lang/StringBuilder;
    :goto_9
    if-lez v1, :cond_4f

    .line 817
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%04x   "

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    const/16 v4, 0x10

    if-le v1, v4, :cond_23

    goto :goto_24

    :cond_23
    move v4, v1

    .line 819
    .local v4, "numThisLine":I
    :goto_24
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_25
    if-ge v5, v4, :cond_3f

    .line 820
    new-array v7, v3, [Ljava/lang/Object;

    add-int v8, v0, v5

    aget-byte v8, p0, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v8, "%02x "

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 822
    .end local v5    # "i":I
    :cond_3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "hexdump"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 824
    sub-int/2addr v1, v4

    .line 825
    add-int/2addr v0, v4

    .line 826
    .end local v4    # "numThisLine":I
    goto :goto_9

    .line 827
    :cond_4f
    return-void
.end method

.method private static readExactly(Ljava/io/InputStream;[BII)I
    .registers 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    if-lez p3, :cond_7f

    .line 248
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    const-string v1, "BackupManagerService"

    if-eqz v0, :cond_24

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ... readExactly("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") called"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_24
    const/4 v0, 0x0

    .line 252
    .local v0, "soFar":I
    :goto_25
    if-ge v0, p3, :cond_7e

    .line 253
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 254
    .local v2, "nRead":I
    if-gtz v2, :cond_56

    .line 255
    sget-boolean v3, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v3, :cond_7e

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- wanted exactly "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but got only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 260
    :cond_56
    add-int/2addr v0, v2

    .line 261
    sget-boolean v3, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v3, :cond_7d

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   + got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; now wanting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, p3, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v2    # "nRead":I
    :cond_7d
    goto :goto_25

    .line 265
    :cond_7e
    :goto_7e
    return v0

    .line 246
    .end local v0    # "soFar":I
    :cond_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z
    .registers 19
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 725
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v4, 0x8000

    cmp-long v2, v2, v4

    const-string v3, "BackupManagerService"

    if-gtz v2, :cond_c5

    .line 731
    iget-wide v4, v1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v6, 0x1ff

    add-long/2addr v4, v6

    const/16 v2, 0x9

    shr-long/2addr v4, v2

    long-to-int v2, v4

    .line 732
    .local v2, "numBlocks":I
    mul-int/lit16 v4, v2, 0x200

    new-array v4, v4, [B

    .line 733
    .local v4, "data":[B
    iget-object v5, v0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v5, v4, v6, v7}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v5

    array-length v6, v4

    if-lt v5, v6, :cond_bd

    .line 736
    iget-object v5, v0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    array-length v6, v4

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 738
    iget-wide v5, v1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v5, v5

    .line 739
    .local v5, "contentSize":I
    const/4 v6, 0x0

    .line 742
    .local v6, "offset":I
    :goto_32
    add-int/lit8 v7, v6, 0x1

    .line 743
    .local v7, "eol":I
    :goto_34
    if-ge v7, v5, :cond_3f

    aget-byte v8, v4, v7

    const/16 v9, 0x20

    if-eq v8, v9, :cond_3f

    .line 744
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 746
    :cond_3f
    if-ge v7, v5, :cond_b5

    .line 751
    sub-int v8, v7, v6

    const/16 v9, 0xa

    invoke-static {v4, v6, v8, v9}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v8

    long-to-int v8, v8

    .line 752
    .local v8, "linelen":I
    add-int/lit8 v9, v7, 0x1

    .line 753
    .local v9, "key":I
    add-int v10, v6, v8

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    .line 755
    .end local v7    # "eol":I
    .local v10, "eol":I
    add-int/lit8 v7, v9, 0x1

    .local v7, "value":I
    :goto_52
    aget-byte v12, v4, v7

    const/16 v13, 0x3d

    if-eq v12, v13, :cond_5d

    if-gt v7, v10, :cond_5d

    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    .line 758
    :cond_5d
    if-gt v7, v10, :cond_ad

    .line 763
    new-instance v12, Ljava/lang/String;

    sub-int v13, v7, v9

    const-string v14, "UTF-8"

    invoke-direct {v12, v4, v9, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 765
    .local v12, "keyStr":Ljava/lang/String;
    new-instance v13, Ljava/lang/String;

    add-int/lit8 v15, v7, 0x1

    sub-int v16, v10, v7

    add-int/lit8 v0, v16, -0x1

    invoke-direct {v13, v4, v15, v0, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v0, v13

    .line 767
    .local v0, "valStr":Ljava/lang/String;
    const-string/jumbo v13, "path"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_80

    .line 768
    iput-object v0, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    goto :goto_a6

    .line 769
    :cond_80
    const-string/jumbo v13, "size"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_90

    .line 770
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_a6

    .line 773
    :cond_90
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unhandled pax key: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :goto_a6
    add-int/2addr v6, v8

    .line 778
    .end local v0    # "valStr":Ljava/lang/String;
    .end local v7    # "value":I
    .end local v8    # "linelen":I
    .end local v9    # "key":I
    .end local v10    # "eol":I
    .end local v12    # "keyStr":Ljava/lang/String;
    if-lt v6, v5, :cond_aa

    .line 780
    return v11

    .line 778
    :cond_aa
    move-object/from16 v0, p0

    goto :goto_32

    .line 759
    .restart local v7    # "value":I
    .restart local v8    # "linelen":I
    .restart local v9    # "key":I
    .restart local v10    # "eol":I
    :cond_ad
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Invalid pax declaration"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    .end local v8    # "linelen":I
    .end local v9    # "key":I
    .end local v10    # "eol":I
    .local v7, "eol":I
    :cond_b5
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Invalid pax data"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    .end local v5    # "contentSize":I
    .end local v6    # "offset":I
    .end local v7    # "eol":I
    :cond_bd
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Unable to read full pax header"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    .end local v2    # "numBlocks":I
    .end local v4    # "data":[B
    :cond_c5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suspiciously large pax header size "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - aborting"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sanity failure: pax header size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readTarHeader([B)Z
    .registers 6
    .param p1, "block"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/16 v2, 0x200

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 711
    .local v0, "got":I
    if-nez v0, :cond_c

    .line 712
    return v1

    .line 714
    :cond_c
    if-lt v0, v2, :cond_17

    .line 717
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    const-wide/16 v2, 0x200

    invoke-interface {v1, v2, v3}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 718
    const/4 v1, 0x1

    return v1

    .line 715
    :cond_17
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read full block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/backup/restore/RestorePolicy;
    .registers 15
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "allowApks"    # Z
    .param p3, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p4, "signatures"    # [Landroid/content/pm/Signature;
    .param p5, "pmi"    # Landroid/content/pm/PackageManagerInternal;
    .param p6, "userId"    # I

    .line 393
    nop

    .line 394
    invoke-static {p1, p5, p6}, Lcom/android/server/backup/utils/BackupEligibilityRules;->forBackup(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v7

    .line 393
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;ILcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v0

    return-object v0
.end method

.method public chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;ILcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/restore/RestorePolicy;
    .registers 25
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "allowApks"    # Z
    .param p3, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p4, "signatures"    # [Landroid/content/pm/Signature;
    .param p5, "pmi"    # Landroid/content/pm/PackageManagerInternal;
    .param p6, "userId"    # I
    .param p7, "eligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 411
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    const-string v6, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    const-string v7, "Package "

    const-string v8, "BackupManagerService"

    if-nez v4, :cond_15

    .line 412
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    return-object v0

    .line 415
    :cond_15
    sget-object v9, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 418
    .local v9, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    const/4 v10, 0x3

    const/4 v11, 0x0

    :try_start_19
    iget-object v0, v3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_1b} :catch_18c

    const/high16 v12, 0x8000000

    move-object/from16 v13, p1

    :try_start_1f
    invoke-virtual {v13, v0, v12, v5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 421
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 424
    .local v12, "flags":I
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v14

    iget v15, v3, Lcom/android/server/backup/FileMetadata;->rawFd:I

    invoke-interface {v14, v0, v15}, Lcom/android/server/backup/BackupManagerServiceStub;->isForceAllowBackup(Landroid/content/pm/PackageInfo;I)Z

    move-result v14

    if-nez v14, :cond_66

    const v14, 0x8000

    and-int/2addr v14, v12

    if-eqz v14, :cond_3a

    goto :goto_66

    .line 514
    :cond_3a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Restore manifest from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " but allowBackup=false"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v14, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v15, 0x27

    invoke-static {v14, v15, v0, v10, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v10, p7

    goto/16 :goto_187

    .line 430
    :cond_66
    :goto_66
    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v14

    if-eqz v14, :cond_a2

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v14, :cond_77

    goto :goto_a2

    .line 503
    :cond_77
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is system level with no agent"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v14, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v15, 0x26

    const/4 v10, 0x2

    invoke-static {v14, v15, v0, v10, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_9e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_9e} :catch_18a

    move-object/from16 v10, p7

    goto/16 :goto_187

    .line 439
    :cond_a2
    :goto_a2
    move-object/from16 v10, p7

    :try_start_a4
    invoke-virtual {v10, v4, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v14

    if-eqz v14, :cond_161

    .line 440
    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v15, 0x20000

    and-int/2addr v14, v15

    if-eqz v14, :cond_c8

    .line 442
    const-string v14, "Package has restoreAnyVersion; taking data"

    invoke-static {v8, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v14, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v15, 0x22

    const/4 v4, 0x3

    invoke-static {v14, v15, v0, v4, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 449
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v9, v4

    goto/16 :goto_187

    .line 452
    :cond_c8
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v4

    iget v14, v3, Lcom/android/server/backup/FileMetadata;->rawFd:I

    invoke-interface {v4, v0, v14}, Lcom/android/server/backup/BackupManagerServiceStub;->isSysAppRunningFromMiui(Landroid/content/pm/PackageInfo;I)Z

    move-result v4

    if-nez v4, :cond_14a

    .line 453
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v14

    move/from16 v16, v12

    .end local v12    # "flags":I
    .local v16, "flags":I
    iget-wide v11, v3, Lcom/android/server/backup/FileMetadata;->version:J

    cmp-long v11, v14, v11

    if-ltz v11, :cond_e1

    goto :goto_14c

    .line 467
    :cond_e1
    if-eqz v2, :cond_114

    .line 468
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Data version "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v14, v3, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is newer than installed version "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 471
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - requiring apk"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 468
    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    sget-object v7, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v9, v7

    goto/16 :goto_187

    .line 475
    :cond_114
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Data requires newer version "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v14, v3, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; ignoring"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v11, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v12, 0x24

    const-string v14, "android.app.backup.extra.LOG_OLD_VERSION"

    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->version:J

    .line 483
    const/4 v15, 0x0

    invoke-static {v15, v14, v4, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v5

    .line 478
    const/4 v14, 0x3

    invoke-static {v11, v12, v0, v14, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 488
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v9, v5

    goto :goto_187

    .line 452
    .end local v16    # "flags":I
    .restart local v12    # "flags":I
    :cond_14a
    move/from16 v16, v12

    .line 455
    .end local v12    # "flags":I
    .restart local v16    # "flags":I
    :goto_14c
    const-string v5, "Sig + version match; taking data"

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v9, v5

    .line 457
    iget-object v5, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v11, 0x23

    const/4 v4, 0x3

    const/4 v12, 0x0

    invoke-static {v5, v11, v0, v4, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto :goto_187

    .line 492
    .end local v16    # "flags":I
    .restart local v12    # "flags":I
    :cond_161
    move/from16 v16, v12

    .end local v12    # "flags":I
    .restart local v16    # "flags":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Restore manifest signatures do not match installed application for "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v5, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v11, 0x25

    const/4 v4, 0x3

    const/4 v12, 0x0

    invoke-static {v5, v11, v0, v4, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_187
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a4 .. :try_end_187} :catch_188

    .line 549
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "flags":I
    :goto_187
    goto :goto_1ce

    .line 524
    :catch_188
    move-exception v0

    goto :goto_191

    :catch_18a
    move-exception v0

    goto :goto_18f

    :catch_18c
    move-exception v0

    move-object/from16 v13, p1

    :goto_18f
    move-object/from16 v10, p7

    .line 528
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_191
    if-eqz v2, :cond_1b3

    .line 530
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " not installed; requiring apk in dataset"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v9, v5

    .end local v9    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .local v5, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    goto :goto_1b6

    .line 535
    .end local v5    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_1b3
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v9, v5

    .line 537
    :goto_1b6
    iget-object v5, v3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v4, v6, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 540
    .local v5, "monitoringExtras":Landroid/os/Bundle;
    const-string v7, "android.app.backup.extra.LOG_POLICY_ALLOW_APKS"

    invoke-static {v5, v7, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v5

    .line 543
    iget-object v7, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v11, 0x28

    const/4 v12, 0x3

    invoke-static {v7, v11, v4, v12, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 551
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "monitoringExtras":Landroid/os/Bundle;
    :goto_1ce
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    if-ne v9, v0, :cond_206

    iget-boolean v0, v3, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    if-nez v0, :cond_206

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot restore package "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " without the matching .apk"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v5, 0x29

    iget-object v7, v3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 559
    const/4 v4, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 554
    const/4 v7, 0x3

    invoke-static {v0, v5, v4, v7, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 564
    :cond_206
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v0

    iget v4, v3, Lcom/android/server/backup/FileMetadata;->rawFd:I

    move/from16 v5, p6

    invoke-interface {v0, v4, v5}, Lcom/android/server/backup/BackupManagerServiceStub;->getAppUserId(II)I

    move-result v0

    .line 565
    .local v0, "userIdX":I
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/android/server/backup/BackupManagerServiceStub;->isXSpaceUser(I)Z

    move-result v4

    if-eqz v4, :cond_245

    .line 566
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    if-ne v9, v4, :cond_223

    .line 567
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v9, v4

    .line 569
    :cond_223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USER_XSPACE APP chooseRestorePolicy, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " userIdX:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_245
    return-object v9
.end method

.method public getMonitor()Landroid/app/backup/IBackupManagerMonitor;
    .registers 2

    .line 830
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object v0
.end method

.method public getWidgetData()[B
    .registers 2

    .line 834
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    return-object v0
.end method

.method public readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;
    .registers 18
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-wide v4, v2, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v6, 0x10000

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1ad

    .line 283
    iget-wide v4, v2, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v0, v4

    new-array v4, v0, [B

    .line 284
    .local v4, "buffer":[B
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    const-string v5, "BackupManagerService"

    if-eqz v0, :cond_38

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   readAppManifestAndReturnSignatures() looking for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, v2, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " bytes"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_38
    iget-object v0, v1, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    iget-wide v6, v2, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v0, v4, v7, v6}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    int-to-long v8, v0

    iget-wide v10, v2, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_1a5

    .line 289
    iget-object v0, v1, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    iget-wide v8, v2, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-interface {v0, v8, v9}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 294
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .line 295
    .local v6, "str":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 298
    .local v8, "offset":I
    const/4 v10, 0x0

    :try_start_55
    invoke-static {v4, v8, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    move v8, v11

    .line 299
    aget-object v11, v6, v7

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 300
    .local v11, "version":I
    if-ne v11, v0, :cond_134

    .line 301
    invoke-static {v4, v8, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v0

    move v8, v0

    .line 302
    aget-object v0, v6, v7

    .line 304
    .local v0, "manifestPackage":Ljava/lang/String;
    iget-object v12, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f9

    .line 305
    invoke-static {v4, v8, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v12

    move v8, v12

    .line 306
    aget-object v12, v6, v7

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    iput-wide v12, v2, Lcom/android/server/backup/FileMetadata;->version:J

    .line 307
    invoke-static {v4, v8, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v12

    move v8, v12

    .line 310
    aget-object v12, v6, v7

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 311
    invoke-static {v4, v8, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v12

    move v8, v12

    .line 312
    aget-object v12, v6, v7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_99

    aget-object v12, v6, v7

    goto :goto_9a

    :cond_99
    move-object v12, v10

    :goto_9a
    iput-object v12, v2, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    .line 313
    invoke-static {v4, v8, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v12

    move v8, v12

    .line 314
    aget-object v12, v6, v7

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, v2, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    .line 315
    invoke-static {v4, v8, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v12

    move v8, v12

    .line 316
    aget-object v12, v6, v7

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 317
    .local v12, "numSigs":I
    if-lez v12, :cond_cf

    .line 318
    new-array v13, v12, [Landroid/content/pm/Signature;

    .line 319
    .local v13, "sigs":[Landroid/content/pm/Signature;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_bb
    if-ge v14, v12, :cond_ce

    .line 320
    invoke-static {v4, v8, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v15

    move v8, v15

    .line 321
    new-instance v15, Landroid/content/pm/Signature;

    aget-object v9, v6, v7

    invoke-direct {v15, v9}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v15, v13, v14

    .line 319
    add-int/lit8 v14, v14, 0x1

    goto :goto_bb

    .line 323
    .end local v14    # "i":I
    :cond_ce
    return-object v13

    .line 325
    .end local v13    # "sigs":[Landroid/content/pm/Signature;
    :cond_cf
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing signature on backed-up package "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v7, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v9, 0x2a

    iget-object v13, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 331
    invoke-static {v10, v3, v13}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 326
    const/4 v14, 0x3

    invoke-static {v7, v9, v10, v14, v13}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 334
    .end local v12    # "numSigs":I
    goto :goto_133

    .line 335
    :cond_f9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected package "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " but restore manifest claims "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v7, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v10, v3, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 339
    .local v7, "monitoringExtras":Landroid/os/Bundle;
    const-string v9, "android.app.backup.extra.LOG_MANIFEST_PACKAGE_NAME"

    invoke-static {v7, v9, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    move-object v7, v9

    .line 342
    iget-object v9, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v12, 0x2b

    const/4 v13, 0x3

    invoke-static {v9, v12, v10, v13, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 349
    .end local v0    # "manifestPackage":Ljava/lang/String;
    .end local v7    # "monitoringExtras":Landroid/os/Bundle;
    :goto_133
    goto :goto_1a3

    .line 350
    :cond_134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown restore manifest version "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " for package "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v10, v3, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 354
    .local v0, "monitoringExtras":Landroid/os/Bundle;
    const-string v7, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    int-to-long v12, v11

    invoke-static {v0, v7, v12, v13}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v7

    move-object v0, v7

    .line 356
    iget-object v7, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v9, 0x2c

    const/4 v12, 0x3

    invoke-static {v7, v9, v10, v12, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_16f
    .catch Ljava/lang/NumberFormatException; {:try_start_55 .. :try_end_16f} :catch_179
    .catch Ljava/lang/IllegalArgumentException; {:try_start_55 .. :try_end_16f} :catch_170

    goto :goto_1a3

    .line 373
    .end local v0    # "monitoringExtras":Landroid/os/Bundle;
    .end local v11    # "version":I
    :catch_170
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a4

    .line 364
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_179
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Corrupt restore manifest for package "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v5, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v7, 0x2e

    iget-object v9, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 371
    invoke-static {v10, v3, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 366
    const/4 v9, 0x3

    invoke-static {v5, v7, v10, v9, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 375
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_1a3
    nop

    .line 377
    :goto_1a4
    return-object v10

    .line 291
    .end local v6    # "str":[Ljava/lang/String;
    .end local v8    # "offset":I
    :cond_1a5
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Unexpected EOF in manifest"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    .end local v4    # "buffer":[B
    :cond_1ad
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restore manifest too big; corrupt? size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readMetadata(Lcom/android/server/backup/FileMetadata;)V
    .registers 15
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_152

    .line 602
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 603
    .local v0, "buffer":[B
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v1

    int-to-long v1, v1

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_14a

    .line 604
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-interface {v1, v4, v5}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 609
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 610
    .local v2, "str":[Ljava/lang/String;
    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v4

    .line 611
    .local v4, "offset":I
    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 612
    .local v5, "version":I
    const/4 v6, 0x3

    const-string v7, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    const/4 v8, 0x0

    const-string v9, "BackupManagerService"

    if-ne v5, v1, :cond_11c

    .line 613
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v4

    .line 614
    aget-object v1, v2, v3

    .line 615
    .local v1, "pkg":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 618
    new-instance v3, Ljava/io/ByteArrayInputStream;

    array-length v6, v0

    sub-int/2addr v6, v4

    invoke-direct {v3, v0, v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 620
    .local v3, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 621
    .local v6, "in":Ljava/io/DataInputStream;
    :goto_55
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    if-lez v7, :cond_e2

    .line 622
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 623
    .local v7, "token":I
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 624
    .local v8, "size":I
    const/high16 v10, 0x10000

    if-gt v8, v10, :cond_b9

    .line 628
    packed-switch v7, :pswitch_data_16e

    .line 639
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring metadata blob "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {v6, v8}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_b8

    .line 630
    :pswitch_94
    sget-boolean v10, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v10, :cond_b0

    .line 631
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got widget metadata for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_b0
    new-array v10, v8, [B

    iput-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 634
    invoke-virtual {v6, v10}, Ljava/io/DataInputStream;->read([B)I

    .line 635
    nop

    .line 646
    .end local v7    # "token":I
    .end local v8    # "size":I
    :goto_b8
    goto :goto_55

    .line 625
    .restart local v7    # "token":I
    .restart local v8    # "size":I
    :cond_b9
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Datum "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " too big; corrupt? size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 647
    .end local v3    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .end local v7    # "token":I
    .end local v8    # "size":I
    :cond_e2
    goto :goto_11b

    .line 648
    :cond_e3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Metadata mismatch: package "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " but widget data for "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v8, v7, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 654
    .local v3, "monitoringExtras":Landroid/os/Bundle;
    const-string v7, "android.app.backup.extra.LOG_WIDGET_PACKAGE_NAME"

    invoke-static {v3, v7, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 656
    iget-object v7, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v9, 0x2f

    invoke-static {v7, v9, v8, v6, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 663
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "monitoringExtras":Landroid/os/Bundle;
    :goto_11b
    goto :goto_149

    .line 664
    :cond_11c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported metadata version "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v1, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 667
    invoke-static {v8, v7, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 669
    .local v1, "monitoringExtras":Landroid/os/Bundle;
    int-to-long v9, v5

    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    invoke-static {v1, v3, v9, v10}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v1

    .line 671
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v7, 0x30

    invoke-static {v3, v7, v8, v6, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 678
    .end local v1    # "monitoringExtras":Landroid/os/Bundle;
    :goto_149
    return-void

    .line 606
    .end local v2    # "str":[Ljava/lang/String;
    .end local v4    # "offset":I
    .end local v5    # "version":I
    :cond_14a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF in widget data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 599
    .end local v0    # "buffer":[B
    :cond_152
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata too big; corrupt? size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_16e
    .packed-switch 0x1ffed01
        :pswitch_94
    .end packed-switch
.end method

.method public readTarHeaders()Lcom/android/server/backup/FileMetadata;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    const-string v0, "apps/"

    const-string/jumbo v1, "shared/"

    const-string v2, "BackupManagerService"

    const/16 v3, 0x200

    new-array v3, v3, [B

    .line 105
    .local v3, "block":[B
    const/4 v4, 0x0

    .line 107
    .local v4, "info":Lcom/android/server/backup/FileMetadata;
    invoke-direct {p0, v3}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v5

    .line 108
    .local v5, "gotHeader":Z
    if-eqz v5, :cond_1fd

    .line 111
    :try_start_12
    new-instance v6, Lcom/android/server/backup/FileMetadata;

    invoke-direct {v6}, Lcom/android/server/backup/FileMetadata;-><init>()V

    move-object v4, v6

    .line 112
    const/16 v6, 0x7c

    const/16 v7, 0xc

    const/16 v8, 0x8

    invoke-static {v3, v6, v7, v8}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v9

    iput-wide v9, v4, Lcom/android/server/backup/FileMetadata;->size:J

    .line 116
    const/16 v6, 0x88

    invoke-static {v3, v6, v7, v8}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/backup/FileMetadata;->mtime:J

    .line 120
    const/16 v6, 0x64

    invoke-static {v3, v6, v8, v8}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/backup/FileMetadata;->mode:J

    .line 125
    const/16 v7, 0x159

    const/16 v8, 0x9b

    invoke-static {v3, v7, v8}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 128
    const/4 v7, 0x0

    invoke-static {v3, v7, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x2f

    if-lez v8, :cond_7d

    .line 132
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_68

    .line 133
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 135
    :cond_68
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 139
    :cond_7d
    const/16 v8, 0x9c

    aget-byte v10, v3, v8

    .line 140
    .local v10, "typeChar":I
    const/16 v11, 0x78

    if-ne v10, v11, :cond_9f

    .line 142
    invoke-direct {p0, v4}, Lcom/android/server/backup/utils/TarBackupReader;->readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z

    move-result v11

    move v5, v11

    .line 143
    if-eqz v5, :cond_91

    .line 146
    invoke-direct {p0, v3}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v11

    move v5, v11

    .line 148
    :cond_91
    if-eqz v5, :cond_97

    .line 152
    aget-byte v8, v3, v8

    move v10, v8

    goto :goto_9f

    .line 149
    :cond_97
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad or missing pax header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "block":[B
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5    # "gotHeader":Z
    .end local p0    # "this":Lcom/android/server/backup/utils/TarBackupReader;
    throw v0

    .line 155
    .restart local v3    # "block":[B
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v5    # "gotHeader":Z
    .restart local p0    # "this":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_9f
    :goto_9f
    sparse-switch v10, :sswitch_data_1fe

    .line 175
    goto/16 :goto_1ab

    .line 160
    :sswitch_a4
    const/4 v8, 0x2

    iput v8, v4, Lcom/android/server/backup/FileMetadata;->type:I

    .line 161
    iget-wide v11, v4, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-eqz v8, :cond_bb

    .line 162
    const-string v8, "Directory entry with nonzero size in header"

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iput-wide v13, v4, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_bb

    .line 157
    :sswitch_b7
    const/4 v8, 0x1

    iput v8, v4, Lcom/android/server/backup/FileMetadata;->type:I

    .line 158
    nop

    .line 183
    :cond_bb
    :goto_bb
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 184
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    .line 183
    invoke-virtual {v1, v7, v8, v7, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_f6

    .line 186
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 187
    const-string v0, "com.android.sharedstoragebackup"

    iput-object v0, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 188
    const-string/jumbo v0, "shared"

    iput-object v0, v4, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File in shared storage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18e

    .line 192
    :cond_f6
    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    .line 192
    invoke-virtual {v0, v7, v1, v7, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 197
    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 200
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 201
    .local v0, "slash":I
    if-ltz v0, :cond_173

    .line 204
    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 205
    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 209
    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v8, "_manifest"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18e

    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v8, "_meta"

    .line 210
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18e

    .line 211
    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    move v0, v1

    .line 212
    if-ltz v0, :cond_158

    .line 216
    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 217
    iget-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    goto :goto_18e

    .line 213
    :cond_158
    new-instance v1, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal semantic path in non-manifest "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "block":[B
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5    # "gotHeader":Z
    .end local p0    # "this":Lcom/android/server/backup/utils/TarBackupReader;
    throw v1

    .line 202
    .restart local v3    # "block":[B
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v5    # "gotHeader":Z
    .restart local p0    # "this":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_173
    new-instance v1, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal semantic path in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "block":[B
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5    # "gotHeader":Z
    .end local p0    # "this":Lcom/android/server/backup/utils/TarBackupReader;
    throw v1

    .line 228
    .end local v0    # "slash":I
    .end local v6    # "path":Ljava/lang/String;
    .end local v10    # "typeChar":I
    .restart local v3    # "block":[B
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v5    # "gotHeader":Z
    .restart local p0    # "this":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_18e
    :goto_18e
    goto :goto_1fd

    .line 169
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v10    # "typeChar":I
    :sswitch_18f
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_1a9

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saw type=0 in tar header block, info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1a9
    const/4 v0, 0x0

    return-object v0

    .line 175
    :goto_1ab
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tar entity type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown entity type "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "block":[B
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5    # "gotHeader":Z
    .end local p0    # "this":Lcom/android/server/backup/utils/TarBackupReader;
    throw v0
    :try_end_1da
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1da} :catch_1da

    .line 220
    .end local v6    # "path":Ljava/lang/String;
    .end local v10    # "typeChar":I
    .restart local v3    # "block":[B
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v5    # "gotHeader":Z
    .restart local p0    # "this":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_1da
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse error in header: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-boolean v1, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v1, :cond_1fc

    .line 224
    invoke-static {v3}, Lcom/android/server/backup/utils/TarBackupReader;->hexLog([B)V

    .line 227
    :cond_1fc
    throw v0

    .line 230
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1fd
    :goto_1fd
    return-object v4

    :sswitch_data_1fe
    .sparse-switch
        0x0 -> :sswitch_18f
        0x30 -> :sswitch_b7
        0x35 -> :sswitch_a4
    .end sparse-switch
.end method

.method public skipTarPadding(J)V
    .registers 10
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    const-wide/16 v0, 0x200

    add-long v2, p1, v0

    rem-long/2addr v2, v0

    .line 579
    .local v2, "partial":J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_4a

    .line 580
    long-to-int v0, v2

    rsub-int v0, v0, 0x200

    .line 581
    .local v0, "needed":I
    sget-boolean v1, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v1, :cond_30

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping tar padding: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "BackupManagerService"

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_30
    new-array v1, v0, [B

    .line 585
    .local v1, "buffer":[B
    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v0, :cond_42

    .line 586
    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    int-to-long v5, v0

    invoke-interface {v4, v5, v6}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_4a

    .line 588
    :cond_42
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF in padding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 591
    .end local v0    # "needed":I
    .end local v1    # "buffer":[B
    :cond_4a
    :goto_4a
    return-void
.end method
