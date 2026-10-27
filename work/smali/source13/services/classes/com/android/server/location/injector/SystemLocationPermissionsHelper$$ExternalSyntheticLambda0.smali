.class public final synthetic Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/injector/SystemLocationPermissionsHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    return-void
.end method


# virtual methods
.method public final onPermissionsChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->lambda$onSystemReady$1$com-android-server-location-injector-SystemLocationPermissionsHelper(I)V

    return-void
.end method
