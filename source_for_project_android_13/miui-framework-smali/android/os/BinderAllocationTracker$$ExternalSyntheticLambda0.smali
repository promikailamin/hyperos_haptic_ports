.class public final synthetic Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/BinderAllocationTracker$Filter;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/Binder;

.field public final synthetic blacklist f$1:[Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/Binder;[Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda0;->f$0:Landroid/os/Binder;

    iput-object p2, p0, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda0;->f$1:[Z

    return-void
.end method


# virtual methods
.method public final blacklist accept(Landroid/os/BinderAllocationTracker$Backtrace;Landroid/os/Binder;)Z
    .registers 5

    iget-object v0, p0, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda0;->f$0:Landroid/os/Binder;

    iget-object v1, p0, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda0;->f$1:[Z

    invoke-static {v0, v1, p1, p2}, Landroid/os/BinderAllocationTracker;->lambda$clearDeadBindersLocked$3(Landroid/os/Binder;[ZLandroid/os/BinderAllocationTracker$Backtrace;Landroid/os/Binder;)Z

    move-result p1

    return p1
.end method
