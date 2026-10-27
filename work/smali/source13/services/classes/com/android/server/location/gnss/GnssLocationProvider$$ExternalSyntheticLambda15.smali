.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda15;->f$1:Z

    iput-boolean p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda15;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda15;->f$1:Z

    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda15;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onRequestLocation$15$com-android-server-location-gnss-GnssLocationProvider(ZZ)V

    return-void
.end method
