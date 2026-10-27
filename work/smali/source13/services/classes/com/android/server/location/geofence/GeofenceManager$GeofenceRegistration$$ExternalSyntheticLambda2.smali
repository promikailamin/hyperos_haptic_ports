.class public final synthetic Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    check-cast p1, Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->lambda$onLocationChanged$1$com-android-server-location-geofence-GeofenceManager$GeofenceRegistration(Landroid/app/PendingIntent;)V

    return-void
.end method
