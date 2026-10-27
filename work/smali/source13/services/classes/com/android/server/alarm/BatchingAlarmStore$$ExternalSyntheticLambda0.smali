.class public final synthetic Lcom/android/server/alarm/BatchingAlarmStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 4

    check-cast p1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    invoke-static {p1}, Lcom/android/server/alarm/BatchingAlarmStore;->lambda$static$0(Lcom/android/server/alarm/BatchingAlarmStore$Batch;)J

    move-result-wide v0

    return-wide v0
.end method
