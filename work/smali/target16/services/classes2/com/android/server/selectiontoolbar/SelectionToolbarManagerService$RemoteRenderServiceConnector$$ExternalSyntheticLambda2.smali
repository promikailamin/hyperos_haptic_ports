.class public final synthetic Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/view/selectiontoolbar/ShowInfo;

.field public final synthetic f$2:Landroid/view/selectiontoolbar/ISelectionToolbarCallback;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector$$ExternalSyntheticLambda2;->f$1:Landroid/view/selectiontoolbar/ShowInfo;

    iput-object p3, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector$$ExternalSyntheticLambda2;->f$2:Landroid/view/selectiontoolbar/ISelectionToolbarCallback;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget v0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector$$ExternalSyntheticLambda2;->f$1:Landroid/view/selectiontoolbar/ShowInfo;

    iget-object p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector$$ExternalSyntheticLambda2;->f$2:Landroid/view/selectiontoolbar/ISelectionToolbarCallback;

    check-cast p1, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;->$r8$lambda$idXgpJHuwa6DXuNIF8a5kGzq3lw(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;)V

    return-void
.end method
