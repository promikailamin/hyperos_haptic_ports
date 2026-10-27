.class Landroid/companion/CompanionDeviceManager$Transport;
.super Ljava/lang/Object;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Transport"
.end annotation


# instance fields
.field private final blacklist mAssociationId:I

.field private blacklist mLocalIn:Ljava/io/InputStream;

.field private blacklist mLocalOut:Ljava/io/OutputStream;

.field private final blacklist mRemoteIn:Ljava/io/InputStream;

.field private final blacklist mRemoteOut:Ljava/io/OutputStream;

.field private volatile blacklist mStopped:Z

.field final synthetic blacklist this$0:Landroid/companion/CompanionDeviceManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$Ik2Uk7LbsVCGgMshiZXnrjTwjhI(Landroid/companion/CompanionDeviceManager$Transport;)V
    .registers 1

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager$Transport;->lambda$start$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wIuKynGG0iWZp4O57nBuiu4AG6I(Landroid/companion/CompanionDeviceManager$Transport;)V
    .registers 1

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager$Transport;->lambda$start$1()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/companion/CompanionDeviceManager;ILjava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
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

    .line 2503
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2504
    iput p2, p0, Landroid/companion/CompanionDeviceManager$Transport;->mAssociationId:I

    .line 2505
    iput-object p3, p0, Landroid/companion/CompanionDeviceManager$Transport;->mRemoteIn:Ljava/io/InputStream;

    .line 2506
    iput-object p4, p0, Landroid/companion/CompanionDeviceManager$Transport;->mRemoteOut:Ljava/io/OutputStream;

    .line 2507
    return-void
.end method

.method private blacklist copyWithFlushing(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2577
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 2579
    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    .line 2580
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 2581
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    goto :goto_4

    .line 2583
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$start$0()V
    .registers 4

    .line 2530
    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mLocalIn:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$Transport;->mRemoteOut:Ljava/io/OutputStream;

    invoke-direct {p0, v0, v1}, Landroid/companion/CompanionDeviceManager$Transport;->copyWithFlushing(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2536
    goto :goto_17

    .line 2531
    :catch_8
    move-exception v0

    .line 2532
    iget-boolean v1, p0, Landroid/companion/CompanionDeviceManager$Transport;->mStopped:Z

    if-nez v1, :cond_17

    .line 2533
    const-string v1, "CDM_CompanionDeviceManager"

    const-string v2, "Trouble during outgoing transport"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2534
    invoke-virtual {p0}, Landroid/companion/CompanionDeviceManager$Transport;->stop()V

    .line 2537
    :cond_17
    :goto_17
    return-void
.end method

.method private synthetic blacklist lambda$start$1()V
    .registers 4

    .line 2540
    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mRemoteIn:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$Transport;->mLocalOut:Ljava/io/OutputStream;

    invoke-direct {p0, v0, v1}, Landroid/companion/CompanionDeviceManager$Transport;->copyWithFlushing(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2546
    goto :goto_17

    .line 2541
    :catch_8
    move-exception v0

    .line 2542
    iget-boolean v1, p0, Landroid/companion/CompanionDeviceManager$Transport;->mStopped:Z

    if-nez v1, :cond_17

    .line 2543
    const-string v1, "CDM_CompanionDeviceManager"

    const-string v2, "Trouble during incoming transport"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2544
    invoke-virtual {p0}, Landroid/companion/CompanionDeviceManager$Transport;->stop()V

    .line 2547
    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public blacklist start()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2510
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v0}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmService(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    if-nez v0, :cond_10

    .line 2511
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    return-void

    .line 2515
    :cond_10
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createSocketPair()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 2516
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 2517
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 2518
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v2, p0, Landroid/companion/CompanionDeviceManager$Transport;->mLocalIn:Ljava/io/InputStream;

    .line 2519
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v2, p0, Landroid/companion/CompanionDeviceManager$Transport;->mLocalOut:Ljava/io/OutputStream;

    .line 2522
    :try_start_28
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v1}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmService(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v2}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmContext(Landroid/companion/CompanionDeviceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v3}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmContext(Landroid/companion/CompanionDeviceManager;)Landroid/content/Context;

    move-result-object v3

    .line 2523
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget v4, p0, Landroid/companion/CompanionDeviceManager$Transport;->mAssociationId:I

    .line 2522
    invoke-interface {v1, v2, v3, v4, v0}, Landroid/companion/ICompanionDeviceManager;->attachSystemDataTransport(Ljava/lang/String;IILandroid/os/ParcelFileDescriptor;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_47} :catch_63

    .line 2526
    nop

    .line 2528
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/companion/CompanionDeviceManager$Transport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/companion/CompanionDeviceManager$Transport$$ExternalSyntheticLambda0;-><init>(Landroid/companion/CompanionDeviceManager$Transport;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2537
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2538
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/companion/CompanionDeviceManager$Transport$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/companion/CompanionDeviceManager$Transport$$ExternalSyntheticLambda1;-><init>(Landroid/companion/CompanionDeviceManager$Transport;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2547
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2548
    return-void

    .line 2524
    :catch_63
    move-exception v0

    .line 2525
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to configure transport"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist stop()V
    .registers 6

    .line 2551
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v0}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmService(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    const-string v1, "CDM_CompanionDeviceManager"

    if-nez v0, :cond_10

    .line 2552
    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    return-void

    .line 2556
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mStopped:Z

    .line 2559
    :try_start_13
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v0}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmService(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v2}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmContext(Landroid/companion/CompanionDeviceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v3}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmContext(Landroid/companion/CompanionDeviceManager;)Landroid/content/Context;

    move-result-object v3

    .line 2560
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget v4, p0, Landroid/companion/CompanionDeviceManager$Transport;->mAssociationId:I

    .line 2559
    invoke-interface {v0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager;->detachSystemDataTransport(Ljava/lang/String;II)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_32} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_32} :catch_33

    .line 2563
    goto :goto_39

    .line 2561
    :catch_33
    move-exception v0

    .line 2562
    const-string v2, "Failed to detach transport"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2565
    :goto_39
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mRemoteIn:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2566
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mRemoteOut:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2567
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mLocalIn:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2568
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mLocalOut:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2569
    return-void
.end method
