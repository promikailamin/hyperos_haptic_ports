.class public final synthetic Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/SessionMetrics;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:J

.field public final synthetic f$6:J

.field public final synthetic f$7:J

.field public final synthetic f$8:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/SessionMetrics;JJJJJJJJ)V
    .registers 18

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/SessionMetrics;

    iput-wide p2, p0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;->f$1:J

    iput-wide p4, p0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;->f$2:J

    iput-wide p6, p0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;->f$3:J

    iput-wide p8, p0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;->f$4:J

    iput-wide p10, p0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;->f$5:J

    iput-wide p12, p0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;->f$6:J

    iput-wide p14, p0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;->f$7:J

    move-wide/from16 p1, p16

    iput-wide p1, p0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;->f$8:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 22

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/SessionMetrics;

    move-object v3, v1

    iget-wide v1, v0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;->f$1:J

    move-object v5, v3

    iget-wide v3, v0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;->f$2:J

    move-object v7, v5

    iget-wide v5, v0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;->f$3:J

    move-object v9, v7

    iget-wide v7, v0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;->f$4:J

    move-object v11, v9

    iget-wide v9, v0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;->f$5:J

    move-object v13, v11

    iget-wide v11, v0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;->f$6:J

    move-object v15, v13

    iget-wide v13, v0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;->f$7:J

    move-wide/from16 v17, v1

    iget-wide v0, v0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;->f$8:J

    move-wide/from16 v19, v0

    move-object v0, v15

    move-wide/from16 v15, v19

    move-wide/from16 v1, v17

    invoke-static/range {v0 .. v16}, Lcom/android/server/pm/SessionMetrics;->$r8$lambda$HPdgdodDIe85Kuk-YOCQhA2pUQA(Lcom/android/server/pm/SessionMetrics;JJJJJJJJ)V

    return-void
.end method
