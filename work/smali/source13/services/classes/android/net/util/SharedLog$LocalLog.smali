.class final Landroid/net/util/SharedLog$LocalLog;
.super Ljava/lang/Object;
.source "SharedLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/util/SharedLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalLog"
.end annotation


# instance fields
.field private final mLog:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxLines:I


# direct methods
.method constructor <init>(I)V
    .registers 4
    .param p1, "maxLines"    # I

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/net/util/SharedLog$LocalLog;->mMaxLines:I

    .line 220
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Landroid/net/util/SharedLog$LocalLog;->mLog:Ljava/util/Deque;

    .line 221
    return-void
.end method


# virtual methods
.method declared-synchronized append(Ljava/lang/String;)V
    .registers 5
    .param p1, "logLine"    # Ljava/lang/String;

    monitor-enter p0

    .line 224
    :try_start_1
    iget v0, p0, Landroid/net/util/SharedLog$LocalLog;->mMaxLines:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_39

    if-gtz v0, :cond_7

    monitor-exit p0

    return-void

    .line 225
    :cond_7
    :goto_7
    :try_start_7
    iget-object v0, p0, Landroid/net/util/SharedLog$LocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Landroid/net/util/SharedLog$LocalLog;->mMaxLines:I

    if-lt v0, v1, :cond_17

    .line 226
    iget-object v0, p0, Landroid/net/util/SharedLog$LocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    goto :goto_7

    .line 228
    .end local p0    # "this":Landroid/net/util/SharedLog$LocalLog;
    :cond_17
    iget-object v0, p0, Landroid/net/util/SharedLog$LocalLog;->mLog:Ljava/util/Deque;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_39

    .line 229
    monitor-exit p0

    return-void

    .line 223
    .end local p1    # "logLine":Ljava/lang/String;
    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 237
    :try_start_1
    iget-object v0, p0, Landroid/net/util/SharedLog$LocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 238
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    .line 239
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_7

    .line 240
    .end local p0    # "this":Landroid/net/util/SharedLog$LocalLog;
    :cond_17
    monitor-exit p0

    return-void

    .line 236
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized reverseDump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 243
    :try_start_1
    iget-object v0, p0, Landroid/net/util/SharedLog$LocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 244
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 245
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    goto :goto_7

    .line 247
    .end local p0    # "this":Landroid/net/util/SharedLog$LocalLog;
    :cond_17
    monitor-exit p0

    return-void

    .line 242
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method
