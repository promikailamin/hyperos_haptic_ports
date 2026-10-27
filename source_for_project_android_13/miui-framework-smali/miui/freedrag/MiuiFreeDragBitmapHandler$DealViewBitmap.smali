.class Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealViewBitmap;
.super Lmiui/freedrag/MiuiFreeDragBitmapHandler;
.source "MiuiFreeDragBitmapHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/freedrag/MiuiFreeDragBitmapHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DealViewBitmap"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/freedrag/MiuiFreeDragBitmapHandler;-><init>(Lmiui/freedrag/MiuiFreeDragBitmapHandler-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealViewBitmap-IA;)V
    .registers 2

    invoke-direct {p0}, Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealViewBitmap;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist extractBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 83
    const-string v0, "MiuiFreeDragBitmapHandler"

    const-string v1, "Get bitmap from View."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {p1}, Lmiui/freedrag/MiuiFreeDragBitmapStrategy;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lmiui/freedrag/MiuiFreeDragBitmapStrategy;->removeBlackEdge(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
