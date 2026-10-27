.class final Lmiui/hardware/input/MiuiInputManager$MotionEventListener;
.super Lmiui/hardware/input/IMiuiMotionEventListener$Stub;
.source "MiuiInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/input/MiuiInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotionEventListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/hardware/input/MiuiInputManager;


# direct methods
.method private constructor blacklist <init>(Lmiui/hardware/input/MiuiInputManager;)V
    .registers 2

    .line 888
    iput-object p1, p0, Lmiui/hardware/input/MiuiInputManager$MotionEventListener;->this$0:Lmiui/hardware/input/MiuiInputManager;

    invoke-direct {p0}, Lmiui/hardware/input/IMiuiMotionEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/hardware/input/MiuiInputManager;Lmiui/hardware/input/MiuiInputManager$MotionEventListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/hardware/input/MiuiInputManager$MotionEventListener;-><init>(Lmiui/hardware/input/MiuiInputManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onMiuiMotionEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 891
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager$MotionEventListener;->this$0:Lmiui/hardware/input/MiuiInputManager;

    invoke-static {v0, p1}, Lmiui/hardware/input/MiuiInputManager;->-$$Nest$monMotionEvent(Lmiui/hardware/input/MiuiInputManager;Landroid/view/MotionEvent;)V

    .line 892
    return-void
.end method
