.class public final synthetic Landroid/view/ViewRootImplStubImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImplStubImpl;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImplStubImpl;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImplStubImpl$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewRootImplStubImpl;

    iput-boolean p2, p0, Landroid/view/ViewRootImplStubImpl$$ExternalSyntheticLambda0;->f$1:Z

    iput-boolean p3, p0, Landroid/view/ViewRootImplStubImpl$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImplStubImpl$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewRootImplStubImpl;

    iget-boolean v1, p0, Landroid/view/ViewRootImplStubImpl$$ExternalSyntheticLambda0;->f$1:Z

    iget-boolean v2, p0, Landroid/view/ViewRootImplStubImpl$$ExternalSyntheticLambda0;->f$2:Z

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImplStubImpl;->lambda$updateClientHoverState$0$android-view-ViewRootImplStubImpl(ZZ)V

    return-void
.end method
