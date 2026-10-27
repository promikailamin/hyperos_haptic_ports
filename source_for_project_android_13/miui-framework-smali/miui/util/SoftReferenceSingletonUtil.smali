.class public abstract Lmiui/util/SoftReferenceSingletonUtil;
.super Ljava/lang/Object;
.source "SoftReferenceSingletonUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mInstance:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 13
    .local p0, "this":Lmiui/util/SoftReferenceSingletonUtil;, "Lmiui/util/SoftReferenceSingletonUtil<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/SoftReferenceSingletonUtil;->mInstance:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method protected abstract blacklist createInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final blacklist get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 23
    .local p0, "this":Lmiui/util/SoftReferenceSingletonUtil;, "Lmiui/util/SoftReferenceSingletonUtil<TT;>;"
    monitor-enter p0

    .line 25
    :try_start_1
    iget-object v0, p0, Lmiui/util/SoftReferenceSingletonUtil;->mInstance:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_18

    .line 26
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_c
    invoke-virtual {p0}, Lmiui/util/SoftReferenceSingletonUtil;->createInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 27
    .restart local v1    # "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/util/SoftReferenceSingletonUtil;->mInstance:Ljava/lang/ref/SoftReference;

    .line 29
    :cond_18
    monitor-exit p0

    return-object v1

    .line 30
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method
