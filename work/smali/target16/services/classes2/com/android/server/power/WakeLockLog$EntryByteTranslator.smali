.class public Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# instance fields
.field public final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakeLockLog$TagDatabase;)V
    .registers 2

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    return-void
.end method


# virtual methods
.method public fromBytes([BJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_cc

    .line 578
    array-length v1, p1

    if-nez v1, :cond_8

    goto/16 :goto_cc

    :cond_8
    if-eqz p4, :cond_c

    :goto_a
    move-object v1, p4

    goto :goto_12

    .line 583
    :cond_c
    new-instance p4, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {p4}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>()V

    goto :goto_a

    :goto_12
    const/4 p4, 0x0

    .line 585
    aget-byte p4, p1, p4

    shr-int/lit8 v2, p4, 0x6

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1e

    move v3, v4

    :cond_1e
    const/4 v2, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_7c

    if-eq v3, v5, :cond_60

    if-eq v3, v4, :cond_47

    .line 632
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Type not recognized ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "PowerManagerService.WLLog"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_81

    .line 604
    :cond_47
    array-length v2, p1

    if-ge v2, v4, :cond_4b

    goto :goto_81

    :cond_4b
    and-int/lit8 p4, p4, 0x7f

    .line 610
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {p0, p4}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTag(I)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object p0

    .line 611
    aget-byte p1, p1, v5

    and-int/lit16 p1, p1, 0xff

    int-to-long v2, p1

    add-long/2addr v2, p2

    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object v5, p0

    .line 612
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    return-object v1

    .line 592
    :cond_60
    array-length v3, p1

    if-ge v3, v2, :cond_64

    goto :goto_81

    :cond_64
    and-int/lit8 v6, p4, 0x3f

    .line 597
    aget-byte p4, p1, v5

    and-int/lit8 p4, p4, 0x7f

    .line 598
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {p0, p4}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTag(I)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v5

    .line 599
    aget-byte p0, p1, v4

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    add-long v2, p0, p2

    const/4 v4, 0x1

    .line 600
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    return-object v1

    .line 616
    :cond_7c
    array-length p0, p1

    const/16 p2, 0x9

    if-ge p0, p2, :cond_82

    :goto_81
    return-object v0

    .line 620
    :cond_82
    aget-byte p0, p1, v5

    int-to-long p2, p0

    const-wide/16 v5, 0xff

    and-long/2addr p2, v5

    const/16 p0, 0x38

    shl-long/2addr p2, p0

    aget-byte p0, p1, v4

    int-to-long v3, p0

    and-long/2addr v3, v5

    const/16 p0, 0x30

    shl-long/2addr v3, p0

    or-long/2addr p2, v3

    aget-byte p0, p1, v2

    int-to-long v2, p0

    and-long/2addr v2, v5

    const/16 p0, 0x28

    shl-long/2addr v2, p0

    or-long/2addr p2, v2

    const/4 p0, 0x4

    aget-byte p0, p1, p0

    int-to-long v2, p0

    and-long/2addr v2, v5

    const/16 p0, 0x20

    shl-long/2addr v2, p0

    or-long/2addr p2, v2

    const/4 p0, 0x5

    aget-byte p0, p1, p0

    int-to-long v2, p0

    and-long/2addr v2, v5

    const/16 p0, 0x18

    shl-long/2addr v2, p0

    or-long/2addr p2, v2

    const/4 p0, 0x6

    aget-byte p0, p1, p0

    int-to-long v2, p0

    and-long/2addr v2, v5

    const/16 p0, 0x10

    shl-long/2addr v2, p0

    or-long/2addr p2, v2

    const/4 p0, 0x7

    aget-byte p0, p1, p0

    int-to-long v2, p0

    and-long/2addr v2, v5

    const/16 p0, 0x8

    shl-long/2addr v2, p0

    or-long/2addr p2, v2

    aget-byte p0, p1, p0

    int-to-long p0, p0

    and-long/2addr p0, v5

    or-long v2, p2, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 628
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    return-object v1

    :cond_cc
    :goto_cc
    return-object v0
.end method

.method public final getRelativeTime(JJ)I
    .registers 5

    .line 0
    cmp-long p0, p3, p1

    if-gez p0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    sub-long/2addr p3, p1

    const-wide/16 p0, 0xff

    cmp-long p0, p3, p0

    if-lez p0, :cond_f

    const/4 p0, -0x2

    return p0

    :cond_f
    long-to-int p0, p3

    return p0
.end method

.method public toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I
    .registers 14

    .line 673
    iget v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_6c

    if-eq v0, v4, :cond_44

    if-ne v0, v3, :cond_2d

    if-eqz p2, :cond_2c

    .line 694
    array-length v0, p2

    if-lt v0, v3, :cond_2c

    .line 695
    iget-wide v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-virtual {p0, p3, p4, v0, v1}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->getRelativeTime(JJ)I

    move-result p3

    if-gez p3, :cond_1a

    return p3

    .line 700
    :cond_1a
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    iget-object p1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    invoke-virtual {p0, p1}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTagIndex(Lcom/android/server/power/WakeLockLog$TagData;)I

    move-result p0

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    aput-byte p0, p2, v2

    and-int/lit16 p0, p3, 0xff

    int-to-byte p0, p0

    .line 701
    aput-byte p0, p2, v4

    :cond_2c
    return v3

    .line 725
    :cond_2d
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    if-eqz p2, :cond_6b

    .line 676
    array-length v0, p2

    if-lt v0, v1, :cond_6b

    .line 677
    iget-wide v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-virtual {p0, p3, p4, v5, v6}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->getRelativeTime(JJ)I

    move-result p3

    if-gez p3, :cond_52

    return p3

    .line 682
    :cond_52
    iget p4, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    and-int/lit8 p4, p4, 0x3f

    or-int/lit8 p4, p4, 0x40

    int-to-byte p4, p4

    aput-byte p4, p2, v2

    .line 684
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    iget-object p1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    invoke-virtual {p0, p1}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTagIndex(Lcom/android/server/power/WakeLockLog$TagData;)I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, p2, v4

    and-int/lit16 p0, p3, 0xff

    int-to-byte p0, p0

    .line 685
    aput-byte p0, p2, v3

    :cond_6b
    return v1

    .line 710
    :cond_6c
    iget-wide p0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    const/16 p3, 0x9

    if-eqz p2, :cond_c1

    .line 711
    array-length p4, p2

    if-lt p4, p3, :cond_c1

    .line 712
    aput-byte v2, p2, v2

    const/16 p4, 0x38

    shr-long v5, p0, p4

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int p4, v5

    int-to-byte p4, p4

    .line 713
    aput-byte p4, p2, v4

    const/16 p4, 0x30

    shr-long v4, p0, p4

    and-long/2addr v4, v7

    long-to-int p4, v4

    int-to-byte p4, p4

    .line 714
    aput-byte p4, p2, v3

    const/16 p4, 0x28

    shr-long v2, p0, p4

    and-long/2addr v2, v7

    long-to-int p4, v2

    int-to-byte p4, p4

    .line 715
    aput-byte p4, p2, v1

    const/16 p4, 0x20

    shr-long v0, p0, p4

    and-long/2addr v0, v7

    long-to-int p4, v0

    int-to-byte p4, p4

    const/4 v0, 0x4

    .line 716
    aput-byte p4, p2, v0

    const/16 p4, 0x18

    shr-long v0, p0, p4

    and-long/2addr v0, v7

    long-to-int p4, v0

    int-to-byte p4, p4

    const/4 v0, 0x5

    .line 717
    aput-byte p4, p2, v0

    const/16 p4, 0x10

    shr-long v0, p0, p4

    and-long/2addr v0, v7

    long-to-int p4, v0

    int-to-byte p4, p4

    const/4 v0, 0x6

    .line 718
    aput-byte p4, p2, v0

    const/16 p4, 0x8

    shr-long v0, p0, p4

    and-long/2addr v0, v7

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x7

    .line 719
    aput-byte v0, p2, v1

    and-long/2addr p0, v7

    long-to-int p0, p0

    int-to-byte p0, p0

    .line 720
    aput-byte p0, p2, p4

    :cond_c1
    return p3
.end method
