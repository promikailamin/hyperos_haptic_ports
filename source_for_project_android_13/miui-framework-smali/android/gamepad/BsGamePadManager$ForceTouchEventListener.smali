.class final Landroid/gamepad/BsGamePadManager$ForceTouchEventListener;
.super Landroid/gamepad/IForceTouchEventListener$Stub;
.source "BsGamePadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gamepad/BsGamePadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForceTouchEventListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/gamepad/BsGamePadManager;


# direct methods
.method private constructor blacklist <init>(Landroid/gamepad/BsGamePadManager;)V
    .registers 2

    .line 321
    iput-object p1, p0, Landroid/gamepad/BsGamePadManager$ForceTouchEventListener;->this$0:Landroid/gamepad/BsGamePadManager;

    invoke-direct {p0}, Landroid/gamepad/IForceTouchEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/gamepad/BsGamePadManager;Landroid/gamepad/BsGamePadManager$ForceTouchEventListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/gamepad/BsGamePadManager$ForceTouchEventListener;-><init>(Landroid/gamepad/BsGamePadManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onForceTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 324
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager$ForceTouchEventListener;->this$0:Landroid/gamepad/BsGamePadManager;

    invoke-static {v0, p1}, Landroid/gamepad/BsGamePadManager;->-$$Nest$monForceTouchEvent(Landroid/gamepad/BsGamePadManager;Landroid/view/MotionEvent;)V

    .line 325
    return-void
.end method
