.class public final synthetic Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/BinderAllocationTracker$LogPrinterWriter;

.field public final synthetic blacklist f$1:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/BinderAllocationTracker$LogPrinterWriter;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda2;->f$0:Landroid/os/BinderAllocationTracker$LogPrinterWriter;

    iput-object p2, p0, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda2;->f$1:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda2;->f$0:Landroid/os/BinderAllocationTracker$LogPrinterWriter;

    iget-object v1, p0, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda2;->f$1:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v1}, Landroid/os/BinderAllocationTracker;->lambda$dump$0(Landroid/os/BinderAllocationTracker$LogPrinterWriter;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
