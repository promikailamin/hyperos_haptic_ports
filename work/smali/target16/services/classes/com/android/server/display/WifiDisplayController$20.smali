.class public Lcom/android/server/display/WifiDisplayController$20;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field public final synthetic val$display:Landroid/hardware/display/WifiDisplay;

.field public final synthetic val$flags:I

.field public final synthetic val$height:I

.field public final synthetic val$oldDisplay:Landroid/hardware/display/WifiDisplay;

.field public final synthetic val$oldSurface:Landroid/view/Surface;

.field public final synthetic val$surface:Landroid/view/Surface;

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V
    .registers 9

    .line 1027
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$20;->val$oldSurface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController$20;->val$surface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/android/server/display/WifiDisplayController$20;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object p5, p0, Lcom/android/server/display/WifiDisplayController$20;->val$display:Landroid/hardware/display/WifiDisplay;

    iput p6, p0, Lcom/android/server/display/WifiDisplayController$20;->val$width:I

    iput p7, p0, Lcom/android/server/display/WifiDisplayController$20;->val$height:I

    iput p8, p0, Lcom/android/server/display/WifiDisplayController$20;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1030
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->val$oldSurface:Landroid/view/Surface;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$20;->val$surface:Landroid/view/Surface;

    if-eq v1, v0, :cond_12

    .line 1031
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmListener(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayDisconnected()V

    goto :goto_27

    .line 1032
    :cond_12
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$20;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1033
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmListener(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnectionFailed()V

    .line 1036
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->val$display:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_6f

    .line 1037
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$20;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1038
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmListener(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$20;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-interface {v0, v1}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V

    goto :goto_54

    .line 1039
    :cond_3f
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$20;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 1042
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmListener(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$20;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-interface {v0, v1}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayChanged(Landroid/hardware/display/WifiDisplay;)V

    .line 1044
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->val$surface:Landroid/view/Surface;

    if-eqz v0, :cond_6f

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$20;->val$oldSurface:Landroid/view/Surface;

    if-eq v0, v1, :cond_6f

    .line 1045
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmListener(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$20;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$20;->val$surface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/display/WifiDisplayController$20;->val$width:I

    iget v5, p0, Lcom/android/server/display/WifiDisplayController$20;->val$height:I

    iget v6, p0, Lcom/android/server/display/WifiDisplayController$20;->val$flags:I

    invoke-interface/range {v1 .. v6}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    :cond_6f
    return-void
.end method
