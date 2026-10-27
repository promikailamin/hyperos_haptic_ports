.class public abstract Landroid/telephony/ims/compat/feature/ImsFeature;
.super Ljava/lang/Object;
.source "ImsFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/compat/feature/ImsFeature$ImsState;
    }
.end annotation


# static fields
.field public static final greylist-max-o EMERGENCY_MMTEL:I = 0x0

.field public static final greylist-max-o INVALID:I = -0x1

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImsFeature"

.field public static final greylist-max-o MAX:I = 0x3

.field public static final greylist-max-o MMTEL:I = 0x1

.field public static final greylist-max-o RCS:I = 0x2

.field public static final greylist-max-o STATE_INITIALIZING:I = 0x1

.field public static final greylist-max-o STATE_NOT_AVAILABLE:I = 0x0

.field public static final greylist-max-o STATE_READY:I = 0x2


# instance fields
.field protected greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mSlotId:I

.field private greylist-max-o mState:I

.field private final greylist-max-o mStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/internal/IImsFeatureStatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mSlotId:I

    return-void
.end method

.method private greylist-max-o notifyFeatureState(I)V
    .registers 8

    .line 125
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v0

    .line 126
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 127
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_54

    .line 130
    :try_start_15
    const-string v3, "ImsFeature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifying ImsFeatureState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_30} :catch_31
    .catchall {:try_start_15 .. :try_end_30} :catchall_54

    .line 136
    goto :goto_51

    .line 132
    :catch_31
    move-exception v2

    .line 134
    :try_start_32
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 135
    const-string v3, "ImsFeature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t notify feature state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_51
    goto :goto_9

    .line 138
    :cond_52
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_54
    move-exception p1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_32 .. :try_end_56} :catchall_54

    throw p1
.end method


# virtual methods
.method public greylist-max-o addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 5

    .line 96
    if-nez p1, :cond_3

    .line 97
    return-void

    .line 101
    :cond_3
    :try_start_3
    iget v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    invoke-interface {p1, v0}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V

    .line 103
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_15

    .line 104
    :try_start_b
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    monitor-exit v0

    .line 108
    goto :goto_32

    .line 105
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    :try_start_14
    throw p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_15} :catch_15

    .line 106
    :catch_15
    move-exception p1

    .line 107
    const-string v0, "ImsFeature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t notify feature state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_32
    return-void
.end method

.method public abstract greylist-max-o getBinder()Landroid/os/IInterface;
.end method

.method public greylist-max-r getFeatureState()I
    .registers 2

    .line 84
    iget v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    return v0
.end method

.method public abstract greylist-max-o onFeatureReady()V
.end method

.method public abstract greylist-max-o onFeatureRemoved()V
.end method

.method public greylist-max-o removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4

    .line 112
    if-nez p1, :cond_3

    .line 113
    return-void

    .line 115
    :cond_3
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v0

    .line 116
    :try_start_6
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public greylist-max-o setContext(Landroid/content/Context;)V
    .registers 2

    .line 75
    iput-object p1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method protected final greylist-max-r setFeatureState(I)V
    .registers 3

    .line 89
    iget v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    if-eq v0, p1, :cond_9

    .line 90
    iput p1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    .line 91
    invoke-direct {p0, p1}, Landroid/telephony/ims/compat/feature/ImsFeature;->notifyFeatureState(I)V

    .line 93
    :cond_9
    return-void
.end method

.method public greylist-max-o setSlotId(I)V
    .registers 2

    .line 79
    iput p1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mSlotId:I

    .line 80
    return-void
.end method
