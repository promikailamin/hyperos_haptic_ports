.class public abstract Landroid/telecom/Conference;
.super Landroid/telecom/Conferenceable;
.source "Conference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Conference$FailureSignalingConference;,
        Landroid/telecom/Conference$Listener;
    }
.end annotation


# static fields
.field public static final whitelist CONNECT_TIME_NOT_SPECIFIED:J


# instance fields
.field private blacklist mAddress:Landroid/net/Uri;

.field private blacklist mAddressPresentation:I

.field private greylist-max-o mCallAudioState:Landroid/telecom/CallAudioState;

.field private blacklist mCallDirection:I

.field private blacklist mCallerDisplayName:Ljava/lang/String;

.field private blacklist mCallerDisplayNamePresentation:I

.field private final greylist-max-o mChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mConnectTimeMillis:J

.field private greylist-max-o mConnectionCapabilities:I

.field private final greylist-max-o mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private greylist-max-o mConnectionProperties:I

.field private greylist-max-o mConnectionStartElapsedRealTime:J

.field private greylist-max-o mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private greylist-max-o mDisconnectMessage:Ljava/lang/String;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mExtrasLock:Ljava/lang/Object;

.field private blacklist mIsMultiparty:Z

.field private final greylist-max-o mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/Conference$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private greylist-max-o mPreviousExtraKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRingbackRequested:Z

.field private greylist-max-o mState:I

.field private greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private greylist-max-o mTelecomCallId:Ljava/lang/String;

.field private final greylist-max-o mUnmodifiableChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUnmodifiableConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConferenceableConnections(Landroid/telecom/Conference;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfireOnConferenceableConnectionsChanged(Landroid/telecom/Conference;)V
    .registers 1

    invoke-direct {p0}, Landroid/telecom/Conference;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telecom/PhoneAccountHandle;)V
    .registers 5
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .line 124
    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    .line 82
    nop

    .line 83
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    .line 85
    nop

    .line 86
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Landroid/telecom/Conference;->mState:I

    .line 96
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    .line 97
    iput-wide v1, p0, Landroid/telecom/Conference;->mConnectionStartElapsedRealTime:J

    .line 101
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/telecom/Conference;->mRingbackRequested:Z

    .line 108
    iput-boolean v0, p0, Landroid/telecom/Conference;->mIsMultiparty:Z

    .line 110
    new-instance v0, Landroid/telecom/Conference$1;

    invoke-direct {v0, p0}, Landroid/telecom/Conference$1;-><init>(Landroid/telecom/Conference;)V

    iput-object v0, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    .line 125
    iput-object p1, p0, Landroid/telecom/Conference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 126
    return-void
.end method

.method private final greylist-max-o clearConferenceableList()V
    .registers 4

    .line 775
    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 776
    .local v1, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 777
    .end local v1    # "c":Landroid/telecom/Connection;
    goto :goto_6

    .line 778
    :cond_18
    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 779
    return-void
.end method

.method public static whitelist createFailedConference(Landroid/telecom/DisconnectCause;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/Conference;
    .registers 3
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .line 771
    new-instance v0, Landroid/telecom/Conference$FailureSignalingConference;

    invoke-direct {v0, p0, p1}, Landroid/telecom/Conference$FailureSignalingConference;-><init>(Landroid/telecom/DisconnectCause;Landroid/telecom/PhoneAccountHandle;)V

    return-object v0
.end method

.method private final greylist-max-o fireOnConferenceableConnectionsChanged()V
    .registers 4

    .line 544
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 545
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {p0}, Landroid/telecom/Conference;->getConferenceableConnections()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Conference$Listener;->onConferenceableConnectionsChanged(Landroid/telecom/Conference;Ljava/util/List;)V

    .line 546
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_6

    .line 547
    :cond_1a
    return-void
.end method

.method private greylist-max-o setState(I)V
    .registers 5
    .param p1, "newState"    # I

    .line 734
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    if-eq v0, p1, :cond_1e

    .line 735
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    .line 736
    .local v0, "oldState":I
    iput p1, p0, Landroid/telecom/Conference;->mState:I

    .line 737
    iget-object v1, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conference$Listener;

    .line 738
    .local v2, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v2, p0, v0, p1}, Landroid/telecom/Conference$Listener;->onStateChanged(Landroid/telecom/Conference;II)V

    .line 739
    .end local v2    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_e

    .line 741
    .end local v0    # "oldState":I
    :cond_1e
    return-void
