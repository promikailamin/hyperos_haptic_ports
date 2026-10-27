.class public Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$Stub;
.super Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub;
.source "SelectionToolbarManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$Stub;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-direct {p0}, Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$Stub;-><init>(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)V

    return-void
.end method


# virtual methods
.method public dismissToolbar()V
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$Stub;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-static {p0}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->-$$Nest$fgetmRemoteRenderServiceConnector(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;->-$$Nest$mdismissToolbar(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;I)V

    return-void
.end method

.method public hideToolbar()V
    .registers 2

    .line 90
    iget-object p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$Stub;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-static {p0}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->-$$Nest$fgetmRemoteRenderServiceConnector(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;->-$$Nest$mhideToolbar(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;I)V

    return-void
.end method

.method public showToolbar(Landroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V
    .registers 4

    .line 84
    iget-object p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$Stub;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-static {p0}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->-$$Nest$fgetmRemoteRenderServiceConnector(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;

    move-result-object p0

    .line 85
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;->-$$Nest$mshowToolbar(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$RemoteRenderServiceConnector;ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V

    return-void
.end method
