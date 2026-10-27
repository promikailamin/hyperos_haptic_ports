.class Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealTextureViewBimap;
.super Lmiui/freedrag/MiuiFreeDragBitmapHandler;
.source "MiuiFreeDragBitmapHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/freedrag/MiuiFreeDragBitmapHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DealTextureViewBimap"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/freedrag/MiuiFreeDragBitmapHandler;-><init>(Lmiui/freedrag/MiuiFreeDragBitmapHandler-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealTextureViewBimap-IA;)V
    .registers 2

    invoke-direct {p0}, Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealTextureViewBimap;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist extractBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 68
    instance-of v0, p1, Landroid/view/TextureView;

    if-eqz v0, :cond_13

    .line 70
    const-string v0, "MiuiFreeDragBitmapHandler"

    const-string v1, "Get bitmap from TextureView."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    move-object v0, p1

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 74
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method
