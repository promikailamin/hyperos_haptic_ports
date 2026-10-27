.class public Landroid/graphics/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final blacklist CACHE_SIZE_MAX:I = 0x300000

.field private static final blacklist CACHE_SIZE_MIN:I = 0x100000

.field private static final greylist-max-o DECODE_BUFFER_SIZE:I = 0x4000

.field private static blacklist sBm:Landroid/graphics/Bitmap;

.field private static blacklist sId:I

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sTid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/BitmapFactory;->sLock:Ljava/lang/Object;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/BitmapFactory;->sBm:Landroid/graphics/Bitmap;

    .line 49
    const/4 v0, 0x0

    sput v0, Landroid/graphics/BitmapFactory;->sId:I

    .line 50
    sput v0, Landroid/graphics/BitmapFactory;->sTid:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist decodeByteArray([BII)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 724
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 15
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 690
    or-int v0, p1, p2

    if-ltz v0, :cond_42

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_42

    .line 693
    invoke-static {p3}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 697
    const-wide/16 v0, 0x2

    const-string v2, "decodeBitmap"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 699
    nop

    .line 700
    :try_start_14
    invoke-static {p3}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v7

    .line 701
    invoke-static {p3}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v9

    .line 699
    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v3 .. v10}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 703
    .local v2, "bm":Landroid/graphics/Bitmap;
    if-nez v2, :cond_35

    if-eqz p3, :cond_35

    iget-object v3, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2d

    goto :goto_35

    .line 704
    :cond_2d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "data":[B
    .end local p1    # "offset":I
    .end local p2    # "length":I
    .end local p3    # "opts":Landroid/graphics/BitmapFactory$Options;
    throw v3

    .line 706
    .restart local p0    # "data":[B
    .restart local p1    # "offset":I
    .restart local p2    # "length":I
    .restart local p3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_35
    :goto_35
    invoke-static {v2, p3}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_3d

    .line 708
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 709
    nop

    .line 711
    return-object v2

    .line 708
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :catchall_3d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 709
    throw v2

    .line 691
    :cond_42
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static whitelist decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "pathName"    # Ljava/lang/String;

    .line 552
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 521
    invoke-static {p1}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 525
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 526
    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_1a
    .catchall {:try_start_5 .. :try_end_10} :catchall_18

    move-object v0, v2

    .line 533
    nop

    .line 535
    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    .line 538
    :goto_15
    goto :goto_3a

    .line 536
    :catch_16
    move-exception v2

    goto :goto_15

    .line 533
    :catchall_18
    move-exception v2

    goto :goto_3b

    .line 527
    :catch_1a
    move-exception v2

    .line 531
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1b
    const-string v3, "BitmapFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to decode stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_18

    .line 533
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3a

    .line 535
    :try_start_36
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_16

    goto :goto_15

    .line 541
    :cond_3a
    :goto_3a
    return-object v0

    .line 533
    :goto_3b
    if-eqz v1, :cond_42

    .line 535
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    .line 538
    goto :goto_42

    .line 536
    :catch_41
    move-exception v3

    .line 540
    :cond_42
    :goto_42
    throw v2
.end method

.method public static whitelist decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 903
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 863
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 866
    const-wide/16 v0, 0x2

    const-string v2, "decodeFileDescriptor"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 868
    :try_start_a
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->nativeIsSeekable(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 869
    nop

    .line 870
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v6

    .line 871
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v8

    .line 869
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "bm":Landroid/graphics/Bitmap;
    goto :goto_31

    .line 873
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :cond_21
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_53

    .line 875
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_26
    invoke-static {v2, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_4a

    .line 878
    .local v3, "bm":Landroid/graphics/Bitmap;
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    .line 879
    goto :goto_30

    :catchall_2e
    move-exception v4

    .line 880
    nop

    .line 883
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :goto_30
    move-object v2, v3

    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .local v2, "bm":Landroid/graphics/Bitmap;
    :goto_31
    if-nez v2, :cond_42

    if-eqz p2, :cond_42

    :try_start_35
    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3a

    goto :goto_42

    .line 884
    :cond_3a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "outPadding":Landroid/graphics/Rect;
    .end local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    throw v3

    .line 887
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "outPadding":Landroid/graphics/Rect;
    .restart local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_42
    :goto_42
    invoke-static {v2, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_53

    .line 889
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 890
    nop

    .line 891
    return-object v2

    .line 877
    .local v2, "fis":Ljava/io/FileInputStream;
    :catchall_4a
    move-exception v3

    .line 878
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    .line 879
    :goto_4e
    goto :goto_51

    :catchall_4f
    move-exception v4

    goto :goto_4e

    .line 880
    :goto_51
    nop

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "outPadding":Landroid/graphics/Rect;
    .end local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :try_start_52
    throw v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 889
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "outPadding":Landroid/graphics/Rect;
    .restart local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catchall_53
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 890
    throw v2
.end method

.method public static whitelist decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 668
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 606
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 607
    const/4 v0, 0x0

    .line 608
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 611
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 612
    .local v2, "tmpbm":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/system/Os;->gettid()I

    move-result v3

    .line 614
    .local v3, "tid":I
    sget-object v4, Landroid/graphics/BitmapFactory;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 615
    if-nez p2, :cond_2c

    :try_start_f
    sget v5, Landroid/graphics/BitmapFactory;->sTid:I

    if-ne v5, v3, :cond_2c

    sget v5, Landroid/graphics/BitmapFactory;->sId:I

    if-eqz v5, :cond_2c

    if-ne p1, v5, :cond_2c

    sget-object v5, Landroid/graphics/BitmapFactory;->sBm:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2c

    .line 616
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2c

    .line 617
    sget-object v5, Landroid/graphics/BitmapFactory;->sBm:Landroid/graphics/Bitmap;

    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v2, v5

    .line 618
    monitor-exit v4

    return-object v2

    .line 620
    :cond_2c
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_8d

    .line 624
    :try_start_2d
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 625
    .local v5, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v5}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v6

    move-object v1, v6

    .line 627
    const/4 v6, 0x0

    invoke-static {p0, v5, v1, v6, p2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    .line 629
    if-nez p2, :cond_60

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v6

    const/high16 v7, 0x100000

    if-lt v6, v7, :cond_60

    .line 630
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v6

    const/high16 v7, 0x300000

    if-ge v6, v7, :cond_60

    .line 631
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v2, v6

    .line 632
    monitor-enter v4
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_55} :catch_74
    .catchall {:try_start_2d .. :try_end_55} :catchall_69

    .line 633
    :try_start_55
    sput-object v2, Landroid/graphics/BitmapFactory;->sBm:Landroid/graphics/Bitmap;

    .line 634
    sput v3, Landroid/graphics/BitmapFactory;->sTid:I

    .line 635
    sput p1, Landroid/graphics/BitmapFactory;->sId:I

    .line 636
    monitor-exit v4

    goto :goto_60

    :catchall_5d
    move-exception v6

    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_55 .. :try_end_5f} :catchall_5d

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "tmpbm":Landroid/graphics/Bitmap;
    .end local v3    # "tid":I
    .end local p0    # "res":Landroid/content/res/Resources;
    .end local p1    # "id":I
    .end local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :try_start_5f
    throw v6
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_60} :catch_74
    .catchall {:try_start_5f .. :try_end_60} :catchall_69

    .line 646
    .end local v5    # "value":Landroid/util/TypedValue;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "tmpbm":Landroid/graphics/Bitmap;
    .restart local v3    # "tid":I
    .restart local p0    # "res":Landroid/content/res/Resources;
    .restart local p1    # "id":I
    .restart local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_60
    :goto_60
    if-eqz v1, :cond_68

    :try_start_62
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_68

    .line 647
    :catch_66
    move-exception v4

    .line 650
    goto :goto_7b

    .line 649
    :cond_68
    :goto_68
    goto :goto_7b

    .line 645
    :catchall_69
    move-exception v4

    .line 646
    if-eqz v1, :cond_72

    :try_start_6c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_72

    .line 647
    :catch_70
    move-exception v5

    goto :goto_73

    .line 649
    :cond_72
    :goto_72
    nop

    .line 650
    :goto_73
    throw v4

    .line 639
    :catch_74
    move-exception v4

    .line 646
    if-eqz v1, :cond_68

    :try_start_77
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_66

    goto :goto_68

    .line 652
    :goto_7b
    if-nez v0, :cond_8c

    if-eqz p2, :cond_8c

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_84

    goto :goto_8c

    .line 653
    :cond_84
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Problem decoding into existing bitmap"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 656
    :cond_8c
    :goto_8c
    return-object v0

    .line 620
    :catchall_8d
    move-exception v5

    :try_start_8e
    monitor-exit v4
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v5
.end method

.method public static whitelist decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "pad"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 567
    invoke-static {p4}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 568
    if-nez p4, :cond_b

    .line 569
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object p4, v0

    .line 572
    :cond_b
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v0, :cond_21

    if-eqz p1, :cond_21

    .line 573
    iget v0, p1, Landroid/util/TypedValue;->density:I

    .line 574
    .local v0, "density":I
    if-nez v0, :cond_1a

    .line 575
    const/16 v1, 0xa0

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_21

    .line 576
    :cond_1a
    const v1, 0xffff

    if-eq v0, v1, :cond_21

    .line 577
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 581
    .end local v0    # "density":I
    :cond_21
    :goto_21
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v0, :cond_2f

    if-eqz p0, :cond_2f

    .line 582
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 585
    :cond_2f
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "is"    # Ljava/io/InputStream;

    .line 840
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 15
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 785
    if-nez p0, :cond_4

    .line 786
    const/4 v0, 0x0

    return-object v0

    .line 788
    :cond_4
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 790
    const/4 v0, 0x0

    .line 792
    .local v0, "bm":Landroid/graphics/Bitmap;
    const-wide/16 v1, 0x2

    const-string v3, "decodeBitmap"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 794
    :try_start_f
    instance-of v3, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v3, :cond_2a

    .line 795
    move-object v3, p0

    check-cast v3, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v3}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v4

    .line 796
    .local v4, "asset":J
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v8

    .line 797
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v10

    .line 796
    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v4 .. v11}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 798
    .end local v4    # "asset":J
    goto :goto_2f

    .line 799
    :cond_2a
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 802
    :goto_2f
    if-nez v0, :cond_40

    if-eqz p2, :cond_40

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_38

    goto :goto_40

    .line 803
    :cond_38
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local p0    # "is":Ljava/io/InputStream;
    .end local p1    # "outPadding":Landroid/graphics/Rect;
    .end local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    throw v3

    .line 806
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local p0    # "is":Ljava/io/InputStream;
    .restart local p1    # "outPadding":Landroid/graphics/Rect;
    .restart local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_40
    :goto_40
    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_48

    .line 808
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 809
    nop

    .line 811
    return-object v0

    .line 808
    :catchall_48
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 809
    throw v3
