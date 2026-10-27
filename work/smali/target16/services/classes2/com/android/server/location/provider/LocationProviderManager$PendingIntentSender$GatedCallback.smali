.class public Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mCallback:Ljava/lang/Runnable;

.field public mGate:Z

.field public mRun:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 3046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3047
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;Lcom/android/server/location/provider/LocationProviderManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public allow()V
    .registers 3

    .line 3052
    monitor-enter p0

    const/4 v0, 0x1

    .line 3053
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mGate:Z

    .line 3054
    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mRun:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 3056
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Ljava/lang/Runnable;

    move-object v1, v0

    goto :goto_13

    :catchall_11
    move-exception v0

    goto :goto_1a

    .line 3058
    :cond_13
    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_11

    if-eqz v1, :cond_19

    .line 3061
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_19
    return-void

    .line 3058
    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_11

    throw v0
.end method

.method public run()V
    .registers 3

    .line 3068
    monitor-enter p0

    const/4 v0, 0x1

    .line 3069
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mRun:Z

    .line 3070
    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mGate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 3072
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Ljava/lang/Runnable;

    move-object v1, v0

    goto :goto_13

    :catchall_11
    move-exception v0

    goto :goto_1a

    .line 3074
    :cond_13
    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_11

    if-eqz v1, :cond_19

    .line 3077
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_19
    return-void

    .line 3074
    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_11

    throw v0
.end method
