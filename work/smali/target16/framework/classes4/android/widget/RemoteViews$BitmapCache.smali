.class Landroid/widget/RemoteViews$BitmapCache;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapCache"
.end annotation


# instance fields
.field blacklist mBitmapHashes:Landroid/util/SparseIntArray;

.field blacklist mBitmapMemory:J

.field greylist-max-r mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 2537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2535
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:J

    .line 2538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 2539
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    .line 2540
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 2542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2535
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:J

    .line 2543
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 2544
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    .line 2545
    const/4 p1, 0x0

    :goto_17
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_35

    .line 2546
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 2547
    if-eqz v0, :cond_32

    .line 2548
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2545
    :cond_32
    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    .line 2551
    :cond_35
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews$BitmapCache;)V
    .registers 4

    .line 2553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2535
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:J

    .line 2554
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 2555
    iget-object p1, p1, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    .line 2556
    return-void
.end method


# virtual methods
.method public greylist-max-o getBitmapForId(I)Landroid/graphics/Bitmap;
    .registers 3

    .line 2580
    const/4 v0, -0x1

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    goto :goto_15

    .line 2583
    :cond_c
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    .line 2581
    :cond_15
    :goto_15
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o getBitmapId(Landroid/graphics/Bitmap;)I
    .registers 5

    .line 2559
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 2560
    return v0

    .line 2562
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 2563
    iget-object v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 2564
    if-eq v2, v0, :cond_11

    .line 2565
    return v2

    .line 2567
    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2568
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2570
    :cond_1b
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2571
    iget-object p1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2572
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:J

    .line 2573
    iget-object p1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public blacklist getBitmapMemory()J
    .registers 7

    .line 2600
    iget-wide v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_28

    .line 2601
    iput-wide v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:J

    .line 2602
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2603
    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_28

    .line 2604
    iget-wide v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:J

    iget-object v4, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:J

    .line 2603
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2607
    :cond_28
    iget-wide v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:J

    return-wide v0
.end method

.method public blacklist mergeWithCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .registers 4

    .line 2611
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 2612
    iget-object v1, p1, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapId(Landroid/graphics/Bitmap;)I

    .line 2611
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2614
    :cond_17
    return-void
.end method

.method public greylist-max-o writeBitmapsToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 2587
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2588
    return-void
.end method

.method public blacklist writeBitmapsToProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7

    .line 2591
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 2592
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 2593
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2594
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2595
    const-wide v3, 0x20c0000000eL

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 2591
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2597
    :cond_2c
    return-void
.end method
