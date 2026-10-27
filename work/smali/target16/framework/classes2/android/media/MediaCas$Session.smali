.class public final Landroid/media/MediaCas$Session;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Session"
.end annotation


# instance fields
.field blacklist mIsClosed:Z

.field final blacklist mSessionId:[B

.field final synthetic blacklist this$0:Landroid/media/MediaCas;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaCas;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 605
    iput-object p1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/media/MediaCas$Session;->mIsClosed:Z

    .line 606
    iput-object p2, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    .line 607
    return-void
.end method

.method private blacklist validateSessionInternalStates()V
    .registers 2

    .line 610
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;

    move-result-object v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICasHidl(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_17

    .line 611
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 613
    :cond_17
    :goto_17
    iget-boolean v0, p0, Landroid/media/MediaCas$Session;->mIsClosed:Z

    if-eqz v0, :cond_1f

    .line 614
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V

    .line 616
    :cond_1f
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 772
    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    .line 774
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 775
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    invoke-interface {v0, v1}, Landroid/hardware/cas/ICas;->closeSession([B)V

    goto :goto_2c

    .line 777
    :cond_17
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICasHidl(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    iget-object v2, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    .line 778
    invoke-static {v1, v2}, Landroid/media/MediaCas;->-$$Nest$mtoByteArray(Landroid/media/MediaCas;[B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/cas/V1_0/ICas;->closeSession(Ljava/util/ArrayList;)I

    move-result v0

    .line 777
    invoke-static {v0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V

    .line 780
    :goto_2c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaCas$Session;->mIsClosed:Z

    .line 781
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0, p0}, Landroid/media/MediaCas;->-$$Nest$mremoveSessionFromResourceMap(Landroid/media/MediaCas;Landroid/media/MediaCas$Session;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_34} :catch_35

    .line 784
    goto :goto_3b

    .line 782
    :catch_35
    move-exception v0

    .line 783
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaCas;)V

    .line 785
    :goto_3b
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 626
    instance-of v0, p1, Landroid/media/MediaCas$Session;

    if-eqz v0, :cond_f

    .line 627
    iget-object v0, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    check-cast p1, Landroid/media/MediaCas$Session;

    iget-object p1, p1, Landroid/media/MediaCas$Session;->mSessionId:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 629
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getSessionId()[B
    .registers 2

    .line 760
    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    .line 761
    iget-object v0, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    return-object v0
.end method

.method public whitelist processEcm([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 708
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/MediaCas$Session;->processEcm([BII)V

    .line 709
    return-void
.end method

.method public whitelist processEcm([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 676
    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    .line 679
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_3f

    if-eqz v0, :cond_23

    .line 681
    :try_start_b
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    add-int/2addr p3, p2

    .line 682
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 681
    invoke-interface {v0, v1, p1}, Landroid/hardware/cas/ICas;->processEcm([B[B)V
    :try_end_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_1b} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1b} :catch_3f

    goto :goto_22

    .line 683
    :catch_1c
    move-exception p1

    .line 684
    :try_start_1d
    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {p1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .line 685
    :goto_22
    goto :goto_3e

    .line 687
    :cond_23
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICasHidl(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    iget-object v2, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    .line 689
    invoke-static {v1, v2}, Landroid/media/MediaCas;->-$$Nest$mtoByteArray(Landroid/media/MediaCas;[B)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v2, p1, p2, p3}, Landroid/media/MediaCas;->-$$Nest$mtoByteArray(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;

    move-result-object p1

    .line 688
    invoke-interface {v0, v1, p1}, Landroid/hardware/cas/V1_0/ICas;->processEcm(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p1

    .line 687
    invoke-static {p1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_3e} :catch_3f

    .line 693
    :goto_3e
    goto :goto_45

    .line 691
    :catch_3f
    move-exception p1

    .line 692
    iget-object p1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {p1}, Landroid/media/MediaCas;->-$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaCas;)V

    .line 694
    :goto_45
    return-void
.end method

.method public whitelist sendSessionEvent(II[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 725
    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    .line 726
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 728
    if-nez p3, :cond_10

    .line 729
    const/4 p3, 0x0

    :try_start_e
    new-array p3, p3, [B

    .line 731
    :cond_10
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/cas/ICas;->sendSessionEvent([BII[B)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1b} :catch_1c

    goto :goto_22

    .line 732
    :catch_1c
    move-exception p1

    .line 733
    iget-object p1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {p1}, Landroid/media/MediaCas;->-$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaCas;)V

    .line 734
    :goto_22
    goto :goto_4d

    .line 736
    :cond_23
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICasHidl11(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_1/ICas;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 742
    :try_start_2b
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICasHidl11(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_1/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    iget-object v2, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    .line 744
    invoke-static {v1, v2}, Landroid/media/MediaCas;->-$$Nest$mtoByteArray(Landroid/media/MediaCas;[B)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v2, p3}, Landroid/media/MediaCas;->-$$Nest$mtoByteArray(Landroid/media/MediaCas;[B)Ljava/util/ArrayList;

    move-result-object p3

    .line 743
    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/cas/V1_1/ICas;->sendSessionEvent(Ljava/util/ArrayList;IILjava/util/ArrayList;)I

    move-result p1

    .line 742
    invoke-static {p1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_46} :catch_47

    .line 747
    goto :goto_4d

    .line 745
    :catch_47
    move-exception p1

    .line 746
    iget-object p1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {p1}, Landroid/media/MediaCas;->-$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaCas;)V

    .line 749
    :goto_4d
    return-void

    .line 737
    :cond_4e
    const-string p1, "MediaCas"

    const-string p2, "Send Session Event isn\'t supported by cas@1.0 interface"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance p1, Landroid/media/MediaCasException$UnsupportedCasException;

    const-string p2, "Send Session Event is not supported"

    invoke-direct {p1, p2}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setPrivateData([B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 643
    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    .line 646
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_3c

    if-eqz v0, :cond_1e

    .line 648
    :try_start_b
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    invoke-interface {v0, v1, p1}, Landroid/hardware/cas/ICas;->setSessionPrivateData([B[B)V
    :try_end_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_16} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_3c

    goto :goto_1d

    .line 649
    :catch_17
    move-exception p1

    .line 650
    :try_start_18
    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {p1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .line 651
    :goto_1d
    goto :goto_3b

    .line 653
    :cond_1e
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICasHidl(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    iget-object v2, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    .line 655
    invoke-static {v1, v2}, Landroid/media/MediaCas;->-$$Nest$mtoByteArray(Landroid/media/MediaCas;[B)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {v2, p1, v4, v3}, Landroid/media/MediaCas;->-$$Nest$mtoByteArray(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;

    move-result-object p1

    .line 654
    invoke-interface {v0, v1, p1}, Landroid/hardware/cas/V1_0/ICas;->setSessionPrivateData(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p1

    .line 653
    invoke-static {p1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_3b} :catch_3c

    .line 659
    :goto_3b
    goto :goto_42

    .line 657
    :catch_3c
    move-exception p1

    .line 658
    iget-object p1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {p1}, Landroid/media/MediaCas;->-$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaCas;)V

    .line 660
    :goto_42
    return-void
.end method
