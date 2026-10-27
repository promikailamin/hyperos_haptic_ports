.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/PackageWatchdog;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v0, p1}, Lcom/android/server/PackageWatchdog;->$r8$lambda$w1vQJKtbyU69AvL6u4s8Z-dPb8o(Lcom/android/server/PackageWatchdog;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
