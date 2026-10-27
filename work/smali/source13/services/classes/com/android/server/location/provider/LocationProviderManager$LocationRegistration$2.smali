.class Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
        "Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

.field final synthetic val$locationResult:Landroid/location/LocationResult;

.field final synthetic val$useWakeLock:Z


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;Landroid/location/LocationResult;Z)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 1064
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    iput-boolean p3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$useWakeLock:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Z)V
    .registers 6
    .param p1, "success"    # Z

    .line 1098
    if-nez p1, :cond_d

    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$useWakeLock:Z

    if-eqz v0, :cond_d

    .line 1099
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1102
    :cond_d
    if-eqz p1, :cond_7e

    .line 1105
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->-$$Nest$fgetmNumLocationsDelivered(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->-$$Nest$fputmNumLocationsDelivered(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;I)V

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getMaxUpdates()I

    move-result v0

    if-lt v1, v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    move v0, v2

    .line 1106
    .local v0, "remove":Z
    if-eqz v0, :cond_7e

    .line 1107
    sget-boolean v1, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v1, :cond_6d

    .line 1108
    const-string v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v3, v3, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v3, v3, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " provider registration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " finished after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-static {v3}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->-$$Nest$fgetmNumLocationsDelivered(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " updates"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_6d
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1113
    :try_start_74
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->remove()V

    .line 1114
    monitor-exit v1

    goto :goto_7e

    :catchall_7b
    move-exception v2

    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_7b

    throw v2

    .line 1117
    .end local v0    # "remove":Z
    :cond_7e
    :goto_7e
    return-void
.end method

.method public onPreExecute()V
    .registers 4

    .line 1069
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    invoke-virtual {v1}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->setLastDeliveredLocation(Landroid/location/Location;)V

    .line 1071
    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$useWakeLock:Z

    if-eqz v0, :cond_18

    .line 1072
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1074
    :cond_18
    return-void
.end method

.method public operate(Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;)V
    .registers 7
    .param p1, "listener"    # Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1081
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 1082
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    invoke-virtual {v0}, Landroid/location/LocationResult;->deepCopy()Landroid/location/LocationResult;

    move-result-object v0

    .local v0, "deliverLocationResult":Landroid/location/LocationResult;
    goto :goto_19

    .line 1084
    .end local v0    # "deliverLocationResult":Landroid/location/LocationResult;
    :cond_17
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    .line 1087
    .restart local v0    # "deliverLocationResult":Landroid/location/LocationResult;
    :goto_19
    invoke-static {}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->get()Lcom/android/server/location/MiuiBlurLocationManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 1088
    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    .line 1087
    invoke-virtual {v1, v0, v2}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->getBlurryLocation(Landroid/location/LocationResult;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LocationResult;

    move-result-object v0

    .line 1090
    nop

    .line 1091
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$useWakeLock:Z

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLockReleaser:Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    .line 1090
    :goto_32
    invoke-interface {p1, v0, v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;->deliverOnLocationChanged(Landroid/location/LocationResult;Landroid/os/IRemoteCallback;)V

    .line 1092
    sget-object v1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    invoke-virtual {v3}, Landroid/location/LocationResult;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 1093
    invoke-virtual {v4}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v4

    .line 1092
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderDeliveredLocations(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V

    .line 1094
    return-void
.end method

.method public bridge synthetic operate(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1064
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->operate(Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;)V

    return-void
.end method
