.class public Lmiui/imagefilters/IImageFilter$ImageFilterGroup;
.super Ljava/lang/Object;
.source "IImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/imagefilters/IImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageFilterGroup"
.end annotation


# instance fields
.field private blacklist mFilters:[Lmiui/imagefilters/IImageFilter;


# direct methods
.method public constructor whitelist <init>([Lmiui/imagefilters/IImageFilter;)V
    .registers 2
    .param p1, "filters"    # [Lmiui/imagefilters/IImageFilter;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;->mFilters:[Lmiui/imagefilters/IImageFilter;

    .line 76
    return-void
.end method


# virtual methods
.method public whitelist processAll(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;
    .registers 6
    .param p1, "inputBitmap"    # Landroid/graphics/Bitmap;

    .line 79
    invoke-static {p1}, Lmiui/imagefilters/ImageData;->bitmapToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v0

    .line 80
    .local v0, "imgData":Lmiui/imagefilters/ImageData;
    iget-object v1, p0, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;->mFilters:[Lmiui/imagefilters/IImageFilter;

    array-length v1, v1

    .line 81
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_17

    .line 82
    iget-object v3, p0, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;->mFilters:[Lmiui/imagefilters/IImageFilter;

    aget-object v3, v3, v2

    .line 83
    .local v3, "filter":Lmiui/imagefilters/IImageFilter;
    invoke-interface {v3, p1}, Lmiui/imagefilters/IImageFilter;->putOriginalImage(Landroid/graphics/Bitmap;)V

    .line 84
    invoke-interface {v3, v0}, Lmiui/imagefilters/IImageFilter;->process(Lmiui/imagefilters/ImageData;)V

    .line 81
    .end local v3    # "filter":Lmiui/imagefilters/IImageFilter;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 86
    .end local v2    # "i":I
    :cond_17
    return-object v0
.end method
