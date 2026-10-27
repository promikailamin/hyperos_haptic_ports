.class public final synthetic Landroid/view/ForceDarkHelperStubImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ForceDarkHelperStubImpl;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ForceDarkHelperStubImpl;ZLandroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ForceDarkHelperStubImpl$$ExternalSyntheticLambda0;->f$0:Landroid/view/ForceDarkHelperStubImpl;

    iput-boolean p2, p0, Landroid/view/ForceDarkHelperStubImpl$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Landroid/view/ForceDarkHelperStubImpl$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    iget-object v0, p0, Landroid/view/ForceDarkHelperStubImpl$$ExternalSyntheticLambda0;->f$0:Landroid/view/ForceDarkHelperStubImpl;

    iget-boolean v1, p0, Landroid/view/ForceDarkHelperStubImpl$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Landroid/view/ForceDarkHelperStubImpl$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/ForceDarkHelperStubImpl;->lambda$refreshForceDarkMode$0$android-view-ForceDarkHelperStubImpl(ZLandroid/view/View;)V

    return-void
.end method
