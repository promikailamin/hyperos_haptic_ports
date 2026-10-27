.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/PackageWatchdog;

    return-void
.end method


# virtual methods
.method public final onNetworkStackFailure(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/PackageWatchdog;

    invoke-virtual {v0, p1}, Lcom/android/server/PackageWatchdog;->lambda$registerConnectivityModuleHealthListener$8$com-android-server-PackageWatchdog(Ljava/lang/String;)V

    return-void
.end method
