.class Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntryByteTranslator"
.end annotation


# static fields
.field static final ERROR_TIME_IS_NEGATIVE:I = -0x1

.field static final ERROR_TIME_TOO_LARGE:I = -0x2


# instance fields
.field private final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;


# direct methods
.method constructor <init>(Lcom/android/server/power/WakeLockLog$TagDatabase;)V
    .registers 2
    .param p1, "tagDatabase"    # Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 494
    return-void
.end method

.method private getRelativeTime(JJ)I
    .registers 11
    .param p1, "timeReference"    # J
    .param p3, "time"    # J

    .line 672
    cmp-long v0, p3, p1

    const-string v1, "PowerManagerService.WLLog"

    if-gez v0, :cond_13

    .line 673
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 674
    const-string v0, "ERROR_TIME_IS_NEGATIVE"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_11
    const/4 v0, -0x1

    return v0

    .line 678
    :cond_13
    sub-long v2, p3, p1

    .line 679
    .local v2, "relativeTime":J
    const-wide/16 v4, 0xff

    cmp-long v0, v2, v4

    if-lez v0, :cond_28

    .line 680
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 681
    const-string v0, "ERROR_TIME_TOO_LARGE"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_26
    const/4 v0, -0x2

    return v0

    .line 685
    :cond_28
    long-to-int v0, v2

    return v0
.end method


