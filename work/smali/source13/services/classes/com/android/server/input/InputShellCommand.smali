.class public Lcom/android/server/input/InputShellCommand;
.super Landroid/os/ShellCommand;
.source "InputShellCommand.java"


# static fields
.field private static final DEFAULT_BUTTON_STATE:I = 0x0

.field private static final DEFAULT_DEVICE_ID:I = 0x0

.field private static final DEFAULT_EDGE_FLAGS:I = 0x0

.field private static final DEFAULT_FLAGS:I = 0x0

.field private static final DEFAULT_META_STATE:I = 0x0

.field private static final DEFAULT_PRECISION_X:F = 1.0f

.field private static final DEFAULT_PRECISION_Y:F = 1.0f

.field private static final DEFAULT_PRESSURE:F = 1.0f

.field private static final DEFAULT_SIZE:F = 1.0f

.field private static final INVALID_ARGUMENTS:Ljava/lang/String; = "Error: Invalid arguments for command: "

.field private static final INVALID_DISPLAY_ARGUMENTS:Ljava/lang/String; = "Error: Invalid arguments for display ID."

.field private static final MODIFIER:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_PRESSURE:F

.field private static final SOURCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 85
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const/16 v1, 0x72

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x5000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x81

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x30000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const/16 v1, 0x76

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x50000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/server/input/InputShellCommand;->MODIFIER:Ljava/util/Map;

    .line 100
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 101
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v1, 0x101

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "keyboard"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const/16 v1, 0x201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dpad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const/16 v1, 0x401

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gamepad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/16 v1, 0x1002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "touchscreen"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const/16 v1, 0x2002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mouse"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const/16 v1, 0x4002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "stylus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const v1, 0x10004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "trackball"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const v1, 0x100008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "touchpad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const/high16 v1, 0x200000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "touchnavigation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const v1, 0x1000010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "joystick"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    .line 113
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method private getAction()I
    .registers 8

    .line 461
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "actionString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_5e

    :cond_13
    goto :goto_3c

    :sswitch_14
    const-string v2, "CANCEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v3

    goto :goto_3d

    :sswitch_1e
    const-string v2, "MOVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v4

    goto :goto_3d

    :sswitch_28
    const-string v2, "DOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v6

    goto :goto_3d

    :sswitch_32
    const-string v2, "UP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v5

    goto :goto_3d

    :goto_3c
    const/4 v1, -0x1

    :goto_3d
    packed-switch v1, :pswitch_data_70

    .line 472
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 470
    :pswitch_59
    return v3

    .line 468
    :pswitch_5a
    return v4

    .line 466
    :pswitch_5b
    return v5

    .line 464
    :pswitch_5c
    return v6

    nop

    :sswitch_data_5e
    .sparse-switch
        0xa9b -> :sswitch_32
        0x201ca2 -> :sswitch_28
        0x2433d1 -> :sswitch_1e
        0x760d227a -> :sswitch_14
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
    .end packed-switch
.end method

