.class public final synthetic Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector$$ExternalSyntheticLambda1;->f$0:I

    check-cast p1, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;

    invoke-static {p0, p1}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;->$r8$lambda$cRZZpNOOEwLNiupIdrK1RrpfdeU(ILandroid/service/selectiontoolbar/ISelectionToolbarRenderService;)V

    return-void
.end method
