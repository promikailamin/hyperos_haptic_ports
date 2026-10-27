.class Landroid/media/MediaCodec$EventHandler;
.super Landroid/os/Handler;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private greylist-max-o mCodec:Landroid/media/MediaCodec;

.field final synthetic blacklist this$0:Landroid/media/MediaCodec;


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1864
    iput-object p1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    .line 1865
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1866
    iput-object p2, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    .line 1867
    return-void
.end method

.method private greylist-max-o handleCallback(Landroid/os/Message;)V
    .registers 8

    .line 1917
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1918
    return-void

    .line 1921
    :cond_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_204

    :pswitch_10
    goto/16 :goto_202

    .line 2042
    :pswitch_12
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->codecAvailability()Z

    move-result p1

    if-eqz p1, :cond_202

    .line 2043
    iget-object p1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {p1}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec$Callback;->onRequiredResourcesChanged(Landroid/media/MediaCodec;)V

    goto/16 :goto_202

    .line 2035
    :pswitch_25
    new-instance v0, Landroid/media/MediaCodec$EventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/MediaCodec$EventHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v0

    if-eqz v0, :cond_202

    .line 2036
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaCodec$Callback;->onMetricsFlushed(Landroid/media/MediaCodec;Landroid/os/PersistableBundle;)V

    goto/16 :goto_202

    .line 1983
    :pswitch_41
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1984
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayDeque;

    .line 1985
    iget-object v3, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v3}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferLock(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1986
    :try_start_4e
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferMode(Landroid/media/MediaCodec;)I

    move-result v4

    packed-switch v4, :pswitch_data_21a

    .line 2004
    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_ad

    .line 1992
    :goto_5a
    :pswitch_5a
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v0, :cond_70

    .line 1993
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 1995
    :cond_70
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec$OutputFrame;

    .line 1996
    if-nez v2, :cond_8c

    .line 1997
    new-instance v2, Landroid/media/MediaCodec$OutputFrame;

    invoke-direct {v2, v0}, Landroid/media/MediaCodec$OutputFrame;-><init>(I)V

    .line 1998
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2000
    :cond_8c
    invoke-virtual {v2, p1}, Landroid/media/MediaCodec$OutputFrame;->setBufferInfos(Ljava/util/ArrayDeque;)V

    .line 2001
    invoke-virtual {v2, v1}, Landroid/media/MediaCodec$OutputFrame;->setAccessible(Z)V

    .line 2002
    goto :goto_9f

    .line 1988
    :pswitch_93
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-$$Nest$fgetmCachedOutputBuffers(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, Landroid/media/MediaCodec;->-$$Nest$mvalidateOutputByteBuffersLocked(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILjava/util/ArrayDeque;)V

    .line 1990
    nop

    .line 2007
    :goto_9f
    monitor-exit v3
    :try_end_a0
    .catchall {:try_start_4e .. :try_end_a0} :catchall_b3

    .line 2008
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v1}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2, v0, p1}, Landroid/media/MediaCodec$Callback;->onOutputBuffersAvailable(Landroid/media/MediaCodec;ILjava/util/ArrayDeque;)V

    .line 2011
    goto/16 :goto_202

    .line 2004
    :goto_ad
    :try_start_ad
    const-string v0, "Unrecognized buffer mode: for large frame output"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2007
    :catchall_b3
    move-exception p1

    monitor-exit v3
    :try_end_b5
    .catchall {:try_start_ad .. :try_end_b5} :catchall_b3

    throw p1

    .line 2022
    :pswitch_b6
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaCodec$Callback;->onCryptoError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CryptoException;)V

    .line 2023
    goto/16 :goto_202

    .line 2028
    :pswitch_c7
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    new-instance v2, Landroid/media/MediaFormat;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v2, p1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec$Callback;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 2030
    goto/16 :goto_202

    .line 2016
    :pswitch_dd
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaCodec$Callback;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    .line 2017
    goto/16 :goto_202

    .line 1952
    :pswitch_ee
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1953
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaCodec$BufferInfo;

    .line 1954
    iget-object v3, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v3}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferLock(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1955
    :try_start_fb
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferMode(Landroid/media/MediaCodec;)I

    move-result v4

    packed-switch v4, :pswitch_data_222

    .line 1972
    new-instance p1, Ljava/lang/IllegalStateException;

    goto :goto_15a

    .line 1960
    :goto_107
    :pswitch_107
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v0, :cond_11d

    .line 1961
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_107

    .line 1963
    :cond_11d
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec$OutputFrame;

    .line 1964
    if-nez v2, :cond_139

    .line 1965
    new-instance v2, Landroid/media/MediaCodec$OutputFrame;

    invoke-direct {v2, v0}, Landroid/media/MediaCodec$OutputFrame;-><init>(I)V

    .line 1966
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1968
    :cond_139
    invoke-virtual {v2, p1}, Landroid/media/MediaCodec$OutputFrame;->setBufferInfo(Landroid/media/MediaCodec$BufferInfo;)V

    .line 1969
    invoke-virtual {v2, v1}, Landroid/media/MediaCodec$OutputFrame;->setAccessible(Z)V

    .line 1970
    goto :goto_14c

    .line 1957
    :pswitch_140
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-$$Nest$fgetmCachedOutputBuffers(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, Landroid/media/MediaCodec;->-$$Nest$mvalidateOutputByteBufferLocked(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 1958
    nop

    .line 1975
    :goto_14c
    monitor-exit v3
    :try_end_14d
    .catchall {:try_start_fb .. :try_end_14d} :catchall_177

    .line 1976
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v1}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2, v0, p1}, Landroid/media/MediaCodec$Callback;->onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 1978
    goto/16 :goto_202

    .line 1972
    :goto_15a
    :try_start_15a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized buffer mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v1}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferMode(Landroid/media/MediaCodec;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1975
    :catchall_177
    move-exception p1

    monitor-exit v3
    :try_end_179
    .catchall {:try_start_15a .. :try_end_179} :catchall_177

    throw p1

    .line 1924
    :pswitch_17a
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1925
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferLock(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1926
    :try_start_183
    iget-object v3, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v3}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferMode(Landroid/media/MediaCodec;)I

    move-result v3

    packed-switch v3, :pswitch_data_22a

    .line 1942
    new-instance p1, Ljava/lang/IllegalStateException;

    goto :goto_1e2

    .line 1931
    :goto_18f
    :pswitch_18f
    iget-object v3, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v3}, Landroid/media/MediaCodec;->-$$Nest$fgetmQueueRequests(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p1, :cond_1a5

    .line 1932
    iget-object v3, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v3}, Landroid/media/MediaCodec;->-$$Nest$fgetmQueueRequests(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18f

    .line 1934
    :cond_1a5
    iget-object v3, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v3}, Landroid/media/MediaCodec;->-$$Nest$fgetmQueueRequests(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaCodec$QueueRequest;

    .line 1935
    if-nez v3, :cond_1c5

    .line 1936
    new-instance v3, Landroid/media/MediaCodec$QueueRequest;

    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v5, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-direct {v3, v4, v5, p1, v2}, Landroid/media/MediaCodec$QueueRequest;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;ILandroid/media/MediaCodec-IA;)V

    .line 1937
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-$$Nest$fgetmQueueRequests(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1939
    :cond_1c5
    invoke-virtual {v3, v1}, Landroid/media/MediaCodec$QueueRequest;->setAccessible(Z)Landroid/media/MediaCodec$QueueRequest;

    .line 1940
    goto :goto_1d5

    .line 1928
    :pswitch_1c9
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-$$Nest$fgetmCachedInputBuffers(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/media/MediaCodec;->-$$Nest$mvalidateInputByteBufferLocked(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;I)V

    .line 1929
    nop

    .line 1945
    :goto_1d5
    monitor-exit v0
    :try_end_1d6
    .catchall {:try_start_183 .. :try_end_1d6} :catchall_1ff

    .line 1946
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaCodec$Callback;->onInputBufferAvailable(Landroid/media/MediaCodec;I)V

    .line 1947
    goto :goto_202

    .line 1942
    :goto_1e2
    :try_start_1e2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized buffer mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferMode(Landroid/media/MediaCodec;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1945
    :catchall_1ff
    move-exception p1

    monitor-exit v0
    :try_end_201
    .catchall {:try_start_1e2 .. :try_end_201} :catchall_1ff

    throw p1

    .line 2053
    :cond_202
    :goto_202
    return-void

    nop

    :pswitch_data_204
    .packed-switch 0x1
        :pswitch_17a
        :pswitch_ee
        :pswitch_dd
        :pswitch_c7
        :pswitch_10
        :pswitch_b6
        :pswitch_41
        :pswitch_25
        :pswitch_12
    .end packed-switch

    :pswitch_data_21a
    .packed-switch 0x0
        :pswitch_93
        :pswitch_5a
    .end packed-switch

    :pswitch_data_222
    .packed-switch 0x0
        :pswitch_140
        :pswitch_107
    .end packed-switch

    :pswitch_data_22a
    .packed-switch 0x0
        :pswitch_1c9
        :pswitch_18f
    .end packed-switch
.end method

.method static synthetic blacklist lambda$handleCallback$0()Ljava/lang/Boolean;
    .registers 1

    .line 2035
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->subsessionMetrics()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 1871
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_94

    goto/16 :goto_93

    .line 1901
    :pswitch_7
    iget-object p1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {p1}, Landroid/media/MediaCodec;->-$$Nest$fgetmListenerLock(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1902
    :try_start_e
    iget-object p1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {p1}, Landroid/media/MediaCodec;->-$$Nest$fgetmOnFirstTunnelFrameReadyListener(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;

    move-result-object p1

    .line 1903
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_20

    .line 1904
    if-nez p1, :cond_19

    .line 1905
    goto/16 :goto_93

    .line 1907
    :cond_19
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-interface {p1, v0}, Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;->onFirstTunnelFrameReady(Landroid/media/MediaCodec;)V

    .line 1908
    goto/16 :goto_93

    .line 1903
    :catchall_20
    move-exception v0

    move-object p1, v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_20

    throw p1

    .line 1883
    :pswitch_24
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    .line 1884
    const/4 v0, 0x0

    .line 1885
    :goto_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-media-time-us"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1886
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-system-nano"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1888
    iget-object v3, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v3}, Landroid/media/MediaCodec;->-$$Nest$fgetmListenerLock(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1889
    :try_start_5e
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmOnFrameRenderedListener(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFrameRenderedListener;

    move-result-object v5

    .line 1890
    monitor-exit v3
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_81

    .line 1891
    if-eqz v1, :cond_80

    if-eqz v2, :cond_80

    if-nez v5, :cond_6c

    .line 1893
    goto :goto_80

    .line 1895
    :cond_6c
    iget-object v6, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    check-cast v1, Ljava/lang/Long;

    .line 1896
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1895
    invoke-interface/range {v5 .. v10}, Landroid/media/MediaCodec$OnFrameRenderedListener;->onFrameRendered(Landroid/media/MediaCodec;JJ)V

    .line 1884
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 1898
    :cond_80
    :goto_80
    goto :goto_93

    .line 1890
    :catchall_81
    move-exception v0

    move-object p1, v0

    :try_start_83
    monitor-exit v3
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_81

    throw p1

    .line 1879
    :pswitch_85
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaCodec$Callback;

    invoke-static {v0, p1}, Landroid/media/MediaCodec;->-$$Nest$fputmCallback(Landroid/media/MediaCodec;Landroid/media/MediaCodec$Callback;)V

    .line 1880
    goto :goto_93

    .line 1874
    :pswitch_8f
    invoke-direct {p0, p1}, Landroid/media/MediaCodec$EventHandler;->handleCallback(Landroid/os/Message;)V

    .line 1875
    nop

    .line 1914
    :goto_93
    return-void

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_85
        :pswitch_24
        :pswitch_7
    .end packed-switch
.end method
