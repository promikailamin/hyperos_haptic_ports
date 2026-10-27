.class public Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;
.super Ljava/lang/Object;
.source "GeofenceManager.java"


# instance fields
.field public final mGeofence:Landroid/location/Geofence;

.field public final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/location/Geofence;)V
    .registers 4

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    .line 86
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/location/Geofence;

    iput-object p2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mGeofence:Landroid/location/Geofence;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 95
    instance-of v0, p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 96
    check-cast p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    .line 97
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mGeofence:Landroid/location/Geofence;

    iget-object p1, p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {p0, p1}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v1
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->hashCode()I

    move-result p0

    return p0
.end method
