.class public Landroid/hardware/input/InputGestureData$TouchpadTrigger;
.super Ljava/lang/Object;
.source "InputGestureData.java"

# interfaces
.implements Landroid/hardware/input/InputGestureData$Trigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputGestureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchpadTrigger"
.end annotation


# instance fields
.field blacklist mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 5

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 291
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    .line 292
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    iput p1, v0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->gestureType:I

    .line 293
    return-void

    .line 288
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid touchpadGestureType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(ILandroid/hardware/input/InputGestureData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputGestureData$TouchpadTrigger;-><init>(I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;)V
    .registers 2

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    .line 284
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;Landroid/hardware/input/InputGestureData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputGestureData$TouchpadTrigger;-><init>(Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 314
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 315
    :cond_4
    instance-of v0, p1, Landroid/hardware/input/InputGestureData$TouchpadTrigger;

    if-eqz v0, :cond_13

    check-cast p1, Landroid/hardware/input/InputGestureData$TouchpadTrigger;

    .line 316
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    iget-object p1, p1, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 315
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getAidlTrigger()Landroid/hardware/input/AidlInputGestureData$Trigger;
    .registers 3

    .line 300
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$Trigger;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData$Trigger;-><init>()V

    .line 301
    iget-object v1, p0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    invoke-virtual {v0, v1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->setTouchpadGesture(Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;)V

    .line 302
    return-object v0
.end method

.method public blacklist getTouchpadGestureType()I
    .registers 2

    .line 296
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    iget v0, v0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->gestureType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 321
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    invoke-virtual {v0}, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchpadTrigger{mTouchpadGestureType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->mAidlTouchpadTrigger:Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    iget v1, v1, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->gestureType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
