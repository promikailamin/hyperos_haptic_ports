.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$0:I

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$0:I

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/am/BatteryStatsService;->lambda$noteVideoFps$108(II)V

    return-void
.end method
