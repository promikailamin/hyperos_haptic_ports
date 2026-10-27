.class Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;
.super Ljava/lang/Object;
.source "ProxyLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->onUnbind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 146
    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 2
    .param p0, "prevState"    # Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 151
    sget-object v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_5
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Ljava/lang/Runnable;

    if-ne v1, p0, :cond_15

    .line 151
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    new-instance v2, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1$$ExternalSyntheticLambda0;-><init>()V

    # invokes: Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V
    invoke-static {v1, v2}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->access$000(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Ljava/util/function/UnaryOperator;)V

    .line 153
    :cond_15
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v1
.end method
