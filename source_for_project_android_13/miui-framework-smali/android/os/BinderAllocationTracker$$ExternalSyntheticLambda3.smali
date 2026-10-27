.class public final synthetic Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/BinderAllocationTracker$Filter;


# instance fields
.field public final synthetic blacklist f$0:[Landroid/os/BinderAllocationTracker$Allocation;

.field public final synthetic blacklist f$1:Landroid/os/BinderAllocationTracker$MinHeap;


# direct methods
.method public synthetic constructor blacklist <init>([Landroid/os/BinderAllocationTracker$Allocation;Landroid/os/BinderAllocationTracker$MinHeap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda3;->f$0:[Landroid/os/BinderAllocationTracker$Allocation;

    iput-object p2, p0, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda3;->f$1:Landroid/os/BinderAllocationTracker$MinHeap;

    return-void
.end method


# virtual methods
.method public final blacklist accept(Landroid/os/BinderAllocationTracker$Backtrace;Landroid/os/Binder;)Z
    .registers 5

    iget-object v0, p0, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda3;->f$0:[Landroid/os/BinderAllocationTracker$Allocation;

    iget-object v1, p0, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda3;->f$1:Landroid/os/BinderAllocationTracker$MinHeap;

    invoke-static {v0, v1, p1, p2}, Landroid/os/BinderAllocationTracker;->lambda$getTopAllocations$1([Landroid/os/BinderAllocationTracker$Allocation;Landroid/os/BinderAllocationTracker$MinHeap;Landroid/os/BinderAllocationTracker$Backtrace;Landroid/os/Binder;)Z

    move-result p1

    return p1
.end method
