.class public final synthetic Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameCommitCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ActivityThread$2;

.field public final synthetic blacklist f$1:Landroid/view/View;

.field public final synthetic blacklist f$2:Landroid/os/IBinder;

.field public final synthetic blacklist f$3:Landroid/window/SplashScreenView;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ActivityThread$2;Landroid/view/View;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityThread$2;

    iput-object p2, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;->f$2:Landroid/os/IBinder;

    iput-object p4, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;->f$3:Landroid/window/SplashScreenView;

    return-void
.end method


# virtual methods
.method public final blacklist onFrameCommit(Z)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityThread$2;

    iget-object v1, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object v2, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;->f$2:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;->f$3:Landroid/window/SplashScreenView;

    invoke-static {v0, v1, v2, v3, p1}, Landroid/app/ActivityThread$2;->$r8$lambda$-VsDs4OqSEyu3nl1NOJR2kp0KV4(Landroid/app/ActivityThread$2;Landroid/view/View;Landroid/os/IBinder;Landroid/window/SplashScreenView;Z)V

    return-void
.end method
