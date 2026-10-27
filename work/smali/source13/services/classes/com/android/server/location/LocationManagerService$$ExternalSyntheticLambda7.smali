.class public final synthetic Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final getPackages(I)[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationManagerService;->lambda$new$3$com-android-server-location-LocationManagerService(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
