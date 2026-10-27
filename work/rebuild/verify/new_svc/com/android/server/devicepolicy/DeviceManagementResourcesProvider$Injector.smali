.class public Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;
.super Ljava/lang/Object;
.source "DeviceManagementResourcesProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public environmentGetDataSystemDirectory()Ljava/io/File;
    .registers 1

    .line 481
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
