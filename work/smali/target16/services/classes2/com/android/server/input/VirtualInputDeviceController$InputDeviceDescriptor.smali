.class final Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;
.super Landroid/hardware/input/IVirtualInputDevice$Stub;
.source "VirtualInputDeviceController.java"


# static fields
.field public static final sNextCreationOrderNumber:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final mController:Lcom/android/server/input/VirtualInputDeviceController;

.field public final mCreationOrderNumber:J

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mDisplayId:I

.field public final mInputDeviceId:I

.field public final mName:Ljava/lang/String;

.field public final mPhys:Ljava/lang/String;

.field public final mPtr:J

.field public final mToken:Landroid/os/IBinder;

.field public final mType:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmName(Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 607
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->sNextCreationOrderNumber:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/VirtualInputDeviceController;JLandroid/os/IBinder$DeathRecipient;IILjava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    .registers 11

    .line 630
    invoke-direct {p0}, Landroid/hardware/input/IVirtualInputDevice$Stub;-><init>()V

    .line 631
    iput-object p1, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mController:Lcom/android/server/input/VirtualInputDeviceController;

    .line 632
    iput-wide p2, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mPtr:J

    .line 633
    iput-object p4, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 634
    iput p5, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mType:I

    .line 635
    iput p6, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mDisplayId:I

    .line 636
    iput-object p7, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mPhys:Ljava/lang/String;

    .line 637
    iput-object p8, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mName:Ljava/lang/String;

    .line 638
    iput p9, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mInputDeviceId:I

    .line 639
    iput-object p10, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mToken:Landroid/os/IBinder;

    .line 640
    sget-object p1, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->sNextCreationOrderNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mCreationOrderNumber:J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 670
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mController:Lcom/android/server/input/VirtualInputDeviceController;

    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/server/input/VirtualInputDeviceController;->unregisterInputDevice(Landroid/os/IBinder;)V

    return-void
.end method

.method public getAssociatedDisplayId()I
    .registers 1

    .line 680
    iget p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mDisplayId:I

    return p0
.end method

.method public getCreationOrderNumber()J
    .registers 3

    .line 661
    iget-wide v0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mCreationOrderNumber:J

    return-wide v0
.end method

.method public getCursorPositionInLogicalDisplay()Landroid/graphics/PointF;
    .registers 2

    .line 735
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mController:Lcom/android/server/input/VirtualInputDeviceController;

    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/server/input/VirtualInputDeviceController;->getCursorPositionInLogicalDisplay(Landroid/os/IBinder;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getCursorPositionInPhysicalDisplay()Landroid/graphics/PointF;
    .registers 2

    .line 730
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mController:Lcom/android/server/input/VirtualInputDeviceController;

    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/server/input/VirtualInputDeviceController;->getCursorPositionInPhysicalDisplay(Landroid/os/IBinder;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getDeathRecipient()Landroid/os/IBinder$DeathRecipient;
    .registers 1

    .line 656
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public getInputDeviceId()I
    .registers 1

    .line 675
    iget p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mInputDeviceId:I

    return p0
.end method

.method public getNativePointer()J
    .registers 3

    .line 644
    iget-wide v0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mPtr:J

    return-wide v0
.end method

.method public getPhys()Ljava/lang/String;
    .registers 1

    .line 665
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mPhys:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .registers 1

    .line 648
    iget p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mType:I

    return p0
.end method

.method public sendDpadKeyEvent(Landroid/hardware/input/VirtualKeyEvent;)Z
    .registers 3

    .line 685
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mController:Lcom/android/server/input/VirtualInputDeviceController;

    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/input/VirtualInputDeviceController;->sendDpadKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result p0

    return p0
.end method

.method public sendKeyEvent(Landroid/hardware/input/VirtualKeyEvent;)Z
    .registers 3

    .line 690
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mController:Lcom/android/server/input/VirtualInputDeviceController;

    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/input/VirtualInputDeviceController;->sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result p0

    return p0
.end method

.method public sendMouseButtonEvent(Landroid/hardware/input/VirtualMouseButtonEvent;)Z
    .registers 3

    .line 695
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mController:Lcom/android/server/input/VirtualInputDeviceController;

    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/input/VirtualInputDeviceController;->sendMouseButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z

    move-result p0

    return p0
.end method

.method public sendMouseRelativeEvent(Landroid/hardware/input/VirtualMouseRelativeEvent;)Z
    .registers 3

    .line 700
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mController:Lcom/android/server/input/VirtualInputDeviceController;

    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/input/VirtualInputDeviceController;->sendMouseRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z

    move-result p0

    return p0
.end method

.method public sendMouseScrollEvent(Landroid/hardware/input/VirtualMouseScrollEvent;)Z
    .registers 3

    .line 705
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mController:Lcom/android/server/input/VirtualInputDeviceController;

    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/input/VirtualInputDeviceController;->sendMouseScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z

    move-result p0

    return p0
.end method

.method public sendRotaryEncoderScrollEvent(Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;)Z
    .registers 3

    .line 725
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mController:Lcom/android/server/input/VirtualInputDeviceController;

    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/input/VirtualInputDeviceController;->sendRotaryEncoderScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;)Z

    move-result p0

    return p0
.end method

.method public sendStylusButtonEvent(Landroid/hardware/input/VirtualStylusButtonEvent;)Z
    .registers 3

    .line 720
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mController:Lcom/android/server/input/VirtualInputDeviceController;

    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/input/VirtualInputDeviceController;->sendStylusButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusButtonEvent;)Z

    move-result p0

    return p0
.end method

.method public sendStylusMotionEvent(Landroid/hardware/input/VirtualStylusMotionEvent;)Z
    .registers 3

    .line 715
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mController:Lcom/android/server/input/VirtualInputDeviceController;

    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/input/VirtualInputDeviceController;->sendStylusMotionEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusMotionEvent;)Z

    move-result p0

    return p0
.end method

.method public sendTouchEvent(Landroid/hardware/input/VirtualTouchEvent;)Z
    .registers 3

    .line 710
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mController:Lcom/android/server/input/VirtualInputDeviceController;

    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/input/VirtualInputDeviceController;->sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualInputDevice( name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " associatedDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->mPhys:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
