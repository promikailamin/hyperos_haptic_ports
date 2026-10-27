.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/location/util/identity/CallerIdentity;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Landroid/location/LocationResult;


# direct methods
.method public synthetic constructor <init>(Landroid/location/util/identity/CallerIdentity;[ZLandroid/location/LocationResult;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;->f$0:Landroid/location/util/identity/CallerIdentity;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;->f$1:[Z

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;->f$2:Landroid/location/LocationResult;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;->f$0:Landroid/location/util/identity/CallerIdentity;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;->f$1:[Z

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;->f$2:Landroid/location/LocationResult;

    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onReportBlurLocation$19(Landroid/location/util/identity/CallerIdentity;[ZLandroid/location/LocationResult;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p1

    return-object p1
.end method
