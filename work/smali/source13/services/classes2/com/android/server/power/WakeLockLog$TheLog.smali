.class Lcom/android/server/power/WakeLockLog$TheLog;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TheLog"
.end annotation


# instance fields
.field private final mBuffer:[B

.field private mChangeCount:J

.field private mEnd:I

.field private mLatestTime:J

.field private final mReadWriteTempBuffer:[B

.field private mStart:I

.field private mStartTime:J

.field private final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

.field private final mTempBuffer:[B

.field private final mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBuffer(Lcom/android/server/power/WakeLockLog$TheLog;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChangeCount(Lcom/android/server/power/WakeLockLog$TheLog;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmEnd(Lcom/android/server/power/WakeLockLog$TheLog;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStart(Lcom/android/server/power/WakeLockLog$TheLog;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartTime(Lcom/android/server/power/WakeLockLog$TheLog;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTranslator(Lcom/android/server/power/WakeLockLog$TheLog;)Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mreadEntryAt(Lcom/android/server/power/WakeLockLog$TheLog;IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveTagIndex(Lcom/android/server/power/WakeLockLog$TheLog;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/WakeLockLog$TheLog;->removeTagIndex(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;Lcom/android/server/power/WakeLockLog$EntryByteTranslator;Lcom/android/server/power/WakeLockLog$TagDatabase;)V
    .registers 6
    .param p1, "injector"    # Lcom/android/server/power/WakeLockLog$Injector;
    .param p2, "translator"    # Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
    .param p3, "tagDatabase"    # Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    const/16 v0, 0x9

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    .line 714
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    .line 724
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 729
    iput v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    .line 735
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 742
    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    .line 747
    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    .line 752
    invoke-virtual {p1}, Lcom/android/server/power/WakeLockLog$Injector;->getLogSize()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 753
    .local v0, "logSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    .line 755
    iput-object p2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    .line 756
    iput-object p3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 760
    new-instance v1, Lcom/android/server/power/WakeLockLog$TheLog$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/WakeLockLog$TheLog$1;-><init>(Lcom/android/server/power/WakeLockLog$TheLog;)V

    invoke-virtual {p3, v1}, Lcom/android/server/power/WakeLockLog$TagDatabase;->setCallback(Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;)V

    .line 765
    return-void
.end method

.method private getAvailableSpace()I
    .registers 4

    .line 967
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    if-le v0, v1, :cond_c

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v2, v2

    sub-int/2addr v0, v1

    sub-int/2addr v2, v0

    goto :goto_14

    .line 968
    :cond_c
    if-ge v0, v1, :cond_11

    sub-int v2, v1, v0

    goto :goto_14

    .line 969
    :cond_11
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v2, v0

    .line 967
    :goto_14
    return v2
.end method

.method private isBufferEmpty()Z
    .registers 3

    .line 998
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private makeSpace(I)Z
    .registers 4
    .param p1, "spaceNeeded"    # I

    .line 951
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v0, v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_9

    .line 952
    const/4 v0, 0x0

    return v0

    .line 957
    :cond_9
    :goto_9
    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->getAvailableSpace()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_15

    .line 958
    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->removeOldestItem()V

    goto :goto_9

    .line 960
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method private readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .registers 9
    .param p1, "index"    # I
    .param p2, "timeReference"    # J
    .param p4, "entryToSet"    # Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 1010
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_19

    .line 1011
    add-int v1, p1, v0

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 1012
    .local v1, "indexIntoMainBuffer":I
    iget v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-ne v1, v3, :cond_10

    .line 1013
    goto :goto_19

    .line 1015
    :cond_10
    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    aget-byte v2, v2, v1

    aput-byte v2, v3, v0

    .line 1010
    .end local v1    # "indexIntoMainBuffer":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1017
    .end local v0    # "i":I
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->fromBytes([BJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v0

    return-object v0
.end method

.method private removeOldestItem()V
    .registers 7

    .line 976
    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 978
    return-void

    .line 982
    :cond_7
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    iget-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v0

    .line 983
    .local v0, "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing oldest item at @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerManagerService.WLLog"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_3a
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-wide v4, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v1

    .line 987
    .local v1, "size":I
    iget v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 988
    iget-wide v2, v0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 989
    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    .line 990
    return-void
.end method

.method private removeTagIndex(I)V
    .registers 12
    .param p1, "tagIndex"    # I

    .line 911
    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 912
    return-void

    .line 915
    :cond_7
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 916
    .local v0, "readIndex":I
    iget-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 917
    .local v1, "timeReference":J
    new-instance v3, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {v3}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>()V

    .line 918
    .local v3, "reusableEntryInstance":Lcom/android/server/power/WakeLockLog$LogEntry;
    :goto_10
    iget v4, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-eq v0, v4, :cond_a2

    .line 919
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v4

    .line 920
    .local v4, "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    const-string v6, "PowerManagerService.WLLog"

    if-eqz v5, :cond_40

    .line 921
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Searching to remove tags @ "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_40
    if-nez v4, :cond_59

    .line 924
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Entry is unreadable - Unexpected @ "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    goto :goto_a2

    .line 927
    :cond_59
    iget-object v5, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    const/4 v7, 0x0

    if-eqz v5, :cond_8f

    iget-object v5, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iget v5, v5, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    if-ne v5, p1, :cond_8f

    .line 930
    iput-object v7, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 931
    invoke-direct {p0, v0, v4, v1, v2}, Lcom/android/server/power/WakeLockLog$TheLog;->writeEntryAt(ILcom/android/server/power/WakeLockLog$LogEntry;J)V

    .line 932
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 933
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove tag index: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " @ "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_8f
    iget-wide v1, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 937
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v4, v7, v8, v9}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v5

    .line 938
    .local v5, "entryByteSize":I
    add-int v6, v0, v5

    iget-object v7, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v7, v7

    rem-int v0, v6, v7

    .line 939
    .end local v4    # "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    .end local v5    # "entryByteSize":I
    goto/16 :goto_10

    .line 940
    :cond_a2
    :goto_a2
    return-void
.end method

.method private writeBytesAt(I[BI)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "buffer"    # [B
    .param p3, "size"    # I

    .line 1047
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_10

    .line 1048
    add-int v1, p1, v0

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 1049
    .local v1, "indexIntoMainBuffer":I
    aget-byte v3, p2, v0

    aput-byte v3, v2, v1

    .line 1047
    .end local v1    # "indexIntoMainBuffer":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1051
    .end local v0    # "i":I
    :cond_10
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write Byte: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService.WLLog"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_32
    return-void
.end method

.method private writeEntryAt(ILcom/android/server/power/WakeLockLog$LogEntry;J)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "entry"    # Lcom/android/server/power/WakeLockLog$LogEntry;
    .param p3, "timeReference"    # J

    .line 1028
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    invoke-virtual {v0, p2, v1, p3, p4}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v0

    .line 1029
    .local v0, "size":I
    if-lez v0, :cond_47

    .line 1030
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1031
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing Entry ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    .line 1032
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1031
    const-string v2, "PowerManagerService.WLLog"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_42
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/power/WakeLockLog$TheLog;->writeBytesAt(I[BI)V

    .line 1036
    :cond_47
    return-void
.end method


# virtual methods
.method addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V
    .registers 10
    .param p1, "entry"    # Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 784
    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 786
    iget-wide v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 789
    :cond_c
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v0

    .line 790
    .local v0, "size":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 791
    return-void

    .line 792
    :cond_1a
    const/4 v1, -0x2

    if-ne v0, v1, :cond_35

    .line 796
    new-instance v1, Lcom/android/server/power/WakeLockLog$LogEntry;

    iget-wide v3, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>(JILcom/android/server/power/WakeLockLog$TagData;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/power/WakeLockLog$TheLog;->addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V

    .line 797
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    iget-wide v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v0

    .line 800
    :cond_35
    const/16 v1, 0x9

    const-string v2, "PowerManagerService.WLLog"

    if-gt v0, v1, :cond_d0

    if-gtz v0, :cond_3f

    goto/16 :goto_d0

    .line 807
    :cond_3f
    invoke-direct {p0, v0}, Lcom/android/server/power/WakeLockLog$TheLog;->makeSpace(I)Z

    move-result v1

    if-nez v1, :cond_46

    .line 808
    return-void

    .line 811
    :cond_46
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    const-string v3, ") ["

    if-eqz v1, :cond_7e

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrote New Entry @("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] as "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    .line 813
    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 812
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_7e
    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    iget-object v4, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    invoke-direct {p0, v1, v4, v0}, Lcom/android/server/power/WakeLockLog$TheLog;->writeBytesAt(I[BI)V

    .line 817
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read written Entry @("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    iget-wide v4, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    const/4 v6, 0x0

    .line 819
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 818
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_b4
    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    .line 822
    iget-wide v1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    .line 824
    iget-object v1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iget-wide v2, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-static {v1, v2, v3}, Lcom/android/server/power/WakeLockLog$TagDatabase;->updateTagTime(Lcom/android/server/power/WakeLockLog$TagData;J)V

    .line 825
    iget-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    .line 826
    return-void

    .line 801
    :cond_d0
    :goto_d0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log entry size is out of expected range: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    return-void
.end method

.method getAllItems(Lcom/android/server/power/WakeLockLog$LogEntry;)Ljava/util/Iterator;
    .registers 3
    .param p1, "tempEntry"    # Lcom/android/server/power/WakeLockLog$LogEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/WakeLockLog$LogEntry;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/android/server/power/WakeLockLog$LogEntry;",
            ">;"
        }
    .end annotation

    .line 838
    new-instance v0, Lcom/android/server/power/WakeLockLog$TheLog$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/WakeLockLog$TheLog$2;-><init>(Lcom/android/server/power/WakeLockLog$TheLog;Lcom/android/server/power/WakeLockLog$LogEntry;)V

    return-object v0
.end method

.method getUsedBufferSize()I
    .registers 3

    .line 773
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v0, v0

    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->getAvailableSpace()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
