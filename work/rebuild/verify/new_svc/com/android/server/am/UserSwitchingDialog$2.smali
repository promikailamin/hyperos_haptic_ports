.class public Lcom/android/server/am/UserSwitchingDialog$2;
.super Ljava/lang/Object;
.source "UserSwitchingDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic val$onAnimationEndWithTimeout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V
    .registers 3

    .line 285
    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog$2;->val$onAnimationEndWithTimeout:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .line 293
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$2;->val$onAnimationEndWithTimeout:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .line 0
    return-void
.end method