.method private getDisplayId()I
    .registers 5

    .line 132
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "displayArg":Ljava/lang/String;
    const-string v1, "INVALID_DISPLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_e

    .line 134
    return v2

    .line 135
    :cond_e
    const-string v1, "DEFAULT_DISPLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    .line 136
    return v3

    .line 139
    :cond_18
    :try_start_18
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 140
    .local v1, "displayId":I
    if-ne v1, v2, :cond_1f

    .line 141
    return v2

    .line 143
    :cond_1f
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_23} :catch_24

    return v2

    .line 144
    .end local v1    # "displayId":I
    :catch_24
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error: Invalid arguments for display ID."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getInputDeviceId(I)I
    .registers 9
    .param p1, "inputSource"    # I

    .line 121
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 122
    .local v0, "devIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_19

    aget v4, v0, v3

    .line 123
    .local v4, "devId":I
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 124
    .local v5, "inputDev":Landroid/view/InputDevice;
    invoke-virtual {v5, p1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 125
    return v4

    .line 122
    .end local v4    # "devId":I
    .end local v5    # "inputDev":Landroid/view/InputDevice;
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 128
    :cond_19
    return v2
.end method

.method private getSource(II)I
    .registers 4
    .param p1, "inputSource"    # I
    .param p2, "defaultSource"    # I

    .line 197
    if-nez p1, :cond_4

    move v0, p2

    goto :goto_5

    :cond_4
    move v0, p1

    :goto_5
    return v0
.end method

.method private getToolType(I)I
    .registers 3
    .param p1, "inputSource"    # I

    .line 201
    sparse-switch p1, :sswitch_data_c

    .line 216
    const/4 v0, 0x0

    return v0

    .line 209
    :sswitch_5
    const/4 v0, 0x2

    return v0

    .line 205
    :sswitch_7
    const/4 v0, 0x3

    return v0

    .line 214
    :sswitch_9
    const/4 v0, 0x1

    return v0

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

.method private injectKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 116
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 118
    return-void
.end method

.method private injectKeyEventAsync(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 540
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 542
    return-void
.end method

.method private injectMotionEvent(IIJJFFFI)V
    .registers 32
    .param p1, "inputSource"    # I
    .param p2, "action"    # I
    .param p3, "downTime"    # J
    .param p5, "when"    # J
    .param p7, "x"    # F
    .param p8, "y"    # F
    .param p9, "pressure"    # F
    .param p10, "displayId"    # I

    .line 163
    const/4 v0, 0x1

    .line 164
    .local v0, "pointerCount":I
    const/4 v1, 0x1

    new-array v9, v1, [Landroid/view/MotionEvent$PointerProperties;

    .line 166
    .local v9, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-array v8, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 167
    .local v8, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_3e

    .line 168
    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v9, v2

    .line 169
    aget-object v3, v9, v2

    iput v2, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 170
    aget-object v3, v9, v2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/input/InputShellCommand;->getToolType(I)I

    move-result v4

    iput v4, v3, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 171
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v8, v2

    .line 172
    aget-object v3, v8, v2

    move/from16 v6, p7

    iput v6, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 173
    aget-object v3, v8, v2

    move/from16 v4, p8

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 174
    aget-object v3, v8, v2

    move/from16 v5, p9

    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 175
    aget-object v3, v8, v2

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_3e
    move/from16 v6, p7

    move/from16 v4, p8

    move/from16 v5, p9

    .line 177
    .end local v2    # "i":I
    const/4 v1, -0x1

    move/from16 v2, p10

    if-ne v2, v1, :cond_4f

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_4f

    .line 179
    const/4 v1, 0x0

    .end local p10    # "displayId":I
    .local v1, "displayId":I
    goto :goto_50

    .line 181
    .end local v1    # "displayId":I
    .restart local p10    # "displayId":I
    :cond_4f
    move v1, v2

    .end local p10    # "displayId":I
    .restart local v1    # "displayId":I
    :goto_50
    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    .line 183
    invoke-direct/range {p0 .. p1}, Lcom/android/server/input/InputShellCommand;->getInputDeviceId(I)I

    move-result v14

    const/4 v15, 0x0

    const/16 v18, 0x0

    .line 181
    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move/from16 v6, p2

    move-object/from16 v19, v8

    .end local v8    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .local v19, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    move-object v8, v9

    move-object/from16 v20, v9

    .end local v9    # "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    .local v20, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    move-object/from16 v9, v19

    move/from16 v16, p1

    move/from16 v17, v1

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 186
    .local v2, "event":Landroid/view/MotionEvent;
    invoke-static {}, Lcom/miui/server/security/SafetyDetectManagerStub;->getInstance()Lcom/miui/server/security/SafetyDetectManagerStub;

    move-result-object v3

    move-wide/from16 v4, p3

    invoke-interface {v3, v4, v5}, Lcom/miui/server/security/SafetyDetectManagerStub;->stampShellInjectInputEvent(J)V

    .line 188
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v3, v2, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 190
    return-void
.end method

.method private lerp(FFF)F
    .registers 5
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "alpha"    # F

    .line 193
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0
.end method

.method private runDragAndDrop(II)V
    .registers 4
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 437
    const/16 v0, 0x1002

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 438
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/input/InputShellCommand;->sendSwipe(IIZ)V

    .line 439
    return-void
.end method

.method private runKeyCombination(II)V
    .registers 13
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 511
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "arg":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 515
    .local v1, "duration":J
    const-string v3, "-t"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 516
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v1, v3

    .line 518
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    move-wide v7, v1

    goto :goto_1e

    .line 515
    :cond_1d
    move-wide v7, v1

    .line 521
    .end local v1    # "duration":J
    .local v7, "duration":J
    :goto_1e
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    move-object v9, v1

    .line 522
    .local v9, "keyCodes":Landroid/util/IntArray;
    :goto_24
    if-eqz v0, :cond_4d

    .line 523
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    .line 524
    .local v1, "keyCode":I
    if-eqz v1, :cond_34

    .line 527
    invoke-virtual {v9, v1}, Landroid/util/IntArray;->add(I)V

    .line 528
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 529
    .end local v1    # "keyCode":I
    goto :goto_24

    .line 525
    .restart local v1    # "keyCode":I
    :cond_34
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown keycode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 532
    .end local v1    # "keyCode":I
    :cond_4d
    invoke-virtual {v9}, Landroid/util/IntArray;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_5d

    .line 536
    move-object v1, p0

    move v2, p1

    move-object v3, v9

    move v4, p2

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/InputShellCommand;->sendKeyCombination(ILandroid/util/IntArray;IJ)V

    .line 537
    return-void

    .line 533
    :cond_5d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keycombination requires at least 2 keycodes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private runKeyEvent(II)V
    .registers 7
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 336
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "arg":Ljava/lang/String;
    const-string v1, "--longpress"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 338
    .local v1, "longpress":Z
    if-eqz v1, :cond_11

    .line 339
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 341
    :cond_11
    const-string v2, "--doubletap"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 342
    .local v2, "doubleTap":Z
    if-eqz v2, :cond_25

    .line 343
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v3

    .line 345
    .local v3, "keycode":I
    invoke-direct {p0, p1, v3, p2}, Lcom/android/server/input/InputShellCommand;->sendKeyDoubleTap(III)V

    .line 346
    return-void

    .line 351
    .end local v2    # "doubleTap":Z
    .end local v3    # "keycode":I
    :cond_25
    :goto_25
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    .line 352
    .local v2, "keycode":I
    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(IIZI)V

    .line 353
    .end local v2    # "keycode":I
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-nez v2, :cond_34

    .line 354
    return-void

    .line 353
    :cond_34
    goto :goto_25
.end method

.method private runMotionEvent(II)V
    .registers 12
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 477
    const/16 v0, 0x1002

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 478
    invoke-direct {p0}, Lcom/android/server/input/InputShellCommand;->getAction()I

    move-result v0

    .line 479
    .local v0, "action":I
    const/4 v1, 0x0

    .local v1, "x":F
    const/4 v2, 0x0

    .line 480
    .local v2, "y":F
    if-eqz v0, :cond_2f

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2f

    const/4 v3, 0x1

    if-ne v0, v3, :cond_15

    goto :goto_2f

    .line 487
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "xString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 489
    .local v4, "yString":Ljava/lang/String;
    if-eqz v3, :cond_2c

    if-eqz v4, :cond_2c

    .line 490
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 491
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    move v7, v1

    move v8, v2

    goto :goto_41

    .line 495
    .end local v3    # "xString":Ljava/lang/String;
    .end local v4    # "yString":Ljava/lang/String;
    :cond_2c
    move v7, v1

    move v8, v2

    goto :goto_41

    .line 483
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 484
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    move v7, v1

    move v8, v2

    .line 495
    .end local v1    # "x":F
    .end local v2    # "y":F
    .local v7, "x":F
    .local v8, "y":F
    :goto_41
    move-object v1, p0

    move v2, p1

    move v3, v0

    move v4, v7

    move v5, v8

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/InputShellCommand;->sendMotionEvent(IIFFI)V

    .line 496
    return-void
.end method

.method private runPress(II)V
    .registers 4
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 395
    const v0, 0x10004

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/server/input/InputShellCommand;->sendTap(IFFI)V

    .line 397
    return-void
.end method

.method private runRoll(II)V
    .registers 5
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 442
    const v0, 0x10004

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 443
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 444
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 443
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendMove(IFFI)V

    .line 445
    return-void
.end method

.method private runSwipe(II)V
    .registers 4
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 400
    const/16 v0, 0x1002

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/input/InputShellCommand;->sendSwipe(IIZ)V

    .line 402
    return-void
.end method

.method private runTap(II)V
    .registers 5
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 382
    const/16 v0, 0x1002

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 383
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 384
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 383
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendTap(IFFI)V

    .line 385
    return-void
.end method

.method private runText(II)V
    .registers 4
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 296
    const/16 v0, 0x101

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 297
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/input/InputShellCommand;->sendText(ILjava/lang/String;I)V

    .line 298
    return-void
.end method

.method private sendKeyCombination(ILandroid/util/IntArray;IJ)V
    .registers 33
    .param p1, "inputSource"    # I
    .param p2, "keyCodes"    # Landroid/util/IntArray;
    .param p3, "displayId"    # I
    .param p4, "duration"    # J

    .line 546
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 547
    .local v14, "now":J
    invoke-virtual/range {p2 .. p2}, Landroid/util/IntArray;->size()I

    move-result v13

    .line 548
    .local v13, "count":I
    new-array v12, v13, [Landroid/view/KeyEvent;

    .line 549
    .local v12, "events":[Landroid/view/KeyEvent;
    const/4 v1, 0x0

    .line 550
    .local v1, "metaState":I
    const/4 v2, 0x0

    move/from16 v16, v1

    move v11, v2

    .end local v1    # "metaState":I
    .local v11, "i":I
    .local v16, "metaState":I
    :goto_11
    const/16 v17, 0x0

    if-ge v11, v13, :cond_62

    .line 551
    move-object/from16 v10, p2

    invoke-virtual {v10, v11}, Landroid/util/IntArray;->get(I)I

    move-result v18

    .line 552
    .local v18, "keyCode":I
    new-instance v19, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v1, v19

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v7, v18

    move/from16 v9, v16

    move/from16 v10, v20

    move/from16 v20, v11

    .end local v11    # "i":I
    .local v20, "i":I
    move/from16 v11, v21

    move-object/from16 v23, v12

    .end local v12    # "events":[Landroid/view/KeyEvent;
    .local v23, "events":[Landroid/view/KeyEvent;
    move/from16 v12, v22

    move/from16 v21, v13

    .end local v13    # "count":I
    .local v21, "count":I
    move/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 555
    .local v1, "event":Landroid/view/KeyEvent;
    move/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 556
    move-object/from16 v12, v23

    .end local v23    # "events":[Landroid/view/KeyEvent;
    .restart local v12    # "events":[Landroid/view/KeyEvent;
    aput-object v1, v12, v20

    .line 558
    sget-object v2, Lcom/android/server/input/InputShellCommand;->MODIFIER:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int v16, v16, v2

    .line 550
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v18    # "keyCode":I
    add-int/lit8 v11, v20, 0x1

    move/from16 v13, v21

    .end local v20    # "i":I
    .restart local v11    # "i":I
    goto :goto_11

    .end local v21    # "count":I
    .restart local v13    # "count":I
    :cond_62
    move/from16 v20, v11

    move/from16 v21, v13

    move/from16 v13, p3

    .line 561
    .end local v11    # "i":I
    .end local v13    # "count":I
    .restart local v21    # "count":I
    array-length v1, v12

    move/from16 v2, v17

    :goto_6b
    if-ge v2, v1, :cond_75

    aget-object v3, v12, v2

    .line 564
    .local v3, "event":Landroid/view/KeyEvent;
    invoke-direct {v0, v3}, Lcom/android/server/input/InputShellCommand;->injectKeyEventAsync(Landroid/view/KeyEvent;)V

    .line 561
    .end local v3    # "event":Landroid/view/KeyEvent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    .line 567
    :cond_75
    move-wide/from16 v10, p4

    invoke-direct {v0, v10, v11}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 569
    array-length v9, v12

    move/from16 v8, v17

    :goto_7d
    if-ge v8, v9, :cond_d0

    aget-object v18, v12, v8

    .line 570
    .local v18, "event":Landroid/view/KeyEvent;
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v19

    .line 571
    .local v19, "keyCode":I
    new-instance v20, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v1, v20

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v7, v19

    move/from16 v26, v8

    move/from16 v8, v22

    move/from16 v22, v9

    move/from16 v9, v16

    move/from16 v10, v23

    move/from16 v11, v24

    move-object/from16 v23, v12

    .end local v12    # "events":[Landroid/view/KeyEvent;
    .restart local v23    # "events":[Landroid/view/KeyEvent;
    move/from16 v12, v25

    move/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 574
    .local v1, "upEvent":Landroid/view/KeyEvent;
    invoke-direct {v0, v1}, Lcom/android/server/input/InputShellCommand;->injectKeyEventAsync(Landroid/view/KeyEvent;)V

    .line 575
    sget-object v2, Lcom/android/server/input/InputShellCommand;->MODIFIER:Ljava/util/Map;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    not-int v2, v2

    and-int v16, v16, v2

    .line 569
    .end local v1    # "upEvent":Landroid/view/KeyEvent;
    .end local v18    # "event":Landroid/view/KeyEvent;
    .end local v19    # "keyCode":I
    add-int/lit8 v8, v26, 0x1

    move/from16 v13, p3

    move-wide/from16 v10, p4

    move/from16 v9, v22

    move-object/from16 v12, v23

    goto :goto_7d

    .line 577
    .end local v23    # "events":[Landroid/view/KeyEvent;
    .restart local v12    # "events":[Landroid/view/KeyEvent;
    :cond_d0
    return-void
.end method

.method private sendKeyDoubleTap(III)V
    .registers 7
    .param p1, "inputSource"    # I
    .param p2, "keyCode"    # I
    .param p3, "displayId"    # I

    .line 376
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(IIZI)V

    .line 377
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 378
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(IIZI)V

    .line 379
    return-void
.end method

.method private sendKeyEvent(IIZI)V
    .registers 22
    .param p1, "inputSource"    # I
    .param p2, "keyCode"    # I
    .param p3, "longpress"    # Z
    .param p4, "displayId"    # I

    .line 357
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 359
    .local v14, "now":J
    new-instance v16, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, v16

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v7, p2

    move/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 362
    .local v1, "event":Landroid/view/KeyEvent;
    move/from16 v2, p4

    invoke-virtual {v1, v2}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 364
    invoke-direct {v0, v1}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 365
    const/4 v3, 0x1

    if-eqz p3, :cond_3b

    .line 366
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v0, v4, v5}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 368
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v14

    .line 369
    .local v4, "nextEventTime":J
    const/16 v6, 0x80

    invoke-static {v1, v4, v5, v3, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 372
    .end local v4    # "nextEventTime":J
    :cond_3b
    invoke-static {v1, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 373
    return-void
.end method

.method private sendMotionEvent(IIFFI)V
    .registers 21
    .param p1, "inputSource"    # I
    .param p2, "action"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "displayId"    # I

    .line 500
    move/from16 v11, p2

    const/4 v0, 0x0

    .line 502
    .local v0, "pressure":F
    if-eqz v11, :cond_b

    const/4 v1, 0x2

    if-ne v11, v1, :cond_9

    goto :goto_b

    :cond_9
    move v12, v0

    goto :goto_e

    .line 503
    :cond_b
    :goto_b
    const/high16 v0, 0x3f800000    # 1.0f

    move v12, v0

    .line 506
    .end local v0    # "pressure":F
    .local v12, "pressure":F
    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 507
    .local v13, "now":J
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide v3, v13

    move-wide v5, v13

    move/from16 v7, p3

    move/from16 v8, p4

    move v9, v12

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 508
    return-void
.end method

.method private sendMove(IFFI)V
    .registers 18
    .param p1, "inputSource"    # I
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "displayId"    # I

    .line 455
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 456
    .local v11, "now":J
    const/4 v2, 0x2

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v3, v11

    move-wide v5, v11

    move v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 458
    return-void
.end method

.method private sendSwipe(IIZ)V
    .registers 33
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I
    .param p3, "isDragDrop"    # Z

    .line 406
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    .line 407
    .local v12, "x1":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 408
    .local v13, "y1":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 409
    .local v14, "x2":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    .line 410
    .local v15, "y2":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/input/InputShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v16

    .line 411
    .local v16, "durationArg":Ljava/lang/String;
    if-eqz v16, :cond_2d

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2e

    :cond_2d
    const/4 v0, -0x1

    .line 412
    .local v0, "duration":I
    :goto_2e
    if-gez v0, :cond_34

    .line 413
    const/16 v0, 0x12c

    move v10, v0

    goto :goto_35

    .line 412
    :cond_34
    move v10, v0

    .line 416
    .end local v0    # "duration":I
    .local v10, "duration":I
    :goto_35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 417
    .local v17, "down":J
    const/4 v2, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v3, v17

    move-wide/from16 v5, v17

    move v7, v12

    move v8, v13

    move/from16 v19, v13

    move v13, v10

    .end local v10    # "duration":I
    .local v13, "duration":I
    .local v19, "y1":F
    move/from16 v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 419
    if-eqz p3, :cond_58

    .line 421
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {v11, v0, v1}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 423
    :cond_58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 424
    .local v0, "now":J
    int-to-long v2, v13

    add-long v20, v17, v2

    move-wide/from16 v22, v0

    .line 425
    .end local v0    # "now":J
    .local v20, "endTime":J
    .local v22, "now":J
    :goto_61
    cmp-long v0, v22, v20

    if-gez v0, :cond_96

    .line 426
    sub-long v9, v22, v17

    .line 427
    .local v9, "elapsedTime":J
    long-to-float v0, v9

    int-to-float v1, v13

    div-float v8, v0, v1

    .line 428
    .local v8, "alpha":F
    const/4 v2, 0x2

    .line 429
    invoke-direct {v11, v12, v14, v8}, Lcom/android/server/input/InputShellCommand;->lerp(FFF)F

    move-result v7

    move/from16 v5, v19

    .end local v19    # "y1":F
    .local v5, "y1":F
    invoke-direct {v11, v5, v15, v8}, Lcom/android/server/input/InputShellCommand;->lerp(FFF)F

    move-result v19

    const/high16 v24, 0x3f800000    # 1.0f

    .line 428
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v3, v17

    move/from16 v25, v5

    .end local v5    # "y1":F
    .local v25, "y1":F
    move-wide/from16 v5, v22

    move/from16 v26, v8

    .end local v8    # "alpha":F
    .local v26, "alpha":F
    move/from16 v8, v19

    move-wide/from16 v27, v9

    .end local v9    # "elapsedTime":J
    .local v27, "elapsedTime":J
    move/from16 v9, v24

    move/from16 v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 430
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 431
    .end local v26    # "alpha":F
    .end local v27    # "elapsedTime":J
    move/from16 v19, v25

    goto :goto_61

    .line 432
    .end local v25    # "y1":F
    .restart local v19    # "y1":F
    :cond_96
    const/4 v2, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v3, v17

    move-wide/from16 v5, v22

    move v7, v14

    move v8, v15

    move/from16 v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 434
    return-void
.end method

.method private sendTap(IFFI)V
    .registers 18
    .param p1, "inputSource"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "displayId"    # I

    .line 388
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 389
    .local v11, "now":J
    const/4 v2, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move-wide v3, v11

    move-wide v5, v11

    move v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 391
    const/4 v2, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 392
    return-void
.end method

.method private sendText(ILjava/lang/String;I)V
    .registers 12
    .param p1, "source"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, "buff":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 309
    .local v1, "escapeFlag":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 310
    if-eqz v1, :cond_22

    .line 311
    const/4 v1, 0x0

    .line 312
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x73

    if-ne v3, v4, :cond_22

    .line 313
    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 314
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 317
    :cond_22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_2b

    .line 318
    const/4 v1, 0x1

    .line 309
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 322
    .end local v2    # "i":I
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 323
    .local v2, "chars":[C
    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    .line 324
    .local v3, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual {v3, v2}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v4

    .line 325
    .local v4, "events":[Landroid/view/KeyEvent;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_40
    array-length v6, v4

    if-ge v5, v6, :cond_57

    .line 326
    aget-object v6, v4, v5

    .line 327
    .local v6, "e":Landroid/view/KeyEvent;
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getSource()I

    move-result v7

    if-eq p1, v7, :cond_4e

    .line 328
    invoke-virtual {v6, p1}, Landroid/view/KeyEvent;->setSource(I)V

    .line 330
    :cond_4e
    invoke-virtual {v6, p3}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 331
    invoke-direct {p0, v6}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 325
    .end local v6    # "e":Landroid/view/KeyEvent;
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 333
    .end local v5    # "i":I
    :cond_57
    return-void
.end method

.method private sleep(J)V
    .registers 5
    .param p1, "milliseconds"    # J

    .line 586
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_5

    .line 589
    nop

    .line 590
    return-void

    .line 587
    :catch_5
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .registers 9
    .param p1, "cmd"    # Ljava/lang/String;

    .line 221
    move-object v0, p1

    .line 222
    .local v0, "arg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 224
    .local v1, "inputSource":I
    sget-object v2, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 225
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 226
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_18
    const/4 v2, -0x1

    .line 231
    .local v2, "displayId":I
    const-string v3, "-d"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 232
    invoke-direct {p0}, Lcom/android/server/input/InputShellCommand;->getDisplayId()I

    move-result v2

    .line 233
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_29
    :try_start_29
    const-string/jumbo v3, "text"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 238
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runText(II)V

    goto :goto_a0

    .line 239
    :cond_36
    const-string/jumbo v3, "keyevent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 240
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runKeyEvent(II)V

    goto :goto_a0

    .line 241
    :cond_43
    const-string/jumbo v3, "tap"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 242
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runTap(II)V

    goto :goto_a0

    .line 243
    :cond_50
    const-string/jumbo v3, "swipe"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 244
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runSwipe(II)V

    goto :goto_a0

    .line 245
    :cond_5d
    const-string v3, "draganddrop"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 246
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runDragAndDrop(II)V

    goto :goto_a0

    .line 247
    :cond_69
    const-string/jumbo v3, "press"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 248
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runPress(II)V

    goto :goto_a0

    .line 249
    :cond_76
    const-string/jumbo v3, "roll"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 250
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runRoll(II)V

    goto :goto_a0

    .line 251
    :cond_83
    const-string/jumbo v3, "motionevent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 252
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runMotionEvent(II)V

    goto :goto_a0

    .line 253
    :cond_90
    const-string/jumbo v3, "keycombination"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 254
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runKeyCombination(II)V

    goto :goto_a0

    .line 256
    :cond_9d
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_a0} :catch_a3

    .line 260
    :goto_a0
    nop

    .line 261
    const/4 v3, 0x0

    return v3

    .line 258
    :catch_a3
    move-exception v3

    .line 259
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Invalid arguments for command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final onHelp()V
    .registers 6

    .line 266
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 267
    .local v0, "out":Ljava/io/PrintWriter;
    :try_start_4
    const-string v1, "Usage: input [<source>] [-d DISPLAY_ID] <command> [<arg>...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 269
    const-string v1, "The sources are: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    sget-object v1, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 271
    .local v2, "src":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    .end local v2    # "src":Ljava/lang/String;
    goto :goto_1b

    .line 273
    :cond_3e
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 274
    const-string v1, "-d: specify the display ID.\n      (Default: %d for key event, %d for motion event if not specified.)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, -0x1

    .line 276
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 274
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 277
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 278
    const-string v1, "The commands and default sources are:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    const-string v1, "      text <string> (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    const-string v1, "      keyevent [--longpress|--doubletap] <key code number or name> ... (Default: keyboard)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    const-string v1, "      tap <x> <y> (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    const-string v1, "      swipe <x1> <y1> <x2> <y2> [duration(ms)] (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    const-string v1, "      draganddrop <x1> <y1> <x2> <y2> [duration(ms)] (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    const-string v1, "      press (Default: trackball)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    const-string v1, "      roll <dx> <dy> (Default: trackball)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    const-string v1, "      motionevent <DOWN|UP|MOVE|CANCEL> <x> <y> (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    const-string v1, "      keycombination [-t duration(ms)] <key code 1> <key code 2> ... (Default: keyboard, the key order is important here.)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_4 .. :try_end_8d} :catchall_93

    .line 292
    if-eqz v0, :cond_92

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 293
    .end local v0    # "out":Ljava/io/PrintWriter;
    :cond_92
    return-void

    .line 266
    .restart local v0    # "out":Ljava/io/PrintWriter;
    :catchall_93
    move-exception v1

    if-eqz v0, :cond_9e

    :try_start_96
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    goto :goto_9e

    :catchall_9a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9e
    :goto_9e
    throw v1
.end method