.end method


# virtual methods
.method public final whitelist addConnection(Landroid/telecom/Connection;)Z
    .registers 6
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 451
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "Connection=%s, connection="

    invoke-static {p0, v3, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    if-eqz p1, :cond_3a

    iget-object v1, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 453
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->setConference(Landroid/telecom/Conference;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 454
    iget-object v1, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onConnectionAdded(Landroid/telecom/Connection;)V

    .line 456
    iget-object v1, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conference$Listener;

    .line 457
    .local v2, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v2, p0, p1}, Landroid/telecom/Conference$Listener;->onConnectionAdded(Landroid/telecom/Conference;Landroid/telecom/Connection;)V

    .line 458
    .end local v2    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_29

    .line 459
    :cond_39
    return v0

    .line 462
    :cond_3a
    return v2
.end method

.method final greylist-max-o addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;
    .registers 3
    .param p1, "listener"    # Landroid/telecom/Conference$Listener;

    .line 587
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 588
    return-object p0
.end method

.method public final whitelist destroy()V
    .registers 7

    .line 560
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v3, "destroying conference : %s"

    invoke-static {p0, v3, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    iget-object v1, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    .line 563
    .local v3, "connection":Landroid/telecom/Connection;
    new-array v4, v0, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string/jumbo v5, "removing connection %s"

    invoke-static {p0, v5, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    invoke-virtual {p0, v3}, Landroid/telecom/Conference;->removeConnection(Landroid/telecom/Connection;)V

    .line 565
    .end local v3    # "connection":Landroid/telecom/Connection;
    goto :goto_11

    .line 568
    :cond_2b
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_41

    .line 569
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "setting to disconnected"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 574
    :cond_41
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 575
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Conference$Listener;->onDestroyed(Landroid/telecom/Conference;)V

    .line 576
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_47

    .line 577
    :cond_57
    return-void
.end method

.method public final blacklist getAddress()Landroid/net/Uri;
    .registers 2

    .line 1091
    iget-object v0, p0, Landroid/telecom/Conference;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public final blacklist getAddressPresentation()I
    .registers 2

    .line 1110
    iget v0, p0, Landroid/telecom/Conference;->mAddressPresentation:I

    return v0
.end method

.method public final whitelist getAudioState()Landroid/telecom/AudioState;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final whitelist getCallAudioState()Landroid/telecom/CallAudioState;
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final blacklist getCallDirection()I
    .registers 2

    .line 1136
    iget v0, p0, Landroid/telecom/Conference;->mCallDirection:I

    return v0
.end method

.method public final blacklist getCallerDisplayName()Ljava/lang/String;
    .registers 2

    .line 1118
    iget-object v0, p0, Landroid/telecom/Conference;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist getCallerDisplayNamePresentation()I
    .registers 2

    .line 1127
    iget v0, p0, Landroid/telecom/Conference;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final whitelist getConferenceableConnections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .line 553
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public final whitelist getConnectTimeMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 688
    invoke-virtual {p0}, Landroid/telecom/Conference;->getConnectionTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getConnectionCapabilities()I
    .registers 2

    .line 196
    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    return v0
.end method

.method public final whitelist getConnectionProperties()I
    .registers 2

    .line 206
    iget v0, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    return v0
.end method

.method public final whitelist getConnectionStartElapsedRealtimeMillis()J
    .registers 3

    .line 717
    iget-wide v0, p0, Landroid/telecom/Conference;->mConnectionStartElapsedRealTime:J

    return-wide v0
.end method

.method public final whitelist getConnectionTime()J
    .registers 3

    .line 699
    iget-wide v0, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public final whitelist getConnections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    return-object v0
.end method

.method public final whitelist getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    .line 409
    iget-object v0, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 977
    iget-object v0, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final whitelist getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .line 159
    iget-object v0, p0, Landroid/telecom/Conference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public whitelist getPrimaryConnection()Landroid/telecom/Connection;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 612
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_15

    .line 615
    :cond_b
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    return-object v0

    .line 613
    :cond_15
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist getState()I
    .registers 2

    .line 177
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    return v0
.end method

.method public final whitelist getStatusHints()Landroid/telecom/StatusHints;
    .registers 2

    .line 810
    iget-object v0, p0, Landroid/telecom/Conference;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final whitelist getTelecomCallId()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 140
    iget-object v0, p0, Landroid/telecom/Conference;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .registers 2

    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getVideoState()I
    .registers 2

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method final greylist-max-o handleExtrasChanged(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1170
    const/4 v0, 0x0

    .line 1171
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1172
    :try_start_4
    iput-object p1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    .line 1173
    if-eqz p1, :cond_10

    .line 1174
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v2

    .line 1176
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    .line 1177
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 1178
    return-void

    .line 1176
    :catchall_15
    move-exception v2

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v2
.end method

.method public blacklist isMultiparty()Z
    .registers 2

    .line 1050
    iget-boolean v0, p0, Landroid/telecom/Conference;->mIsMultiparty:Z

    return v0
.end method

.method public final whitelist isRingbackRequested()Z
    .registers 2

    .line 186
    iget-boolean v0, p0, Landroid/telecom/Conference;->mRingbackRequested:Z

    return v0
.end method

.method public whitelist onAddConferenceParticipants(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 331
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    return-void
.end method

.method public final blacklist onAnswer()V
    .registers 2

    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->onAnswer(I)V

    .line 352
    return-void
.end method

.method public whitelist onAnswer(I)V
    .registers 2
    .param p1, "videoState"    # I

    .line 341
    return-void
.end method

.method public whitelist onAudioStateChanged(Landroid/telecom/AudioState;)V
    .registers 2
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 310
    return-void
.end method

.method public whitelist onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .registers 2
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .line 318
    return-void
.end method

.method public whitelist onConnectionAdded(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 325
    return-void
.end method

.method public whitelist onDisconnect()V
    .registers 1

    .line 249
    return-void
.end method

.method public whitelist onExtrasChanged(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 990
    return-void
.end method

.method public whitelist onHold()V
    .registers 1

    .line 270
    return-void
.end method

.method public whitelist onMerge()V
    .registers 1

    .line 281
    return-void
.end method

.method public whitelist onMerge(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 265
    return-void
.end method

.method public whitelist onPlayDtmfTone(C)V
    .registers 2
    .param p1, "c"    # C

    .line 294
    return-void
.end method

.method public whitelist onReject()V
    .registers 1

    .line 360
    return-void
.end method

.method public whitelist onSeparate(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 257
    return-void
.end method

.method public whitelist onStopDtmfTone()V
    .registers 1

    .line 299
    return-void
.end method

.method public whitelist onSwap()V
    .registers 1

    .line 287
    return-void
.end method

.method public whitelist onUnhold()V
    .registers 1

    .line 275
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 911
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 912
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 913
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 914
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 924
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 925
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 927
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 898
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 899
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 900
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 901
    return-void
.end method

.method public final whitelist putExtras(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 870
    if-nez p1, :cond_3

    .line 871
    return-void

    .line 877
    :cond_3
    iget-object v0, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    :try_start_6
    iget-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_11

    .line 879
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    .line 881
    :cond_11
    iget-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 882
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 883
    .local v1, "listenersBundle":Landroid/os/Bundle;
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_3a

    .line 885
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conference$Listener;

    .line 886
    .local v2, "l":Landroid/telecom/Conference$Listener;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p0, v3}, Landroid/telecom/Conference$Listener;->onExtrasChanged(Landroid/telecom/Conference;Landroid/os/Bundle;)V

    .line 887
    .end local v2    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_24

    .line 888
    :cond_39
    return-void

    .line 883
    .end local v1    # "listenersBundle":Landroid/os/Bundle;
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public final whitelist removeConnection(Landroid/telecom/Connection;)V
    .registers 5
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 471
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v1, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "removing %s from %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    if-eqz p1, :cond_34

    iget-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 473
    invoke-virtual {p1}, Landroid/telecom/Connection;->resetConference()V

    .line 474
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 475
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onConnectionRemoved(Landroid/telecom/Conference;Landroid/telecom/Connection;)V

    .line 476
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_24

    .line 478
    :cond_34
    return-void
.end method

.method public final whitelist removeExtras(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 935
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_45

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_45

    .line 939
    :cond_9
    iget-object v0, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 940
    :try_start_c
    iget-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_26

    .line 941
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 942
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 943
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_14

    .line 945
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_42

    .line 947
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 948
    .local v0, "unmodifiableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conference$Listener;

    .line 949
    .local v2, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v2, p0, v0}, Landroid/telecom/Conference$Listener;->onExtrasRemoved(Landroid/telecom/Conference;Ljava/util/List;)V

    .line 950
    .end local v2    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_31

    .line 951
    :cond_41
    return-void

    .line 945
    .end local v0    # "unmodifiableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1

    .line 936
    :cond_45
    :goto_45
    return-void
.end method

.method public final varargs whitelist removeExtras([Ljava/lang/String;)V
    .registers 3
    .param p1, "keys"    # [Ljava/lang/String;

    .line 959
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->removeExtras(Ljava/util/List;)V

    .line 960
    return-void
.end method

.method final greylist-max-o removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;
    .registers 3
    .param p1, "listener"    # Landroid/telecom/Conference$Listener;

    .line 599
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 600
    return-object p0
.end method

.method public whitelist sendConferenceEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1230
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1231
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Conference$Listener;->onConnectionEvent(Landroid/telecom/Conference;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1232
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_6

    .line 1233
    :cond_16
    return-void
.end method

.method public final whitelist setActive()V
    .registers 2

    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->setRingbackRequested(Z)V

    .line 388
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 389
    return-void
.end method

.method public final whitelist setAddress(Landroid/net/Uri;I)V
    .registers 5
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1069
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "setAddress %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1070
    iput-object p1, p0, Landroid/telecom/Conference;->mAddress:Landroid/net/Uri;

    .line 1071
    iput p2, p0, Landroid/telecom/Conference;->mAddressPresentation:I

    .line 1072
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1073
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Conference$Listener;->onAddressChanged(Landroid/telecom/Conference;Landroid/net/Uri;I)V

    .line 1074
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_16

    .line 1075
    :cond_26
    return-void
.end method

.method final greylist-max-o setCallAudioState(Landroid/telecom/CallAudioState;)V
    .registers 4
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .line 727
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "setCallAudioState %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    iput-object p1, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 729
    invoke-virtual {p0}, Landroid/telecom/Conference;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 730
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 731
    return-void
.end method

.method public final blacklist setCallDirection(I)V
    .registers 5
    .param p1, "callDirection"    # I

    .line 1031
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "setDirection %d"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1032
    iput p1, p0, Landroid/telecom/Conference;->mCallDirection:I

    .line 1033
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1034
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onCallDirectionChanged(Landroid/telecom/Conference;I)V

    .line 1035
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_18

    .line 1036
    :cond_28
    return-void
.end method

.method public final whitelist setCallerDisplayName(Ljava/lang/String;I)V
    .registers 5
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1155
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "setCallerDisplayName %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1156
    iput-object p1, p0, Landroid/telecom/Conference;->mCallerDisplayName:Ljava/lang/String;

    .line 1157
    iput p2, p0, Landroid/telecom/Conference;->mCallerDisplayNamePresentation:I

    .line 1158
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1159
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Conference$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Conference;Ljava/lang/String;I)V

    .line 1160
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_16

    .line 1161
    :cond_26
    return-void
.end method

.method public whitelist setConferenceState(Z)V
    .registers 4
    .param p1, "isConference"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1014
    iput-boolean p1, p0, Landroid/telecom/Conference;->mIsMultiparty:Z

    .line 1015
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1016
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onConferenceStateChanged(Landroid/telecom/Conference;Z)V

    .line 1017
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_8

    .line 1018
    :cond_18
    return-void
.end method

.method public final whitelist setConferenceableConnections(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .line 486
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-direct {p0}, Landroid/telecom/Conference;->clearConferenceableList()V

    .line 487
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 490
    .local v1, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 491
    iget-object v2, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 492
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    .end local v1    # "c":Landroid/telecom/Connection;
    :cond_25
    goto :goto_7

    .line 495
    :cond_26
    invoke-direct {p0}, Landroid/telecom/Conference;->fireOnConferenceableConnectionsChanged()V

    .line 496
    return-void
.end method

.method public final whitelist setConnectTimeMillis(J)V
    .registers 3
    .param p1, "connectTimeMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 625
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Conference;->setConnectionTime(J)V

    .line 626
    return-void
.end method

.method public final whitelist setConnectionCapabilities(I)V
    .registers 5
    .param p1, "connectionCapabilities"    # I

    .line 419
    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    if-eq p1, v0, :cond_1e

    .line 420
    iput p1, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    .line 422
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 423
    .local v1, "l":Landroid/telecom/Conference$Listener;
    iget v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Conference$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V

    .line 424
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_c

    .line 426
    :cond_1e
    return-void
.end method

.method public final whitelist setConnectionProperties(I)V
    .registers 5
    .param p1, "connectionProperties"    # I

    .line 435
    iget v0, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    if-eq p1, v0, :cond_1e

    .line 436
    iput p1, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    .line 438
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 439
    .local v1, "l":Landroid/telecom/Conference$Listener;
    iget v2, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Conference$Listener;->onConnectionPropertiesChanged(Landroid/telecom/Conference;I)V

    .line 440
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_c

    .line 442
    :cond_1e
    return-void
.end method

.method public final whitelist setConnectionStartElapsedRealTime(J)V
    .registers 3
    .param p1, "connectionStartElapsedRealTime"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 660
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Conference;->setConnectionStartElapsedRealtimeMillis(J)V

    .line 661
    return-void
.end method

.method public final whitelist setConnectionStartElapsedRealtimeMillis(J)V
    .registers 3
    .param p1, "connectionStartElapsedRealTime"    # J

    .line 678
    iput-wide p1, p0, Landroid/telecom/Conference;->mConnectionStartElapsedRealTime:J

    .line 679
    return-void
.end method

.method public final whitelist setConnectionTime(J)V
    .registers 3
    .param p1, "connectionTimeMillis"    # J

    .line 641
    iput-wide p1, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    .line 642
    return-void
.end method

.method public final whitelist setDialing()V
    .registers 2

    .line 373
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 374
    return-void
.end method

.method public final whitelist setDisconnected(Landroid/telecom/DisconnectCause;)V
    .registers 5
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 398
    iput-object p1, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 399
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 400
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 401
    .local v1, "l":Landroid/telecom/Conference$Listener;
    iget-object v2, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Conference$Listener;->onDisconnected(Landroid/telecom/Conference;Landroid/telecom/DisconnectCause;)V

    .line 402
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_c

    .line 403
    :cond_1e
    return-void
.end method

.method public final whitelist setExtras(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 830
    iget-object v0, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 832
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 835
    iget-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    if-eqz v1, :cond_36

    .line 836
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v1, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 838
    .local v3, "oldKey":Ljava/lang/String;
    if-eqz p1, :cond_29

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 839
    :cond_29
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    .end local v3    # "oldKey":Ljava/lang/String;
    :cond_2c
    goto :goto_15

    .line 843
    :cond_2d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 844
    invoke-virtual {p0, v1}, Landroid/telecom/Conference;->removeExtras(Ljava/util/List;)V

    .line 850
    .end local v1    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_36
    iget-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    if-nez v1, :cond_41

    .line 851
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    .line 853
    :cond_41
    iget-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 854
    if-eqz p1, :cond_51

    .line 855
    iget-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 857
    :cond_51
    monitor-exit v0

    .line 858
    return-void

    .line 857
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw v1
.end method

.method public final whitelist setOnHold()V
    .registers 2

    .line 366
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 367
    return-void
.end method

.method public final whitelist setRingbackRequested(Z)V
    .registers 4
    .param p1, "ringback"    # Z

    .line 505
    iget-boolean v0, p0, Landroid/telecom/Conference;->mRingbackRequested:Z

    if-eq v0, p1, :cond_1c

    .line 506
    iput-boolean p1, p0, Landroid/telecom/Conference;->mRingbackRequested:Z

    .line 507
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 508
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onRingbackRequested(Landroid/telecom/Conference;Z)V

    .line 509
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_c

    .line 511
    :cond_1c
    return-void
.end method

.method public final whitelist setRinging()V
    .registers 2

    .line 380
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 381
    return-void
.end method

.method public final whitelist setStatusHints(Landroid/telecom/StatusHints;)V
    .registers 4
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .line 800
    iput-object p1, p0, Landroid/telecom/Conference;->mStatusHints:Landroid/telecom/StatusHints;

    .line 801
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 802
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onStatusHintsChanged(Landroid/telecom/Conference;Landroid/telecom/StatusHints;)V

    .line 803
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_8

    .line 804
    :cond_18
    return-void
.end method

.method public final greylist-max-o setTelecomCallId(Ljava/lang/String;)V
    .registers 2
    .param p1, "telecomCallId"    # Ljava/lang/String;

    .line 150
    iput-object p1, p0, Landroid/telecom/Conference;->mTelecomCallId:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public final whitelist setVideoProvider(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .registers 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .line 536
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const-string/jumbo v1, "setVideoProvider Conference: %s Connection: %s VideoState: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 539
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p2}, Landroid/telecom/Conference$Listener;->onVideoProviderChanged(Landroid/telecom/Conference;Landroid/telecom/Connection$VideoProvider;)V

    .line 540
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_18

    .line 541
    :cond_28
    return-void
.end method

.method public final whitelist setVideoState(Landroid/telecom/Connection;I)V
    .registers 6
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoState"    # I

    .line 523
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 524
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 523
    const-string/jumbo v1, "setVideoState Conference: %s Connection: %s VideoState: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 526
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p2}, Landroid/telecom/Conference$Listener;->onVideoStateChanged(Landroid/telecom/Conference;I)V

    .line 527
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_1c

    .line 528
    :cond_2c
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 783
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/telecom/Conference;->mState:I

    .line 786
    invoke-static {v2}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    .line 787
    invoke-static {v2}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 788
    invoke-virtual {p0}, Landroid/telecom/Conference;->getVideoState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 789
    invoke-virtual {p0}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 790
    invoke-virtual {p0}, Landroid/telecom/Conference;->isRingbackRequested()Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "Y"

    goto :goto_34

    :cond_32
    const-string v2, "N"

    :goto_34
    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    .line 791
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 783
    const-string v2, "[State: %s,Capabilites: %s, VideoState: %s, VideoProvider: %s,isRingbackRequested: %s, ThisObject %s]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
