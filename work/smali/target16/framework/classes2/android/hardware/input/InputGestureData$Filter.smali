.class public final enum Landroid/hardware/input/InputGestureData$Filter;
.super Ljava/lang/Enum;
.source "InputGestureData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputGestureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/hardware/input/InputGestureData$Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/hardware/input/InputGestureData$Filter;

.field public static final enum blacklist KEY:Landroid/hardware/input/InputGestureData$Filter;

.field public static final enum blacklist TOUCHPAD:Landroid/hardware/input/InputGestureData$Filter;


# instance fields
.field private final blacklist mTag:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/hardware/input/InputGestureData$Filter;
    .registers 2

    .line 331
    sget-object v0, Landroid/hardware/input/InputGestureData$Filter;->KEY:Landroid/hardware/input/InputGestureData$Filter;

    sget-object v1, Landroid/hardware/input/InputGestureData$Filter;->TOUCHPAD:Landroid/hardware/input/InputGestureData$Filter;

    filled-new-array {v0, v1}, [Landroid/hardware/input/InputGestureData$Filter;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 332
    new-instance v0, Landroid/hardware/input/InputGestureData$Filter;

    const-string v1, "KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/hardware/input/InputGestureData$Filter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/input/InputGestureData$Filter;->KEY:Landroid/hardware/input/InputGestureData$Filter;

    .line 333
    new-instance v0, Landroid/hardware/input/InputGestureData$Filter;

    const-string v1, "TOUCHPAD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/hardware/input/InputGestureData$Filter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/input/InputGestureData$Filter;->TOUCHPAD:Landroid/hardware/input/InputGestureData$Filter;

    .line 331
    invoke-static {}, Landroid/hardware/input/InputGestureData$Filter;->$values()[Landroid/hardware/input/InputGestureData$Filter;

    move-result-object v0

    sput-object v0, Landroid/hardware/input/InputGestureData$Filter;->$VALUES:[Landroid/hardware/input/InputGestureData$Filter;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 338
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 339
    iput p3, p0, Landroid/hardware/input/InputGestureData$Filter;->mTag:I

    .line 340
    return-void
.end method

.method public static blacklist of(I)Landroid/hardware/input/InputGestureData$Filter;
    .registers 1

    .line 344
    packed-switch p0, :pswitch_data_c

    .line 347
    const/4 p0, 0x0

    goto :goto_a

    .line 346
    :pswitch_5
    sget-object p0, Landroid/hardware/input/InputGestureData$Filter;->TOUCHPAD:Landroid/hardware/input/InputGestureData$Filter;

    goto :goto_a

    .line 345
    :pswitch_8
    sget-object p0, Landroid/hardware/input/InputGestureData$Filter;->KEY:Landroid/hardware/input/InputGestureData$Filter;

    .line 344
    :goto_a
    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/hardware/input/InputGestureData$Filter;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 331
    const-class v0, Landroid/hardware/input/InputGestureData$Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputGestureData$Filter;

    return-object p0
.end method

.method public static blacklist values()[Landroid/hardware/input/InputGestureData$Filter;
    .registers 1

    .line 331
    sget-object v0, Landroid/hardware/input/InputGestureData$Filter;->$VALUES:[Landroid/hardware/input/InputGestureData$Filter;

    invoke-virtual {v0}, [Landroid/hardware/input/InputGestureData$Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/input/InputGestureData$Filter;

    return-object v0
.end method


# virtual methods
.method public blacklist getTag()I
    .registers 2

    .line 353
    iget v0, p0, Landroid/hardware/input/InputGestureData$Filter;->mTag:I

    return v0
.end method

.method public blacklist matches(Landroid/hardware/input/InputGestureData;)Z
    .registers 3

    .line 357
    iget v0, p0, Landroid/hardware/input/InputGestureData$Filter;->mTag:I

    invoke-static {p1}, Landroid/hardware/input/InputGestureData;->-$$Nest$fgetmInputGestureData(Landroid/hardware/input/InputGestureData;)Landroid/hardware/input/AidlInputGestureData;

    move-result-object p1

    iget-object p1, p1, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    invoke-virtual {p1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getTag()I

    move-result p1

    if-ne v0, p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method
