.class public final synthetic Lcom/miui/leakcanary/HeapDumpTrigger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/miui/leakcanary/HeapDumpTrigger;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/miui/leakcanary/HeapDumpTrigger;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/leakcanary/HeapDumpTrigger$$ExternalSyntheticLambda0;->f$0:Lcom/miui/leakcanary/HeapDumpTrigger;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    iget-object v0, p0, Lcom/miui/leakcanary/HeapDumpTrigger$$ExternalSyntheticLambda0;->f$0:Lcom/miui/leakcanary/HeapDumpTrigger;

    invoke-virtual {v0}, Lcom/miui/leakcanary/HeapDumpTrigger;->lambda$dumpHeap$2$com-miui-leakcanary-HeapDumpTrigger()V

    return-void
.end method
