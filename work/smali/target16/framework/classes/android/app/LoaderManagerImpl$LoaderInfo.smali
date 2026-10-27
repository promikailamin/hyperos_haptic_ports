.class final Landroid/app/LoaderManagerImpl$LoaderInfo;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Landroid/content/Loader$OnLoadCanceledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/content/Loader$OnLoadCanceledListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o mArgs:Landroid/os/Bundle;

.field greylist-max-o mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mData:Ljava/lang/Object;

.field greylist-max-o mDeliveredData:Z

.field greylist-max-o mDestroyed:Z

.field greylist-max-o mHaveData:Z

.field final greylist-max-o mId:I

.field greylist-max-o mListenerRegistered:Z

.field greylist-max-o mLoader:Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

.field greylist-max-o mReportNextStart:Z

.field greylist-max-o mRetaining:Z

.field greylist-max-o mRetainingStarted:Z

.field greylist-max-o mStarted:Z

.field final synthetic blacklist this$0:Landroid/app/LoaderManagerImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 257
    iput-object p3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    .line 258
    iput-object p4, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 259
    return-void
.end method


# virtual methods
.method greylist-max-o callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    if-eqz v0, :cond_7f

    .line 491
    nop

    .line 492
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v0}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 493
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v0}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v0

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 494
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v1

    iget-object v1, v1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    const-string/jumbo v2, "onLoadFinished"

    iput-object v2, v1, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_26

    .line 492
    :cond_25
    const/4 v0, 0x0

    .line 497
    :goto_26
    :try_start_26
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_50

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  onLoadFinished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 498
    invoke-virtual {p1, p2}, Landroid/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 497
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_50
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v1, p1, p2}, Landroid/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_26 .. :try_end_55} :catchall_6b

    .line 501
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {p1}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 502
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {p1}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object p1

    iget-object p1, p1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iput-object v0, p1, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 505
    :cond_67
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    goto :goto_7f

    .line 501
    :catchall_6b
    move-exception p1

    iget-object p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {p2}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object p2

    if-eqz p2, :cond_7e

    .line 502
    iget-object p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {p2}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object p2

    iget-object p2, p2, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iput-object v0, p2, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 504
    :cond_7e
    throw p1

    .line 507
    :cond_7f
    :goto_7f
    return-void
.end method

.method greylist-max-o cancel()Z
    .registers 3

    .line 356
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Canceling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_1c
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v0, :cond_36

    .line 358
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->cancelLoad()Z

    move-result v0

    .line 359
    if-nez v0, :cond_35

    .line 360
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {p0, v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->onLoadCanceled(Landroid/content/Loader;)V

    .line 362
    :cond_35
    return v0

    .line 364
    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o destroy()V
    .registers 6

    .line 368
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Destroying: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    .line 370
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 371
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 372
    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v4, 0x0

    if-eqz v3, :cond_9d

    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v3, :cond_9d

    iget-boolean v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v3, :cond_9d

    if-eqz v0, :cond_9d

    .line 373
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_4d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Reseting: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_4d
    nop

    .line 375
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v0}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 376
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v0}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v0

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 377
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v1

    iget-object v1, v1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    const-string/jumbo v3, "onLoaderReset"

    iput-object v3, v1, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_6f

    .line 375
    :cond_6e
    move-object v0, v4

    .line 380
    :goto_6f
    :try_start_6f
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-interface {v1, v3}, Landroid/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroid/content/Loader;)V
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_89

    .line 382
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v1

    if-eqz v1, :cond_9d

    .line 383
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v1

    iget-object v1, v1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iput-object v0, v1, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_9d

    .line 382
    :catchall_89
    move-exception v1

    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v2}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v2

    if-eqz v2, :cond_9c

    .line 383
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {v2}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object v2

    iget-object v2, v2, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iput-object v0, v2, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 385
    :cond_9c
    throw v1

    .line 387
    :cond_9d
    :goto_9d
    iput-object v4, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 388
    iput-object v4, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 389
    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 390
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v0, :cond_bc

    .line 391
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v0, :cond_b7

    .line 392
    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 393
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0, p0}, Landroid/content/Loader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 394
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0, p0}, Landroid/content/Loader;->unregisterOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V

    .line 396
    :cond_b7
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->reset()V

    .line 398
    :cond_bc
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_c5

    .line 399
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 401
    :cond_c5
    return-void
.end method

.method public greylist-max-o dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 523
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 524
    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 525
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 526
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 527
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    const-string v1, "  "

    if-eqz v0, :cond_50

    .line 528
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 530
    :cond_50
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-nez v0, :cond_58

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-eqz v0, :cond_7e

    .line 531
    :cond_58
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 532
    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 533
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 535
    :cond_7e
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 536
    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 537
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 538
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 539
    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 540
    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 541
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_ee

    .line 542
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 546
    :cond_ee
    return-void
