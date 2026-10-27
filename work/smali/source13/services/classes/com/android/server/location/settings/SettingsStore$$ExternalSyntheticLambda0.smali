.class public final synthetic Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/settings/SettingsStore;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/settings/SettingsStore;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/settings/SettingsStore;

    iput-object p2, p0, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/settings/SettingsStore;

    iget-object v1, p0, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1}, Lcom/android/server/location/settings/SettingsStore;->lambda$deleteFile$0$com-android-server-location-settings-SettingsStore(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
