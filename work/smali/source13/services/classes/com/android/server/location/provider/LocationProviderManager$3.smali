.class Lcom/android/server/location/provider/LocationProviderManager$3;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub$IRemoveRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V
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

    .line 1564
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveListener(Landroid/location/ILocationListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/ILocationListener;

    .line 1567
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->unregisterLocationRequest(Landroid/location/ILocationListener;)V

    .line 1568
    return-void
.end method
