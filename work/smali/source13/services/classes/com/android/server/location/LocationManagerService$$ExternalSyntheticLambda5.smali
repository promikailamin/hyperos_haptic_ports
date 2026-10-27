.class public final synthetic Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final onSettingChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService;->lambda$new$1$com-android-server-location-LocationManagerService()V

    return-void
.end method
