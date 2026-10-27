.class Lcom/android/server/wm/LaunchObserverRegistryImpl;
.super Lcom/android/server/wm/ActivityMetricsLaunchObserver;
.source "LaunchObserverRegistryImpl.java"

# interfaces
.implements Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityMetricsLaunchObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-KApXNcaPelaEWtOxHlzraoZrXI(Lcom/android/server/wm/LaunchObserverRegistryImpl;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnActivityLaunchCancelled(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$3yXr3fPkQeQlo2kVwjBx2OgNUek(Lcom/android/server/wm/LaunchObserverRegistryImpl;Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleRegisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5X03k1LiJAKe-R59mmLFpk7iYzQ(Lcom/android/server/wm/LaunchObserverRegistryImpl;Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleUnregisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6bOBBGgLzG1cciMO1_zWnNveVRU(Lcom/android/server/wm/LaunchObserverRegistryImpl;JLandroid/content/ComponentName;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnActivityLaunched(JLandroid/content/ComponentName;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$B2DaAlJhVpGcOBBcucGwAGe82ow(Lcom/android/server/wm/LaunchObserverRegistryImpl;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnIntentFailed(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$XRZxoIv6rGFHG8jvMRXVl6WGLr8(Lcom/android/server/wm/LaunchObserverRegistryImpl;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnReportFullyDrawn(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y1uRFK0a8FWJ1QBVSRheLhbZHfE(Lcom/android/server/wm/LaunchObserverRegistryImpl;JLandroid/content/ComponentName;J)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnActivityLaunchFinished(JLandroid/content/ComponentName;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$hD_tFWAb0N1ebiDn9isSO8uhbCA(Lcom/android/server/wm/LaunchObserverRegistryImpl;Landroid/content/Intent;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnIntentStarted(Landroid/content/Intent;J)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 55
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method private handleOnActivityLaunchCancelled(J)V
    .registers 5
    .param p1, "id"    # J

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 150
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onActivityLaunchCancelled(J)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private handleOnActivityLaunchFinished(JLandroid/content/ComponentName;J)V
    .registers 14
    .param p1, "id"    # J
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "timestampNs"    # J

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 157
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onActivityLaunchFinished(JLandroid/content/ComponentName;J)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method private handleOnActivityLaunched(JLandroid/content/ComponentName;I)V
    .registers 7
    .param p1, "id"    # J
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "temperature"    # I

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 143
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onActivityLaunched(JLandroid/content/ComponentName;I)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private handleOnIntentFailed(J)V
    .registers 5
    .param p1, "id"    # J

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 135
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onIntentFailed(J)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private handleOnIntentStarted(Landroid/content/Intent;J)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "timestampNs"    # J

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 128
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onIntentStarted(Landroid/content/Intent;J)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private handleOnReportFullyDrawn(JJ)V
    .registers 7
    .param p1, "id"    # J
    .param p3, "timestampNs"    # J

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 164
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onReportFullyDrawn(JJ)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private handleRegisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method private handleUnregisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method


# virtual methods
.method public onActivityLaunchCancelled(J)V
    .registers 6
    .param p1, "id"    # J

    .line 95
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda6;-><init>()V

    .line 96
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 95
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    return-void
.end method

.method public onActivityLaunchFinished(JLandroid/content/ComponentName;J)V
    .registers 10
    .param p1, "id"    # J
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "timestampNs"    # J

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 103
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 101
    invoke-static {v1, p0, v2, p3, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    return-void
.end method

.method public onActivityLaunched(JLandroid/content/ComponentName;I)V
    .registers 9
    .param p1, "id"    # J
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "temperature"    # I

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda4;-><init>()V

    .line 90
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 88
    invoke-static {v1, p0, v2, p3, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    return-void
.end method

.method public onIntentFailed(J)V
    .registers 6
    .param p1, "id"    # J

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda2;-><init>()V

    .line 83
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 82
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 84
    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;J)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "timestampNs"    # J

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda7;-><init>()V

    .line 77
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 73
    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    return-void
.end method

.method public onReportFullyDrawn(JJ)V
    .registers 9
    .param p1, "id"    # J
    .param p3, "timestampNs"    # J

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 110
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 108
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    return-void
.end method

.method public registerLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .registers 4
    .param p1, "launchObserver"    # Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    return-void
.end method

.method public unregisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .registers 4
    .param p1, "launchObserver"    # Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 67
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    return-void
.end method
