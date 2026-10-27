.class Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
.source "GnssMeasurementsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssMeasurementsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssMeasurementListenerRegistration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
        "Landroid/location/GnssMeasurementRequest;",
        "Landroid/location/IGnssMeasurementsListener;",
        "Landroid/location/GnssMeasurementRequest;",
        ">.Gnss",
        "ListenerRegistration;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;


# direct methods
.method protected constructor <init>(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V
    .registers 5
    .param p2, "request"    # Landroid/location/GnssMeasurementRequest;
    .param p3, "callerIdentity"    # Landroid/location/util/identity/CallerIdentity;
    .param p4, "listener"    # Landroid/location/IGnssMeasurementsListener;

    .line 59
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    .line 61
    return-void
.end method

.method static synthetic lambda$onGnssListenerRegister$0(Landroid/location/IGnssMeasurementsListener;)V
    .registers 2
    .param p0, "listener"    # Landroid/location/IGnssMeasurementsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/location/IGnssMeasurementsListener;->onStatusChanged(I)V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->-$$Nest$fgetmAppOpsHelper(Lcom/android/server/location/gnss/GnssMeasurementsProvider;)Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/AppOpsHelper;->startOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    .line 73
    return-void
.end method

.method protected onGnssListenerRegister()V
    .registers 2

    .line 65
    new-instance v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    .line 67
    return-void
.end method

.method protected onInactive()V
    .registers 4

    .line 78
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->-$$Nest$fgetmAppOpsHelper(Lcom/android/server/location/gnss/GnssMeasurementsProvider;)Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/AppOpsHelper;->finishOp(ILandroid/location/util/identity/CallerIdentity;)V

    .line 79
    return-void
.end method
