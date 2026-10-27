.class public final synthetic Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[J


# direct methods
.method public synthetic constructor <init>([J)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda4;->f$0:[J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda4;->f$0:[J

    check-cast p1, Lcom/android/server/am/ScoutMeminfo;

    invoke-static {v0, p1}, Lcom/android/server/am/MemUsageBuilder;->lambda$buildSummary$2([JLcom/android/server/am/ScoutMeminfo;)V

    return-void
.end method
