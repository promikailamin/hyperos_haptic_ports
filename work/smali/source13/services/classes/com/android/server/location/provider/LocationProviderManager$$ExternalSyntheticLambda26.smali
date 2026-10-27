.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/location/LocationResult;


# direct methods
.method public synthetic constructor <init>(Landroid/location/LocationResult;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda26;->f$0:Landroid/location/LocationResult;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda26;->f$0:Landroid/location/LocationResult;

    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-static {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$mayNotifyGpsBlurListener$20(Landroid/location/LocationResult;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p1

    return-object p1
.end method
