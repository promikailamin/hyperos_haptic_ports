.class public final synthetic Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/BinderAllocationTracker$Filter;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/HashMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda1;->f$0:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final blacklist accept(Landroid/os/BinderAllocationTracker$Backtrace;Landroid/os/Binder;)Z
    .registers 4

    iget-object v0, p0, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda1;->f$0:Ljava/util/HashMap;

    invoke-static {v0, p1, p2}, Landroid/os/BinderAllocationTracker;->lambda$dumpSortedDebugDescriptors$2(Ljava/util/HashMap;Landroid/os/BinderAllocationTracker$Backtrace;Landroid/os/Binder;)Z

    move-result p1

    return p1
.end method
