.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Z

.field public final synthetic f$10:J

.field public final synthetic f$11:J

.field public final synthetic f$12:J

.field public final synthetic f$13:J

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ZIIIIIIIIJJJJ)V
    .registers 19

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-boolean p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$1:Z

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$2:I

    iput p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$3:I

    iput p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$4:I

    iput p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$5:I

    iput p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$6:I

    iput p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$7:I

    iput p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$8:I

    iput p10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$9:I

    iput-wide p11, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$10:J

    iput-wide p13, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$11:J

    move-wide p1, p15

    iput-wide p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$12:J

    move-wide/from16 p1, p17

    iput-wide p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$13:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 21

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/am/BatteryStatsService;

    move-object v2, v1

    iget-boolean v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$1:Z

    move-object v3, v2

    iget v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$2:I

    move-object v4, v3

    iget v3, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$3:I

    move-object v5, v4

    iget v4, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$4:I

    move-object v6, v5

    iget v5, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$5:I

    move-object v7, v6

    iget v6, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$6:I

    move-object v8, v7

    iget v7, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$7:I

    move-object v9, v8

    iget v8, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$8:I

    move-object v10, v9

    iget v9, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$9:I

    move-object v12, v10

    iget-wide v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$10:J

    move-object v14, v12

    iget-wide v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$11:J

    move-object/from16 v16, v14

    iget-wide v14, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$12:J

    move/from16 v17, v1

    iget-wide v0, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;->f$13:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-wide/from16 v16, v18

    invoke-static/range {v0 .. v17}, Lcom/android/server/am/BatteryStatsService;->$r8$lambda$zcaXdcretfiWVj0PqArKxPRoVbE(Lcom/android/server/am/BatteryStatsService;ZIIIIIIIIJJJJ)V

    return-void
.end method
