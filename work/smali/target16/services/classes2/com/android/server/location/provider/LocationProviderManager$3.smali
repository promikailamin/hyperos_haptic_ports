.class public Lcom/android/server/location/provider/LocationProviderManager$3;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;

.field public final synthetic val$newRequest:Landroid/location/provider/ProviderRequest;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V
    .registers 3

    .line 2280
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->val$newRequest:Landroid/location/provider/ProviderRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 4

    .line 2283
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    # getter for: Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager;->access$1700(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2284
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-static {v1}, Lcom/android/server/location/provider/LocationProviderManager;->-$$Nest$fgetmDelayedRegister(Lcom/android/server/location/provider/LocationProviderManager;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v1

    if-ne v1, p0, :cond_1f

    .line 2285
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/location/provider/LocationProviderManager;->-$$Nest$fputmDelayedRegister(Lcom/android/server/location/provider/LocationProviderManager;Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2286
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->val$newRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->setProviderRequest(Landroid/location/provider/ProviderRequest;)V

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 2288
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_1d

    throw p0
.end method
