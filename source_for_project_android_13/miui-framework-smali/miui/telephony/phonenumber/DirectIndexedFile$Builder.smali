.class public Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/phonenumber/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;,
        Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;,
        Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;
    }
.end annotation


# instance fields
.field private blacklist mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

.field private blacklist mFileDataVersion:I

.field private blacklist mFileHeader:Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;

.field private blacklist mIndexDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 3
    .param p1, "dataVersion"    # I

    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    .line 1190
    iput p1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mFileDataVersion:I

    .line 1191
    return-void
.end method

.method synthetic constructor blacklist <init>(ILmiui/telephony/phonenumber/DirectIndexedFile$Builder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;-><init>(I)V

    return-void
.end method

.method private blacklist build()V
    .registers 19

    .line 1403
    move-object/from16 v1, p0

    iget-object v0, v1, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1404
    .local v2, "dataCount":I
    new-instance v0, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;

    iget v3, v1, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mFileDataVersion:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;-><init>(IILmiui/telephony/phonenumber/DirectIndexedFile$FileHeader-IA;)V

    iput-object v0, v1, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mFileHeader:Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;

    .line 1406
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_13
    if-ge v0, v2, :cond_9f

    .line 1407
    iget-object v3, v1, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    .line 1408
    .local v3, "idk":Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;
    iget-object v5, v1, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mFileHeader:Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;

    invoke-static {v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->-$$Nest$fgetmDescriptionOffsets(Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;

    move-result-object v5

    new-instance v12, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;-><init>(JJLmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair-IA;)V

    aput-object v12, v5, v0

    .line 1411
    const/4 v5, 0x0

    .local v5, "length":I
    :goto_31
    invoke-static {v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexDataGroups(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4f

    .line 1412
    invoke-static {v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexDataGroups(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4c

    .line 1413
    goto :goto_4f

    .line 1411
    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 1417
    :cond_4f
    :goto_4f
    new-array v6, v5, [Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    invoke-static {v3, v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fputmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;)V

    .line 1418
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_55
    invoke-static {v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_9b

    .line 1419
    invoke-static {v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexDataGroups(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1420
    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;>;"
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1422
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;

    invoke-static {v8}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;->-$$Nest$fgetmIndex(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;)I

    move-result v8

    .line 1423
    .local v8, "minIndex":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;

    invoke-static {v9}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;->-$$Nest$fgetmIndex(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;)I

    move-result v9

    add-int/lit8 v15, v9, 0x1

    .line 1424
    .local v15, "maxIndex":I
    invoke-static {v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v16

    new-instance v17, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, v17

    move v10, v8

    move v11, v15

    invoke-direct/range {v9 .. v14}, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJLmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor-IA;)V

    aput-object v17, v16, v6

    .line 1418
    .end local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;>;"
    .end local v8    # "minIndex":I
    .end local v15    # "maxIndex":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_55

    .line 1406
    .end local v3    # "idk":Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;
    .end local v5    # "length":I
    .end local v6    # "i":I
    :cond_9b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_13

    .line 1429
    .end local v0    # "k":I
    :cond_9f
    :try_start_9f
    invoke-direct {v1, v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->writeAll(Ljava/io/DataOutput;)I
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    .line 1432
    goto :goto_a4

    .line 1430
    :catch_a3
    move-exception v0

    .line 1433
    :goto_a4
    return-void
.end method

.method private blacklist checkCurrentIndexingDataKind()V
    .registers 3

    .line 1390
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    if-eqz v0, :cond_5

    .line 1393
    return-void

    .line 1391
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please add a data kind before adding group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkCurrentIndexingGroup()V
    .registers 3

    .line 1396
    invoke-direct {p0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->checkCurrentIndexingDataKind()V

    .line 1397
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexDataGroups(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_10

    .line 1400
    return-void

    .line 1398
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please add a data group before adding data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist writeAll(Ljava/io/DataOutput;)I
    .registers 11
    .param p1, "o"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1436
    const/4 v0, 0x0

    .line 1437
    .local v0, "written":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_2
    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mFileHeader:Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->-$$Nest$fgetmDescriptionOffsets(Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1a0

    .line 1438
    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mFileHeader:Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;

    invoke-static {v2, p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->-$$Nest$mwrite(Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;Ljava/io/DataOutput;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1439
    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mFileHeader:Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->-$$Nest$fgetmDescriptionOffsets(Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;

    move-result-object v2

    aget-object v2, v2, v1

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;->-$$Nest$fputmIndexGroupDescriptionOffset(Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;J)V

    .line 1441
    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    .line 1442
    .local v2, "idk":Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;
    if-eqz p1, :cond_30

    .line 1443
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v3

    array-length v3, v3

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1445
    :cond_30
    add-int/lit8 v0, v0, 0x4

    .line 1446
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_48

    .line 1447
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4, p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->-$$Nest$mwrite(Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;Ljava/io/DataOutput;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1446
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 1450
    .end local v3    # "i":I
    :cond_48
    iget-object v3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mFileHeader:Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;

    invoke-static {v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->-$$Nest$fgetmDescriptionOffsets(Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;

    move-result-object v3

    aget-object v3, v3, v1

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;->-$$Nest$fputmDataItemDescriptionOffset(Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;J)V

    .line 1451
    if-eqz p1, :cond_5e

    .line 1452
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v3

    array-length v3, v3

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1454
    :cond_5e
    add-int/lit8 v0, v0, 0x4

    .line 1455
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_61
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_76

    .line 1456
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4, p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$mwrite(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1455
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 1459
    .end local v3    # "i":I
    :cond_76
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_77
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_a4

    .line 1460
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aget-object v4, v4, v3

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fputmOffset(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;J)V

    .line 1461
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$mgetAll(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$mwriteDataItems(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1459
    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    .line 1464
    .end local v3    # "i":I
    :cond_a4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_a5
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_19c

    .line 1465
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    aget-object v4, v4, v3

    int-to-long v5, v0

    iput-wide v5, v4, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    .line 1466
    if-nez p1, :cond_e3

    .line 1467
    const/4 v4, 0x0

    .line 1468
    .local v4, "sizeOfItem":I
    const/4 v5, 0x0

    .local v5, "m":I
    :goto_b9
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_ce

    .line 1469
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fgetmIndexSize(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)B

    move-result v6

    add-int/2addr v4, v6

    .line 1468
    add-int/lit8 v5, v5, 0x1

    goto :goto_b9

    .line 1471
    .end local v5    # "m":I
    :cond_ce
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v3

    iget v5, v5, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    aget-object v6, v6, v3

    iget v6, v6, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    sub-int/2addr v5, v6

    mul-int/2addr v5, v4

    add-int/2addr v0, v5

    .line 1473
    .end local v4    # "sizeOfItem":I
    goto/16 :goto_198

    .line 1474
    :cond_e3
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    aget-object v4, v4, v3

    iget v4, v4, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    .local v4, "j":I
    :goto_eb
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v3

    iget v5, v5, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    if-ge v4, v5, :cond_198

    .line 1475
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataMap(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;

    .line 1476
    .local v5, "item":Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;
    if-nez v5, :cond_109

    .line 1477
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDefaultValue(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;

    move-result-object v5

    .line 1479
    :cond_109
    const/4 v6, 0x0

    .local v6, "m":I
    :goto_10a
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_194

    .line 1480
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-static {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fgetmIndexSize(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_12e

    .line 1481
    invoke-static {v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;->-$$Nest$fgetmObjects(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_185

    .line 1482
    :cond_12e
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-static {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fgetmIndexSize(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_14b

    .line 1483
    invoke-static {v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;->-$$Nest$fgetmObjects(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_185

    .line 1484
    :cond_14b
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-static {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fgetmIndexSize(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_168

    .line 1485
    invoke-static {v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;->-$$Nest$fgetmObjects(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_185

    .line 1486
    :cond_168
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-static {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fgetmIndexSize(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_185

    .line 1487
    invoke-static {v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;->-$$Nest$fgetmObjects(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v6

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {p1, v7, v8}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1489
    :cond_185
    :goto_185
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-static {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fgetmIndexSize(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    add-int/2addr v0, v7

    .line 1479
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_10a

    .line 1474
    .end local v5    # "item":Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;
    .end local v6    # "m":I
    :cond_194
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_eb

    .line 1464
    .end local v4    # "j":I
    :cond_198
    :goto_198
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a5

    .line 1437
    .end local v2    # "idk":Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;
    .end local v3    # "i":I
    :cond_19c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1495
    .end local v1    # "k":I
    :cond_1a0
    return v0
.end method


# virtual methods
.method public varargs whitelist add(I[Ljava/lang/Object;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "objects"    # [Ljava/lang/Object;

    .line 1282
    invoke-direct {p0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->checkCurrentIndexingGroup()V

    .line 1284
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v0

    array-length v0, v0

    array-length v1, p2

    if-ne v0, v1, :cond_2dc

    .line 1289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    array-length v1, p2

    if-ge v0, v1, :cond_2ad

    .line 1290
    sget-object v1, Lmiui/telephony/phonenumber/DirectIndexedFile$1;->$SwitchMap$miui$telephony$phonenumber$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fgetmType(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "Object["

    packed-switch v1, :pswitch_data_302

    .line 1352
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type of objects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-static {v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fgetmType(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1307
    :pswitch_5f
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_67

    goto/16 :goto_28c

    .line 1308
    :cond_67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] should be long"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1302
    :pswitch_84
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_8c

    goto/16 :goto_28c

    .line 1303
    :cond_8c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] should be int"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1297
    :pswitch_a9
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Short;

    if-eqz v1, :cond_b1

    goto/16 :goto_28c

    .line 1298
    :cond_b1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] should be short"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1292
    :pswitch_ce
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Byte;

    if-eqz v1, :cond_d6

    goto/16 :goto_28c

    .line 1293
    :cond_d6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] should be byte"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1344
    :pswitch_f3
    aget-object v1, p2, v0

    instance-of v1, v1, [J

    if-eqz v1, :cond_12e

    .line 1347
    iget-object v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$mput(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1348
    iget-object v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1349
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$msize(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$smgetSizeOf(I)B

    move-result v2

    invoke-static {v1, v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fputmIndexSize(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;B)V

    .line 1350
    goto/16 :goto_28c

    .line 1345
    :cond_12e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] should be long[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1336
    :pswitch_14b
    aget-object v1, p2, v0

    instance-of v1, v1, [I

    if-eqz v1, :cond_186

    .line 1339
    iget-object v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$mput(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1340
    iget-object v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1341
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$msize(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$smgetSizeOf(I)B

    move-result v2

    invoke-static {v1, v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fputmIndexSize(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;B)V

    .line 1342
    goto/16 :goto_28c

    .line 1337
    :cond_186
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] should be int[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1328
    :pswitch_1a3
    aget-object v1, p2, v0

    instance-of v1, v1, [S

    if-eqz v1, :cond_1de

    .line 1331
    iget-object v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$mput(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1332
    iget-object v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1333
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$msize(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$smgetSizeOf(I)B

    move-result v2

    invoke-static {v1, v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fputmIndexSize(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;B)V

    .line 1334
    goto/16 :goto_28c

    .line 1329
    :cond_1de
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] should be short[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1320
    :pswitch_1fb
    aget-object v1, p2, v0

    instance-of v1, v1, [B

    if-eqz v1, :cond_235

    .line 1323
    iget-object v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$mput(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1324
    iget-object v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1325
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$msize(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$smgetSizeOf(I)B

    move-result v2

    invoke-static {v1, v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fputmIndexSize(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;B)V

    .line 1326
    goto :goto_28c

    .line 1321
    :cond_235
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] should be byte[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1312
    :pswitch_252
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_290

    .line 1315
    iget-object v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$mput(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1316
    iget-object v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1317
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$msize(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$smgetSizeOf(I)B

    move-result v2

    invoke-static {v1, v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fputmIndexSize(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;B)V

    .line 1318
    nop

    .line 1289
    :goto_28c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    .line 1313
    :cond_290
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] should be String"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1357
    .end local v0    # "i":I
    :cond_2ad
    new-instance v0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;-><init>(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item-IA;)V

    .line 1358
    .local v0, "item":Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;
    iget-object v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataMap(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    iget-object v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexDataGroups(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexDataGroups(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1360
    return-void

    .line 1285
    .end local v0    # "item":Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;
    :cond_2dc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Different number of objects inputted, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data expected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_302
    .packed-switch 0x1
        :pswitch_252
        :pswitch_1fb
        :pswitch_1a3
        :pswitch_14b
        :pswitch_f3
        :pswitch_ce
        :pswitch_a9
        :pswitch_84
        :pswitch_5f
    .end packed-switch
.end method

.method public whitelist addGroup([I[[Ljava/lang/Object;)V
    .registers 6
    .param p1, "indexes"    # [I
    .param p2, "objects"    # [[Ljava/lang/Object;

    .line 1264
    invoke-direct {p0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->checkCurrentIndexingDataKind()V

    .line 1266
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_19

    .line 1267
    invoke-virtual {p0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->newGroup()V

    .line 1268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 1269
    aget v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->add(I[Ljava/lang/Object;)V

    .line 1268
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1274
    .end local v0    # "i":I
    :cond_18
    return-void

    .line 1272
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Different number between indexes and objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs whitelist addKind([Ljava/lang/Object;)V
    .registers 16
    .param p1, "objects"    # [Ljava/lang/Object;

    .line 1198
    new-instance v0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;-><init>(ILmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData-IA;)V

    iput-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    .line 1199
    iget-object v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_15b

    .line 1202
    iget-object v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v3, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    invoke-direct {v3, p0, v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;-><init>(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder-IA;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    const/4 v1, 0x1

    .line 1206
    .local v1, "indexSize":B
    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Byte;

    if-eqz v3, :cond_3d

    .line 1207
    sget-object v3, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->BYTE:Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1208
    .local v3, "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    const/4 v1, 0x1

    .line 1209
    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$mput(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    goto/16 :goto_123

    .line 1210
    .end local v3    # "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    :cond_3d
    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Short;

    if-eqz v3, :cond_59

    .line 1211
    sget-object v3, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->SHORT:Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1212
    .restart local v3    # "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    const/4 v1, 0x2

    .line 1213
    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$mput(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    goto/16 :goto_123

    .line 1214
    .end local v3    # "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    :cond_59
    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_75

    .line 1215
    sget-object v3, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER:Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1216
    .restart local v3    # "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    const/4 v1, 0x4

    .line 1217
    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$mput(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    goto/16 :goto_123

    .line 1218
    .end local v3    # "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    :cond_75
    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_92

    .line 1219
    sget-object v3, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->LONG:Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1220
    .restart local v3    # "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    const/16 v1, 0x8

    .line 1221
    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$mput(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    goto/16 :goto_123

    .line 1222
    .end local v3    # "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    :cond_92
    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_b0

    .line 1223
    sget-object v3, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->STRING:Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1224
    .restart local v3    # "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$mput(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    goto/16 :goto_123

    .line 1225
    .end local v3    # "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    :cond_b0
    aget-object v3, p1, v0

    instance-of v3, v3, [B

    if-eqz v3, :cond_cd

    .line 1226
    sget-object v3, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->BYTE_ARRAY:Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1227
    .restart local v3    # "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$mput(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    goto :goto_123

    .line 1228
    .end local v3    # "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    :cond_cd
    aget-object v3, p1, v0

    instance-of v3, v3, [S

    if-eqz v3, :cond_ea

    .line 1229
    sget-object v3, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->SHORT_ARRAY:Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1230
    .restart local v3    # "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$mput(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    goto :goto_123

    .line 1231
    .end local v3    # "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    :cond_ea
    aget-object v3, p1, v0

    instance-of v3, v3, [I

    if-eqz v3, :cond_107

    .line 1232
    sget-object v3, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER_ARRAY:Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1233
    .restart local v3    # "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$mput(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    goto :goto_123

    .line 1234
    .end local v3    # "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    :cond_107
    aget-object v3, p1, v0

    instance-of v3, v3, [J

    if-eqz v3, :cond_13c

    .line 1235
    sget-object v3, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->LONG_ARRAY:Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1236
    .restart local v3    # "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemHolders(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;->-$$Nest$mput(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    .line 1241
    :goto_123
    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    new-instance v13, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v5, v13

    move-object v6, v3

    move v7, v1

    invoke-direct/range {v5 .. v12}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;BBBJLmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor-IA;)V

    aput-object v13, v4, v0

    .line 1201
    .end local v1    # "indexSize":B
    .end local v3    # "type":Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    .line 1238
    .restart local v1    # "indexSize":B
    :cond_13c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported type of the ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] argument"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1245
    .end local v0    # "i":I
    .end local v1    # "indexSize":B
    :cond_15b
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    new-instance v1, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;

    const/4 v3, -0x1

    invoke-direct {v1, p0, v3, p1, v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;-><init>(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item-IA;)V

    invoke-static {v0, v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fputmDefaultValue(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$Item;)V

    .line 1246
    return-void
.end method

.method public whitelist newGroup()V
    .registers 3

    .line 1252
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexDataGroups(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexDataGroups(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexDataGroups(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1253
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_38

    .line 1254
    :cond_2a
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;->-$$Nest$fgetmIndexDataGroups(Lmiui/telephony/phonenumber/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    :cond_38
    return-void
.end method

.method public whitelist write(Ljava/lang/String;)V
    .registers 8
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1368
    const-string v0, "Cannot delete file "

    invoke-direct {p0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->build()V

    .line 1370
    const/4 v1, 0x0

    .line 1371
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v2, 0x0

    .line 1373
    .local v2, "done":Z
    :try_start_7
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v3

    .line 1374
    invoke-direct {p0, v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;->writeAll(Ljava/io/DataOutput;)I
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_43

    .line 1375
    const/4 v2, 0x1

    .line 1377
    nop

    .line 1378
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1381
    if-nez v2, :cond_42

    .line 1382
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1383
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1387
    :cond_42
    return-void

    .line 1377
    :catchall_43
    move-exception v3

    if-eqz v1, :cond_49

    .line 1378
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1381
    :cond_49
    if-nez v2, :cond_6c

    .line 1382
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 1383
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1386
    :cond_6c
    throw v3
.end method
