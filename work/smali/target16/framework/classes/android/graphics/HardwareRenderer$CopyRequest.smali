.class public abstract Landroid/graphics/HardwareRenderer$CopyRequest;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CopyRequest"
.end annotation


# instance fields
.field protected blacklist mDestinationBitmap:Landroid/graphics/Bitmap;

.field final blacklist mSrcRect:Landroid/graphics/Rect;


# direct methods
.method protected constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 1215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1216
    iput-object p2, p0, Landroid/graphics/HardwareRenderer$CopyRequest;->mDestinationBitmap:Landroid/graphics/Bitmap;

    .line 1217
    if-eqz p1, :cond_a

    .line 1218
    iput-object p1, p0, Landroid/graphics/HardwareRenderer$CopyRequest;->mSrcRect:Landroid/graphics/Rect;

    goto :goto_11

    .line 1220
    :cond_a
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/graphics/HardwareRenderer$CopyRequest;->mSrcRect:Landroid/graphics/Rect;

    .line 1222
    :goto_11
    return-void
.end method


# virtual methods
.method public blacklist getDestinationBitmap(II)J
    .registers 4

    .line 1228
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$CopyRequest;->mDestinationBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_c

    .line 1229
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1230
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/HardwareRenderer$CopyRequest;->mDestinationBitmap:Landroid/graphics/Bitmap;

    .line 1232
    :cond_c
    iget-object p1, p0, Landroid/graphics/HardwareRenderer$CopyRequest;->mDestinationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide p1

    return-wide p1
.end method

.method public abstract blacklist onCopyFinished(I)V
.end method
