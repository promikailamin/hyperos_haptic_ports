.class public final Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;
.implements Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "LocationPendingIntentTransport"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    .line 278
    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    .line 279
    return-void
.end method

.method static synthetic lambda$deliverOnLocationChanged$0(Landroid/os/IRemoteCallback;)V
    .registers 3
    .param p0, "onCompleteCallback"    # Landroid/os/IRemoteCallback;

    .line 303
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_6

    .line 306
    nop

    .line 307
    return-void

    .line 304
    :catch_6
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public deliverOnFlushComplete(I)V
    .registers 12
    .param p1, "requestCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 316
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 317
    .local v0, "options":Landroid/app/BroadcastOptions;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDontSendToRestrictedApps(Z)V

    .line 318
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 320
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "flushComplete"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 321
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 320
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 322
    return-void
.end method

.method public deliverOnLocationChanged(Landroid/location/LocationResult;Landroid/os/IRemoteCallback;)V
    .registers 11
    .param p1, "locationResult"    # Landroid/location/LocationResult;
    .param p2, "onCompleteCallback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 285
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v6

    .line 286
    .local v6, "options":Landroid/app/BroadcastOptions;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/BroadcastOptions;->setDontSendToRestrictedApps(Z)V

    .line 288
    const-wide/16 v1, 0x2710

    const/4 v3, 0x0

    const/16 v4, 0x138

    const-string v5, ""

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 294
    invoke-virtual {p1}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    .line 293
    const-string/jumbo v2, "location"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/location/LocationResult;->size()I

    move-result v1

    if-le v1, v7, :cond_3c

    .line 296
    invoke-virtual {p1}, Landroid/location/LocationResult;->asList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/location/Location;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    const-string/jumbo v2, "locations"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 299
    :cond_3c
    const/4 v1, 0x0

    .line 300
    .local v1, "callback":Ljava/lang/Runnable;
    if-eqz p2, :cond_45

    .line 301
    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport$$ExternalSyntheticLambda0;-><init>(Landroid/os/IRemoteCallback;)V

    move-object v1, v2

    .line 310
    :cond_45
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    .line 311
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 310
    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender;->send(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Runnable;Landroid/os/Bundle;)V

    .line 312
    return-void
.end method

.method public deliverOnProviderEnabledChanged(Ljava/lang/String;Z)V
    .registers 13
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 327
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 328
    .local v0, "options":Landroid/app/BroadcastOptions;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDontSendToRestrictedApps(Z)V

    .line 330
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "providerEnabled"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    .line 331
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 330
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 332
    return-void
.end method
