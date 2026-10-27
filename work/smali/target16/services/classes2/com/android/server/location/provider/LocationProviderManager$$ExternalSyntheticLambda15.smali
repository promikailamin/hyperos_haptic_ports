.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    invoke-static {p0}, Lcom/android/server/location/provider/LocationProviderManager;->$r8$lambda$CTd8XSiu-KphL-X6BLhPB_iKLso(Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;)V

    return-void
.end method
