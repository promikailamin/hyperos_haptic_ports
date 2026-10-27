.class public Landroid/telephony/ims/ImsCallSession;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;,
        Landroid/telephony/ims/ImsCallSession$Listener;,
        Landroid/telephony/ims/ImsCallSession$State;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ImsCallSession"


# instance fields
.field private greylist-max-o mClosed:Z

.field private greylist-max-o mListener:Landroid/telephony/ims/ImsCallSession$Listener;

.field private blacklist mListenerExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o miSession:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/ImsCallSession;->mListenerExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmListener(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession$Listener;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-void
.end method

.method public constructor greylist-max-o <init>(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 4
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    .line 527
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 531
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 533
    if-eqz p1, :cond_1d

    .line 535
    :try_start_11
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy-IA;)V

    invoke-interface {p1, v0}, Lcom/android/ims/internal/IImsCallSession;->setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1b

    goto :goto_1c

    .line 536
    :catch_1b
    move-exception v0

    .line 537
    :goto_1c
    goto :goto_20

    .line 539
    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    .line 541
    :goto_20
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "listener"    # Landroid/telephony/ims/ImsCallSession$Listener;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 545
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    .line 546
    invoke-virtual {p0, p2, p3}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V

    .line 547
    return-void
.end method


# virtual methods
.method public greylist-max-o accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 828
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 829
    return-void

    .line 833
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 835
    goto :goto_c

    .line 834
    :catch_b
    move-exception v0

    .line 836
    :goto_c
    return-void
.end method

.method public greylist-max-o close()V
    .registers 2

    .line 553
    monitor-enter p0

    .line 554
    :try_start_1
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_7

    .line 555
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_13

    return-void

    .line 559
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->close()V

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10
    .catchall {:try_start_7 .. :try_end_f} :catchall_13

    .line 562
    goto :goto_11

    .line 561
    :catch_10
    move-exception v0

    .line 563
    :goto_11
    :try_start_11
    monitor-exit p0

    .line 564
    return-void

    .line 563
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public greylist-max-o deflect(Ljava/lang/String;)V
    .registers 3
    .param p1, "number"    # Ljava/lang/String;

    .line 844
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 845
    return-void

    .line 849
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->deflect(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 851
    goto :goto_c

    .line 850
    :catch_b
    move-exception v0

    .line 852
    :goto_c
    return-void
.end method

.method public greylist-max-o extendToConference([Ljava/lang/String;)V
    .registers 3
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1000
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1001
    return-void

    .line 1005
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1007
    goto :goto_c

    .line 1006
    :catch_b
    move-exception v0

    .line 1008
    :goto_c
    return-void
.end method

.method public greylist-max-o getCallId()Ljava/lang/String;
    .registers 3

    .line 572
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 573
    return-object v1

    .line 577
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 578
    :catch_d
    move-exception v0

    .line 579
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public greylist-max-o getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    .line 589
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 590
    return-object v1

    .line 594
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 595
    :catch_d
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public greylist-max-o getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    .line 606
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 607
    return-object v1

    .line 611
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 612
    :catch_d
    move-exception v0

    .line 613
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public greylist-max-o getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 658
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 659
    return-object v1

    .line 663
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 664
    :catch_d
    move-exception v0

    .line 665
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public greylist-max-o getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    .line 623
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 624
    return-object v1

    .line 628
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 629
    :catch_d
    move-exception v0

    .line 630
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public greylist-max-o getSession()Lcom/android/ims/internal/IImsCallSession;
    .registers 2

    .line 718
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method public greylist-max-o getState()I
    .registers 3

    .line 676
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 677
    return v1

    .line 681
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getState()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 682
    :catch_d
    move-exception v0

    .line 683
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public greylist-max-o getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 3

    .line 641
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 642
    return-object v1

    .line 646
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 647
    :catch_d
    move-exception v0

    .line 648
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public greylist-max-o hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 929
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 930
    return-void

    .line 934
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 936
    goto :goto_c

    .line 935
    :catch_b
    move-exception v0

    .line 937
    :goto_c
    return-void
.end method

.method public greylist-max-o inviteParticipants([Ljava/lang/String;)V
    .registers 3
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1018
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1019
    return-void

    .line 1023
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->inviteParticipants([Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1025
    goto :goto_c

    .line 1024
    :catch_b
    move-exception v0

    .line 1026
    :goto_c
    return-void
.end method

.method public greylist-max-o isAlive()Z
    .registers 3

    .line 694
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 695
    return v1

    .line 698
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallSession;->getState()I

    move-result v0

    .line 699
    .local v0, "state":I
    packed-switch v0, :pswitch_data_10

    .line 709
    return v1

    .line 707
    :pswitch_e
    const/4 v1, 0x1

    return v1

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public greylist-max-o isInCall()Z
    .registers 3

    .line 727
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 728
    return v1

    .line 732
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->isInCall()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 733
    :catch_d
    move-exception v0

    .line 734
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public greylist-max-o isMultiparty()Z
    .registers 3

    .line 1119
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1120
    return v1

    .line 1124
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->isMultiparty()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 1125
    :catch_d
    move-exception v0

    .line 1126
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public greylist-max-o merge()V
    .registers 2

    .line 964
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 965
    return-void

    .line 969
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->merge()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 971
    goto :goto_c

    .line 970
    :catch_b
    move-exception v0

    .line 972
    :goto_c
    return-void
.end method

.method public greylist-max-o reject(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 861
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 862
    return-void

    .line 866
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->reject(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 868
    goto :goto_c

    .line 867
    :catch_b
    move-exception v0

    .line 869
    :goto_c
    return-void
.end method

.method public greylist-max-o removeParticipants([Ljava/lang/String;)V
    .registers 3
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1036
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1037
    return-void

    .line 1041
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->removeParticipants([Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1043
    goto :goto_c

    .line 1042
    :catch_b
    move-exception v0

    .line 1044
    :goto_c
    return-void
.end method

.method public greylist-max-o resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 947
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 948
    return-void

    .line 952
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 954
    goto :goto_c

    .line 953
    :catch_b
    move-exception v0

    .line 955
    :goto_c
    return-void
.end method

.method public greylist-max-o sendDtmf(CLandroid/os/Message;)V
    .registers 4
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1055
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1056
    return-void

    .line 1060
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->sendDtmf(CLandroid/os/Message;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1062
    goto :goto_c

    .line 1061
    :catch_b
    move-exception v0

    .line 1063
    :goto_c
    return-void
.end method

.method public blacklist sendRtpHeaderExtensions(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 1192
    .local p1, "rtpHeaderExtensions":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtension;>;"
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1193
    return-void

    .line 1197
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsCallSession;->sendRtpHeaderExtensions(Ljava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_10

    .line 1200
    goto :goto_11

    .line 1199
    :catch_10
    move-exception v0

    .line 1201
    :goto_11
    return-void
.end method

.method public greylist-max-o sendRttMessage(Ljava/lang/String;)V
    .registers 3
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 1136
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1137
    return-void

    .line 1141
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttMessage(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1143
    goto :goto_c

    .line 1142
    :catch_b
    move-exception v0

    .line 1144
    :goto_c
    return-void
.end method

.method public greylist-max-o sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "to"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1152
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1153
    return-void

    .line 1157
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1159
    goto :goto_c

    .line 1158
    :catch_b
    move-exception v0

    .line 1160
    :goto_c
    return-void
.end method

.method public greylist-max-o sendRttModifyResponse(Z)V
    .registers 3
    .param p1, "response"    # Z

    .line 1168
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1169
    return-void

    .line 1173
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttModifyResponse(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1175
    goto :goto_c

    .line 1174
    :catch_b
    move-exception v0

    .line 1176
    :goto_c
    return-void
.end method

.method public greylist-max-o sendUssd(Ljava/lang/String;)V
    .registers 3
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 1103
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1104
    return-void

    .line 1108
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendUssd(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1110
    goto :goto_c

    .line 1109
    :catch_b
    move-exception v0

    .line 1111
    :goto_c
    return-void
.end method

.method public blacklist setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "listener"    # Landroid/telephony/ims/ImsCallSession$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 748
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    .line 749
    if-eqz p2, :cond_6

    .line 750
    iput-object p2, p0, Landroid/telephony/ims/ImsCallSession;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 752
    :cond_6
    return-void
.end method

.method public greylist-max-o setMute(Z)V
    .registers 3
    .param p1, "muted"    # Z

    .line 760
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 761
    return-void

    .line 765
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->setMute(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 767
    goto :goto_c

    .line 766
    :catch_b
    move-exception v0

    .line 768
    :goto_c
    return-void
.end method

.method public greylist-max-o start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 785
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 786
    return-void

    .line 790
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 792
    goto :goto_c

    .line 791
    :catch_b
    move-exception v0

    .line 793
    :goto_c
    return-void
.end method

.method public greylist-max-o start([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 810
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 811
    return-void

    .line 815
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 817
    goto :goto_c

    .line 816
    :catch_b
    move-exception v0

    .line 818
    :goto_c
    return-void
.end method

.method public greylist-max-o startDtmf(C)V
    .registers 3
    .param p1, "c"    # C

    .line 1073
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1074
    return-void

    .line 1078
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->startDtmf(C)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1080
    goto :goto_c

    .line 1079
    :catch_b
    move-exception v0

    .line 1081
    :goto_c
    return-void
.end method

.method public greylist-max-o stopDtmf()V
    .registers 2

    .line 1087
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1088
    return-void

    .line 1092
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->stopDtmf()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1094
    goto :goto_c

    .line 1093
    :catch_b
    move-exception v0

    .line 1095
    :goto_c
    return-void
.end method

.method public greylist-max-o terminate(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 912
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 913
    return-void

    .line 917
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->terminate(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 919
    goto :goto_c

    .line 918
    :catch_b
    move-exception v0

    .line 920
    :goto_c
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1709
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ImsCallSession objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1711
    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallSession;->getState()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    const-string v1, " callId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist transfer(Landroid/telephony/ims/ImsCallSession;)V
    .registers 4
    .param p1, "transferToSession"    # Landroid/telephony/ims/ImsCallSession;

    .line 894
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 895
    return-void

    .line 899
    :cond_5
    if-eqz p1, :cond_13

    .line 900
    :try_start_7
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallSession;->getSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsCallSession;->consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_13

    .line 902
    :catch_11
    move-exception v0

    goto :goto_14

    .line 903
    :cond_13
    :goto_13
    nop

    .line 904
    :goto_14
    return-void
.end method

.method public blacklist transfer(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z

    .line 878
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 879
    return-void

    .line 883
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->transfer(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 885
    goto :goto_c

    .line 884
    :catch_b
    move-exception v0

    .line 886
    :goto_c
    return-void
.end method

.method public greylist-max-o update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 982
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 983
    return-void

    .line 987
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 989
    goto :goto_c

    .line 988
    :catch_b
    move-exception v0

    .line 990
    :goto_c
    return-void
.end method
