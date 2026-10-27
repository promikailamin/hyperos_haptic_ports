.class Lmiui/cameraanimation/CameraAnimationView$1;
.super Ljava/lang/Object;
.source "CameraAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cameraanimation/CameraAnimationView;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/cameraanimation/CameraAnimationView;


# direct methods
.method constructor blacklist <init>(Lmiui/cameraanimation/CameraAnimationView;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/cameraanimation/CameraAnimationView;

    .line 35
    iput-object p1, p0, Lmiui/cameraanimation/CameraAnimationView$1;->this$0:Lmiui/cameraanimation/CameraAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 38
    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationView$1;->this$0:Lmiui/cameraanimation/CameraAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiui/cameraanimation/CameraAnimationView;->setVisibility(I)V

    .line 39
    return-void
.end method
