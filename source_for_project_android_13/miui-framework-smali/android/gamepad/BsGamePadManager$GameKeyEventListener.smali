.class final Landroid/gamepad/BsGamePadManager$GameKeyEventListener;
.super Landroid/gamepad/IGameKeyEventListener$Stub;
.source "BsGamePadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gamepad/BsGamePadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GameKeyEventListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/gamepad/BsGamePadManager;


# direct methods
.method private constructor blacklist <init>(Landroid/gamepad/BsGamePadManager;)V
    .registers 2

    .line 448
    iput-object p1, p0, Landroid/gamepad/BsGamePadManager$GameKeyEventListener;->this$0:Landroid/gamepad/BsGamePadManager;

    invoke-direct {p0}, Landroid/gamepad/IGameKeyEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/gamepad/BsGamePadManager;Landroid/gamepad/BsGamePadManager$GameKeyEventListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/gamepad/BsGamePadManager$GameKeyEventListener;-><init>(Landroid/gamepad/BsGamePadManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onGameKeyEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 451
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager$GameKeyEventListener;->this$0:Landroid/gamepad/BsGamePadManager;

    invoke-static {v0, p1}, Landroid/gamepad/BsGamePadManager;->-$$Nest$monGameKeyEvent(Landroid/gamepad/BsGamePadManager;Landroid/view/MotionEvent;)V

    .line 452
    return-void
.end method
