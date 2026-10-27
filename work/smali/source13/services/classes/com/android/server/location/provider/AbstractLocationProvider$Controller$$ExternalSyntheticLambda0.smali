.class public final synthetic Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

.field public final synthetic f$1:Landroid/location/provider/ProviderRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/AbstractLocationProvider$Controller;Landroid/location/provider/ProviderRequest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    iput-object p2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda0;->f$1:Landroid/location/provider/ProviderRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    iget-object v1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda0;->f$1:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0, v1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->lambda$setRequest$1$com-android-server-location-provider-AbstractLocationProvider$Controller(Landroid/location/provider/ProviderRequest;)V

    return-void
.end method
