.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda31;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda31;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    check-cast p1, Landroid/location/Location;

    invoke-virtual {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onReportLocation$15$com-android-server-location-provider-LocationProviderManager(Landroid/location/Location;)Z

    move-result p1

    return p1
.end method
