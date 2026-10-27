.class final Landroid/graphics/Bitmap$DumpData;
.super Ljava/lang/Object;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DumpData"
.end annotation


# instance fields
.field private blacklist buffers:[[B

.field private blacklist count:I

.field private blacklist format:I

.field private blacklist max:I

.field private blacklist natives:[J

.field private blacklist sizes:[I


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/Bitmap$CompressFormat;I)V
    .registers 3

    .line 1614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1615
    iput p2, p0, Landroid/graphics/Bitmap$DumpData;->max:I

    .line 1616
    iget p1, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    iput p1, p0, Landroid/graphics/Bitmap$DumpData;->format:I

    .line 1617
    new-array p1, p2, [J

    iput-object p1, p0, Landroid/graphics/Bitmap$DumpData;->natives:[J

    .line 1618
    new-array p1, p2, [[B

    iput-object p1, p0, Landroid/graphics/Bitmap$DumpData;->buffers:[[B

    .line 1619
    new-array p1, p2, [I

    iput-object p1, p0, Landroid/graphics/Bitmap$DumpData;->sizes:[I

    .line 1620
    const/4 p1, 0x0

    iput p1, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    .line 1621
    return-void
.end method


# virtual methods
.method public blacklist add(J[BI)V
    .registers 7

    .line 1624
    iget-object v0, p0, Landroid/graphics/Bitmap$DumpData;->natives:[J

    iget v1, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    aput-wide p1, v0, v1

    .line 1625
    iget-object p1, p0, Landroid/graphics/Bitmap$DumpData;->buffers:[[B

    iget p2, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    aput-object p3, p1, p2

    .line 1626
    iget-object p1, p0, Landroid/graphics/Bitmap$DumpData;->sizes:[I

    iget p2, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    aput p4, p1, p2

    .line 1627
    iget p1, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    iget p2, p0, Landroid/graphics/Bitmap$DumpData;->max:I

    if-lt p1, p2, :cond_1b

    iget p1, p0, Landroid/graphics/Bitmap$DumpData;->max:I

    goto :goto_1f

    :cond_1b
    iget p1, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    add-int/lit8 p1, p1, 0x1

    :goto_1f
    iput p1, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    .line 1628
    return-void
.end method

.method public blacklist size()I
    .registers 2

    .line 1631
    iget v0, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    return v0
.end method
