.class Landroid/os/BinderAllocationTracker$MinHeap;
.super Ljava/lang/Object;
.source "BinderAllocationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BinderAllocationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MinHeap"
.end annotation


# instance fields
.field final blacklist mMaxSize:I

.field blacklist minHeap:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Landroid/os/BinderAllocationTracker$Allocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 5
    .param p1, "maxSize"    # I

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Landroid/os/BinderAllocationTracker$MinHeap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/os/BinderAllocationTracker$MinHeap$$ExternalSyntheticLambda0;-><init>()V

    .line 260
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Landroid/os/BinderAllocationTracker$MinHeap;->minHeap:Ljava/util/PriorityQueue;

    .line 263
    iput p1, p0, Landroid/os/BinderAllocationTracker$MinHeap;->mMaxSize:I

    .line 264
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/os/BinderAllocationTracker$MinHeap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BinderAllocationTracker$MinHeap;-><init>(I)V

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Landroid/os/BinderAllocationTracker$Allocation;)I
    .registers 2
    .param p0, "o"    # Landroid/os/BinderAllocationTracker$Allocation;

    .line 260
    iget v0, p0, Landroid/os/BinderAllocationTracker$Allocation;->count:I

    return v0
.end method


# virtual methods
.method blacklist add(Landroid/os/BinderAllocationTracker$Allocation;)V
    .registers 5
    .param p1, "alloc"    # Landroid/os/BinderAllocationTracker$Allocation;

    .line 267
    iget-object v0, p0, Landroid/os/BinderAllocationTracker$MinHeap;->minHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iget v1, p0, Landroid/os/BinderAllocationTracker$MinHeap;->mMaxSize:I

    if-ge v0, v1, :cond_10

    .line 268
    iget-object v0, p0, Landroid/os/BinderAllocationTracker$MinHeap;->minHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 269
    return-void

    .line 272
    :cond_10
    iget-object v0, p0, Landroid/os/BinderAllocationTracker$MinHeap;->minHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BinderAllocationTracker$Allocation;

    .line 273
    .local v0, "minAlloc":Landroid/os/BinderAllocationTracker$Allocation;
    iget v1, p1, Landroid/os/BinderAllocationTracker$Allocation;->count:I

    iget v2, v0, Landroid/os/BinderAllocationTracker$Allocation;->count:I

    if-le v1, v2, :cond_28

    .line 274
    iget-object v1, p0, Landroid/os/BinderAllocationTracker$MinHeap;->minHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 275
    iget-object v1, p0, Landroid/os/BinderAllocationTracker$MinHeap;->minHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_28
    return-void
.end method

.method blacklist toSortedArray()[Landroid/os/BinderAllocationTracker$Allocation;
    .registers 4

    .line 281
    iget-object v0, p0, Landroid/os/BinderAllocationTracker$MinHeap;->minHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/BinderAllocationTracker$Allocation;

    .line 282
    .local v0, "allocations":[Landroid/os/BinderAllocationTracker$Allocation;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_1a

    .line 283
    iget-object v2, p0, Landroid/os/BinderAllocationTracker$MinHeap;->minHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BinderAllocationTracker$Allocation;

    aput-object v2, v0, v1

    .line 282
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 285
    .end local v1    # "i":I
    :cond_1a
    return-object v0
.end method
