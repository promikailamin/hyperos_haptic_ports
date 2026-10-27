.class final Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerInternal;
.super Lmiui/hardware/shoulderkey/ITouchMotionEventListener$Stub;
.source "ShoulderKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/shoulderkey/ShoulderKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TouchMotionEventListenerInternal"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/hardware/shoulderkey/ShoulderKeyManager;


# direct methods
.method private constructor blacklist <init>(Lmiui/hardware/shoulderkey/ShoulderKeyManager;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerInternal;->this$0:Lmiui/hardware/shoulderkey/ShoulderKeyManager;

    invoke-direct {p0}, Lmiui/hardware/shoulderkey/ITouchMotionEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/hardware/shoulderkey/ShoulderKeyManager;Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerInternal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerInternal;-><init>(Lmiui/hardware/shoulderkey/ShoulderKeyManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onTouchMotionEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 269
    iget-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerInternal;->this$0:Lmiui/hardware/shoulderkey/ShoulderKeyManager;

    invoke-static {v0, p1}, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->-$$Nest$monTouchMotionEvent(Lmiui/hardware/shoulderkey/ShoulderKeyManager;Landroid/view/MotionEvent;)V

    .line 270
    return-void
.end method