# virtual methods
.method fromBytes([BJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .registers 20
    .param p1, "bytes"    # [B
    .param p2, "timeReference"    # J
    .param p4, "entryToReuse"    # Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 509
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_e3

    array-length v3, v1

    if-nez v3, :cond_b

    goto/16 :goto_e3

    .line 514
    :cond_b
    if-eqz p4, :cond_10

    move-object/from16 v3, p4

    goto :goto_15

    :cond_10
    new-instance v3, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {v3}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>()V

    .line 516
    .local v3, "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    :goto_15
    const/4 v4, 0x0

    aget-byte v5, v1, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    const/4 v7, 0x3

    and-int/2addr v5, v7

    .line 517
    .local v5, "type":I
    and-int/lit8 v8, v5, 0x2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_24

    .line 519
    const/4 v5, 0x2

    move v10, v5

    goto :goto_25

    .line 517
    :cond_24
    move v10, v5

    .line 521
    .end local v5    # "type":I
    .local v10, "type":I
    :goto_25
    const/4 v5, 0x1

    packed-switch v10, :pswitch_data_e4

    .line 563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type not recognized ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    const-string v6, "PowerManagerService.WLLog"

    invoke-static {v6, v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e2

    .line 535
    :pswitch_4e
    array-length v6, v1

    if-ge v6, v9, :cond_53

    .line 536
    goto/16 :goto_e2

    .line 539
    :cond_53
    const/4 v2, 0x0

    .line 540
    .local v2, "flags":I
    aget-byte v4, v1, v4

    and-int/lit8 v11, v4, 0x7f

    .line 541
    .local v11, "tagIndex":I
    iget-object v4, v0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {v4, v11}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTag(I)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v12

    .line 542
    .local v12, "tag":Lcom/android/server/power/WakeLockLog$TagData;
    aget-byte v4, v1, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v13, v4, p2

    .line 543
    .local v13, "time":J
    const/4 v7, 0x2

    move-object v4, v3

    move-wide v5, v13

    move-object v8, v12

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    .line 544
    return-object v3

    .line 523
    .end local v2    # "flags":I
    .end local v11    # "tagIndex":I
    .end local v12    # "tag":Lcom/android/server/power/WakeLockLog$TagData;
    .end local v13    # "time":J
    :pswitch_6e
    array-length v6, v1

    if-ge v6, v7, :cond_73

    .line 524
    goto/16 :goto_e2

    .line 527
    :cond_73
    aget-byte v2, v1, v4

    and-int/lit8 v2, v2, 0x3f

    .line 528
    .restart local v2    # "flags":I
    aget-byte v4, v1, v5

    and-int/lit8 v11, v4, 0x7f

    .line 529
    .restart local v11    # "tagIndex":I
    iget-object v4, v0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {v4, v11}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTag(I)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v12

    .line 530
    .restart local v12    # "tag":Lcom/android/server/power/WakeLockLog$TagData;
    aget-byte v4, v1, v9

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v13, v4, p2

    .line 531
    .restart local v13    # "time":J
    const/4 v7, 0x1

    move-object v4, v3

    move-wide v5, v13

    move-object v8, v12

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    .line 532
    return-object v3

    .line 547
    .end local v2    # "flags":I
    .end local v11    # "tagIndex":I
    .end local v12    # "tag":Lcom/android/server/power/WakeLockLog$TagData;
    .end local v13    # "time":J
    :pswitch_91
    array-length v4, v1

    const/16 v8, 0x9

    if-ge v4, v8, :cond_97

    .line 548
    goto :goto_e2

    .line 551
    :cond_97
    aget-byte v2, v1, v5

    int-to-long v4, v2

    const-wide/16 v11, 0xff

    and-long/2addr v4, v11

    const/16 v2, 0x38

    shl-long/2addr v4, v2

    aget-byte v2, v1, v9

    int-to-long v8, v2

    and-long/2addr v8, v11

    const/16 v2, 0x30

    shl-long/2addr v8, v2

    or-long/2addr v4, v8

    aget-byte v2, v1, v7

    int-to-long v7, v2

    and-long/2addr v7, v11

    const/16 v2, 0x28

    shl-long/2addr v7, v2

    or-long/2addr v4, v7

    const/4 v2, 0x4

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v11

    const/16 v2, 0x20

    shl-long/2addr v7, v2

    or-long/2addr v4, v7

    const/4 v2, 0x5

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v11

    const/16 v2, 0x18

    shl-long/2addr v7, v2

    or-long/2addr v4, v7

    aget-byte v2, v1, v6

    int-to-long v6, v2

    and-long/2addr v6, v11

    const/16 v2, 0x10

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    const/4 v2, 0x7

    aget-byte v2, v1, v2

    int-to-long v6, v2

    and-long/2addr v6, v11

    const/16 v2, 0x8

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    aget-byte v2, v1, v2

    int-to-long v6, v2

    and-long/2addr v6, v11

    or-long v11, v4, v6

    .line 559
    .local v11, "time":J
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move-wide v5, v11

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    .line 560
    return-object v3

    .line 566
    .end local v11    # "time":J
    :goto_e2
    return-object v2

    .line 510
    .end local v3    # "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    .end local v10    # "type":I
    :cond_e3
    :goto_e3
    return-object v2

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_91
        :pswitch_6e
        :pswitch_4e
    .end packed-switch
.end method

.method toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I
    .registers 16
    .param p1, "entry"    # Lcom/android/server/power/WakeLockLog$LogEntry;
    .param p2, "bytes"    # [B
    .param p3, "timeReference"    # J

    .line 604
    iget v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    const-string v1, "PowerManagerService.WLLog"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_108

    .line 656
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :pswitch_23
    const/4 v0, 0x2

    .line 625
    .local v0, "sizeNeeded":I
    if-eqz p2, :cond_106

    array-length v2, p2

    if-lt v2, v0, :cond_106

    .line 626
    iget-wide v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-direct {p0, p3, p4, v5, v6}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->getRelativeTime(JJ)I

    move-result v2

    .line 627
    .local v2, "relativeTime":I
    if-gez v2, :cond_32

    .line 629
    return v2

    .line 631
    :cond_32
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    iget-object v6, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    invoke-virtual {v5, v6}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTagIndex(Lcom/android/server/power/WakeLockLog$TagData;)I

    move-result v5

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 632
    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 633
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REL - Setting bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    .end local v2    # "relativeTime":I
    :cond_64
    goto/16 :goto_106

    .line 606
    .end local v0    # "sizeNeeded":I
    :pswitch_66
    const/4 v0, 0x3

    .line 607
    .restart local v0    # "sizeNeeded":I
    if-eqz p2, :cond_106

    array-length v5, p2

    if-lt v5, v0, :cond_106

    .line 608
    iget-wide v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-direct {p0, p3, p4, v5, v6}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->getRelativeTime(JJ)I

    move-result v5

    .line 609
    .local v5, "relativeTime":I
    if-gez v5, :cond_75

    .line 611
    return v5

    .line 613
    :cond_75
    iget v6, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    and-int/lit8 v6, v6, 0x3f

    or-int/lit8 v6, v6, 0x40

    int-to-byte v6, v6

    aput-byte v6, p2, v4

    .line 615
    iget-object v4, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    iget-object v6, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    invoke-virtual {v4, v6}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTagIndex(Lcom/android/server/power/WakeLockLog$TagData;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 616
    and-int/lit16 v3, v5, 0xff

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 617
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACQ - Setting bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    .end local v5    # "relativeTime":I
    :cond_ae
    goto :goto_106

    .line 640
    .end local v0    # "sizeNeeded":I
    :pswitch_af
    const/16 v0, 0x9

    .line 641
    .restart local v0    # "sizeNeeded":I
    iget-wide v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 642
    .local v5, "time":J
    if-eqz p2, :cond_106

    array-length v1, p2

    if-lt v1, v0, :cond_106

    .line 643
    aput-byte v4, p2, v4

    .line 644
    const/16 v1, 0x38

    shr-long v7, v5, v1

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    long-to-int v1, v7

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    .line 645
    const/16 v1, 0x30

    shr-long v3, v5, v1

    and-long/2addr v3, v9

    long-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    .line 646
    const/4 v1, 0x3

    const/16 v2, 0x28

    shr-long v2, v5, v2

    and-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 647
    const/4 v1, 0x4

    const/16 v2, 0x20

    shr-long v2, v5, v2

    and-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 648
    const/4 v1, 0x5

    const/16 v2, 0x18

    shr-long v2, v5, v2

    and-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 649
    const/4 v1, 0x6

    const/16 v2, 0x10

    shr-long v2, v5, v2

    and-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 650
    const/4 v1, 0x7

    const/16 v2, 0x8

    shr-long v3, v5, v2

    and-long/2addr v3, v9

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    .line 651
    and-long v3, v5, v9

    long-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    .line 659
    .end local v5    # "time":J
    :cond_106
    :goto_106
    return v0

    nop

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_af
        :pswitch_66
        :pswitch_23
    .end packed-switch
.end method