.end method

.method greylist-max-o finishRetain()V
    .registers 3

    .line 306
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-eqz v0, :cond_30

    .line 307
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Finished Retaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 309
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eq v0, v1, :cond_30

    .line 310
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_30

    .line 314
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->stop()V

    .line 319
    :cond_30
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-nez v0, :cond_43

    .line 326
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 328
    :cond_43
    return-void
.end method

.method public whitelist onLoadCanceled(Landroid/content/Loader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 405
    sget-boolean p1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    const-string v0, "LoaderManager"

    if-eqz p1, :cond_1d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLoadCanceled: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_1d
    iget-boolean p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    if-eqz p1, :cond_2b

    .line 408
    sget-boolean p1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz p1, :cond_2a

    const-string p1, "  Ignoring load canceled -- destroyed"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_2a
    return-void

    .line 412
    :cond_2b
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object p1, p1, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p0, :cond_41

    .line 415
    sget-boolean p1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz p1, :cond_40

    const-string p1, "  Ignoring load canceled -- not active"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_40
    return-void

    .line 419
    :cond_41
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 420
    if-eqz p1, :cond_73

    .line 424
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_5f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Switching to pending loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_5f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 426
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 428
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/LoaderManagerImpl;->installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V

    .line 430
    :cond_73
    return-void
.end method

.method public whitelist onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 434
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLoadComplete: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1d
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    if-eqz v0, :cond_2b

    .line 437
    sget-boolean p1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz p1, :cond_2a

    const-string p1, "  Ignoring load complete -- destroyed"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_2a
    return-void

    .line 441
    :cond_2b
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_41

    .line 444
    sget-boolean p1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz p1, :cond_40

    const-string p1, "  Ignoring load complete -- not active"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_40
    return-void

    .line 448
    :cond_41
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 449
    if-eqz v0, :cond_74

    .line 453
    sget-boolean p1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz p1, :cond_5f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  Switching to pending loader: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_5f
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 455
    iget-object p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object p2, p2, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 457
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-virtual {p1, v0}, Landroid/app/LoaderManagerImpl;->installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V

    .line 458
    return-void

    .line 463
    :cond_74
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    if-ne v0, p2, :cond_7c

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-nez v0, :cond_88

    .line 464
    :cond_7c
    iput-object p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 466
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_88

    .line 467
    invoke-virtual {p0, p1, p2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 477
    :cond_88
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object p1, p1, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    iget p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 478
    if-eqz p1, :cond_a7

    if-eq p1, p0, :cond_a7

    .line 479
    const/4 p2, 0x0

    iput-boolean p2, p1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 480
    invoke-virtual {p1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 481
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object p1, p1, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    iget p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 484
    :cond_a7
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {p1}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object p1

    if-eqz p1, :cond_c2

    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-virtual {p1}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result p1

    if-nez p1, :cond_c2

    .line 485
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-static {p1}, Landroid/app/LoaderManagerImpl;->-$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    move-result-object p1

    iget-object p1, p1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p1}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 487
    :cond_c2
    return-void
.end method

.method greylist-max-o reportStart()V
    .registers 3

    .line 331
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_1a

    .line 332
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-eqz v0, :cond_1a

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 334
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-nez v0, :cond_1a

    .line 335
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 339
    :cond_1a
    return-void
.end method

.method greylist-max-o retain()V
    .registers 3

    .line 298
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Retaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 300
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 303
    return-void
.end method

.method greylist-max-o start()V
    .registers 5

    .line 262
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eqz v0, :cond_c

    .line 266
    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 267
    return-void

    .line 270
    :cond_c
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_11

    .line 272
    return-void

    .line 275
    :cond_11
    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 277
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Starting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LoaderManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_2f
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-nez v0, :cond_43

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    if-eqz v0, :cond_43

    .line 279
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-interface {v0, v2, v3}, Landroid/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 281
    :cond_43
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v0, :cond_96

    .line 282
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 283
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_64

    goto :goto_7f

    .line 284
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_7f
    :goto_7f
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-nez v0, :cond_91

    .line 289
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v2, p0}, Landroid/content/Loader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 290
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0, p0}, Landroid/content/Loader;->registerOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V

    .line 291
    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 293
    :cond_91
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->startLoading()V

    .line 295
    :cond_96
    return-void
.end method

.method greylist-max-o stop()V
    .registers 3

    .line 342
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 344
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-nez v1, :cond_3c

    .line 345
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v1, :cond_3c

    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v1, :cond_3c

    .line 347
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 348
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0, p0}, Landroid/content/Loader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 349
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0, p0}, Landroid/content/Loader;->unregisterOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V

    .line 350
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->stopLoading()V

    .line 353
    :cond_3c
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 512
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 518
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
