.class Lcom/android/server/location/provider/LocationProviderManager$1;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/provider/LocationProviderManager;

    .line 1493
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$1;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationPermissionsChanged(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 1501
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$1;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-static {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->-$$Nest$monLocationPermissionsChanged(Lcom/android/server/location/provider/LocationProviderManager;I)V

    .line 1502
    return-void
.end method

.method public onLocationPermissionsChanged(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1496
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$1;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-static {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->-$$Nest$monLocationPermissionsChanged(Lcom/android/server/location/provider/LocationProviderManager;Ljava/lang/String;)V

    .line 1497
    return-void
.end method
