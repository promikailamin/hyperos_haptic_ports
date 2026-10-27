.class public abstract Lcom/xiaomi/camera/imagecodec/VendorTag;
.super Ljava/lang/Object;
.source "VendorTag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mCachedValue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Optional<",
            "TK;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 15
    .local p0, "this":Lcom/xiaomi/camera/imagecodec/VendorTag;, "Lcom/xiaomi/camera/imagecodec/VendorTag<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/VendorTag;->mCachedValue:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method protected abstract blacklist create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public final blacklist getKey()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 19
    .local p0, "this":Lcom/xiaomi/camera/imagecodec/VendorTag;, "Lcom/xiaomi/camera/imagecodec/VendorTag<TK;>;"
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/VendorTag;->mCachedValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    .line 20
    .local v0, "value":Ljava/util/Optional;, "Ljava/util/Optional<TK;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_32

    .line 21
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/VendorTag;->mCachedValue:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 22
    :try_start_11
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/VendorTag;->mCachedValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Optional;

    move-object v0, v2

    .line 23
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 24
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/VendorTag;->mCachedValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/VendorTag;->create()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 26
    :cond_2d
    monitor-exit v1

    goto :goto_32

    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_2f

    throw v2

    .line 28
    :cond_32
    :goto_32
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/VendorTag;->mCachedValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public abstract blacklist getName()Ljava/lang/String;
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 33
    .local p0, "this":Lcom/xiaomi/camera/imagecodec/VendorTag;, "Lcom/xiaomi/camera/imagecodec/VendorTag<TK;>;"
    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
