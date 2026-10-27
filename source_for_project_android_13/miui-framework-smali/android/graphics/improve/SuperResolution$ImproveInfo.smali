.class public Landroid/graphics/improve/SuperResolution$ImproveInfo;
.super Ljava/lang/Object;
.source "SuperResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/improve/SuperResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImproveInfo"
.end annotation


# instance fields
.field blacklist clsName:Ljava/lang/String;

.field blacklist drawable:Landroid/graphics/drawable/Drawable;

.field blacklist newBitmap:Landroid/graphics/Bitmap;

.field blacklist oldBitmap:Landroid/graphics/Bitmap;

.field blacklist startTime:J

.field private blacklist weakImg:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getImageView()Landroid/widget/ImageView;
    .registers 2

    .line 438
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->weakImg:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    .line 439
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0

    .line 441
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setImageView(Landroid/widget/ImageView;)V
    .registers 3
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .line 434
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->weakImg:Ljava/lang/ref/WeakReference;

    .line 435
    return-void
.end method
