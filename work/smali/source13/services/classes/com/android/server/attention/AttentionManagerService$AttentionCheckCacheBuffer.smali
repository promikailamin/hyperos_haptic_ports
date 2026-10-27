.class public final Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "AttentionCheckCacheBuffer"
.end annotation


# instance fields
.field private final mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

.field private mSize:I

.field private mStartIndex:I


# direct methods
.method static bridge synthetic -$$Nest$mdump(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    .line 553
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    .line 554
    iput v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    .line 555
    return-void
.end method

.method private dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 578
    const-string v0, "attention check cache:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 580
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    if-ge v0, v1, :cond_4f

    .line 581
    invoke-virtual {p0, v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->get(I)Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    move-result-object v1

    .line 582
    .local v1, "cache":Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
    if-eqz v1, :cond_4c

    .line 583
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timestamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->-$$Nest$fgetmTimestamp(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->-$$Nest$fgetmResult(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 580
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 589
    .end local v0    # "i":I
    .end local v1    # "cache":Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
    :cond_4f
    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)V
    .registers 7
    .param p1, "cache"    # Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    .line 563
    iget v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    iget v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    add-int v2, v0, v1

    const/4 v3, 0x5

    rem-int/2addr v2, v3

    .line 564
    .local v2, "nextIndex":I
    iget-object v4, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    aput-object p1, v4, v2

    .line 565
    if-ne v1, v3, :cond_13

    .line 566
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    goto :goto_17

    .line 568
    :cond_13
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    .line 570
    :goto_17
    return-void
.end method

.method public get(I)Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
    .registers 4
    .param p1, "offset"    # I

    .line 573
    iget v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x0

    goto :goto_f

    .line 574
    :cond_6
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    iget v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    add-int/2addr v1, p1

    rem-int/lit8 v1, v1, 0x5

    aget-object v0, v0, v1

    .line 573
    :goto_f
    return-object v0
.end method

.method public getLast()Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
    .registers 3

    .line 558
    iget v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    iget v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x5

    .line 559
    .local v0, "lastIdx":I
    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    :cond_d
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    aget-object v1, v1, v0

    :goto_11
    return-object v1
.end method
