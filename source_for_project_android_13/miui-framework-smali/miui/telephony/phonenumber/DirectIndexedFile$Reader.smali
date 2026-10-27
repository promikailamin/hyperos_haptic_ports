.class public Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/phonenumber/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;
    }
.end annotation


# instance fields
.field private blacklist mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

.field private blacklist mHeader:Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;

.field private blacklist mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;


# direct methods
.method private constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "inputstream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    new-instance v0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;

    invoke-direct {v0, p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    .line 852
    const-string v0, "assets"

    invoke-direct {p0, v0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->constructFromFile(Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/io/InputStream;Lmiui/telephony/phonenumber/DirectIndexedFile$Reader-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    new-instance v0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;-><init>(Ljava/io/RandomAccessFile;)V

    iput-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    .line 857
    invoke-direct {p0, p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->constructFromFile(Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lmiui/telephony/phonenumber/DirectIndexedFile$Reader-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist constructFromFile(Ljava/lang/String;)V
    .registers 11
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 863
    .local v0, "time":J
    :try_start_4
    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->seek(J)V

    .line 864
    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->-$$Nest$smread(Ljava/io/DataInput;)Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;

    move-result-object v2

    iput-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mHeader:Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;

    .line 866
    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->-$$Nest$fgetmDescriptionOffsets(Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    iput-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    .line 867
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1d
    iget-object v3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mHeader:Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;

    invoke-static {v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->-$$Nest$fgetmDescriptionOffsets(Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_fe

    .line 868
    iget-object v3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    new-instance v4, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;-><init>(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData-IA;)V

    aput-object v4, v3, v2

    .line 869
    iget-object v3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mHeader:Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;

    invoke-static {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->-$$Nest$fgetmDescriptionOffsets(Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;->-$$Nest$fgetmIndexGroupDescriptionOffset(Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->seek(J)V

    .line 870
    iget-object v3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    invoke-interface {v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readInt()I

    move-result v3

    .line 871
    .local v3, "IndexGroupDescriptionCount":I
    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v4, v4, v2

    new-array v5, v3, [Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    invoke-static {v4, v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fputmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;)V

    .line 872
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_51
    if-ge v4, v3, :cond_66

    .line 873
    iget-object v5, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v5, v5, v2

    invoke-static {v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    iget-object v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    invoke-static {v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->-$$Nest$smread(Ljava/io/DataInput;)Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    aput-object v6, v5, v4

    .line 872
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .line 876
    .end local v4    # "i":I
    :cond_66
    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    iget-object v5, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mHeader:Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;

    invoke-static {v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->-$$Nest$fgetmDescriptionOffsets(Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;->-$$Nest$fgetmDataItemDescriptionOffset(Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;)J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->seek(J)V

    .line 877
    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    invoke-interface {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readInt()I

    move-result v4

    .line 878
    .local v4, "dataItemDescriptionCount":I
    iget-object v5, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fputmSizeOfItems(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;I)V

    .line 879
    iget-object v5, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v5, v5, v2

    new-array v6, v4, [Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    invoke-static {v5, v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fputmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)V

    .line 880
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8f
    if-ge v5, v4, :cond_be

    .line 881
    iget-object v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v6, v6, v2

    invoke-static {v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v6

    iget-object v7, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    invoke-static {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$smread(Ljava/io/DataInput;)Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aput-object v7, v6, v5

    .line 882
    iget-object v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v6, v6, v2

    invoke-static {v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmSizeOfItems(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)I

    move-result v7

    iget-object v8, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v8, v8, v2

    invoke-static {v8}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-static {v8}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fgetmIndexSize(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fputmSizeOfItems(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;I)V

    .line 880
    add-int/lit8 v5, v5, 0x1

    goto :goto_8f

    .line 885
    .end local v5    # "i":I
    :cond_be
    iget-object v5, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v5, v5, v2

    new-array v6, v4, [[Ljava/lang/Object;

    invoke-static {v5, v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fputmDataItems(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;[[Ljava/lang/Object;)V

    .line 886
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_c8
    if-ge v5, v4, :cond_fa

    .line 887
    iget-object v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    iget-object v7, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v7, v7, v2

    invoke-static {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fgetmOffset(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)J

    move-result-wide v7

    invoke-interface {v6, v7, v8}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->seek(J)V

    .line 888
    iget-object v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v6, v6, v2

    invoke-static {v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItems(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v7, v7, v2

    invoke-static {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v5

    iget-object v8, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    invoke-static {v7, v8}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$mreadDataItems(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;)[Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v5
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f7} :catch_100

    .line 886
    add-int/lit8 v5, v5, 0x1

    goto :goto_c8

    .line 867
    .end local v3    # "IndexGroupDescriptionCount":I
    .end local v4    # "dataItemDescriptionCount":I
    .end local v5    # "i":I
    :cond_fa
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1d

    .line 894
    .end local v2    # "k":I
    :cond_fe
    nop

    .line 899
    return-void

    .line 891
    :catch_100
    move-exception v2

    .line 892
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->close()V

    .line 893
    throw v2
.end method

.method private blacklist offset(II)J
    .registers 12
    .param p1, "kind"    # I
    .param p2, "index"    # I

    .line 1087
    const/4 v0, 0x0

    .line 1088
    .local v0, "id":Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;
    const/4 v1, 0x0

    .local v1, "min":I
    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v2, v2, p1

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v2

    array-length v2, v2

    .line 1089
    .local v2, "max":I
    :goto_b
    if-ge v1, v2, :cond_3c

    .line 1090
    add-int v3, v2, v1

    div-int/lit8 v3, v3, 0x2

    .line 1091
    .local v3, "found":I
    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v4, v4, p1

    invoke-static {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    aget-object v4, v4, v3

    iget v4, v4, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    if-le v4, p2, :cond_21

    .line 1092
    move v2, v3

    goto :goto_31

    .line 1093
    :cond_21
    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v4, v4, p1

    invoke-static {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    aget-object v4, v4, v3

    iget v4, v4, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    if-gt v4, p2, :cond_32

    .line 1094
    add-int/lit8 v1, v3, 0x1

    .line 1099
    .end local v3    # "found":I
    :goto_31
    goto :goto_b

    .line 1096
    .restart local v3    # "found":I
    :cond_32
    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v4, v4, p1

    invoke-static {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmIndexGroupDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    aget-object v0, v4, v3

    .line 1101
    .end local v3    # "found":I
    :cond_3c
    const-wide/16 v3, -0x1

    .line 1102
    .local v3, "offset":J
    if-eqz v0, :cond_52

    .line 1103
    iget-wide v5, v0, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    iget v7, v0, Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    sub-int v7, p2, v7

    iget-object v8, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v8, v8, p1

    invoke-static {v8}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmSizeOfItems(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)I

    move-result v8

    mul-int/2addr v7, v8

    int-to-long v7, v7

    add-long v3, v5, v7

    .line 1105
    :cond_52
    return-wide v3
.end method

.method private blacklist readSingleDataItem(III)Ljava/lang/Object;
    .registers 9
    .param p1, "kind"    # I
    .param p2, "dataIndex"    # I
    .param p3, "dataItemIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    invoke-static {v0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItems(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object v0, v0, p3

    if-nez v0, :cond_40

    .line 1079
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    iget-object v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fgetmOffset(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)J

    move-result-wide v1

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->seek(J)V

    .line 1080
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    invoke-static {v0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItems(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, p2

    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    .line 1081
    invoke-static {v1, v2, p3}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$mreadSingleDataItem(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, p3

    .line 1083
    :cond_40
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    invoke-static {v0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItems(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object v0, v0, p3

    return-object v0
.end method


# virtual methods
.method public declared-synchronized whitelist close()V
    .registers 2

    monitor-enter p0

    .line 1064
    :try_start_1
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-eqz v0, :cond_a

    .line 1066
    :try_start_5
    invoke-interface {v0}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_13

    .line 1069
    goto :goto_a

    .line 1067
    .end local p0    # "this":Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;
    :catch_9
    move-exception v0

    .line 1072
    :cond_a
    :goto_a
    const/4 v0, 0x0

    :try_start_b
    iput-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    .line 1073
    iput-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mHeader:Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;

    .line 1074
    iput-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_13

    .line 1075
    monitor-exit p0

    return-void

    .line 1063
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist get(III)Ljava/lang/Object;
    .registers 13
    .param p1, "kind"    # I
    .param p2, "index"    # I
    .param p3, "dataIndex"    # I

    monitor-enter p0

    .line 920
    :try_start_1
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    if-eqz v0, :cond_142

    .line 923
    if-ltz p1, :cond_116

    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    array-length v1, v0

    if-ge p1, v1, :cond_116

    .line 926
    if-ltz p3, :cond_e4

    aget-object v0, v0, p1

    invoke-static {v0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_e4

    .line 931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 933
    .local v0, "time":J
    invoke-direct {p0, p1, p2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->offset(II)J

    move-result-wide v2

    .line 934
    .local v2, "offset":J
    const/4 v4, 0x0

    .line 935
    .local v4, "ret":Ljava/lang/Object;
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gez v5, :cond_36

    .line 936
    iget-object v5, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v5, v5, p1

    invoke-static {v5}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItems(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, p3

    const/4 v6, 0x0

    aget-object v5, v5, v6
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_14a

    move-object v4, v5

    goto/16 :goto_d9

    .line 939
    .end local p0    # "this":Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;
    :cond_36
    :try_start_36
    iget-object v5, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    invoke-interface {v5, v2, v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->seek(J)V

    .line 940
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3c
    if-gt v5, p3, :cond_d8

    .line 941
    sget-object v6, Lmiui/telephony/phonenumber/DirectIndexedFile$1;->$SwitchMap$miui$telephony$phonenumber$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v7, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v7, v7, p1

    invoke-static {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fgetmType(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_14e

    .line 971
    new-instance v6, Ljava/lang/IllegalStateException;

    goto :goto_b3

    .line 952
    :pswitch_5a
    iget-object v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    invoke-interface {v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v4, v6

    .line 953
    goto :goto_a7

    .line 949
    :pswitch_66
    iget-object v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    invoke-interface {v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, v6

    .line 950
    goto :goto_a7

    .line 946
    :pswitch_72
    iget-object v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    invoke-interface {v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readShort()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    move-object v4, v6

    .line 947
    goto :goto_a7

    .line 943
    :pswitch_7e
    iget-object v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    invoke-interface {v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readByte()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_88} :catch_db
    .catchall {:try_start_36 .. :try_end_88} :catchall_14a

    move-object v4, v6

    .line 944
    goto :goto_a7

    .line 960
    :pswitch_8a
    :try_start_8a
    iget-object v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    iget-object v7, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v7, v7, p1

    invoke-static {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fgetmIndexSize(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    invoke-static {v6, v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$smreadAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v6

    long-to-int v6, v6

    .line 962
    .local v6, "dataItemIndex":I
    if-ne v5, p3, :cond_a6

    .line 963
    invoke-direct {p0, p1, p3, v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->readSingleDataItem(III)Ljava/lang/Object;

    move-result-object v7
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_a5} :catch_aa
    .catchall {:try_start_8a .. :try_end_a5} :catchall_14a

    move-object v4, v7

    .line 968
    .end local v6    # "dataItemIndex":I
    :cond_a6
    nop

    .line 940
    :goto_a7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 965
    :catch_aa
    move-exception v6

    .line 966
    .local v6, "e":Ljava/io/IOException;
    :try_start_ab
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "File may be corrupt due to invalid data index size"

    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "time":J
    .end local v2    # "offset":J
    .end local v4    # "ret":Ljava/lang/Object;
    .end local p1    # "kind":I
    .end local p2    # "index":I
    .end local p3    # "dataIndex":I
    throw v7

    .line 971
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v0    # "time":J
    .restart local v2    # "offset":J
    .restart local v4    # "ret":Ljava/lang/Object;
    .restart local p1    # "kind":I
    .restart local p2    # "index":I
    .restart local p3    # "dataIndex":I
    :goto_b3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v8, v8, p1

    invoke-static {v8}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-static {v8}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fgetmType(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "time":J
    .end local v2    # "offset":J
    .end local v4    # "ret":Ljava/lang/Object;
    .end local p1    # "kind":I
    .end local p2    # "index":I
    .end local p3    # "dataIndex":I
    throw v6
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_d8} :catch_db
    .catchall {:try_start_ab .. :try_end_d8} :catchall_14a

    .line 977
    .end local v5    # "i":I
    .restart local v0    # "time":J
    .restart local v2    # "offset":J
    .restart local v4    # "ret":Ljava/lang/Object;
    .restart local p1    # "kind":I
    .restart local p2    # "index":I
    .restart local p3    # "dataIndex":I
    :cond_d8
    nop

    .line 985
    :goto_d9
    monitor-exit p0

    return-object v4

    .line 975
    :catch_db
    move-exception v5

    .line 976
    .local v5, "e":Ljava/io/IOException;
    :try_start_dc
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Seek data from a corrupt file"

    invoke-direct {v6, v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 927
    .end local v0    # "time":J
    .end local v2    # "offset":J
    .end local v4    # "ret":Ljava/lang/Object;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_e4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range[0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v2, v2, p1

    invoke-static {v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range[0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 921
    :cond_142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Get data from a corrupt file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14a
    .catchall {:try_start_dc .. :try_end_14a} :catchall_14a

    .line 919
    .end local p1    # "kind":I
    .end local p2    # "index":I
    .end local p3    # "dataIndex":I
    :catchall_14a
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_7e
        :pswitch_72
        :pswitch_66
        :pswitch_5a
    .end packed-switch
.end method

.method public declared-synchronized whitelist get(II)[Ljava/lang/Object;
    .registers 13
    .param p1, "kind"    # I
    .param p2, "index"    # I

    monitor-enter p0

    .line 996
    :try_start_1
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    if-eqz v0, :cond_113

    .line 999
    if-ltz p1, :cond_fa

    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    array-length v0, v0

    if-ge p1, v0, :cond_fa

    .line 1003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1005
    .local v0, "time":J
    invoke-direct {p0, p1, p2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->offset(II)J

    move-result-wide v2

    .line 1006
    .local v2, "offset":J
    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v4, v4, p1

    invoke-static {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/Object;

    .line 1007
    .local v4, "ret":[Ljava/lang/Object;
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gez v5, :cond_3d

    .line 1008
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_26
    array-length v6, v4

    if-ge v5, v6, :cond_3b

    .line 1009
    iget-object v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v6, v6, p1

    invoke-static {v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItems(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v5

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aput-object v6, v4, v5
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_11b

    .line 1008
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 1011
    .end local v5    # "i":I
    .end local p0    # "this":Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;
    :cond_3b
    monitor-exit p0

    return-object v4

    .line 1014
    :cond_3d
    :try_start_3d
    iget-object v5, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    invoke-interface {v5, v2, v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->seek(J)V

    .line 1015
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_43
    array-length v6, v4

    if-ge v5, v6, :cond_ee

    .line 1016
    sget-object v6, Lmiui/telephony/phonenumber/DirectIndexedFile$1;->$SwitchMap$miui$telephony$phonenumber$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v7, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v7, v7, p1

    invoke-static {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fgetmType(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_11e

    .line 1046
    new-instance v6, Ljava/lang/IllegalStateException;

    goto :goto_c9

    .line 1027
    :pswitch_62
    iget-object v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    invoke-interface {v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1028
    goto :goto_bd

    .line 1024
    :pswitch_6f
    iget-object v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    invoke-interface {v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1025
    goto :goto_bd

    .line 1021
    :pswitch_7c
    iget-object v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    invoke-interface {v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readShort()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1022
    goto :goto_bd

    .line 1018
    :pswitch_89
    iget-object v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    invoke-interface {v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->readByte()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_95} :catch_f1
    .catchall {:try_start_3d .. :try_end_95} :catchall_11b

    .line 1019
    goto :goto_bd

    .line 1035
    :pswitch_96
    :try_start_96
    iget-object v6, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    iget-object v7, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v7, v7, p1

    invoke-static {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fgetmIndexSize(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    invoke-static {v6, v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$smreadAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v6

    long-to-int v6, v6

    .line 1037
    .local v6, "dataItemIndex":I
    iget-object v7, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    invoke-interface {v7}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->getFilePointer()J

    move-result-wide v7

    .line 1038
    .local v7, "curPos":J
    invoke-direct {p0, p1, v5, v6}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->readSingleDataItem(III)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v4, v5

    .line 1039
    iget-object v9, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mFile:Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;

    invoke-interface {v9, v7, v8}, Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;->seek(J)V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_bc} :catch_c0
    .catchall {:try_start_96 .. :try_end_bc} :catchall_11b

    .line 1043
    .end local v6    # "dataItemIndex":I
    .end local v7    # "curPos":J
    nop

    .line 1015
    :goto_bd
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 1040
    :catch_c0
    move-exception v6

    .line 1041
    .local v6, "e":Ljava/io/IOException;
    :try_start_c1
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "File may be corrupt due to invalid data index size"

    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "time":J
    .end local v2    # "offset":J
    .end local v4    # "ret":[Ljava/lang/Object;
    .end local p1    # "kind":I
    .end local p2    # "index":I
    throw v7

    .line 1046
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v0    # "time":J
    .restart local v2    # "offset":J
    .restart local v4    # "ret":[Ljava/lang/Object;
    .restart local p1    # "kind":I
    .restart local p2    # "index":I
    :goto_c9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mIndexData:[Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;

    aget-object v8, v8, p1

    invoke-static {v8}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;->-$$Nest$fgetmDataItemDescriptions(Lmiui/telephony/phonenumber/DirectIndexedFile$Reader$IndexData;)[Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-static {v8}, Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;->-$$Nest$fgetmType(Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;)Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "time":J
    .end local v2    # "offset":J
    .end local v4    # "ret":[Ljava/lang/Object;
    .end local p1    # "kind":I
    .end local p2    # "index":I
    throw v6
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_ee} :catch_f1
    .catchall {:try_start_c1 .. :try_end_ee} :catchall_11b

    .line 1052
    .end local v5    # "i":I
    .restart local v0    # "time":J
    .restart local v2    # "offset":J
    .restart local v4    # "ret":[Ljava/lang/Object;
    .restart local p1    # "kind":I
    .restart local p2    # "index":I
    :cond_ee
    nop

    .line 1059
    monitor-exit p0

    return-object v4

    .line 1050
    :catch_f1
    move-exception v5

    .line 1051
    .local v5, "e":Ljava/io/IOException;
    :try_start_f2
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Seek data from a corrupt file"

    invoke-direct {v6, v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1000
    .end local v0    # "time":J
    .end local v2    # "offset":J
    .end local v4    # "ret":[Ljava/lang/Object;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_fa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get data kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Get data from a corrupt file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11b
    .catchall {:try_start_f2 .. :try_end_11b} :catchall_11b

    .line 995
    .end local p1    # "kind":I
    .end local p2    # "index":I
    :catchall_11b
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_89
        :pswitch_7c
        :pswitch_6f
        :pswitch_62
    .end packed-switch
.end method

.method public whitelist getDataVersion()I
    .registers 2

    .line 902
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->mHeader:Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;

    if-nez v0, :cond_6

    .line 903
    const/4 v0, -0x1

    return v0

    .line 906
    :cond_6
    invoke-static {v0}, Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;->-$$Nest$fgetmDataVersion(Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;)I

    move-result v0

    return v0
.end method
