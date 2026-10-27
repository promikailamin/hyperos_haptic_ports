.class public final Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;
.super Ljava/lang/Object;
.source "ActivityManagerShellCommand.java"


# instance fields
.field public csv:Ljava/io/BufferedWriter;

.field public dumpFormat:Ljava/lang/String;

.field public dumpInCSV:Z

.field public duplicatedBitmaps:Ljava/util/HashMap;

.field public proto:Landroid/util/proto/ProtoInputStream;

.field public pw:Ljava/io/PrintWriter;

.field public totalBitmapCount:I

.field public totalBitmapSize:I

.field public zos:Ljava/util/zip/ZipOutputStream;


# direct methods
.method public constructor <init>(Landroid/util/proto/ProtoInputStream;Ljava/io/PrintWriter;Ljava/util/zip/ZipOutputStream;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .registers 7

    .line 1532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1514
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->dumpInCSV:Z

    .line 1533
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    .line 1534
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->pw:Ljava/io/PrintWriter;

    .line 1535
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->zos:Ljava/util/zip/ZipOutputStream;

    .line 1536
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->csv:Ljava/io/BufferedWriter;

    .line 1537
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->dumpFormat:Ljava/lang/String;

    .line 1538
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->totalBitmapCount:I

    .line 1539
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->totalBitmapSize:I

    .line 1540
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->duplicatedBitmaps:Ljava/util/HashMap;

    return-void
.end method

.method public static pixelStorageType(J)Ljava/lang/String;
    .registers 4

    const-wide/32 v0, 0xf4240

    .line 1612
    div-long/2addr p0, v0

    const-wide/16 v0, 0xa

    rem-long/2addr p0, v0

    long-to-int p0, p0

    if-eqz p0, :cond_20

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1d

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1a

    const/4 p1, 0x3

    if-eq p0, p1, :cond_17

    .line 1618
    const-string/jumbo p0, "unknown"

    return-object p0

    .line 1617
    :cond_17
    const-string p0, "hardware"

    return-object p0

    .line 1616
    :cond_1a
    const-string p0, "ashmem"

    return-object p0

    .line 1615
    :cond_1d
    const-string p0, "heap"

    return-object p0

    .line 1614
    :cond_20
    const-string/jumbo p0, "pixelref"

    return-object p0
.end method


# virtual methods
.method public unpack()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1545
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    :goto_6
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_33

    if-eq v0, v2, :cond_24

    .line 1553
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->pw:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unrecognized field ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2c

    :cond_24
    const-wide v0, 0x20b00000001L

    .line 1550
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->unpackAppBitmapInfo(J)V

    .line 1547
    :goto_2c
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    goto :goto_6

    .line 1557
    :cond_33
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->totalBitmapCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bitmaps dumped"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->dumpFormat:Ljava/lang/String;

    if-eqz v4, :cond_60

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->dumpFormat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", total "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->totalBitmapSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1557
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1560
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->duplicatedBitmaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_83
    :goto_83
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1561
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1562
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v2, :cond_83

    .line 1563
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->pw:Ljava/io/PrintWriter;

    .line 1564
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 1563
    const-string v3, "bitmap from source %d has %d duplicates"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_83

    :cond_af
    return-void
.end method

.method public final unpackAppBitmapInfo(J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1575
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    invoke-virtual {v0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p1

    .line 1576
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v1

    .line 1577
    :goto_10
    const-string v5, ""

    if-eq v0, v1, :cond_7d

    const/4 v6, 0x1

    if-eq v0, v6, :cond_6b

    const/4 v7, 0x2

    if-eq v0, v7, :cond_34

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1e

    goto :goto_76

    :cond_1e
    if-nez v3, :cond_2f

    .line 1592
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->pw:Ljava/io/PrintWriter;

    const-string v5, "   Bitmap ID  | Width | Height |   Size     |   Config  | M |   Type   |  Source"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1593
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->pw:Ljava/io/PrintWriter;

    const-string v5, "--------------|-------|--------|------------|-----------|---|----------|--------"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v6

    :cond_2f
    int-to-long v5, v0

    .line 1596
    invoke-virtual {p0, v5, v6, v4, v2}, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->unpackAppBitmaps(JILjava/lang/String;)V

    goto :goto_76

    .line 1584
    :cond_34
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    const-wide v6, 0x10900000002L

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    if-eq v4, v1, :cond_69

    .line 1586
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "** Bitmaps for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_69
    move-object v2, v0

    goto :goto_76

    .line 1581
    :cond_6b
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    const-wide v4, 0x10500000001L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    .line 1578
    :goto_76
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    goto :goto_10

    .line 1600
    :cond_7d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    invoke-virtual {v0, p1, p2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1601
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->pw:Ljava/io/PrintWriter;

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final unpackAppBitmaps(JILjava/lang/String;)V
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    .line 1630
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 1631
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v6

    move v11, v8

    move v12, v11

    move v13, v12

    move v14, v13

    const-wide/16 p1, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v15, 0x0

    :goto_1d
    const/4 v4, -0x1

    if-eq v3, v4, :cond_8b

    packed-switch v3, :pswitch_data_17a

    goto :goto_84

    .line 1658
    :pswitch_24
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    const-wide v4, 0x10c00000008L

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v3

    move-object v7, v3

    goto :goto_84

    .line 1655
    :pswitch_31
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    const-wide v4, 0x10300000007L

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v15

    goto :goto_84

    .line 1652
    :pswitch_3d
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    const-wide v4, 0x10500000006L

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v8

    goto :goto_84

    .line 1648
    :pswitch_49
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    const-wide v4, 0x10800000005L

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v14

    goto :goto_84

    .line 1645
    :pswitch_55
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    const-wide v4, 0x10500000004L

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v13

    goto :goto_84

    .line 1642
    :pswitch_61
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    const-wide v4, 0x10500000003L

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v12

    goto :goto_84

    .line 1639
    :pswitch_6d
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    const-wide v4, 0x10500000002L

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v11

    goto :goto_84

    .line 1636
    :pswitch_79
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    const-wide v4, 0x10300000001L

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    .line 1633
    :goto_84
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    goto :goto_1d

    .line 1662
    :cond_8b
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->proto:Landroid/util/proto/ProtoInputStream;

    invoke-virtual {v3, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1664
    invoke-static {v8}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v21

    .line 1665
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->pixelStorageType(J)Ljava/lang/String;

    move-result-object v23

    .line 1666
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->pw:Ljava/io/PrintWriter;

    .line 1667
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    if-eqz v14, :cond_b5

    .line 1668
    const-string v2, "X"

    :goto_b2
    move-object/from16 v22, v2

    goto :goto_b8

    :cond_b5
    const-string v2, " "

    goto :goto_b2

    :goto_b8
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    filled-new-array/range {v17 .. v24}, [Ljava/lang/Object;

    move-result-object v2

    .line 1666
    const-string v3, " %12d | %5d |  %5d | %,10d | %9.9s | %s | %8.8s | %12d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    cmp-long v1, v15, p1

    const/4 v2, 0x1

    if-eqz v1, :cond_f6

    const-wide/16 v3, -0x1

    cmp-long v1, v15, v3

    if-eqz v1, :cond_f6

    .line 1671
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->duplicatedBitmaps:Ljava/util/HashMap;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1672
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->duplicatedBitmaps:Ljava/util/HashMap;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    if-nez v1, :cond_ea

    move v1, v2

    goto :goto_ef

    :cond_ea
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    :goto_ef
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    :cond_f6
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->dumpFormat:Ljava/lang/String;

    if-eqz v1, :cond_12d

    if-eqz v7, :cond_12d

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->zos:Ljava/util/zip/ZipOutputStream;

    if-eqz v1, :cond_12d

    .line 1677
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->dumpFormat:Ljava/lang/String;

    move-object/from16 v5, p4

    filled-new-array {v1, v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 1676
    const-string/jumbo v3, "pid-%d-%s/bitmap-%d.%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1678
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 1679
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->zos:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v1, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1680
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->zos:Ljava/util/zip/ZipOutputStream;

    array-length v3, v7

    invoke-virtual {v1, v7, v6, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 1681
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->zos:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_12f

    :cond_12d
    move-object/from16 v5, p4

    .line 1684
    :goto_12f
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->csv:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_16f

    .line 1686
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    if-eqz v14, :cond_14e

    .line 1687
    const-string v4, "Mutable"

    :goto_14b
    move-object/from16 v24, v4

    goto :goto_151

    :cond_14e
    const-string v4, "Immutable"

    goto :goto_14b

    :goto_151
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v18, v5

    move-object/from16 v25, v23

    move-object/from16 v23, v21

    move-object/from16 v21, v3

    filled-new-array/range {v17 .. v26}, [Ljava/lang/Object;

    move-result-object v3

    .line 1685
    const-string v4, "%d, %s, %d, %d, %d, %d, %s, %s, %s, %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1688
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->csv:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1691
    :cond_16f
    iget v1, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->totalBitmapCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->totalBitmapCount:I

    .line 1692
    iget v1, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->totalBitmapSize:I

    add-int/2addr v1, v13

    iput v1, v0, Lcom/android/server/am/ActivityManagerShellCommand$BitmapDump;->totalBitmapSize:I

    return-void

    :pswitch_data_17a
    .packed-switch 0x1
        :pswitch_79
        :pswitch_6d
        :pswitch_61
        :pswitch_55
        :pswitch_49
        :pswitch_3d
        :pswitch_31
        :pswitch_24
    .end packed-switch
.end method
