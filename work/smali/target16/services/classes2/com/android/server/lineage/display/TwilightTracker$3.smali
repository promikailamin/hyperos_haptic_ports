.class public Lcom/android/server/lineage/display/TwilightTracker$3;
.super Ljava/lang/Object;
.source "TwilightTracker.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/display/TwilightTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/display/TwilightTracker;)V
    .registers 2

    .line 435
    iput-object p1, p0, Lcom/android/server/lineage/display/TwilightTracker$3;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 2

    .line 437
    iget-object p0, p0, Lcom/android/server/lineage/display/TwilightTracker$3;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-static {p0}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$fgetmLocationHandler(Lcom/android/server/lineage/display/TwilightTracker;)Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->processNewLocation(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .line 0
    return-void
.end method
