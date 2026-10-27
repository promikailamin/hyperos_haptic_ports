.class public Landroid/app/blob/BlobStoreManager$Session;
.super Ljava/lang/Object;
.source "BlobStoreManager.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/blob/BlobStoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# instance fields
.field private final blacklist mSession:Landroid/app/blob/IBlobStoreSession;


# direct methods
.method private constructor blacklist <init>(Landroid/app/blob/IBlobStoreSession;)V
    .registers 2

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    iput-object p1, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    .line 675
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/blob/IBlobStoreSession;Landroid/app/blob/BlobStoreManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/blob/BlobStoreManager$Session;-><init>(Landroid/app/blob/IBlobStoreSession;)V

    return-void
.end method


# virtual methods
.method public whitelist abandon()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 788
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->abandon()V
    :try_end_5
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 794
    nop

    .line 795
    return-void

    .line 792
    :catch_7
    move-exception v0

    .line 793
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 789
    :catch_d
    move-exception v0

    .line 790
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 791
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist allowPackageAccess(Ljava/lang/String;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 817
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xdf

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v3

    :goto_10
    const-string/jumbo v1, "packageName is longer than 223 chars"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 820
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    array-length v0, p2

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    move v2, v3

    :goto_20
    const-string v0, "certificate is longer than 32 chars"

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 824
    :try_start_25
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0, p1, p2}, Landroid/app/blob/IBlobStoreSession;->allowPackageAccess(Ljava/lang/String;[B)V
    :try_end_2a
    .catch Landroid/os/ParcelableException; {:try_start_25 .. :try_end_2a} :catch_32
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2c

    .line 831
    nop

    .line 832
    return-void

    .line 829
    :catch_2c
    move-exception p1

    .line 830
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 825
    :catch_32
    move-exception p1

    .line 826
    const-class p2, Ljava/io/IOException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 827
    const-class p2, Landroid/os/LimitExceededException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 828
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist allowPublicAccess()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 921
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->allowPublicAccess()V
    :try_end_5
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 927
    nop

    .line 928
    return-void

    .line 925
    :catch_7
    move-exception v0

    .line 926
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 922
    :catch_d
    move-exception v0

    .line 923
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 924
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist allowSameSignatureAccess()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 873
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->allowSameSignatureAccess()V
    :try_end_5
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 879
    nop

    .line 880
    return-void

    .line 877
    :catch_7
    move-exception v0

    .line 878
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 874
    :catch_d
    move-exception v0

    .line 875
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 876
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 769
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->close()V
    :try_end_5
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 775
    nop

    .line 776
    return-void

    .line 773
    :catch_7
    move-exception v0

    .line 774
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 770
    :catch_d
    move-exception v0

    .line 771
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 772
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist commit(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 979
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    new-instance v1, Landroid/app/blob/BlobStoreManager$Session$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/app/blob/BlobStoreManager$Session$1;-><init>(Landroid/app/blob/BlobStoreManager$Session;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Landroid/app/blob/IBlobStoreSession;->commit(Landroid/app/blob/IBlobCommitCallback;)V
    :try_end_a
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_a} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 990
    nop

    .line 991
    return-void

    .line 988
    :catch_c
    move-exception p1

    .line 989
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 985
    :catch_12
    move-exception p1

    .line 986
    const-class p2, Ljava/io/IOException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 987
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist getSize()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 751
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->getSize()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 755
    :catch_7
    move-exception v0

    .line 756
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 752
    :catch_d
    move-exception v0

    .line 753
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 754
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isPackageAccessAllowed(Ljava/lang/String;[B)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 850
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0, p1, p2}, Landroid/app/blob/IBlobStoreSession;->isPackageAccessAllowed(Ljava/lang/String;[B)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 854
    :catch_7
    move-exception p1

    .line 855
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 851
    :catch_d
    move-exception p1

    .line 852
    const-class p2, Ljava/io/IOException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 853
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist isPublicAccessAllowed()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 940
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->isPublicAccessAllowed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 944
    :catch_7
    move-exception v0

    .line 945
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 941
    :catch_d
    move-exception v0

    .line 942
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 943
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isSameSignatureAccessAllowed()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 893
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->isSameSignatureAccessAllowed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 897
    :catch_7
    move-exception v0

    .line 898
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 894
    :catch_d
    move-exception v0

    .line 895
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 896
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist openRead()Landroid/os/ParcelFileDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 729
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->openRead()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 733
    :catch_7
    move-exception v0

    .line 734
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 730
    :catch_d
    move-exception v0

    .line 731
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 732
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist openWrite(JJ)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 705
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/blob/IBlobStoreSession;->openWrite(JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object p3

    .line 706
    invoke-virtual {p3, p1, p2}, Landroid/os/ParcelFileDescriptor;->seekTo(J)J
    :try_end_9
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_9} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 707
    return-object p3

    .line 711
    :catch_a
    move-exception p1

    .line 712
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 708
    :catch_10
    move-exception p1

    .line 709
    const-class p2, Ljava/io/IOException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 710
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
