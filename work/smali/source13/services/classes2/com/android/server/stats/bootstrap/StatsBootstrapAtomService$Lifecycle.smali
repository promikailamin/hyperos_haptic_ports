.class public final Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "StatsBootstrapAtomService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mStatsBootstrapAtomService:Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 4

    .line 87
    new-instance v0, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService;

    invoke-direct {v0}, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;->mStatsBootstrapAtomService:Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService;

    .line 89
    :try_start_7
    const-string/jumbo v1, "statsbootstrap"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_e

    .line 94
    goto :goto_16

    .line 92
    :catch_e
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StatsBootstrapAtomService"

    const-string v2, "Failed to publishBinderService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    return-void
.end method
