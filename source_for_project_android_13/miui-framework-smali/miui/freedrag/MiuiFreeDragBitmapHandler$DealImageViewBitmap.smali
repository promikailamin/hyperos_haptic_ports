.class Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealImageViewBitmap;
.super Lmiui/freedrag/MiuiFreeDragBitmapHandler;
.source "MiuiFreeDragBitmapHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/freedrag/MiuiFreeDragBitmapHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DealImageViewBitmap"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/freedrag/MiuiFreeDragBitmapHandler;-><init>(Lmiui/freedrag/MiuiFreeDragBitmapHandler-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealImageViewBitmap-IA;)V
    .registers 2

    invoke-direct {p0}, Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealImageViewBitmap;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist extractBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 53
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_17

    .line 55
    const-string v0, "MiuiFreeDragBitmapHandler"

    const-string v1, "Get bitmap from ImageView."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lmiui/freedrag/MiuiFreeDragBitmapStrategy;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 60
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method
