.class public final synthetic Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Landroid/location/Location;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;->f$0:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;->f$0:Landroid/location/Location;

    check-cast p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    invoke-static {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->lambda$onLocationChanged$1(Landroid/location/Location;Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p1

    return-object p1
.end method
