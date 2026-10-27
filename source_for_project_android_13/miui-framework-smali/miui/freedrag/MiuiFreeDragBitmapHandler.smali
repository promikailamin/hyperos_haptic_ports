.class public abstract Lmiui/freedrag/MiuiFreeDragBitmapHandler;
.super Ljava/lang/Object;
.source "MiuiFreeDragBitmapHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealRelayoutBitmap;,
        Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealViewBitmap;,
        Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealTextureViewBimap;,
        Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealImageViewBitmap;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MiuiFreeDragBitmapHandler"

.field private static blacklist sInstance:Lmiui/freedrag/MiuiFreeDragBitmapHandler;


# instance fields
.field private blacklist mNext:Lmiui/freedrag/MiuiFreeDragBitmapHandler;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/freedrag/MiuiFreeDragBitmapHandler-IA;)V
    .registers 2

    invoke-direct {p0}, Lmiui/freedrag/MiuiFreeDragBitmapHandler;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lmiui/freedrag/MiuiFreeDragBitmapHandler;
    .registers 6

    const-class v0, Lmiui/freedrag/MiuiFreeDragBitmapHandler;

    monitor-enter v0

    .line 18
    :try_start_3
    sget-object v1, Lmiui/freedrag/MiuiFreeDragBitmapHandler;->sInstance:Lmiui/freedrag/MiuiFreeDragBitmapHandler;

    if-nez v1, :cond_28

    .line 19
    new-instance v1, Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealImageViewBitmap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealImageViewBitmap;-><init>(Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealImageViewBitmap-IA;)V

    .line 20
    .local v1, "dealDrawable":Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealImageViewBitmap;
    new-instance v3, Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealTextureViewBimap;

    invoke-direct {v3, v2}, Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealTextureViewBimap;-><init>(Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealTextureViewBimap-IA;)V

    .line 21
    .local v3, "dealTextureView":Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealTextureViewBimap;
    new-instance v4, Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealViewBitmap;

    invoke-direct {v4, v2}, Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealViewBitmap;-><init>(Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealViewBitmap-IA;)V

    .line 22
    .local v4, "dealView":Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealViewBitmap;
    new-instance v5, Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealRelayoutBitmap;

    invoke-direct {v5, v2}, Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealRelayoutBitmap;-><init>(Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealRelayoutBitmap-IA;)V

    move-object v2, v5

    .line 23
    .local v2, "dealRelayout":Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealRelayoutBitmap;
    invoke-virtual {v1, v3}, Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealImageViewBitmap;->setNext(Lmiui/freedrag/MiuiFreeDragBitmapHandler;)V

    .line 24
    invoke-virtual {v3, v4}, Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealTextureViewBimap;->setNext(Lmiui/freedrag/MiuiFreeDragBitmapHandler;)V

    .line 25
    invoke-virtual {v4, v2}, Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealViewBitmap;->setNext(Lmiui/freedrag/MiuiFreeDragBitmapHandler;)V

    .line 26
    sput-object v1, Lmiui/freedrag/MiuiFreeDragBitmapHandler;->sInstance:Lmiui/freedrag/MiuiFreeDragBitmapHandler;

    .line 28
    .end local v1    # "dealDrawable":Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealImageViewBitmap;
    .end local v2    # "dealRelayout":Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealRelayoutBitmap;
    .end local v3    # "dealTextureView":Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealTextureViewBimap;
    .end local v4    # "dealView":Lmiui/freedrag/MiuiFreeDragBitmapHandler$DealViewBitmap;
    :cond_28
    sget-object v1, Lmiui/freedrag/MiuiFreeDragBitmapHandler;->sInstance:Lmiui/freedrag/MiuiFreeDragBitmapHandler;
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2c

    monitor-exit v0

    return-object v1

    .line 17
    :catchall_2c
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected abstract blacklist extractBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
.end method

.method public final blacklist getBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 40
    invoke-virtual {p0, p1}, Lmiui/freedrag/MiuiFreeDragBitmapHandler;->extractBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 42
    invoke-static {v0}, Lmiui/freedrag/MiuiFreeDragBitmapStrategy;->isBitmapEmpty(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_f

    :cond_e
    move-object v1, v0

    :goto_f
    return-object v1

    .line 44
    :cond_10
    iget-object v2, p0, Lmiui/freedrag/MiuiFreeDragBitmapHandler;->mNext:Lmiui/freedrag/MiuiFreeDragBitmapHandler;

    if-eqz v2, :cond_18

    invoke-virtual {v2, p1}, Lmiui/freedrag/MiuiFreeDragBitmapHandler;->getBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_18
    return-object v1
.end method

.method public blacklist setNext(Lmiui/freedrag/MiuiFreeDragBitmapHandler;)V
    .registers 2
    .param p1, "next"    # Lmiui/freedrag/MiuiFreeDragBitmapHandler;

    .line 36
    iput-object p1, p0, Lmiui/freedrag/MiuiFreeDragBitmapHandler;->mNext:Lmiui/freedrag/MiuiFreeDragBitmapHandler;

    .line 37
    return-void
.end method
