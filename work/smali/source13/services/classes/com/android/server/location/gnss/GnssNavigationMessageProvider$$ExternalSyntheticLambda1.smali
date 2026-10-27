.class public final synthetic Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

.field public final synthetic f$1:Landroid/location/GnssNavigationMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssNavigationMessageProvider;Landroid/location/GnssNavigationMessage;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda1;->f$1:Landroid/location/GnssNavigationMessage;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda1;->f$1:Landroid/location/GnssNavigationMessage;

    check-cast p1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->lambda$onReportNavigationMessage$1$com-android-server-location-gnss-GnssNavigationMessageProvider(Landroid/location/GnssNavigationMessage;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p1

    return-object p1
.end method
