.class public Lcom/android/server/input/KeyGestureController$1;
.super Lcom/android/server/input/KeyGestureController$InterceptKeyStage;
.source "KeyGestureController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/KeyGestureController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyGestureController;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$1;->this$0:Lcom/android/server/input/KeyGestureController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/input/KeyGestureController$InterceptKeyStage;-><init>(Lcom/android/server/input/KeyGestureController-IA;)V

    return-void
.end method


# virtual methods
.method public onKeyEvent(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 3

    .line 191
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$1;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$minterceptShortcutsBeforeKeyCapture(Lcom/android/server/input/KeyGestureController;Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
