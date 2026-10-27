.class Landroid/media/MediaPlayer$ProvisioningThread;
.super Ljava/lang/Thread;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisioningThread"
.end annotation


# static fields
.field public static final greylist-max-o TIMEOUT_MS:I = 0xea60


# instance fields
.field private greylist-max-o drmLock:Ljava/lang/Object;

.field private greylist-max-o finished:Z

.field private greylist-max-o mediaPlayer:Landroid/media/MediaPlayer;

.field private greylist-max-o onDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

.field private greylist-max-o status:I

.field final synthetic blacklist this$0:Landroid/media/MediaPlayer;

.field private greylist-max-o urlStr:Ljava/lang/String;

.field private greylist-max-o uuid:Ljava/util/UUID;


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaPlayer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 5612
    iput-object p1, p0, Landroid/media/MediaPlayer$ProvisioningThread;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$ProvisioningThread;-><init>(Landroid/media/MediaPlayer;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o initialize(Landroid/media/MediaDrm$ProvisionRequest;Ljava/util/UUID;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$ProvisioningThread;
    .registers 5

    .line 5630
    invoke-static {p3}, Landroid/media/MediaPlayer;->-$$Nest$fgetmDrmLock(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->drmLock:Ljava/lang/Object;

    .line 5631
    invoke-static {p3}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnDrmPreparedHandlerDelegate(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->onDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    .line 5632
    iput-object p3, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 5634
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "&signedRequest="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaPlayer$ProvisioningThread;->urlStr:Ljava/lang/String;

    .line 5635
    iput-object p2, p0, Landroid/media/MediaPlayer$ProvisioningThread;->uuid:Ljava/util/UUID;

    .line 5637
    const/4 p1, 0x3

    iput p1, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    .line 5639
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HandleProvisioninig: Thread is initialised url: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/media/MediaPlayer$ProvisioningThread;->urlStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaPlayer"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5640
    return-object p0
.end method

.method public whitelist test-api run()V
    .registers 10

    .line 5645
    nop

    .line 5646
    nop

    .line 5648
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Landroid/media/MediaPlayer$ProvisioningThread;->urlStr:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5649
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_7f

    .line 5651
    :try_start_12
    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 5652
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 5653
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 5654
    const v5, 0xea60

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 5655
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 5657
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 5658
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 5660
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HandleProvisioninig: Thread run: response "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5661
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5660
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_58} :catch_5b
    .catchall {:try_start_12 .. :try_end_58} :catchall_59

    goto :goto_76

    .line 5666
    :catchall_59
    move-exception v3

    goto :goto_7b

    .line 5662
    :catch_5b
    move-exception v5

    .line 5663
    :try_start_5c
    iput v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    .line 5664
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HandleProvisioninig: Thread run: connect url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_5c .. :try_end_76} :catchall_59

    .line 5666
    :goto_76
    :try_start_76
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 5667
    nop

    .line 5671
    goto :goto_89

    .line 5666
    :goto_7b
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 5667
    throw v3
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7f} :catch_7f

    .line 5668
    :catch_7f
    move-exception v3

    .line 5669
    iput v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    .line 5670
    const-string v4, "MediaPlayer"

    const-string v5, "HandleProvisioninig: Thread run: openConnection"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5673
    :goto_89
    if-eqz v1, :cond_a9

    .line 5675
    :try_start_8b
    iget-object v3, p0, Landroid/media/MediaPlayer$ProvisioningThread;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->-$$Nest$fgetmDrmObj(Landroid/media/MediaPlayer;)Landroid/media/MediaDrm;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    .line 5676
    const-string v1, "MediaPlayer"

    const-string v3, "HandleProvisioninig: Thread run: provideProvisionResponse SUCCEEDED!"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_9b} :catch_9e

    .line 5679
    nop

    .line 5683
    move v1, v0

    goto :goto_aa

    .line 5680
    :catch_9e
    move-exception v1

    .line 5681
    const/4 v3, 0x2

    iput v3, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    .line 5682
    const-string v3, "MediaPlayer"

    const-string v4, "HandleProvisioninig: Thread run: provideProvisionResponse"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5686
    :cond_a9
    move v1, v2

    :goto_aa
    nop

    .line 5689
    iget-object v3, p0, Landroid/media/MediaPlayer$ProvisioningThread;->onDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    const/4 v4, 0x3

    if-eqz v3, :cond_e3

    .line 5691
    iget-object v3, p0, Landroid/media/MediaPlayer$ProvisioningThread;->drmLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5693
    if-eqz v1, :cond_c5

    .line 5694
    :try_start_b5
    iget-object v1, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Landroid/media/MediaPlayer$ProvisioningThread;->uuid:Ljava/util/UUID;

    invoke-static {v1, v5}, Landroid/media/MediaPlayer;->-$$Nest$mresumePrepareDrm(Landroid/media/MediaPlayer;Ljava/util/UUID;)Z

    move-result v1

    .line 5695
    if-eqz v1, :cond_c1

    .line 5696
    move v4, v2

    goto :goto_c2

    .line 5697
    :cond_c1
    nop

    :goto_c2
    iput v4, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    goto :goto_c6

    .line 5693
    :cond_c5
    move v1, v2

    .line 5699
    :goto_c6
    iget-object v4, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v4, v2}, Landroid/media/MediaPlayer;->-$$Nest$fputmDrmProvisioningInProgress(Landroid/media/MediaPlayer;Z)V

    .line 5700
    iget-object v4, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v4, v2}, Landroid/media/MediaPlayer;->-$$Nest$fputmPrepareDrmInProgress(Landroid/media/MediaPlayer;Z)V

    .line 5701
    if-nez v1, :cond_d7

    .line 5702
    iget-object v1, p0, Landroid/media/MediaPlayer$ProvisioningThread;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$mcleanDrmObj(Landroid/media/MediaPlayer;)V

    .line 5704
    :cond_d7
    monitor-exit v3
    :try_end_d8
    .catchall {:try_start_b5 .. :try_end_d8} :catchall_e0

    .line 5707
    iget-object v1, p0, Landroid/media/MediaPlayer$ProvisioningThread;->onDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    iget v2, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->notifyClient(I)V

    goto :goto_107

    .line 5704
    :catchall_e0
    move-exception v0

    :try_start_e1
    monitor-exit v3
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e0

    throw v0

    .line 5711
    :cond_e3
    if-eqz v1, :cond_f5

    .line 5712
    iget-object v1, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/media/MediaPlayer$ProvisioningThread;->uuid:Ljava/util/UUID;

    invoke-static {v1, v3}, Landroid/media/MediaPlayer;->-$$Nest$mresumePrepareDrm(Landroid/media/MediaPlayer;Ljava/util/UUID;)Z

    move-result v1

    .line 5713
    if-eqz v1, :cond_f1

    .line 5714
    move v4, v2

    goto :goto_f2

    .line 5715
    :cond_f1
    nop

    :goto_f2
    iput v4, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    goto :goto_f6

    .line 5711
    :cond_f5
    move v1, v2

    .line 5717
    :goto_f6
    iget-object v3, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v3, v2}, Landroid/media/MediaPlayer;->-$$Nest$fputmDrmProvisioningInProgress(Landroid/media/MediaPlayer;Z)V

    .line 5718
    iget-object v3, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v3, v2}, Landroid/media/MediaPlayer;->-$$Nest$fputmPrepareDrmInProgress(Landroid/media/MediaPlayer;Z)V

    .line 5719
    if-nez v1, :cond_107

    .line 5720
    iget-object v1, p0, Landroid/media/MediaPlayer$ProvisioningThread;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$mcleanDrmObj(Landroid/media/MediaPlayer;)V

    .line 5724
    :cond_107
    :goto_107
    iput-boolean v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->finished:Z

    .line 5725
    return-void
.end method

.method public greylist-max-o status()I
    .registers 2

    .line 5624
    iget v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    return v0
.end method
