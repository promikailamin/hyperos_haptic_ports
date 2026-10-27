.class Landroid/view/ViewDebug$StreamingPictureCallbackHandler;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Landroid/graphics/HardwareRenderer$PictureCapturedCallback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamingPictureCallbackHandler"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final blacklist mQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/graphics/Picture;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRenderThread:Ljava/lang/Thread;

.field private final blacklist mRenderer:Landroid/graphics/HardwareRenderer;

.field private blacklist mStopListening:Z


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/HardwareRenderer;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "renderer"    # Landroid/graphics/HardwareRenderer;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/HardwareRenderer;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 971
    .local p2, "callback":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/io/OutputStream;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 966
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    .line 972
    iput-object p1, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mRenderer:Landroid/graphics/HardwareRenderer;

    .line 973
    iput-object p2, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mCallback:Ljava/util/concurrent/Callable;

    .line 974
    iput-object p3, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 975
    invoke-virtual {p1, p0}, Landroid/graphics/HardwareRenderer;->setPictureCaptureCallback(Landroid/graphics/HardwareRenderer$PictureCapturedCallback;)V

    .line 976
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/HardwareRenderer;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Landroid/view/ViewDebug$StreamingPictureCallbackHandler-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;-><init>(Landroid/graphics/HardwareRenderer;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 980
    iget-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 981
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mStopListening:Z

    .line 982
    iget-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 983
    iget-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mRenderer:Landroid/graphics/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->setPictureCaptureCallback(Landroid/graphics/HardwareRenderer$PictureCapturedCallback;)V

    .line 984
    return-void
.end method

.method public blacklist onPictureCaptured(Landroid/graphics/Picture;)V
    .registers 5
    .param p1, "picture"    # Landroid/graphics/Picture;

    .line 988
    iget-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 989
    iget-boolean v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mStopListening:Z

    if-eqz v0, :cond_15

    .line 990
    iget-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 991
    iget-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mRenderer:Landroid/graphics/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->setPictureCaptureCallback(Landroid/graphics/HardwareRenderer$PictureCapturedCallback;)V

    .line 992
    return-void

    .line 994
    :cond_15
    iget-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mRenderThread:Ljava/lang/Thread;

    if-nez v0, :cond_1f

    .line 995
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mRenderThread:Ljava/lang/Thread;

    .line 997
    :cond_1f
    const/4 v0, 0x1

    .line 998
    .local v0, "needsInvoke":Z
    iget-object v1, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2f

    .line 999
    iget-object v1, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 1000
    const/4 v0, 0x0

    .line 1002
    :cond_2f
    iget-object v1, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1003
    iget-object v1, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1005
    if-eqz v0, :cond_40

    .line 1006
    iget-object v1, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1008
    :cond_40
    return-void
.end method

.method public whitelist test-api run()V
    .registers 7

    .line 1012
    const-string v0, "ViewDebug"

    iget-object v1, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1013
    iget-object v1, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Picture;

    .line 1014
    .local v1, "picture":Landroid/graphics/Picture;
    iget-boolean v2, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mStopListening:Z

    .line 1015
    .local v2, "isStopped":Z
    iget-object v3, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1016
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mRenderThread:Ljava/lang/Thread;

    if-eq v3, v4, :cond_46

    .line 1022
    if-eqz v2, :cond_21

    .line 1023
    return-void

    .line 1025
    :cond_21
    const/4 v3, 0x0

    .line 1027
    .local v3, "stream":Ljava/io/OutputStream;
    :try_start_22
    iget-object v4, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mCallback:Ljava/util/concurrent/Callable;

    invoke-interface {v4}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/OutputStream;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2a} :catch_2c

    move-object v3, v4

    .line 1031
    goto :goto_32

    .line 1028
    :catch_2c
    move-exception v4

    .line 1029
    .local v4, "ex":Ljava/lang/Exception;
    const-string v5, "Aborting rendering commands capture because callback threw exception"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1032
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_32
    if-eqz v3, :cond_42

    .line 1034
    :try_start_34
    invoke-virtual {v1, v3}, Landroid/graphics/Picture;->writeToStream(Ljava/io/OutputStream;)V

    .line 1035
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3a} :catch_3b

    goto :goto_41

    .line 1036
    :catch_3b
    move-exception v4

    .line 1037
    .local v4, "ex":Ljava/io/IOException;
    const-string v5, "Aborting rendering commands capture due to IOException writing to output stream"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1039
    .end local v4    # "ex":Ljava/io/IOException;
    :goto_41
    goto :goto_45

    .line 1041
    :cond_42
    invoke-virtual {p0}, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->close()V

    .line 1043
    :goto_45
    return-void

    .line 1017
    .end local v3    # "stream":Ljava/io/OutputStream;
    :cond_46
    invoke-virtual {p0}, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->close()V

    .line 1018
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "ViewDebug#startRenderingCommandsCapture must be given an executor that invokes asynchronously"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
