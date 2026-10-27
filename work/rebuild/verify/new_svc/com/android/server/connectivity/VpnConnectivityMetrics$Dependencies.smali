.class public Lcom/android/server/connectivity/VpnConnectivityMetrics$Dependencies;
.super Ljava/lang/Object;
.source "VpnConnectivityMetrics.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public statsWrite(IIIIII[IZI)V
    .registers 10

    const/16 p0, 0x353

    .line 171
    invoke-static/range {p0 .. p9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIII[IZI)V

    return-void
.end method
