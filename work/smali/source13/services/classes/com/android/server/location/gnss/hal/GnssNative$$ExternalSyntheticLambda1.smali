.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:Landroid/location/Location;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;Landroid/location/Location;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    iput-object p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$1:Landroid/location/Location;

    iput-boolean p3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$1:Landroid/location/Location;

    iget-boolean v2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportLocation$0$com-android-server-location-gnss-hal-GnssNative(Landroid/location/Location;Z)V

    return-void
.end method
