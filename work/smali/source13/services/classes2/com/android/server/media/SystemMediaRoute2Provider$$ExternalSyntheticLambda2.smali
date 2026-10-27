.class public final synthetic Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/SystemMediaRoute2Provider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    return-void
.end method


# virtual methods
.method public final onBluetoothRoutesUpdated(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider;->lambda$new$0$com-android-server-media-SystemMediaRoute2Provider(Ljava/util/List;)V

    return-void
.end method
