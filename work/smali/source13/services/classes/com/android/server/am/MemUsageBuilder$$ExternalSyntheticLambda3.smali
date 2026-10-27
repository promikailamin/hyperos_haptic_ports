.class public final synthetic Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/MemInfoReader;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/MemInfoReader;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/util/MemInfoReader;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/util/MemInfoReader;

    check-cast p1, Lcom/android/server/am/ScoutMeminfo;

    invoke-static {v0, p1}, Lcom/android/server/am/MemUsageBuilder;->lambda$buildSummary$13(Lcom/android/internal/util/MemInfoReader;Lcom/android/server/am/ScoutMeminfo;)V

    return-void
.end method
