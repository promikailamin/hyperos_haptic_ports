.class public Lcom/android/server/input/InputShellCommand;
.super Landroid/os/ShellCommand;
.source "InputShellCommand.java"


# static fields
.field public static final MODIFIER:Ljava/util/Map;

.field public static final SOURCES:Ljava/util/Map;


# instance fields
.field public final mInputEventInjector:Ljava/util/function/BiConsumer;


# direct methods
.method public static synthetic $r8$lambda$hGxb9MovDr1pEN3Qnb51vH9VzpA(Landroid/view/InputEvent;Ljava/lang/Integer;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/input/InputShellCommand;->injectInputEvent(Landroid/view/InputEvent;Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/16 v1, 0x71

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x72

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x5000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x39

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3a

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3b

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3c

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x81

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x75

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x30000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x76

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x50000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/InputShellCommand;->MODIFIER:Ljava/util/Map;

    .line 115
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/16 v1, 0x101

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "keyboard"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x201

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dpad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x401

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gamepad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1002

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "touchscreen"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2002

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mouse"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4002

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "stylus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10004

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "trackball"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x100008

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "touchpad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x200000

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "touchnavigation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x1000010

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "joystick"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x400000

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "rotaryencoder"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 132
    new-instance v0, Lcom/android/server/input/InputShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/input/InputShellCommand$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/input/InputShellCommand;-><init>(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/BiConsumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/view/InputEvent;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/server/input/InputShellCommand;->mInputEventInjector:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public static injectInputEvent(Landroid/view/InputEvent;Ljava/lang/Integer;)V
    .registers 3

    .line 141
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method


# virtual methods
.method public final getAction()I
    .registers 8

    .line 637
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    .line 638
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_62

    goto :goto_43

    :sswitch_18
    const-string v1, "CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_43

    :cond_21
    move v6, v2

    goto :goto_43

    :sswitch_23
    const-string v1, "MOVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_43

    :cond_2c
    move v6, v3

    goto :goto_43

    :sswitch_2e
    const-string v1, "DOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_43

    :cond_37
    move v6, v4

    goto :goto_43

    :sswitch_39
    const-string v1, "UP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_43

    :cond_42
    move v6, v5

    :goto_43
    packed-switch v6, :pswitch_data_74

    .line 648
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5d
    return v2

    :pswitch_5e
    return v3

    :pswitch_5f
    return v5

    :pswitch_60
    return v4

    nop

    :sswitch_data_62
    .sparse-switch
        0xa9b -> :sswitch_39
        0x201ca2 -> :sswitch_2e
        0x2433d1 -> :sswitch_23
        0x760d227a -> :sswitch_18
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
    .end packed-switch
.end method

.method public final getDisplayId()I
    .registers 4

    .line 165
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    .line 166
    const-string v0, "INVALID_DISPLAY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_e

    return v1

    .line 168
    :cond_e
    const-string v0, "DEFAULT_DISPLAY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    return v2

    .line 172
    :cond_18
    :try_start_18
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_1f

    return v1

    .line 176
    :cond_1f
    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_23} :catch_24

    return p0

    .line 178
    :catch_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error: Invalid arguments for display ID."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getInputDeviceId(I)I
    .registers 7

    .line 154
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object p0

    .line 155
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_19

    aget v3, p0, v2

    .line 156
    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 157
    invoke-virtual {v4, p1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v4

    if-eqz v4, :cond_16

    return v3

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_19
    return v1
.end method

.method public final getSource(II)I
    .registers 3

    .line 0
    if-nez p1, :cond_3

    return p2

    :cond_3
    return p1
.end method

.method public final getToolType(I)I
    .registers 2

    .line 0
    sparse-switch p1, :sswitch_data_c

    const/4 p0, 0x0

    return p0

    :sswitch_5
    const/4 p0, 0x2

    return p0

    :sswitch_7
    const/4 p0, 0x3

    return p0

    :sswitch_9
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_c
    .sparse-switch
        0x1002 -> :sswitch_9
        0x2002 -> :sswitch_7
        0x4002 -> :sswitch_5
        0xc002 -> :sswitch_5
        0x10004 -> :sswitch_7
        0x20004 -> :sswitch_7
        0x100008 -> :sswitch_9
        0x200000 -> :sswitch_9
    .end sparse-switch
.end method

.method public final injectKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 3

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    goto :goto_5

    :cond_4
    const/4 p2, 0x2

    .line 150
    :goto_5
    iget-object p0, p0, Lcom/android/server/input/InputShellCommand;->mInputEventInjector:Ljava/util/function/BiConsumer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final injectMotionEvent(IIJJFFFI)V
    .registers 27

    const/4 v0, 0x0

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v0, 0x1

    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v0, 0x2

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 197
    invoke-static/range {v1 .. v6}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v14

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move/from16 v15, p10

    .line 201
    invoke-virtual/range {v7 .. v15}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJLjava/util/Map;I)V

    return-void
.end method

.method public final injectMotionEvent(IIJJLjava/util/Map;I)V
    .registers 27

    const/4 v0, 0x1

    .line 217
    new-array v7, v0, [Landroid/view/MotionEvent$PointerProperties;

    .line 220
    new-instance v1, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v7, v2

    .line 221
    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 222
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/input/InputShellCommand;->getToolType(I)I

    move-result v3

    iput v3, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 224
    new-array v8, v0, [Landroid/view/MotionEvent$PointerCoords;

    .line 226
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v0, v8, v2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 227
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 228
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 229
    aget-object v3, v8, v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3, v4, v1}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_28

    :cond_4e
    const/4 v0, -0x1

    move/from16 v1, p8

    if-ne v1, v0, :cond_5a

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5a

    move/from16 v16, v2

    goto :goto_5c

    :cond_5a
    move/from16 v16, v1

    .line 238
    :goto_5c
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/input/InputShellCommand;->getInputDeviceId(I)I

    move-result v13

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move/from16 v15, p1

    move/from16 v5, p2

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    .line 236
    invoke-static/range {v1 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    move-object/from16 v1, p0

    .line 240
    iget-object v1, v1, Lcom/android/server/input/InputShellCommand;->mInputEventInjector:Ljava/util/function/BiConsumer;

    const/4 v2, 0x2

    .line 241
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 240
    invoke-interface {v1, v0, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final lerp(FFF)F
    .registers 4

    .line 0
    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float/2addr p2, p1

    return p2
.end method

.method public final onCommand(Ljava/lang/String;)I
    .registers 7

    .line 276
    sget-object v0, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 277
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 278
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move v0, p1

    move-object p1, v4

    goto :goto_1c

    :cond_1b
    move v0, v2

    .line 283
    :goto_1c
    const-string v1, "-d"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 284
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getDisplayId()I

    move-result p1

    .line 285
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move v1, p1

    move-object p1, v4

    goto :goto_31

    :cond_30
    const/4 v1, -0x1

    .line 289
    :goto_31
    :try_start_31
    const-string/jumbo v3, "text"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 290
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runText(II)V

    goto/16 :goto_b4

    .line 291
    :cond_3f
    const-string v3, "keyevent"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 292
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runKeyEvent(II)V

    goto :goto_b4

    .line 293
    :cond_4b
    const-string/jumbo v3, "tap"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 294
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runTap(II)V

    goto :goto_b4

    .line 295
    :cond_58
    const-string/jumbo v3, "swipe"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 296
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runSwipe(II)V

    goto :goto_b4

    .line 297
    :cond_65
    const-string v3, "draganddrop"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 298
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runDragAndDrop(II)V

    goto :goto_b4

    .line 299
    :cond_71
    const-string/jumbo v3, "press"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 300
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runPress(II)V

    goto :goto_b4

    .line 301
    :cond_7e
    const-string/jumbo v3, "roll"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 302
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runRoll(II)V

    goto :goto_b4

    .line 303
    :cond_8b
    const-string/jumbo v3, "scroll"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 304
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runScroll(II)V

    goto :goto_b4

    .line 305
    :cond_98
    const-string/jumbo v3, "motionevent"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 306
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runMotionEvent(II)V

    goto :goto_b4

    .line 307
    :cond_a5
    const-string v3, "keycombination"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 308
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runKeyCombination(II)V

    goto :goto_b4

    .line 310
    :cond_b1
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_b4
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_b4} :catch_b5

    :goto_b4
    return v2

    .line 313
    :catch_b5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Invalid arguments for command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onHelp()V
    .registers 5

    .line 320
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 321
    :try_start_4
    const-string v0, "Usage: input [<source>] [-d DISPLAY_ID] <command> [<arg>...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 323
    const-string v0, "The sources are: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    sget-object v0, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1b

    :catchall_3c
    move-exception v0

    goto/16 :goto_ca

    .line 327
    :cond_3f
    const-string v0, "[axis_value] represents an option specifying the value of a given axis "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    const-string v0, "      The syntax is as follows: --axis <axis_name>,<axis_value>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    const-string v0, "            where <axis_name> is the name of the axis as defined in "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    const-string v0, "            MotionEvent without the AXIS_ prefix (e.g. SCROLL, X)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    const-string v0, "      Sample [axis_values] entry: `--axis Y,3`, `--axis SCROLL,-2`"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 333
    const-string v0, "-d: specify the display ID.\n      (Default: %d for key event, %d for motion event if not specified.)"

    const/4 v1, -0x1

    .line 335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 333
    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 336
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 337
    const-string v0, "The commands and default sources are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    const-string v0, "      text <string> (Default: keyboard)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    const-string v0, "      keyevent [--longpress|--duration <duration to hold key down in ms>] [--doubletap] [--async] [--delay <duration between keycodes in ms>] <key code number or name> ... (Default: keyboard)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    const-string v0, "      tap <x> <y> (Default: touchscreen)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    const-string v0, "      swipe <x1> <y1> <x2> <y2> [duration(ms)] (Default: touchscreen)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    const-string v0, "      draganddrop <x1> <y1> <x2> <y2> [duration(ms)] (Default: touchscreen)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    const-string v0, "      press (Default: trackball)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    const-string v0, "      roll <dx> <dy> (Default: trackball)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    const-string v0, "      motionevent <DOWN|UP|MOVE|CANCEL> <x> <y> (Default: touchscreen)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    const-string v0, "      scroll (Default: rotaryencoder). Has the following syntax:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    const-string v0, "            scroll <x> <y> [axis_value] (for pointer-based sources)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    const-string v0, "            scroll [axis_value] (for non-pointer-based sources)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    const-string v0, "            Axis options: SCROLL, HSCROLL, VSCROLL"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    const-string v0, "            None or one or multiple axis value options can be specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    const-string v0, "            To specify multiple axes, use one axis option for per axis."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    const-string v0, "            Example: `scroll --axis VSCROLL,2 --axis SCROLL,-2.4`"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    const-string v0, "      keycombination [-t duration(ms)] <key code 1> <key code 2> ... (Default: keyboard, the key order is important here.)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_4 .. :try_end_c6} :catchall_3c

    .line 360
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :goto_ca
    if-eqz p0, :cond_d4

    .line 320
    :try_start_cc
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_d0

    goto :goto_d4

    :catchall_d0
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d4
    :goto_d4
    throw v0
.end method

.method public final readAxisOptionValues(Ljava/util/Set;)Landroid/util/Pair;
    .registers 5

    .line 607
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    .line 608
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 609
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_75

    .line 612
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AXIS_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 613
    invoke-static {p0}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5e

    .line 617
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 620
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 618
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported axis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 615
    :cond_5e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid axis name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 610
    :cond_75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid --axis option value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final runDragAndDrop(II)V
    .registers 4

    const/16 v0, 0x1002

    .line 557
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    const/4 v0, 0x1

    .line 558
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/InputShellCommand;->sendSwipe(IIZ)V

    return-void
.end method

.method public final runKeyCombination(II)V
    .registers 10

    .line 687
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 691
    const-string v1, "-t"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 692
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 693
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 694
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    move-wide v5, v0

    move-object v0, v2

    goto :goto_1f

    :cond_1c
    const-wide/16 v1, 0x0

    move-wide v5, v1

    .line 697
    :goto_1f
    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    :goto_24
    if-eqz v0, :cond_4b

    .line 699
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_34

    .line 703
    invoke-virtual {v3, v1}, Landroid/util/IntArray;->add(I)V

    .line 704
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 701
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown keycode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 708
    :cond_4b
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_59

    move-object v1, p0

    move v2, p1

    move v4, p2

    .line 712
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/input/InputShellCommand;->sendKeyCombination(ILandroid/util/IntArray;IJ)V

    return-void

    .line 709
    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keycombination requires at least 2 keycodes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final runKeyEvent(II)V
    .registers 21

    move-object/from16 v0, p0

    .line 410
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move v2, v7

    move v3, v2

    move v4, v3

    move-wide v5, v8

    move-wide v10, v5

    .line 412
    :goto_e
    const-string v12, "--"

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_1b

    :goto_17
    move v12, v4

    move-wide v14, v5

    move v6, v3

    goto :goto_6d

    :cond_1b
    if-nez v2, :cond_28

    .line 413
    const-string v2, "--longpress"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_28

    :cond_26
    move v2, v7

    goto :goto_29

    :cond_28
    :goto_28
    move v2, v13

    :goto_29
    if-nez v3, :cond_36

    .line 414
    const-string v3, "--async"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_36

    :cond_34
    move v3, v7

    goto :goto_37

    :cond_36
    :goto_36
    move v3, v13

    :goto_37
    if-nez v4, :cond_44

    .line 415
    const-string v4, "--doubletap"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    goto :goto_44

    :cond_42
    move v4, v7

    goto :goto_45

    :cond_44
    :goto_44
    move v4, v13

    .line 416
    :goto_45
    const-string v12, "--delay"

    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_56

    .line 417
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_66

    .line 418
    :cond_56
    const-string v12, "--duration"

    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 419
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 421
    :cond_66
    :goto_66
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c3

    goto :goto_17

    :goto_6d
    cmp-long v3, v10, v8

    if-lez v3, :cond_85

    if-nez v2, :cond_74

    goto :goto_85

    .line 424
    :cond_74
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "--duration and --longpress cannot be used at the same time."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyevent args should only contain either durationMs or longPress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_85
    :goto_85
    if-eqz v2, :cond_8c

    .line 430
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v10, v2

    :cond_8c
    move-wide v3, v10

    :goto_8d
    if-nez v13, :cond_96

    cmp-long v2, v14, v8

    if-lez v2, :cond_96

    .line 436
    invoke-virtual {v0, v14, v15}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 440
    :cond_96
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    move/from16 v1, p1

    move/from16 v5, p2

    .line 441
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(IIJIZ)V

    if-eqz v12, :cond_b2

    .line 443
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v1

    int-to-long v10, v1

    invoke-virtual {v0, v10, v11}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    move/from16 v1, p1

    move/from16 v5, p2

    .line 444
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(IIJIZ)V

    :cond_b2
    move-wide/from16 v16, v3

    move v0, v6

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_bc

    return-void

    :cond_bc
    move v6, v0

    move v13, v7

    move-wide/from16 v3, v16

    move-object/from16 v0, p0

    goto :goto_8d

    :cond_c3
    move-object/from16 v0, p0

    goto/16 :goto_e
.end method

.method public final runMotionEvent(II)V
    .registers 10

    const/16 v0, 0x1002

    .line 653
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result v2

    .line 654
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getAction()I

    move-result v3

    if-eqz v3, :cond_32

    const/4 p1, 0x2

    if-eq v3, p1, :cond_32

    const/4 p1, 0x1

    if-ne v3, p1, :cond_13

    goto :goto_32

    .line 663
    :cond_13
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    .line 664
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2c

    if-eqz v0, :cond_2c

    .line 666
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 667
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    :goto_27
    move-object v1, p0

    move v4, p1

    move v6, p2

    move v5, v0

    goto :goto_43

    :cond_2c
    const/4 p1, 0x0

    move-object v1, p0

    move v4, p1

    move v5, v4

    move v6, p2

    goto :goto_43

    .line 659
    :cond_32
    :goto_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 660
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_27

    .line 671
    :goto_43
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/input/InputShellCommand;->sendMotionEvent(IIFFI)V

    return-void
.end method

.method public final runPress(II)V
    .registers 4

    const v0, 0x10004

    .line 496
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    const/4 v0, 0x0

    .line 497
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/server/input/InputShellCommand;->sendTap(IFFI)V

    return-void
.end method

.method public final runRoll(II)V
    .registers 5

    const v0, 0x10004

    .line 562
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 563
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 564
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 563
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendMove(IFFI)V

    return-void
.end method

.method public final runScroll(II)V
    .registers 13

    const/high16 v0, 0x400000

    .line 568
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result v2

    and-int/lit8 p1, v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_f

    move p1, v1

    goto :goto_10

    :cond_f
    move p1, v0

    .line 570
    :goto_10
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_3d

    .line 572
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v8, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v8, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    const/16 p1, 0xa

    .line 575
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 577
    :goto_53
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 578
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const-string v1, "--axis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 580
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputShellCommand;->readAxisOptionValues(Ljava/util/Set;)Landroid/util/Pair;

    move-result-object v0

    .line 581
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 584
    :cond_74
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported option: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 587
    :cond_8b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/16 v3, 0x8

    move-wide v6, v4

    move-object v1, p0

    move v9, p2

    .line 588
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJLjava/util/Map;I)V

    return-void
.end method

.method public final runSwipe(II)V
    .registers 4

    const/16 v0, 0x1002

    .line 501
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    const/4 v0, 0x0

    .line 502
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/InputShellCommand;->sendSwipe(IIZ)V

    return-void
.end method

.method public final runTap(II)V
    .registers 5

    const/16 v0, 0x1002

    .line 483
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 484
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 485
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 484
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendTap(IFFI)V

    return-void
.end method

.method public final runText(II)V
    .registers 4

    const/16 v0, 0x101

    .line 364
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 365
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/input/InputShellCommand;->sendText(ILjava/lang/String;I)V

    return-void
.end method

.method public final sendKeyCombination(ILandroid/util/IntArray;IJ)V
    .registers 25

    move-object/from16 v0, p0

    .line 717
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/util/IntArray;->size()I

    move-result v14

    .line 719
    new-array v15, v14, [Landroid/view/KeyEvent;

    const/16 v16, 0x0

    .line 729
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move/from16 v4, v16

    move v9, v4

    :goto_15
    if-ge v4, v14, :cond_54

    move-object/from16 v5, p2

    .line 722
    invoke-virtual {v5, v4}, Landroid/util/IntArray;->get(I)I

    move-result v7

    move-object v6, v1

    .line 723
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v6

    const/4 v6, 0x0

    move-object v10, v8

    const/4 v8, 0x0

    move-object v13, v10

    const/4 v10, -0x1

    move/from16 v17, v4

    move-wide v4, v2

    move/from16 v18, v17

    move-object/from16 v17, v15

    move-object v15, v13

    move/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v4, v1

    move/from16 v1, p3

    .line 726
    invoke-virtual {v4, v1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 727
    aput-object v4, v17, v18

    .line 729
    sget-object v4, Lcom/android/server/input/InputShellCommand;->MODIFIER:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v9, v4

    add-int/lit8 v4, v18, 0x1

    move-object v1, v15

    move-object/from16 v15, v17

    goto :goto_15

    :cond_54
    move-object/from16 v17, v15

    move-object v15, v1

    move/from16 v1, v16

    :goto_59
    const/4 v4, 0x1

    if-ge v1, v14, :cond_64

    .line 732
    aget-object v5, v17, v1

    .line 735
    invoke-virtual {v0, v5, v4}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    :cond_64
    move-wide/from16 v5, p4

    .line 738
    invoke-virtual {v0, v5, v6}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    move/from16 v1, v16

    :goto_6b
    if-ge v1, v14, :cond_a1

    .line 740
    aget-object v5, v17, v1

    .line 741
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    move/from16 v16, v1

    .line 742
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v10, -0x1

    move v13, v4

    move-wide v4, v2

    move/from16 v18, v14

    move v14, v13

    move/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 745
    invoke-virtual {v0, v1, v14}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 746
    sget-object v1, Lcom/android/server/input/InputShellCommand;->MODIFIER:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    not-int v1, v1

    and-int/2addr v9, v1

    add-int/lit8 v1, v16, 0x1

    move v4, v14

    move/from16 v14, v18

    goto :goto_6b

    :cond_a1
    return-void
.end method

.method public final sendKeyEvent(IIJIZ)V
    .registers 24

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move/from16 v3, p6

    .line 452
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 454
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    move-wide v7, v5

    move/from16 v16, p1

    move/from16 v10, p2

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v7, v4

    move/from16 v4, p5

    .line 457
    invoke-virtual {v7, v4}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 459
    invoke-virtual {v0, v7, v3}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 460
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v8, v4

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    const/4 v12, 0x1

    if-lez v4, :cond_56

    .line 462
    invoke-virtual {v0, v8, v9}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 464
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v13, v4

    cmp-long v4, v1, v13

    if-ltz v4, :cond_56

    .line 467
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v13, v4

    add-long/2addr v5, v13

    const/16 v4, 0x80

    .line 468
    invoke-static {v7, v5, v6, v12, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v4

    .line 470
    invoke-virtual {v0, v4, v3}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    sub-long/2addr v1, v8

    cmp-long v4, v1, v10

    if-lez v4, :cond_56

    .line 474
    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 478
    :cond_56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v4, 0x0

    invoke-static {v7, v1, v2, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 479
    invoke-static {v1, v12}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method public final sendMotionEvent(IIFFI)V
    .registers 17

    if-eqz p2, :cond_9

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    goto :goto_9

    :cond_6
    const/4 v0, 0x0

    :goto_7
    move v9, v0

    goto :goto_c

    :cond_9
    :goto_9
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_7

    .line 682
    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-wide v5, v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v7, p3

    move v8, p4

    move/from16 v10, p5

    .line 683
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    return-void
.end method

.method public final sendMove(IFFI)V
    .registers 16

    .line 631
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v2, 0x2

    const/4 v9, 0x0

    move-wide v5, v3

    move-object v0, p0

    move v1, p1

    move v7, p2

    move v8, p3

    move v10, p4

    .line 632
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    return-void
.end method

.method public final sendSwipe(IIZ)V
    .registers 25

    .line 507
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 508
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 509
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 510
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    .line 511
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 512
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2c

    :cond_2b
    const/4 v0, -0x1

    :goto_2c
    if-gez v0, :cond_30

    const/16 v0, 0x12c

    :cond_30
    move v13, v0

    .line 517
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v2, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-wide v5, v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v10, p2

    .line 518
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    move v14, v7

    move v15, v8

    if-eqz p3, :cond_4e

    .line 522
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 524
    :cond_4e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v5, v13

    add-long v16, v3, v5

    const/4 v5, 0x1

    move-wide/from16 v19, v1

    move v1, v5

    move-wide/from16 v5, v19

    :goto_5b
    cmp-long v2, v5, v16

    if-gez v2, :cond_a7

    sub-long v7, v5, v3

    int-to-float v2, v1

    const v9, 0x41055555

    mul-float/2addr v2, v9

    long-to-float v7, v7

    sub-float/2addr v2, v7

    float-to-double v7, v2

    .line 534
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-long v7, v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-lez v2, :cond_81

    sub-long v9, v16, v5

    cmp-long v2, v7, v9

    if-lez v2, :cond_7e

    .line 538
    invoke-virtual {v0, v9, v10}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    goto :goto_a7

    .line 541
    :cond_7e
    invoke-virtual {v0, v7, v8}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 544
    :cond_81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v7, v5, v3

    long-to-float v2, v7

    int-to-float v7, v13

    div-float/2addr v2, v7

    .line 548
    invoke-virtual {v0, v14, v11, v2}, Lcom/android/server/input/InputShellCommand;->lerp(FFF)F

    move-result v7

    invoke-virtual {v0, v15, v12, v2}, Lcom/android/server/input/InputShellCommand;->lerp(FFF)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    move/from16 v10, p2

    move/from16 v18, v1

    move/from16 v1, p1

    .line 547
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    add-int/lit8 v1, v18, 0x1

    .line 550
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    goto :goto_5b

    :cond_a7
    :goto_a7
    const/4 v2, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v10, p2

    move v7, v11

    move v8, v12

    .line 552
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    return-void
.end method

.method public final sendTap(IFFI)V
    .registers 16

    .line 489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v2, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-wide v5, v3

    move-object v0, p0

    move v1, p1

    move v7, p2

    move v8, p3

    move v10, p4

    .line 490
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 492
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    return-void
.end method

.method public final sendText(ILjava/lang/String;I)V
    .registers 9

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    move v1, p2

    move v2, v1

    .line 377
    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_2f

    if-eqz v2, :cond_23

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_22

    const/16 v2, 0x20

    .line 381
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v1, -0x1

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_22
    move v2, p2

    .line 385
    :cond_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_2c

    const/4 v2, 0x1

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 390
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, -0x1

    .line 391
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 392
    invoke-virtual {v1, v0}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    move v1, p2

    .line 393
    :goto_41
    array-length v2, v0

    if-ge v1, v2, :cond_58

    .line 394
    aget-object v2, v0, v1

    .line 395
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSource()I

    move-result v3

    if-eq p1, v3, :cond_4f

    .line 396
    invoke-virtual {v2, p1}, Landroid/view/KeyEvent;->setSource(I)V

    .line 398
    :cond_4f
    invoke-virtual {v2, p3}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 399
    invoke-virtual {p0, v2, p2}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_58
    return-void
.end method

.method public final sleep(J)V
    .registers 3

    .line 757
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 759
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
