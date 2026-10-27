.class Lcom/android/server/wm/AsyncRotationController$Operation;
.super Ljava/lang/Object;
.source "AsyncRotationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AsyncRotationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AsyncRotationController$Operation$Action;
    }
.end annotation


# static fields
.field static final ACTION_FADE:I = 0x2

.field static final ACTION_SEAMLESS:I = 0x1


# instance fields
.field final mAction:I

.field mCapturedDrawTransaction:Landroid/view/SurfaceControl$Transaction;

.field mIsCompletionPending:Z

.field mLeash:Landroid/view/SurfaceControl;


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "action"    # I

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput p1, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    .line 524
    return-void
.end method
