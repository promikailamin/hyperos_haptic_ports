.class public final Landroid/hardware/camera2/extension/RequestProcessor;
.super Ljava/lang/Object;
.source "RequestProcessor.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/RequestProcessor$Request;,
        Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;,
        Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RequestProcessor"


# instance fields
.field private final blacklist mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

.field private final blacklist mVendorId:J


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/extension/IRequestProcessorImpl;J)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    .line 55
    iput-wide p2, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mVendorId:J

    .line 56
    return-void
.end method


# virtual methods
.method public whitelist abortCaptures()V
    .registers 3

    .line 400
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    invoke-interface {v0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->abortCaptures()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 403
    nop

    .line 404
    return-void

    .line 401
    :catch_7
    move-exception v0

    .line 402
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setRepeating(Landroid/hardware/camera2/extension/RequestProcessor$Request;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 375
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 376
    iget-wide v2, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mVendorId:J

    .line 377
    invoke-static {v2, v3, v0}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->initializeParcelable(JLjava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 379
    nop

    .line 381
    :try_start_11
    iget-object v2, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/extension/Request;

    new-instance v1, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    invoke-direct {v1, v0, p3, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;-><init>(Ljava/util/List;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v2, p1, v1}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->setRepeating(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result p1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_22} :catch_30

    .line 385
    nop

    .line 386
    const/4 p2, -0x1

    if-eq p1, p2, :cond_27

    .line 392
    return p1

    .line 387
    :cond_27
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const/4 p2, 0x3

    const-string p3, "Failed to set the repeating request"

    invoke-direct {p1, p2, p3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 383
    :catch_30
    move-exception p1

    .line 384
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist stopRepeating()V
    .registers 3

    .line 411
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    invoke-interface {v0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->stopRepeating()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 414
    nop

    .line 415
    return-void

    .line 412
    :catch_7
    move-exception v0

    .line 413
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist submit(Landroid/hardware/camera2/extension/RequestProcessor$Request;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 313
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 314
    iget-wide v2, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mVendorId:J

    .line 315
    invoke-static {v2, v3, v0}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->initializeParcelable(JLjava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 317
    nop

    .line 319
    :try_start_11
    iget-object v2, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/extension/Request;

    new-instance v1, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    invoke-direct {v1, v0, p3, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;-><init>(Ljava/util/List;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v2, p1, v1}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->submit(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result p1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_22} :catch_30

    .line 323
    nop

    .line 325
    const/4 p2, -0x1

    if-eq p1, p2, :cond_27

    .line 330
    return p1

    .line 326
    :cond_27
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const/4 p2, 0x3

    const-string p3, "Failed to submit capture request"

    invoke-direct {p1, p2, p3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 321
    :catch_30
    move-exception p1

    .line 322
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist submitBurst(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/RequestProcessor$Request;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 344
    iget-wide v0, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mVendorId:J

    .line 345
    invoke-static {v0, v1, p1}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->initializeParcelable(JLjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 347
    nop

    .line 349
    :try_start_7
    iget-object v1, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    new-instance v2, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    invoke-direct {v2, p1, p3, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;-><init>(Ljava/util/List;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v0, v2}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->submitBurst(Ljava/util/List;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_20

    .line 353
    nop

    .line 355
    const/4 p2, -0x1

    if-eq p1, p2, :cond_17

    .line 360
    return p1

    .line 356
    :cond_17
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const/4 p2, 0x3

    const-string p3, "Failed to submit burst request"

    invoke-direct {p1, p2, p3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 351
    :catch_20
    move-exception p1

    .line 352
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
