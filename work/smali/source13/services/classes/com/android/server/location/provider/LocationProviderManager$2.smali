.class Lcom/android/server/location/provider/LocationProviderManager$2;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/gnss/exp/GnssBackgroundUsageOptStub$IRestoreRequest;


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

    .line 1558
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$2;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestore(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/location/ILocationListener;)V
    .registers 6
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p3, "permissionLevel"    # I
    .param p4, "listener"    # Landroid/location/ILocationListener;

    .line 1561
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$2;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/location/provider/LocationProviderManager;->registerLocationRequest(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/location/ILocationListener;)V

    .line 1562
    return-void
.end method
