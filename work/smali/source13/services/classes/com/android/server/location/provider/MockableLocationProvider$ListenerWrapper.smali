.class Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;
.super Ljava/lang/Object;
.source "MockableLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/provider/AbstractLocationProvider$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/MockableLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerWrapper"
.end annotation


# instance fields
.field private final mListenerProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

.field final synthetic this$0:Lcom/android/server/location/provider/MockableLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/MockableLocationProvider;Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .registers 3
    .param p2, "listenerProvider"    # Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 320
    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p2, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 322
    return-void
.end method

.method static synthetic lambda$onStateChanged$0(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 2
    .param p0, "newState"    # Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .param p1, "prevState"    # Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 331
    return-object p0
.end method


# virtual methods
.method public final onReportLocation(Landroid/location/LocationResult;)V
    .registers 5
    .param p1, "locationResult"    # Landroid/location/LocationResult;

    .line 337
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_5
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/provider/MockableLocationProvider;->-$$Nest$fgetmProvider(Lcom/android/server/location/provider/MockableLocationProvider;)Lcom/android/server/location/provider/AbstractLocationProvider;

    move-result-object v2

    if-eq v1, v2, :cond_11

    .line 339
    monitor-exit v0

    return-void

    .line 342
    :cond_11
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    .line 343
    monitor-exit v0

    .line 344
    return-void

    .line 343
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public final onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .registers 6
    .param p1, "oldState"    # Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .param p2, "newState"    # Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 326
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_5
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/provider/MockableLocationProvider;->-$$Nest$fgetmProvider(Lcom/android/server/location/provider/MockableLocationProvider;)Lcom/android/server/location/provider/AbstractLocationProvider;

    move-result-object v2

    if-eq v1, v2, :cond_11

    .line 328
    monitor-exit v0

    return-void

    .line 331
    :cond_11
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    new-instance v2, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/provider/MockableLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 332
    monitor-exit v0

    .line 333
    return-void

    .line 332
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw v1
.end method
