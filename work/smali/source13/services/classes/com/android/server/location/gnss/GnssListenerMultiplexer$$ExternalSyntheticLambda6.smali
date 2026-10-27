.class public final synthetic Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/location/LocationManagerInternal$ProviderEnabledListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    return-void
.end method


# virtual methods
.method public final onProviderEnabledChanged(Ljava/lang/String;IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->$r8$lambda$mKZNWqk2dieEvAXnn4d3fArnudw(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/String;IZ)V

    return-void
.end method
