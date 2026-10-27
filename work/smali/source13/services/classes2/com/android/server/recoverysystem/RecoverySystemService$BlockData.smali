.class Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;
.super Ljava/lang/Object;
.source "RecoverySystemService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/recoverysystem/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BlockData"
.end annotation


# static fields
.field private static final BLOCK_BUFFER_SIZE:I = 0x40000

.field private static destPath:Ljava/lang/String;

.field private static startPoint:J


# instance fields
.field private blockStartPoint:Ljava/lang/Long;

.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 481
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->startPoint:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "blockSize"    # Ljava/lang/Long;

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->path:Ljava/lang/String;

    .line 486
    iput-object p2, p0, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->blockStartPoint:Ljava/lang/Long;

    .line 487
    return-void
.end method

.method public static getStartPoint()J
    .registers 2

    .line 507
    sget-wide v0, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->startPoint:J

    return-wide v0
.end method

.method private static int2bytes(I)[B
    .registers 5
    .param p0, "num"    # I

    .line 491
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 492
    .local v1, "b":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_12

    .line 493
    mul-int/lit8 v3, v2, 0x8

    rsub-int/lit8 v3, v3, 0x18

    ushr-int v3, p0, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 495
    .end local v2    # "i":I
    :cond_12
    return-object v1
.end method

.method public static setDestPath(Ljava/lang/String;)V
    .registers 1
    .param p0, "destPath"    # Ljava/lang/String;

    .line 515
    sput-object p0, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->destPath:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public static setStartPoint(J)V
    .registers 2
    .param p0, "startPoint"    # J

    .line 511
    sput-wide p0, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->startPoint:J

    .line 512
    return-void
.end method


# virtual methods
.method public getBlockStartPoint()Ljava/lang/Long;
    .registers 2

    .line 503
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->blockStartPoint:Ljava/lang/Long;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 499
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->path:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 11

    .line 520
    const-string v0, "RecoverySystemService"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 521
    .local v1, "startTime":J
    const/high16 v3, 0x40000

    new-array v4, v3, [B

    .line 522
    .local v4, "blockBuffer":[B
    :try_start_a
    new-instance v5, Ljava/io/RandomAccessFile;

    sget-object v6, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->destPath:Ljava/lang/String;

    const-string/jumbo v7, "rw"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_82

    .line 523
    .local v5, "fileOutputStream":Ljava/io/RandomAccessFile;
    :try_start_14
    iget-object v6, p0, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->blockStartPoint:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 524
    iget-object v6, p0, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->path:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->int2bytes(I)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/RandomAccessFile;->write([B)V

    .line 525
    iget-object v6, p0, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->path:Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/RandomAccessFile;->write([B)V

    .line 526
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_14 .. :try_end_3c} :catchall_78

    .line 527
    .local v6, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_3c
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v6, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_6e

    move-object v3, v7

    .line 528
    .local v3, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_42
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->int2bytes(I)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/RandomAccessFile;->write([B)V

    .line 530
    :goto_4d
    invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "len":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_5a

    .line 531
    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v8}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_59
    .catchall {:try_start_42 .. :try_end_59} :catchall_64

    goto :goto_4d

    .line 533
    .end local v8    # "len":I
    :cond_5a
    :try_start_5a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_6e

    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_5d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_78

    .line 534
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :try_start_60
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_82

    .line 536
    .end local v5    # "fileOutputStream":Ljava/io/RandomAccessFile;
    goto :goto_88

    .line 526
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/RandomAccessFile;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_64
    move-exception v7

    :try_start_65
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6d

    :catchall_69
    move-exception v8

    :try_start_6a
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "startTime":J
    .end local v4    # "blockBuffer":[B
    .end local v5    # "fileOutputStream":Ljava/io/RandomAccessFile;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;
    :goto_6d
    throw v7
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_6e

    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "startTime":J
    .restart local v4    # "blockBuffer":[B
    .restart local v5    # "fileOutputStream":Ljava/io/RandomAccessFile;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;
    :catchall_6e
    move-exception v3

    :try_start_6f
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_77

    :catchall_73
    move-exception v7

    :try_start_74
    invoke-virtual {v3, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "startTime":J
    .end local v4    # "blockBuffer":[B
    .end local v5    # "fileOutputStream":Ljava/io/RandomAccessFile;
    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;
    :goto_77
    throw v3
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_78

    .line 522
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "startTime":J
    .restart local v4    # "blockBuffer":[B
    .restart local v5    # "fileOutputStream":Ljava/io/RandomAccessFile;
    .restart local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;
    :catchall_78
    move-exception v3

    :try_start_79
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7d

    goto :goto_81

    :catchall_7d
    move-exception v6

    :try_start_7e
    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "startTime":J
    .end local v4    # "blockBuffer":[B
    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;
    :goto_81
    throw v3
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_82} :catch_82

    .line 534
    .end local v5    # "fileOutputStream":Ljava/io/RandomAccessFile;
    .restart local v1    # "startTime":J
    .restart local v4    # "blockBuffer":[B
    .restart local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;
    :catch_82
    move-exception v3

    .line 535
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "An exception occurred while splicing files: "

    invoke-static {v0, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    .end local v3    # "e":Ljava/io/IOException;
    :goto_88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "process: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->path:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "    ||| taking Time: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void
.end method
