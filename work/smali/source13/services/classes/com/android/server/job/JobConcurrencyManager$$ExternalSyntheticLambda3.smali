.class public final synthetic Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IndentingPrintWriter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;->f$0:Landroid/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;->f$0:Landroid/util/IndentingPrintWriter;

    check-cast p1, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    invoke-static {v0, p1}, Lcom/android/server/job/JobConcurrencyManager;->lambda$dumpLocked$2(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobConcurrencyManager$PackageStats;)V

    return-void
.end method
