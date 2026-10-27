.class Lmiui/cameraanimation/CameraAnimationManager$H;
.super Landroid/os/Handler;
.source "CameraAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cameraanimation/CameraAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/cameraanimation/CameraAnimationManager;


# direct methods
.method public constructor blacklist <init>(Lmiui/cameraanimation/CameraAnimationManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 179
    iput-object p1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    .line 180
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 181
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 185
    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v0}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$mgetWindowParam(Lmiui/cameraanimation/CameraAnimationManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 186
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_6a

    goto :goto_69

    .line 195
    :pswitch_c
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fgetmAnimationView(Lmiui/cameraanimation/CameraAnimationManager;)Lmiui/cameraanimation/CameraAnimationView;

    move-result-object v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fgetmIsAddedView(Lmiui/cameraanimation/CameraAnimationManager;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 196
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fgetmAnimationView(Lmiui/cameraanimation/CameraAnimationManager;)Lmiui/cameraanimation/CameraAnimationView;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/cameraanimation/CameraAnimationView;->stopAnimation()V

    .line 197
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fgetmWindowManager(Lmiui/cameraanimation/CameraAnimationManager;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v2}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fgetmAnimationView(Lmiui/cameraanimation/CameraAnimationManager;)Lmiui/cameraanimation/CameraAnimationView;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 198
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fputmIsAddedView(Lmiui/cameraanimation/CameraAnimationManager;Z)V

    goto :goto_69

    .line 188
    :pswitch_3b
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fgetmAnimationView(Lmiui/cameraanimation/CameraAnimationManager;)Lmiui/cameraanimation/CameraAnimationView;

    move-result-object v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fgetmIsAddedView(Lmiui/cameraanimation/CameraAnimationManager;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 189
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fgetmWindowManager(Lmiui/cameraanimation/CameraAnimationManager;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v2}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fgetmAnimationView(Lmiui/cameraanimation/CameraAnimationManager;)Lmiui/cameraanimation/CameraAnimationView;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fputmIsAddedView(Lmiui/cameraanimation/CameraAnimationManager;Z)V

    .line 191
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fgetmAnimationView(Lmiui/cameraanimation/CameraAnimationManager;)Lmiui/cameraanimation/CameraAnimationView;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/cameraanimation/CameraAnimationView;->startAnimation()V

    .line 204
    :cond_69
    :goto_69
    return-void

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_c
    .end packed-switch
.end method
