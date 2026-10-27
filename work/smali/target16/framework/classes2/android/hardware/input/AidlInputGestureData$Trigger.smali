.class public final Landroid/hardware/input/AidlInputGestureData$Trigger;
.super Ljava/lang/Object;
.source "AidlInputGestureData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/AidlInputGestureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Trigger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/AidlInputGestureData$Trigger$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/AidlInputGestureData$Trigger;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist key:I = 0x0

.field public static final blacklist touchpadGesture:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 291
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$Trigger$1;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData$Trigger$1;-><init>()V

    sput-object v0, Landroid/hardware/input/AidlInputGestureData$Trigger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    nop

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tag:I

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_value:Ljava/lang/Object;

    .line 246
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput p1, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tag:I

    .line 254
    iput-object p2, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_value:Ljava/lang/Object;

    .line 255
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    invoke-virtual {p0, p1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->readFromParcel(Landroid/os/Parcel;)V

    .line 250
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/AidlInputGestureData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/AidlInputGestureData$Trigger;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5

    .line 371
    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 374
    return-void

    .line 372
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tagString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is available."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .registers 3

    .line 385
    iput p1, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tag:I

    .line 386
    iput-object p2, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_value:Ljava/lang/Object;

    .line 387
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5

    .line 377
    packed-switch p1, :pswitch_data_22

    .line 381
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :pswitch_1c
    const-string p1, "touchpadGesture"

    return-object p1

    .line 378
    :pswitch_1f
    const-string p1, "key"

    return-object p1

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 347
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 348
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 349
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 351
    :cond_f
    return v0
.end method

.method public static blacklist key(Landroid/hardware/input/AidlInputGestureData$KeyTrigger;)Landroid/hardware/input/AidlInputGestureData$Trigger;
    .registers 3

    .line 264
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$Trigger;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist touchpadGesture(Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;)Landroid/hardware/input/AidlInputGestureData$Trigger;
    .registers 3

    .line 279
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$Trigger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 335
    nop

    .line 336
    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getTag()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_20

    goto :goto_1e

    .line 341
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getTouchpadGesture()Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_1e

    .line 338
    :pswitch_14
    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getKey()Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 339
    nop

    .line 344
    :goto_1e
    return v1

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_14
        :pswitch_a
    .end packed-switch
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 356
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 357
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 358
    :cond_8
    instance-of v2, p1, Landroid/hardware/input/AidlInputGestureData$Trigger;

    if-nez v2, :cond_d

    return v1

    .line 359
    :cond_d
    check-cast p1, Landroid/hardware/input/AidlInputGestureData$Trigger;

    .line 360
    iget v2, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tag:I

    iget v3, p1, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tag:I

    if-eq v2, v3, :cond_16

    return v1

    .line 361
    :cond_16
    iget-object v2, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_value:Ljava/lang/Object;

    iget-object p1, p1, Landroid/hardware/input/AidlInputGestureData$Trigger;->_value:Ljava/lang/Object;

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    return v1

    .line 362
    :cond_21
    return v0
.end method

.method public blacklist getKey()Landroid/hardware/input/AidlInputGestureData$KeyTrigger;
    .registers 2

    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->_assertTag(I)V

    .line 269
    iget-object v0, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    return-object v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 258
    iget v0, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tag:I

    return v0
.end method

.method public blacklist getTouchpadGesture()Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;
    .registers 2

    .line 283
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->_assertTag(I)V

    .line 284
    iget-object v0, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 367
    iget v0, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_value:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 318
    packed-switch v0, :pswitch_data_38

    .line 330
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "union: unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 326
    :pswitch_20
    sget-object v1, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    .line 327
    invoke-direct {p0, v0, p1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->_set(ILjava/lang/Object;)V

    .line 328
    return-void

    .line 321
    :pswitch_2c
    sget-object v1, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    .line 322
    invoke-direct {p0, v0, p1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->_set(ILjava/lang/Object;)V

    .line 323
    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setKey(Landroid/hardware/input/AidlInputGestureData$KeyTrigger;)V
    .registers 3

    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->_set(ILjava/lang/Object;)V

    .line 274
    return-void
.end method

.method public blacklist setTouchpadGesture(Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;)V
    .registers 3

    .line 288
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->_set(ILjava/lang/Object;)V

    .line 289
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 304
    iget v0, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget v0, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tag:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_1b

    .line 310
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getTouchpadGesture()Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1b

    .line 307
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getKey()Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 308
    nop

    .line 313
    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
