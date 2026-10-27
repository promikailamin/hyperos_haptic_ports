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
.field private static final greylist-max-o DECODE_BUFFER_SIZE:I = 0x4000


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist decodeByteArray([BII)Landroid/graphics/Bitmap;
    .registers 4

    .line 707
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 15

    .line 673
    or-int v0, p1, p2

    if-ltz v0, :cond_43

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_43

    .line 676
    invoke-static {p3}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 680
    const-string v0, "decodeBitmap"

    const-wide/16 v1, 0x2

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 682
    nop

    .line 683
    :try_start_14
    invoke-static {p3}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v7

    .line 684
    invoke-static {p3}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v9

    .line 682
    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v3 .. v10}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 686
    if-nez p0, :cond_35

    if-eqz v6, :cond_35

    iget-object p1, v6, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2d

    goto :goto_35

    .line 687
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Problem decoding into existing bitmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 689
    :cond_35
    :goto_35
    invoke-static {p0, v6}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_3d

    .line 691
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 692
    nop

    .line 694
    return-object p0

    .line 691
    :catchall_3d
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 692
    throw p0

    .line 674
    :cond_43
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static whitelist decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .line 559
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6

    .line 528
    invoke-static {p1}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 529
    nop

    .line 530
    nop

    .line 532
    const/4 v0, 0x0

    :try_start_6
    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {p0, v1}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_1c
    .catchall {:try_start_6 .. :try_end_c} :catchall_1a

    .line 533
    :try_start_c
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_18
    .catchall {:try_start_c .. :try_end_10} :catchall_3a

    .line 540
    if-eqz p0, :cond_39

    .line 542
    :goto_12
    :try_start_12
    invoke-static {p0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    .line 545
    :goto_15
    goto :goto_39

    .line 543
    :catch_16
    move-exception p0

    goto :goto_15

    .line 534
    :catch_18
    move-exception p1

    goto :goto_1e

    .line 540
    :catchall_1a
    move-exception p1

    goto :goto_3c

    .line 534
    :catch_1c
    move-exception p1

    move-object p0, v0

    .line 538
    :goto_1e
    :try_start_1e
    const-string v1, "BitmapFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to decode file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_1e .. :try_end_36} :catchall_3a

    .line 540
    if-eqz p0, :cond_39

    .line 542
    goto :goto_12

    .line 548
    :cond_39
    :goto_39
    return-object v0

    .line 540
    :catchall_3a
    move-exception p1

    move-object v0, p0

    :goto_3c
    if-eqz v0, :cond_43

    .line 542
    :try_start_3e
    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    .line 545
    goto :goto_43

    .line 543
    :catch_42
    move-exception p0

    .line 547
    :cond_43
    :goto_43
    throw p1
.end method

.method public static whitelist decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 2

    .line 886
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 13

    .line 846
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 849
    const-string v0, "decodeFileDescriptor"

    const-wide/16 v1, 0x2

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 851
    :try_start_a
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->nativeIsSeekable(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 852
    nop

    .line 853
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v6

    .line 854
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v8

    .line 852
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_34

    .line 856
    :cond_21
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_56

    .line 858
    :try_start_29
    invoke-static {p0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_4d

    .line 861
    :try_start_2d
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    .line 862
    goto :goto_33

    :catchall_31
    move-exception v0

    .line 863
    nop

    .line 866
    :goto_33
    move-object p0, p1

    :goto_34
    if-nez p0, :cond_45

    if-eqz v5, :cond_45

    :try_start_38
    iget-object p1, v5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_3d

    goto :goto_45

    .line 867
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Problem decoding into existing bitmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 870
    :cond_45
    :goto_45
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_56

    .line 872
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 873
    nop

    .line 874
    return-object p0

    .line 860
    :catchall_4d
    move-exception v0

    move-object p1, v0

    .line 861
    :try_start_4f
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    .line 862
    :goto_52
    goto :goto_55

    :catchall_53
    move-exception v0

    goto :goto_52

    .line 863
    :goto_55
    :try_start_55
    throw p1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    .line 872
    :catchall_56
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 873
    throw p0
.end method

.method public static whitelist decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 3

    .line 651
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5

    .line 613
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 614
    nop

    .line 615
    nop

    .line 618
    const/4 v0, 0x0

    :try_start_6
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 619
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_2c
    .catchall {:try_start_6 .. :try_end_f} :catchall_21

    .line 621
    :try_start_f
    invoke-static {p0, v1, p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_1f
    .catchall {:try_start_f .. :try_end_13} :catchall_1c

    .line 629
    if-eqz p1, :cond_1b

    :try_start_15
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_1b

    .line 630
    :catch_19
    move-exception p0

    .line 633
    goto :goto_34

    .line 632
    :cond_1b
    :goto_1b
    goto :goto_34

    .line 628
    :catchall_1c
    move-exception p0

    move-object v0, p1

    goto :goto_22

    .line 622
    :catch_1f
    move-exception p0

    goto :goto_2e

    .line 628
    :catchall_21
    move-exception p0

    .line 629
    :goto_22
    if-eqz v0, :cond_2a

    :try_start_24
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_2a

    .line 630
    :catch_28
    move-exception p1

    goto :goto_2b

    .line 632
    :cond_2a
    :goto_2a
    nop

    .line 633
    :goto_2b
    throw p0

    .line 622
    :catch_2c
    move-exception p0

    move-object p1, v0

    .line 629
    :goto_2e
    if-eqz p1, :cond_1b

    :try_start_30
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_19

    goto :goto_1b

    .line 635
    :goto_34
    if-nez v0, :cond_45

    if-eqz p2, :cond_45

    iget-object p0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez p0, :cond_3d

    goto :goto_45

    .line 636
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Problem decoding into existing bitmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 639
    :cond_45
    :goto_45
    return-object v0
.end method

.method public static whitelist decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6

    .line 574
    invoke-static {p4}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 575
    if-nez p4, :cond_a

    .line 576
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 579
    :cond_a
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v0, :cond_20

    if-eqz p1, :cond_20

    .line 580
    iget p1, p1, Landroid/util/TypedValue;->density:I

    .line 581
    if-nez p1, :cond_19

    .line 582
    const/16 p1, 0xa0

    iput p1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_20

    .line 583
    :cond_19
    const v0, 0xffff

    if-eq p1, v0, :cond_20

    .line 584
    iput p1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 588
    :cond_20
    :goto_20
    iget p1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez p1, :cond_2e

    if-eqz p0, :cond_2e

    .line 589
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p0, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 592
    :cond_2e
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 2

    .line 823
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 14

    .line 768
    if-nez p0, :cond_4

    .line 769
    const/4 p0, 0x0

    return-object p0

    .line 771
    :cond_4
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    .line 773
    nop

    .line 775
    const-string v0, "decodeBitmap"

    const-wide/16 v1, 0x2

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 777
    :try_start_f
    instance-of v0, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_28

    .line 778
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v3

    .line 779
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v7

    .line 780
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v9

    .line 779
    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v3 .. v10}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 781
    goto :goto_2e

    .line 782
    :cond_28
    move-object v5, p1

    move-object v6, p2

    invoke-static {p0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 785
    :goto_2e
    if-nez p0, :cond_3f

    if-eqz v6, :cond_3f

    iget-object p1, v6, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_37

    goto :goto_3f

    .line 786
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Problem decoding into existing bitmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 789
    :cond_3f
    :goto_3f
    invoke-static {p0, v6}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_42
    .catchall {:try_start_f .. :try_end_42} :catchall_47

    .line 791
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 792
    nop

    .line 794
    return-object p0

    .line 791
    :catchall_47
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 792
    throw p0
.end method

.method private static greylist-max-o decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 12

    .line 804
    nop

    .line 805
    if-eqz p2, :cond_6

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 806
    :goto_7
    if-nez v0, :cond_d

    const/16 v0, 0x4000

    new-array v0, v0, [B

    :cond_d
    move-object v2, v0

    .line 807
    nop

    .line 808
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v5

    .line 809
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v7

    .line 807
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v8}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;JJ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
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
    .registers 5

    .line 714
    if-eqz p0, :cond_3f

    if-nez p1, :cond_5

    goto :goto_3f

    .line 716
    :cond_5
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 717
    if-eqz v0, :cond_31

    .line 718
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 719
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 720
    if-eqz v1, :cond_30

    if-eq v0, v1, :cond_30

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-ne v0, v2, :cond_17

    goto :goto_30

    .line 724
    :cond_17
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 725
    if-eqz v0, :cond_25

    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 726
    :goto_26
    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez p1, :cond_2c

    if-eqz v0, :cond_3d

    .line 727
    :cond_2c
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_3d

    .line 721
    :cond_30
    :goto_30
    return-void

    .line 729
    :cond_31
    iget-object p1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3d

    .line 731
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_3e

    .line 729
    :cond_3d
    :goto_3d
    nop

    .line 733
    :goto_3e
    return-void

    .line 714
    :cond_3f
    :goto_3f
    return-void
.end method
