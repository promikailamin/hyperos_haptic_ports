.class Lmiui/cameraanimation/CameraAnimationManager$2;
.super Landroid/database/ContentObserver;
.source "CameraAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cameraanimation/CameraAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/cameraanimation/CameraAnimationManager;


# direct methods
.method constructor blacklist <init>(Lmiui/cameraanimation/CameraAnimationManager;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lmiui/cameraanimation/CameraAnimationManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 109
    iput-object p1, p0, Lmiui/cameraanimation/CameraAnimationManager$2;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .line 112
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 113
    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager$2;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v0}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fgetmContext(Lmiui/cameraanimation/CameraAnimationManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "force_black_v2"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_17

    const/4 v3, 0x1

    :cond_17
    invoke-static {v0, v3}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fputmHideNotch(Lmiui/cameraanimation/CameraAnimationManager;Z)V

    .line 114
    return-void
.end method
