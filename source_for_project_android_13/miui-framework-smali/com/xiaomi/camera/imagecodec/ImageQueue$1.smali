.class Lcom/xiaomi/camera/imagecodec/ImageQueue$1;
.super Ljava/lang/Object;
.source "ImageQueue.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/ImageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/xiaomi/camera/imagecodec/ImageQueue;


# direct methods
.method constructor blacklist <init>(Lcom/xiaomi/camera/imagecodec/ImageQueue;)V
    .registers 2
    .param p1, "this$0"    # Lcom/xiaomi/camera/imagecodec/ImageQueue;

    .line 137
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue$1;->this$0:Lcom/xiaomi/camera/imagecodec/ImageQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onImageAvailable(Landroid/media/ImageReader;)V
    .registers 9
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 140
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue$1;->this$0:Lcom/xiaomi/camera/imagecodec/ImageQueue;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/ImageQueue;->-$$Nest$fgetmImageLock(Lcom/xiaomi/camera/imagecodec/ImageQueue;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 141
    :try_start_7
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1

    .line 142
    .local v1, "image":Landroid/media/Image;
    if-eqz v1, :cond_41

    .line 143
    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    .line 144
    .local v2, "timestamp":J
    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue$1;->this$0:Lcom/xiaomi/camera/imagecodec/ImageQueue;

    invoke-static {v4}, Lcom/xiaomi/camera/imagecodec/ImageQueue;->-$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/ImageQueue;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onImageAvailable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue$1;->this$0:Lcom/xiaomi/camera/imagecodec/ImageQueue;

    invoke-static {v4}, Lcom/xiaomi/camera/imagecodec/ImageQueue;->-$$Nest$fgetmImageLongSparseArray(Lcom/xiaomi/camera/imagecodec/ImageQueue;)Landroid/util/LongSparseArray;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 146
    .end local v2    # "timestamp":J
    goto :goto_4c

    .line 147
    :cond_41
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue$1;->this$0:Lcom/xiaomi/camera/imagecodec/ImageQueue;

    invoke-static {v2}, Lcom/xiaomi/camera/imagecodec/ImageQueue;->-$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/ImageQueue;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onImageAvailable: no image acquired"

    invoke-static {v2, v3}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_4c
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue$1;->this$0:Lcom/xiaomi/camera/imagecodec/ImageQueue;

    invoke-static {v2}, Lcom/xiaomi/camera/imagecodec/ImageQueue;->-$$Nest$fgetmImageLock(Lcom/xiaomi/camera/imagecodec/ImageQueue;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 150
    .end local v1    # "image":Landroid/media/Image;
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_7 .. :try_end_59} :catchall_57

    throw v1
.end method
