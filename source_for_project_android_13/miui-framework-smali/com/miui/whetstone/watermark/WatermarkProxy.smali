.class public final Lcom/miui/whetstone/watermark/WatermarkProxy;
.super Ljava/lang/Object;
.source "WatermarkProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WatermarkProxy"

.field private static blacklist sInstance:Lcom/miui/whetstone/watermark/WatermarkProxy;


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/watermark/WatermarkProxy;->sInstance:Lcom/miui/whetstone/watermark/WatermarkProxy;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public static declared-synchronized blacklist get(Landroid/content/Context;)Lcom/miui/whetstone/watermark/WatermarkProxy;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/miui/whetstone/watermark/WatermarkProxy;

    monitor-enter v0

    .line 25
    :try_start_3
    sget-object v1, Lcom/miui/whetstone/watermark/WatermarkProxy;->sInstance:Lcom/miui/whetstone/watermark/WatermarkProxy;

    if-nez v1, :cond_e

    .line 26
    new-instance v1, Lcom/miui/whetstone/watermark/WatermarkProxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/watermark/WatermarkProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/whetstone/watermark/WatermarkProxy;->sInstance:Lcom/miui/whetstone/watermark/WatermarkProxy;

    .line 28
    :cond_e
    sget-object v1, Lcom/miui/whetstone/watermark/WatermarkProxy;->sInstance:Lcom/miui/whetstone/watermark/WatermarkProxy;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 24
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public blacklist decodeWatermark(Landroid/graphics/Bitmap;Lcom/miui/whetstone/watermark/WatermarkCallback;Landroid/os/Looper;)V
    .registers 6
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "callback"    # Lcom/miui/whetstone/watermark/WatermarkCallback;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 103
    const-string v0, "WatermarkProxy"

    const-string v1, "decodeWatermark"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public blacklist encodeWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/miui/whetstone/watermark/WatermarkCallback;Landroid/os/Looper;)V
    .registers 7
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "watermark"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/miui/whetstone/watermark/WatermarkCallback;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 99
    const-string v0, "WatermarkProxy"

    const-string v1, "encodeWatermark"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method
