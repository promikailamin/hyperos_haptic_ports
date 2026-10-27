.class public abstract Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;
.super Ljava/lang/Object;
.source "Reprocessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/Reprocessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 93
    .local p0, "this":Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;, "Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract blacklist create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final blacklist get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;, "Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton<TT;>;"
    monitor-enter p0

    .line 100
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_b

    .line 101
    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;->mInstance:Ljava/lang/Object;

    .line 103
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;->mInstance:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    .line 104
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method
