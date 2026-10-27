.class public final synthetic Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/DelegateLocationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/DelegateLocationProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/provider/DelegateLocationProvider;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/provider/DelegateLocationProvider;

    check-cast p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-virtual {v0, p1}, Lcom/android/server/location/provider/DelegateLocationProvider;->lambda$initializeDelegate$0$com-android-server-location-provider-DelegateLocationProvider(Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p1

    return-object p1
.end method
