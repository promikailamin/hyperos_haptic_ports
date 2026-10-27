.class Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GatedCallback"
.end annotation


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mGate:Z

.field private mRun:Z


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 3043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3044
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Ljava/lang/Runnable;

    .line 3045
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public allow()V
    .registers 3

    .line 3048
    const/4 v0, 0x0

    .line 3049
    .local v0, "callback":Ljava/lang/Runnable;
    monitor-enter p0

    .line 3050
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mGate:Z

    .line 3051
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mRun:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_11

    .line 3052
    move-object v0, v1

    .line 3053
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Ljava/lang/Runnable;

    .line 3055
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_18

    .line 3057
    if-eqz v0, :cond_17

    .line 3058
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3060
    :cond_17
    return-void

    .line 3055
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public run()V
    .registers 3

    .line 3064
    const/4 v0, 0x0

    .line 3065
    .local v0, "callback":Ljava/lang/Runnable;
    monitor-enter p0

    .line 3066
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mRun:Z

    .line 3067
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mGate:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_11

    .line 3068
    move-object v0, v1

    .line 3069
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Ljava/lang/Runnable;

    .line 3071
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_18

    .line 3073
    if-eqz v0, :cond_17

    .line 3074
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3076
    :cond_17
    return-void

    .line 3071
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method
