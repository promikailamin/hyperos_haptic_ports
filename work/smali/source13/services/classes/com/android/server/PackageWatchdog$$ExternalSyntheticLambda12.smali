.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/PackageWatchdog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/PackageWatchdog;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/android/server/PackageWatchdog;->lambda$onPackagesReady$1$com-android-server-PackageWatchdog(Ljava/util/List;)V

    return-void
.end method
