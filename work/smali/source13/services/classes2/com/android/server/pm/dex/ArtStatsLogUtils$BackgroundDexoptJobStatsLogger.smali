.class public Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;
.super Ljava/lang/Object;
.source "ArtStatsLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/ArtStatsLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundDexoptJobStatsLogger"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(IIJJ)V
    .registers 15
    .param p1, "status"    # I
    .param p2, "cancellationReason"    # I
    .param p3, "durationMs"    # J
    .param p5, "durationIncludingSleepMs"    # J

    .line 325
    invoke-static {}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->-$$Nest$sfgetSTATUS_MAP()Ljava/util/Map;

    move-result-object v0

    .line 326
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 327
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 326
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 325
    const/16 v1, 0x1d3

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v1 .. v7}, Lcom/android/internal/art/ArtStatsLog;->write(IIIJJ)V

    .line 329
    return-void
.end method
