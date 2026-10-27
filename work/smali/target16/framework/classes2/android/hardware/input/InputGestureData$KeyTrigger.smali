.class public Landroid/hardware/input/InputGestureData$KeyTrigger;
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
    name = "KeyTrigger"
.end annotation


# instance fields
.field blacklist mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;


# direct methods
.method private constructor blacklist <init>(II)V
    .registers 5

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    if-lez p1, :cond_1b

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    if-gt p1, v0, :cond_1b

    .line 237
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    .line 238
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iput p1, v0, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->keycode:I

    .line 239
    iget-object p1, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iput p2, p1, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->modifierState:I

    .line 240
    return-void

    .line 235
    :cond_1b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid keycode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method synthetic constructor blacklist <init>(IILandroid/hardware/input/InputGestureData-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputGestureData$KeyTrigger;-><init>(II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/input/AidlInputGestureData$KeyTrigger;)V
    .registers 2

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    .line 231
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/AidlInputGestureData$KeyTrigger;Landroid/hardware/input/InputGestureData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputGestureData$KeyTrigger;-><init>(Landroid/hardware/input/AidlInputGestureData$KeyTrigger;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 258
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 259
    :cond_4
    instance-of v0, p1, Landroid/hardware/input/InputGestureData$KeyTrigger;

    if-eqz v0, :cond_13

    check-cast p1, Landroid/hardware/input/InputGestureData$KeyTrigger;

    .line 260
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iget-object p1, p1, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 259
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getAidlTrigger()Landroid/hardware/input/AidlInputGestureData$Trigger;
    .registers 3

    .line 251
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$Trigger;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData$Trigger;-><init>()V

    .line 252
    iget-object v1, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    invoke-virtual {v0, v1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->setKey(Landroid/hardware/input/AidlInputGestureData$KeyTrigger;)V

    .line 253
    return-object v0
.end method

.method public blacklist getKeycode()I
    .registers 2

    .line 243
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iget v0, v0, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->keycode:I

    return v0
.end method

.method public blacklist getModifierState()I
    .registers 2

    .line 247
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iget v0, v0, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->modifierState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 265
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    invoke-virtual {v0}, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyTrigger{mKeycode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iget v1, v1, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->keycode:I

    .line 271
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModifierState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputGestureData$KeyTrigger;->mAidlKeyTrigger:Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    iget v1, v1, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->modifierState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    return-object v0
.end method
