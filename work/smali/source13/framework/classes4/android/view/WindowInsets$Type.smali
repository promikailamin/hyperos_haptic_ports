.class public final Landroid/view/WindowInsets$Type;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsets$Type$InsetsType;
    }
.end annotation


# static fields
.field static final blacklist CAPTION_BAR:I = 0x4

.field static final blacklist DISPLAY_CUTOUT:I = 0x80

.field static final blacklist FIRST:I = 0x1

.field static final blacklist IME:I = 0x8

.field static final blacklist LAST:I = 0x100

.field static final blacklist MANDATORY_SYSTEM_GESTURES:I = 0x20

.field static final blacklist NAVIGATION_BARS:I = 0x2

.field static final blacklist SIZE:I = 0x9

.field static final blacklist STATUS_BARS:I = 0x1

.field static final blacklist SYSTEM_GESTURES:I = 0x10

.field static final blacklist TAPPABLE_ELEMENT:I = 0x40

.field static final blacklist WINDOW_DECOR:I = 0x100


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1524
    return-void
.end method

.method public static blacklist all()I
    .registers 1

    .line 1630
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist captionBar()I
    .registers 1

    .line 1551
    const/4 v0, 0x4

    return v0
.end method

.method public static whitelist displayCutout()I
    .registers 1

    .line 1613
    const/16 v0, 0x80

    return v0
.end method

.method public static whitelist ime()I
    .registers 1

    .line 1558
    const/16 v0, 0x8

    return v0
.end method

.method static blacklist indexOf(I)I
    .registers 4
    .param p0, "type"    # I

    .line 1463
    sparse-switch p0, :sswitch_data_30

    .line 1483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type needs to be >= FIRST and <= LAST, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1481
    :sswitch_1d
    const/16 v0, 0x8

    return v0

    .line 1479
    :sswitch_20
    const/4 v0, 0x7

    return v0

    .line 1477
    :sswitch_22
    const/4 v0, 0x6

    return v0

    .line 1475
    :sswitch_24
    const/4 v0, 0x5

    return v0

    .line 1473
    :sswitch_26
    const/4 v0, 0x4

    return v0

    .line 1471
    :sswitch_28
    const/4 v0, 0x3

    return v0

    .line 1469
    :sswitch_2a
    const/4 v0, 0x2

    return v0

    .line 1467
    :sswitch_2c
    const/4 v0, 0x1

    return v0

    .line 1465
    :sswitch_2e
    const/4 v0, 0x0

    return v0

    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_2e
        0x2 -> :sswitch_2c
        0x4 -> :sswitch_2a
        0x8 -> :sswitch_28
        0x10 -> :sswitch_26
        0x20 -> :sswitch_24
        0x40 -> :sswitch_22
        0x80 -> :sswitch_20
        0x100 -> :sswitch_1d
    .end sparse-switch
.end method

.method public static whitelist mandatorySystemGestures()I
    .registers 1

    .line 1586
    const/16 v0, 0x20

    return v0
.end method

.method public static whitelist navigationBars()I
    .registers 1

    .line 1544
    const/4 v0, 0x2

    return v0
.end method

.method public static whitelist statusBars()I
    .registers 1

    .line 1537
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist systemBars()I
    .registers 1

    .line 1621
    const/4 v0, 0x7

    return v0
.end method

.method public static whitelist systemGestures()I
    .registers 1

    .line 1579
    const/16 v0, 0x10

    return v0
.end method

.method public static whitelist tappableElement()I
    .registers 1

    .line 1593
    const/16 v0, 0x40

    return v0
.end method

.method static blacklist toString(I)Ljava/lang/String;
    .registers 4
    .param p0, "types"    # I

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1490
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_f

    .line 1491
    const-string/jumbo v1, "statusBars |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    :cond_f
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_19

    .line 1494
    const-string/jumbo v1, "navigationBars |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    :cond_19
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_22

    .line 1497
    const-string v1, "captionBar |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    :cond_22
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2b

    .line 1500
    const-string v1, "ime |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    :cond_2b
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_35

    .line 1503
    const-string/jumbo v1, "systemGestures |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    :cond_35
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_3f

    .line 1506
    const-string/jumbo v1, "mandatorySystemGestures |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    :cond_3f
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_49

    .line 1509
    const-string/jumbo v1, "tappableElement |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    :cond_49
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_52

    .line 1512
    const-string v1, "displayCutout |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    :cond_52
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_5c

    .line 1515
    const-string/jumbo v1, "windowDecor |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    :cond_5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6f

    .line 1518
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1520
    :cond_6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
