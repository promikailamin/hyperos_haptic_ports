.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    return-void
.end method


# virtual methods
.method public final queryNetworkStats(Landroid/net/NetworkTemplate;ZJJ)Landroid/net/NetworkStats;
    .registers 7

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static/range {p0 .. p6}, Lcom/android/server/stats/pull/StatsPullAtomService;->$r8$lambda$2G3dtA7-HybuySk0pkfmrx7d3hA(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/net/NetworkTemplate;ZJJ)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method
