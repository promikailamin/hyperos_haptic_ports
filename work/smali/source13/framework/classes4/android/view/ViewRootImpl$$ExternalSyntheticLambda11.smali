.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda11;->f$0:Landroid/view/ViewRootImpl;

    iput p2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda11;->f$1:I

    return-void
.end method


# virtual methods
.method public final blacklist onFrameDraw(J)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda11;->f$0:Landroid/view/ViewRootImpl;

    iget v1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda11;->f$1:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewRootImpl;->lambda$addCutFrameSelfBlurCallback$15$android-view-ViewRootImpl(IJ)V

    return-void
.end method
