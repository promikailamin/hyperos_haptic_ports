.class Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealRelayoutBitmap;
.super Lmiui/freedrag/MiuiFreeDragBitmapHandler;
.source "MiuiFreeDragBitmapHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/freedrag/MiuiFreeDragBitmapHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DealRelayoutBitmap"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/freedrag/MiuiFreeDragBitmapHandler;-><init>(Lmiui/freedrag/MiuiFreeDragBitmapHandler-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealRelayoutBitmap-IA;)V
    .registers 2

    invoke-direct {p0}, Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealRelayoutBitmap;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist extractBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get bitmap from relayout View. layerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isHardwareAccelerated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "MiuiFreeDragBitmapHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {p1}, Lmiui/freedrag/MiuiFreeDragBitmapStrategy;->getBitmapFromRelayoutView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