.end method

.method private static greylist-max-o decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 821
    const/4 v0, 0x0

    .line 822
    .local v0, "tempStorage":[B
    if-eqz p2, :cond_5

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 823
    :cond_5
    if-nez v0, :cond_b

    const/16 v1, 0x4000

    new-array v0, v1, [B

    .line 824
    :cond_b
    nop

    .line 825
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v5

    .line 826
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v7

    .line 824
    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v8}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static native greylist-max-r nativeDecodeAsset(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeIsSeekable(Ljava/io/FileDescriptor;)Z
.end method

.method private static greylist-max-o setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    .registers 7
    .param p0, "outputBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 731
    if-eqz p0, :cond_3f

    if-nez p1, :cond_5

    goto :goto_3f

    .line 733
    :cond_5
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 734
    .local v0, "density":I
    if-eqz v0, :cond_31

    .line 735
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 736
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 737
    .local v1, "targetDensity":I
    if-eqz v1, :cond_30

    if-eq v0, v1, :cond_30

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-ne v0, v2, :cond_17

    goto :goto_30

    .line 741
    :cond_17
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 742
    .local v2, "np":[B
    if-eqz v2, :cond_25

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    .line 743
    .local v3, "isNinePatch":Z
    :goto_26
    iget-boolean v4, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v4, :cond_2c

    if-eqz v3, :cond_3d

    .line 744
    :cond_2c
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_3d

    .line 738
    .end local v2    # "np":[B
    .end local v3    # "isNinePatch":Z
    :cond_30
    :goto_30
    return-void

    .line 746
    .end local v1    # "targetDensity":I
    :cond_31
    iget-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3d

    .line 748
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_3e

    .line 746
    :cond_3d
    :goto_3d
    nop

    .line 750
    :goto_3e
    return-void

    .line 731
    .end local v0    # "density":I
    :cond_3f
    :goto_3f
    return-void
.end method
