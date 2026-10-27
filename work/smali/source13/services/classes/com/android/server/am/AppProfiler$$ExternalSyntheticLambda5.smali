.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/os/ProcessCpuTracker$FilterStats;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/Predicate;

    invoke-static {v0, p1}, Lcom/android/server/am/AppProfiler;->lambda$getCpuStats$6(Ljava/util/function/Predicate;Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result p1

    return p1
.end method
