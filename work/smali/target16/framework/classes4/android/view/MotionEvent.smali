.class public final Landroid/view/MotionEvent;
.super Landroid/view/InputEvent;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionEvent$PointerCoords;,
        Landroid/view/MotionEvent$PointerProperties;,
        Landroid/view/MotionEvent$ToolType;,
        Landroid/view/MotionEvent$Classification;,
        Landroid/view/MotionEvent$Button;,
        Landroid/view/MotionEvent$Axis;,
        Landroid/view/MotionEvent$Flag;,
        Landroid/view/MotionEvent$ActionMasked;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_BUTTON_PRESS:I = 0xb

.field public static final whitelist ACTION_BUTTON_RELEASE:I = 0xc

.field public static final whitelist ACTION_CANCEL:I = 0x3

.field public static final whitelist ACTION_DOWN:I = 0x0

.field public static final whitelist ACTION_HOVER_ENTER:I = 0x9

.field public static final whitelist ACTION_HOVER_EXIT:I = 0xa

.field public static final whitelist ACTION_HOVER_MOVE:I = 0x7

.field public static final whitelist ACTION_MASK:I = 0xff

.field public static final whitelist ACTION_MOVE:I = 0x2

.field public static final whitelist ACTION_OUTSIDE:I = 0x4

.field public static final whitelist ACTION_POINTER_1_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_1_UP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_2_DOWN:I = 0x105
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_2_UP:I = 0x106
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_3_DOWN:I = 0x205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_3_UP:I = 0x206
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_DOWN:I = 0x5

.field public static final whitelist ACTION_POINTER_ID_MASK:I = 0xff00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_ID_SHIFT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final whitelist ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final whitelist ACTION_POINTER_UP:I = 0x6

.field public static final whitelist ACTION_SCROLL:I = 0x8

.field public static final whitelist ACTION_UP:I = 0x1

.field public static final whitelist AXIS_BRAKE:I = 0x17

.field public static final whitelist AXIS_DISTANCE:I = 0x18

.field public static final whitelist AXIS_GAS:I = 0x16

.field public static final whitelist AXIS_GENERIC_1:I = 0x20

.field public static final whitelist AXIS_GENERIC_10:I = 0x29

.field public static final whitelist AXIS_GENERIC_11:I = 0x2a

.field public static final whitelist AXIS_GENERIC_12:I = 0x2b

.field public static final whitelist AXIS_GENERIC_13:I = 0x2c

.field public static final whitelist AXIS_GENERIC_14:I = 0x2d

.field public static final whitelist AXIS_GENERIC_15:I = 0x2e

.field public static final whitelist AXIS_GENERIC_16:I = 0x2f

.field public static final whitelist AXIS_GENERIC_2:I = 0x21

.field public static final whitelist AXIS_GENERIC_3:I = 0x22

.field public static final whitelist AXIS_GENERIC_4:I = 0x23

.field public static final whitelist AXIS_GENERIC_5:I = 0x24

.field public static final whitelist AXIS_GENERIC_6:I = 0x25

.field public static final whitelist AXIS_GENERIC_7:I = 0x26

.field public static final whitelist AXIS_GENERIC_8:I = 0x27

.field public static final whitelist AXIS_GENERIC_9:I = 0x28

.field public static final whitelist AXIS_GESTURE_PINCH_SCALE_FACTOR:I = 0x34

.field public static final whitelist AXIS_GESTURE_SCROLL_X_DISTANCE:I = 0x32

.field public static final whitelist AXIS_GESTURE_SCROLL_Y_DISTANCE:I = 0x33

.field public static final blacklist AXIS_GESTURE_SWIPE_FINGER_COUNT:I = 0x35

.field public static final whitelist AXIS_GESTURE_X_OFFSET:I = 0x30

.field public static final whitelist AXIS_GESTURE_Y_OFFSET:I = 0x31

.field public static final whitelist AXIS_HAT_X:I = 0xf

.field public static final whitelist AXIS_HAT_Y:I = 0x10

.field public static final whitelist AXIS_HSCROLL:I = 0xa

.field public static final whitelist AXIS_LTRIGGER:I = 0x11

.field public static final whitelist AXIS_ORIENTATION:I = 0x8

.field public static final whitelist AXIS_PRESSURE:I = 0x2

.field public static final whitelist AXIS_RELATIVE_X:I = 0x1b

.field public static final whitelist AXIS_RELATIVE_Y:I = 0x1c

.field public static final whitelist AXIS_RTRIGGER:I = 0x12

.field public static final whitelist AXIS_RUDDER:I = 0x14

.field public static final whitelist AXIS_RX:I = 0xc

.field public static final whitelist AXIS_RY:I = 0xd

.field public static final whitelist AXIS_RZ:I = 0xe

.field public static final whitelist AXIS_SCROLL:I = 0x1a

.field public static final whitelist AXIS_SIZE:I = 0x3

.field private static final greylist-max-o AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist AXIS_THROTTLE:I = 0x13

.field public static final whitelist AXIS_TILT:I = 0x19

.field public static final whitelist AXIS_TOOL_MAJOR:I = 0x6

.field public static final whitelist AXIS_TOOL_MINOR:I = 0x7

.field public static final whitelist AXIS_TOUCH_MAJOR:I = 0x4

.field public static final whitelist AXIS_TOUCH_MINOR:I = 0x5

.field public static final whitelist AXIS_VSCROLL:I = 0x9

.field public static final whitelist AXIS_WHEEL:I = 0x15

.field public static final whitelist AXIS_X:I = 0x0

.field public static final whitelist AXIS_Y:I = 0x1

.field public static final whitelist AXIS_Z:I = 0xb

.field public static final whitelist BUTTON_BACK:I = 0x8

.field public static final whitelist BUTTON_FORWARD:I = 0x10

.field public static final whitelist BUTTON_PRIMARY:I = 0x1

.field public static final whitelist BUTTON_SECONDARY:I = 0x2

.field public static final whitelist BUTTON_STYLUS_PRIMARY:I = 0x20

.field public static final whitelist BUTTON_STYLUS_SECONDARY:I = 0x40

.field private static final greylist-max-o BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final whitelist BUTTON_TERTIARY:I = 0x4

.field public static final whitelist CLASSIFICATION_AMBIGUOUS_GESTURE:I = 0x1

.field public static final whitelist CLASSIFICATION_DEEP_PRESS:I = 0x2

.field public static final blacklist CLASSIFICATION_MULTI_FINGER_SWIPE:I = 0x4

.field public static final whitelist CLASSIFICATION_NONE:I = 0x0

.field public static final whitelist CLASSIFICATION_PINCH:I = 0x5

.field public static final whitelist CLASSIFICATION_TWO_FINGER_SWIPE:I = 0x3

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG_CONCISE_TOSTRING:Z = false

.field public static final whitelist EDGE_BOTTOM:I = 0x2

.field public static final whitelist EDGE_LEFT:I = 0x4

.field public static final whitelist EDGE_RIGHT:I = 0x8

.field public static final whitelist EDGE_TOP:I = 0x1

.field public static final whitelist FLAG_CANCELED:I = 0x20

.field public static final greylist-max-o FLAG_HOVER_EXIT_PENDING:I = 0x4

.field public static final blacklist FLAG_INJECTED_FROM_ACCESSIBILITY_TOOL:I = 0x1000

.field public static final blacklist FLAG_IS_ACCESSIBILITY_EVENT:I = 0x800

.field public static final greylist-max-o FLAG_IS_GENERATED_GESTURE:I = 0x8

.field public static final blacklist FLAG_NO_FOCUS_CHANGE:I = 0x40

.field public static final blacklist FLAG_SUPPORTS_DIRECTIONAL_ORIENTATION:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FLAG_SUPPORTS_ORIENTATION:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o FLAG_TAINTED:I = -0x80000000

.field public static final greylist-max-o FLAG_TARGET_ACCESSIBILITY_FOCUS:I = 0x40000000

.field public static final whitelist FLAG_WINDOW_IS_OBSCURED:I = 0x1

.field public static final whitelist FLAG_WINDOW_IS_PARTIALLY_OBSCURED:I = 0x2

.field private static final greylist-max-r HISTORY_CURRENT:I = -0x80000000

.field private static final blacklist INVALID_CURSOR_POSITION:F = NaNf

.field public static final whitelist INVALID_POINTER_ID:I = -0x1

.field private static final greylist-max-o LABEL_PREFIX:Ljava/lang/String; = "AXIS_"

.field private static final greylist-max-o MAX_RECYCLED:I = 0xa

.field private static final greylist-max-o NS_PER_MS:J = 0xf4240L

.field private static final blacklist TAG:Ljava/lang/String; = "MotionEvent"

.field public static final whitelist TOOL_TYPE_ERASER:I = 0x4

.field public static final whitelist TOOL_TYPE_FINGER:I = 0x1

.field public static final whitelist TOOL_TYPE_MOUSE:I = 0x3

.field public static final blacklist TOOL_TYPE_PALM:I = 0x5

.field public static final whitelist TOOL_TYPE_STYLUS:I = 0x2

.field private static final greylist-max-o TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TOOL_TYPE_UNKNOWN:I

.field private static final greylist-max-o gRecyclerLock:Ljava/lang/Object;

.field private static greylist-max-o gRecyclerTop:Landroid/view/MotionEvent;

.field private static greylist-max-o gRecyclerUsed:I

.field private static final greylist-max-o gSharedTempLock:Ljava/lang/Object;

.field private static greylist-max-o gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static greylist-max-o gSharedTempPointerIndexMap:[I

.field private static greylist-max-o gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private greylist-max-p mNativePtr:J

.field private greylist-max-o mNext:Landroid/view/MotionEvent;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 40

    .line 1447
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1449
    sget-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1450
    const-string v1, "AXIS_X"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1451
    const-string v1, "AXIS_Y"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1452
    const-string v1, "AXIS_PRESSURE"

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1453
    const-string v1, "AXIS_SIZE"

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1454
    const-string v1, "AXIS_TOUCH_MAJOR"

    const/4 v6, 0x4

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1455
    const/4 v1, 0x5

    const-string v7, "AXIS_TOUCH_MINOR"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1456
    const/4 v1, 0x6

    const-string v7, "AXIS_TOOL_MAJOR"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1457
    const/4 v1, 0x7

    const-string v7, "AXIS_TOOL_MINOR"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1458
    const/16 v1, 0x8

    const-string v7, "AXIS_ORIENTATION"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1459
    const/16 v1, 0x9

    const-string v7, "AXIS_VSCROLL"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1460
    const/16 v1, 0xa

    const-string v7, "AXIS_HSCROLL"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1461
    const/16 v1, 0xb

    const-string v7, "AXIS_Z"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1462
    const/16 v1, 0xc

    const-string v7, "AXIS_RX"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1463
    const/16 v1, 0xd

    const-string v7, "AXIS_RY"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1464
    const/16 v1, 0xe

    const-string v7, "AXIS_RZ"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1465
    const/16 v1, 0xf

    const-string v7, "AXIS_HAT_X"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1466
    const/16 v1, 0x10

    const-string v7, "AXIS_HAT_Y"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1467
    const/16 v1, 0x11

    const-string v7, "AXIS_LTRIGGER"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1468
    const/16 v1, 0x12

    const-string v7, "AXIS_RTRIGGER"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1469
    const/16 v1, 0x13

    const-string v7, "AXIS_THROTTLE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1470
    const/16 v1, 0x14

    const-string v7, "AXIS_RUDDER"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1471
    const/16 v1, 0x15

    const-string v7, "AXIS_WHEEL"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1472
    const/16 v1, 0x16

    const-string v7, "AXIS_GAS"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1473
    const/16 v1, 0x17

    const-string v7, "AXIS_BRAKE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1474
    const/16 v1, 0x18

    const-string v7, "AXIS_DISTANCE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1475
    const/16 v1, 0x19

    const-string v7, "AXIS_TILT"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1476
    const/16 v1, 0x1a

    const-string v7, "AXIS_SCROLL"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1477
    const/16 v1, 0x1b

    const-string v7, "AXIS_REALTIVE_X"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1478
    const/16 v1, 0x1c

    const-string v7, "AXIS_REALTIVE_Y"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1479
    const/16 v1, 0x20

    const-string v7, "AXIS_GENERIC_1"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1480
    const/16 v1, 0x21

    const-string v7, "AXIS_GENERIC_2"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1481
    const/16 v1, 0x22

    const-string v7, "AXIS_GENERIC_3"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1482
    const/16 v1, 0x23

    const-string v7, "AXIS_GENERIC_4"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1483
    const/16 v1, 0x24

    const-string v7, "AXIS_GENERIC_5"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1484
    const/16 v1, 0x25

    const-string v7, "AXIS_GENERIC_6"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1485
    const/16 v1, 0x26

    const-string v7, "AXIS_GENERIC_7"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1486
    const/16 v1, 0x27

    const-string v7, "AXIS_GENERIC_8"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1487
    const/16 v1, 0x28

    const-string v7, "AXIS_GENERIC_9"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1488
    const/16 v1, 0x29

    const-string v7, "AXIS_GENERIC_10"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1489
    const/16 v1, 0x2a

    const-string v7, "AXIS_GENERIC_11"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1490
    const/16 v1, 0x2b

    const-string v7, "AXIS_GENERIC_12"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1491
    const/16 v1, 0x2c

    const-string v7, "AXIS_GENERIC_13"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1492
    const/16 v1, 0x2d

    const-string v7, "AXIS_GENERIC_14"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1493
    const/16 v1, 0x2e

    const-string v7, "AXIS_GENERIC_15"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1494
    const/16 v1, 0x2f

    const-string v7, "AXIS_GENERIC_16"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1495
    const/16 v1, 0x30

    const-string v7, "AXIS_GESTURE_X_OFFSET"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1496
    const/16 v1, 0x31

    const-string v7, "AXIS_GESTURE_Y_OFFSET"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1497
    const/16 v1, 0x32

    const-string v7, "AXIS_GESTURE_SCROLL_X_DISTANCE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1498
    const/16 v1, 0x33

    const-string v7, "AXIS_GESTURE_SCROLL_Y_DISTANCE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1499
    const/16 v1, 0x34

    const-string v7, "AXIS_GESTURE_PINCH_SCALE_FACTOR"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1500
    const/16 v1, 0x35

    const-string v7, "AXIS_GESTURE_SWIPE_FINGER_COUNT"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1625
    const-string v38, "0x40000000"

    const-string v39, "0x80000000"

    const-string v8, "BUTTON_PRIMARY"

    const-string v9, "BUTTON_SECONDARY"

    const-string v10, "BUTTON_TERTIARY"

    const-string v11, "BUTTON_BACK"

    const-string v12, "BUTTON_FORWARD"

    const-string v13, "BUTTON_STYLUS_PRIMARY"

    const-string v14, "BUTTON_STYLUS_SECONDARY"

    const-string v15, "0x00000080"

    const-string v16, "0x00000100"

    const-string v17, "0x00000200"

    const-string v18, "0x00000400"

    const-string v19, "0x00000800"

    const-string v20, "0x00001000"

    const-string v21, "0x00002000"

    const-string v22, "0x00004000"

    const-string v23, "0x00008000"

    const-string v24, "0x00010000"

    const-string v25, "0x00020000"

    const-string v26, "0x00040000"

    const-string v27, "0x00080000"

    const-string v28, "0x00100000"

    const-string v29, "0x00200000"

    const-string v30, "0x00400000"

    const-string v31, "0x00800000"

    const-string v32, "0x01000000"

    const-string v33, "0x02000000"

    const-string v34, "0x04000000"

    const-string v35, "0x08000000"

    const-string v36, "0x10000000"

    const-string v37, "0x20000000"

    filled-new-array/range {v8 .. v39}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 1799
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1801
    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1802
    const-string v1, "TOOL_TYPE_UNKNOWN"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1803
    const-string v1, "TOOL_TYPE_FINGER"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1804
    const-string v1, "TOOL_TYPE_STYLUS"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1805
    const-string v1, "TOOL_TYPE_MOUSE"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1806
    const-string v1, "TOOL_TYPE_ERASER"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1818
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 1824
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    .line 4274
    new-instance v0, Landroid/view/MotionEvent$1;

    invoke-direct {v0}, Landroid/view/MotionEvent$1;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1968
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1969
    return-void
.end method

.method public static whitelist actionToString(I)Ljava/lang/String;
    .registers 4

    .line 4053
    packed-switch p0, :pswitch_data_66

    .line 4077
    :pswitch_3
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    .line 4078
    and-int/lit16 v1, p0, 0xff

    const-string v2, ")"

    packed-switch v1, :pswitch_data_84

    .line 4084
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4075
    :pswitch_15
    const-string p0, "ACTION_BUTTON_RELEASE"

    return-object p0

    .line 4073
    :pswitch_18
    const-string p0, "ACTION_BUTTON_PRESS"

    return-object p0

    .line 4071
    :pswitch_1b
    const-string p0, "ACTION_HOVER_EXIT"

    return-object p0

    .line 4069
    :pswitch_1e
    const-string p0, "ACTION_HOVER_ENTER"

    return-object p0

    .line 4067
    :pswitch_21
    const-string p0, "ACTION_SCROLL"

    return-object p0

    .line 4065
    :pswitch_24
    const-string p0, "ACTION_HOVER_MOVE"

    return-object p0

    .line 4061
    :pswitch_27
    const-string p0, "ACTION_OUTSIDE"

    return-object p0

    .line 4059
    :pswitch_2a
    const-string p0, "ACTION_CANCEL"

    return-object p0

    .line 4063
    :pswitch_2d
    const-string p0, "ACTION_MOVE"

    return-object p0

    .line 4057
    :pswitch_30
    const-string p0, "ACTION_UP"

    return-object p0

    .line 4055
    :pswitch_33
    const-string p0, "ACTION_DOWN"

    return-object p0

    .line 4082
    :pswitch_36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_POINTER_UP("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4080
    :pswitch_4e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_POINTER_DOWN("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_3
        :pswitch_3
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0x5
        :pswitch_4e
        :pswitch_36
    .end packed-switch
.end method

.method private static greylist-max-o appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 4040
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4041
    return-void
.end method

.method public static whitelist axisFromString(Ljava/lang/String;)I
    .registers 3

    .line 4109
    const-string v0, "AXIS_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4110
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 4111
    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisFromString(Ljava/lang/String;)I

    move-result v0

    .line 4112
    if-ltz v0, :cond_17

    .line 4113
    return v0

    .line 4117
    :cond_17
    const/16 v0, 0xa

    :try_start_19
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_1d} :catch_1e

    return p0

    .line 4118
    :catch_1e
    move-exception p0

    .line 4119
    const/4 p0, -0x1

    return p0
.end method

.method public static whitelist axisToString(I)Ljava/lang/String;
    .registers 3

    .line 4096
    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisToString(I)Ljava/lang/String;

    move-result-object v0

    .line 4097
    if-eqz v0, :cond_1a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AXIS_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1e

    :cond_1a
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1e
    return-object p0
.end method

.method public static greylist-max-o buttonStateToString(I)Ljava/lang/String;
    .registers 6

    .line 4134
    if-nez p0, :cond_5

    .line 4135
    const-string p0, "0"

    return-object p0

    .line 4137
    :cond_5
    nop

    .line 4138
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 4139
    :goto_9
    if-eqz p0, :cond_30

    .line 4140
    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    goto :goto_12

    :cond_11
    move v3, v0

    .line 4141
    :goto_12
    ushr-int/lit8 p0, p0, 0x1

    .line 4142
    if-eqz v3, :cond_2d

    .line 4143
    sget-object v3, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 4144
    if-nez v1, :cond_25

    .line 4145
    if-nez p0, :cond_1f

    .line 4146
    return-object v3

    .line 4148
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2d

    .line 4150
    :cond_25
    const/16 v4, 0x7c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4151
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4154
    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    .line 4155
    goto :goto_9

    .line 4156
    :cond_30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final greylist-max-o clamp(FFF)F
    .registers 4

    .line 3885
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .line 3886
    return p1

    .line 3887
    :cond_5
    cmpl-float p1, p0, p2

    if-lez p1, :cond_a

    .line 3888
    return p2

    .line 3890
    :cond_a
    return p0
.end method

.method public static blacklist classificationToString(I)Ljava/lang/String;
    .registers 1

    .line 4167
    packed-switch p0, :pswitch_data_18

    .line 4181
    const-string p0, "UNKNOWN"

    return-object p0

    .line 4179
    :pswitch_6
    const-string p0, "PINCH"

    return-object p0

    .line 4177
    :pswitch_9
    const-string p0, "MULTI_FINGER_SWIPE"

    return-object p0

    .line 4175
    :pswitch_c
    const-string p0, "TWO_FINGER_SWIPE"

    return-object p0

    .line 4173
    :pswitch_f
    const-string p0, "DEEP_PRESS"

    return-object p0

    .line 4171
    :pswitch_12
    const-string p0, "AMBIGUOUS_GESTURE"

    return-object p0

    .line 4169
    :pswitch_15
    const-string p0, "NONE"

    return-object p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .registers 4

    .line 4288
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 4289
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v1, v2, p0}, Landroid/view/MotionEvent;->nativeReadFromParcel(JLandroid/os/Parcel;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 4290
    return-object v0
.end method

.method public static blacklist createRotateMatrix(III)Landroid/graphics/Matrix;
    .registers 16

    .line 4251
    if-nez p0, :cond_a

    .line 4252
    new-instance p0, Landroid/graphics/Matrix;

    sget-object p1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {p0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object p0

    .line 4255
    :cond_a
    nop

    .line 4256
    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v6, 0x9

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-ne p0, v10, :cond_34

    .line 4257
    new-array p0, v6, [F

    aput v12, p0, v5

    aput v11, p0, v10

    aput v12, p0, v9

    aput v7, p0, v8

    aput v12, p0, v4

    int-to-float p1, p2

    aput p1, p0, v3

    aput v12, p0, v2

    aput v12, p0, v1

    aput v11, p0, v0

    goto :goto_66

    .line 4260
    :cond_34
    if-ne p0, v9, :cond_4d

    .line 4261
    new-array p0, v6, [F

    aput v7, p0, v5

    aput v12, p0, v10

    int-to-float p1, p1

    aput p1, p0, v9

    aput v12, p0, v8

    aput v7, p0, v4

    int-to-float p1, p2

    aput p1, p0, v3

    aput v12, p0, v2

    aput v12, p0, v1

    aput v11, p0, v0

    goto :goto_66

    .line 4264
    :cond_4d
    if-ne p0, v8, :cond_65

    .line 4265
    new-array p0, v6, [F

    aput v12, p0, v5

    aput v7, p0, v10

    int-to-float p1, p1

    aput p1, p0, v9

    aput v11, p0, v8

    aput v12, p0, v4

    aput v12, p0, v3

    aput v12, p0, v2

    aput v12, p0, v1

    aput v11, p0, v0

    goto :goto_66

    .line 4264
    :cond_65
    const/4 p0, 0x0

    .line 4269
    :goto_66
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 4270
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 4271
    return-object p1
.end method

.method private static final greylist-max-o ensureSharedTempPointerCapacity(I)V
    .registers 2

    .line 1830
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v0

    if-ge v0, p0, :cond_28

    .line 1832
    :cond_9
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v0, :cond_11

    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v0

    goto :goto_13

    :cond_11
    const/16 v0, 0x8

    .line 1833
    :goto_13
    if-ge v0, p0, :cond_18

    .line 1834
    mul-int/lit8 v0, v0, 0x2

    goto :goto_13

    .line 1836
    :cond_18
    invoke-static {v0}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object p0

    sput-object p0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1837
    invoke-static {v0}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object p0

    sput-object p0, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1838
    new-array p0, v0, [I

    sput-object p0, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    .line 1840
    :cond_28
    return-void
.end method

.method private blacklist initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z
    .registers 45

    .line 2363
    move-object/from16 v0, p0

    const/4 v1, 0x3

    move/from16 v7, p4

    if-ne v7, v1, :cond_b

    .line 2364
    or-int/lit8 v1, p5, 0x20

    move v8, v1

    goto :goto_d

    .line 2363
    :cond_b
    move/from16 v8, p5

    .line 2366
    :goto_d
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    invoke-static/range {v2 .. v23}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 2370
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3f

    .line 2371
    const/4 v0, 0x0

    return v0

    .line 2373
    :cond_3f
    invoke-direct {v0}, Landroid/view/MotionEvent;->updateCursorPosition()V

    .line 2374
    const/4 v0, 0x1

    return v0
.end method

.method private static native greylist-max-o nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
.end method

.method private static native blacklist nativeApplyTransform(JLandroid/graphics/Matrix;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeAxisFromString(Ljava/lang/String;)I
.end method

.method private static native greylist-max-o nativeAxisToString(I)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeCopy(JJZ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeDispose(J)V
.end method

.method private static native greylist-max-o nativeFindPointerIndex(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetAction(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetActionButton(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetAxisValue(JIII)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetButtonState(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetClassification(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetDeviceId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetDisplayId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetDownTimeNanos(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetEdgeFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetEventTimeNanos(JI)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetHistorySize(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetMetaState(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V
.end method

.method private static native greylist-max-o nativeGetPointerCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetPointerId(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V
.end method

.method private static native greylist nativeGetRawAxisValue(JIII)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetRawXOffset(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetRawYOffset(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetSource(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetSurfaceRotation(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetToolType(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetXCursorPosition(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetXPrecision(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetYCursorPosition(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetYPrecision(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeInitialize(JIIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J
.end method

.method private static native greylist-max-o nativeIsTouchEvent(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeOffsetLocation(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadFromParcel(JLandroid/os/Parcel;)J
.end method

.method private static native greylist-max-o nativeScale(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetAction(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetActionButton(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetButtonState(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSetCursorPosition(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSetDisplayId(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetDownTimeNanos(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetEdgeFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSetSource(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSplit(JJI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeTransform(JLandroid/graphics/Matrix;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static greylist obtain()Landroid/view/MotionEvent;
    .registers 3

    .line 1986
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1987
    :try_start_3
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1988
    if-nez v1, :cond_e

    .line 1989
    new-instance v1, Landroid/view/MotionEvent;

    invoke-direct {v1}, Landroid/view/MotionEvent;-><init>()V

    monitor-exit v0

    return-object v1

    .line 1991
    :cond_e
    iget-object v2, v1, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object v2, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1992
    sget v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 1993
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_20

    .line 1994
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 1995
    invoke-virtual {v1}, Landroid/view/MotionEvent;->prepareForReuse()V

    .line 1996
    return-object v1

    .line 1993
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public static whitelist obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .registers 31

    .line 2205
    const/4 v15, 0x2

    const/16 v16, 0x0

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtain(JJIFFFFIFFIIII)Landroid/view/MotionEvent;
    .registers 38

    .line 2246
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 2247
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v21

    .line 2248
    const/4 v1, 0x1

    :try_start_8
    invoke-static {v1}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 2249
    sget-object v19, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 2250
    const/4 v1, 0x0

    aget-object v2, v19, v1

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 2251
    aget-object v2, v19, v1

    iput v1, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 2253
    sget-object v20, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 2254
    aget-object v2, v20, v1

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 2255
    aget-object v2, v20, v1

    move/from16 v3, p5

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 2256
    aget-object v2, v20, v1

    move/from16 v3, p6

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 2257
    aget-object v2, v20, v1

    move/from16 v3, p7

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 2258
    aget-object v1, v20, v1

    move/from16 v2, p8

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 2260
    const-wide/32 v1, 0xf4240

    mul-long v14, p0, v1

    mul-long v16, p2, v1

    const/16 v18, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v4, p4

    move/from16 v7, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v1, p12

    move/from16 v6, p13

    move/from16 v2, p14

    move/from16 v3, p15

    invoke-direct/range {v0 .. v20}, Landroid/view/MotionEvent;->initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z

    .line 2265
    monitor-exit v21

    return-object v0

    .line 2266
    :catchall_59
    move-exception v0

    monitor-exit v21
    :try_end_5b
    .catchall {:try_start_8 .. :try_end_5b} :catchall_59

    throw v0
.end method

.method public static whitelist obtain(JJIFFI)Landroid/view/MotionEvent;
    .registers 22

    .line 2327
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2306
    move p5, p6

    move p6, p7

    move p7, p8

    move p8, p9

    move p9, p10

    move p10, p11

    move p11, p12

    move p12, p13

    move p13, p14

    invoke-static/range {p0 .. p13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
    .registers 33
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2160
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2161
    :try_start_3
    invoke-static/range {p5 .. p5}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 2162
    sget-object v8, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 2163
    const/4 v0, 0x0

    :goto_9
    move/from16 v7, p5

    if-ge v0, v7, :cond_1b

    .line 2164
    aget-object v2, v8, v0

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 2165
    aget-object v2, v8, v0

    aget v3, p6, v0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 2163
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2167
    :cond_1b
    const/4 v11, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2170
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public static whitelist obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    .registers 34

    .line 2121
    const/16 v16, 0x0

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v17, p15

    invoke-static/range {v1 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;
    .registers 36

    .line 2083
    const/16 v18, 0x0

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    invoke-static/range {v1 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIIII)Landroid/view/MotionEvent;
    .registers 40

    .line 2035
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v1

    .line 2036
    const-wide/32 v2, 0xf4240

    mul-long v15, p0, v2

    mul-long v17, p2, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v5, p4

    move/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v21, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v2, p12

    move/from16 v7, p13

    move/from16 v3, p14

    move/from16 v4, p15

    move/from16 v6, p16

    move/from16 v10, p17

    invoke-direct/range {v1 .. v21}, Landroid/view/MotionEvent;->initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z

    move-result v0

    .line 2040
    if-nez v0, :cond_3b

    .line 2041
    const-string v0, "MotionEvent"

    const-string v2, "Could not initialize MotionEvent"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2043
    const/4 v0, 0x0

    return-object v0

    .line 2045
    :cond_3b
    return-object v1
.end method

.method public static whitelist obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 6

    .line 2335
    if-eqz p0, :cond_12

    .line 2339
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 2340
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x1

    invoke-static {v1, v2, v3, v4, p0}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 2341
    return-object v0

    .line 2336
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "other motion event must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 6

    .line 2349
    if-eqz p0, :cond_12

    .line 2353
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 2354
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    invoke-static {v1, v2, v3, v4, p0}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 2355
    return-object v0

    .line 2350
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "other motion event must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist setCanceled(Z)V
    .registers 5

    .line 2580
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2581
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_b

    or-int/lit8 p1, v0, 0x20

    goto :goto_d

    :cond_b
    and-int/lit8 p1, v0, -0x21

    :goto_d
    invoke-static {v1, v2, p1}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    .line 2582
    return-void
.end method

.method private blacklist setCursorPosition(FF)V
    .registers 5

    .line 3252
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeSetCursorPosition(JFF)V

    .line 3253
    return-void
.end method

.method public static greylist-max-o toolTypeToString(I)Ljava/lang/String;
    .registers 2

    .line 4193
    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4194
    if-eqz v0, :cond_b

    goto :goto_f

    :cond_b
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method private blacklist updateCursorPosition()V
    .registers 6

    .line 3978
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x2002

    if-eq v0, v1, :cond_e

    .line 3979
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0, v0, v0}, Landroid/view/MotionEvent;->setCursorPosition(FF)V

    .line 3980
    return-void

    .line 3983
    :cond_e
    nop

    .line 3984
    nop

    .line 3986
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 3987
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_18
    if-ge v3, v0, :cond_27

    .line 3988
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v1, v4

    .line 3989
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v2, v4

    .line 3987
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 3994
    :cond_27
    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 3995
    div-float/2addr v2, v0

    .line 3996
    invoke-direct {p0, v1, v2}, Landroid/view/MotionEvent;->setCursorPosition(FF)V

    .line 3997
    return-void
.end method


# virtual methods
.method public final whitelist addBatch(JFFFFI)V
    .registers 12

    .line 3774
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3775
    const/4 v0, 0x1

    :try_start_4
    invoke-static {v0}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3776
    move v0, p4

    sget-object p4, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3777
    const/4 v2, 0x0

    aget-object v3, p4, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 3778
    aget-object v3, p4, v2

    iput p3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3779
    aget-object p3, p4, v2

    iput v0, p3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3780
    aget-object p3, p4, v2

    iput p5, p3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3781
    aget-object p3, p4, v2

    iput p6, p3, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3783
    iget-wide p5, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long p2, p1, v2

    move-wide p0, p5

    move p5, p7

    invoke-static/range {p0 .. p5}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3784
    monitor-exit v1

    .line 3785
    return-void

    .line 3784
    :catchall_2e
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2e

    throw p1
.end method

.method public final whitelist addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V
    .registers 11

    .line 3799
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3800
    return-void
.end method

.method public final greylist addBatch(Landroid/view/MotionEvent;)Z
    .registers 15

    .line 3816
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    .line 3817
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_e

    const/4 v3, 0x7

    if-eq v0, v3, :cond_e

    .line 3818
    return v1

    .line 3820
    :cond_e
    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v3

    if-eq v0, v3, :cond_17

    .line 3821
    return v1

    .line 3824
    :cond_17
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v0

    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v3

    if-ne v0, v3, :cond_d3

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3825
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v0

    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v3

    if-ne v0, v3, :cond_d3

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3826
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v0

    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v3

    if-ne v0, v3, :cond_d3

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3827
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v0

    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v3

    if-ne v0, v3, :cond_d3

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3828
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v0

    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3829
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v3

    if-eq v0, v3, :cond_5f

    goto/16 :goto_d3

    .line 3833
    :cond_5f
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    .line 3834
    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v3

    if-eq v0, v3, :cond_6e

    .line 3835
    return v1

    .line 3838
    :cond_6e
    sget-object v3, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3839
    :try_start_71
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3840
    sget-object v2, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3841
    sget-object v8, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3843
    move v4, v1

    :goto_7d
    const/4 v10, 0x1

    if-ge v4, v0, :cond_9d

    .line 3844
    iget-wide v5, p0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v7, v2, v1

    invoke-static {v5, v6, v4, v7}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3845
    iget-wide v5, p1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v7, v2, v10

    invoke-static {v5, v6, v4, v7}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3846
    aget-object v5, v2, v1

    aget-object v6, v2, v10

    invoke-static {v5, v6}, Landroid/view/MotionEvent$PointerProperties;->-$$Nest$mequals(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v5

    if-nez v5, :cond_9a

    .line 3847
    monitor-exit v3

    return v1

    .line 3843
    :cond_9a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7d

    .line 3851
    :cond_9d
    iget-wide v4, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v9

    .line 3852
    iget-wide v4, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v2

    .line 3853
    move v11, v1

    :goto_aa
    if-gt v11, v2, :cond_cd

    .line 3854
    if-ne v11, v2, :cond_b1

    const/high16 v4, -0x80000000

    goto :goto_b2

    :cond_b1
    move v4, v11

    .line 3856
    :goto_b2
    move v5, v1

    :goto_b3
    if-ge v5, v0, :cond_bf

    .line 3857
    iget-wide v6, p1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v12, v8, v5

    invoke-static {v6, v7, v5, v4, v12}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3856
    add-int/lit8 v5, v5, 0x1

    goto :goto_b3

    .line 3860
    :cond_bf
    iget-wide v5, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6, v4}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v6

    .line 3861
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static/range {v4 .. v9}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3853
    add-int/lit8 v11, v11, 0x1

    goto :goto_aa

    .line 3863
    :cond_cd
    monitor-exit v3

    .line 3864
    return v10

    .line 3863
    :catchall_cf
    move-exception v0

    move-object p1, v0

    monitor-exit v3
    :try_end_d2
    .catchall {:try_start_71 .. :try_end_d2} :catchall_cf

    throw p1

    .line 3830
    :cond_d3
    :goto_d3
    return v1
.end method

.method public blacklist applyTransform(Landroid/graphics/Matrix;)V
    .registers 4

    .line 3751
    if-eqz p1, :cond_8

    .line 3755
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeApplyTransform(JLandroid/graphics/Matrix;)V

    .line 3756
    return-void

    .line 3752
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "matrix must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final greylist-max-o cancel()V
    .registers 2

    .line 4296
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/MotionEvent;->setCanceled(Z)V

    .line 4297
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4298
    return-void
.end method

.method public final greylist-max-o clampNoHistory(FFFF)Landroid/view/MotionEvent;
    .registers 27

    .line 3898
    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v1

    .line 3899
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v21

    .line 3900
    :try_start_9
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v2

    .line 3902
    invoke-static {v2}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3903
    sget-object v19, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3904
    sget-object v20, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3906
    const/4 v3, 0x0

    :goto_17
    const/high16 v4, -0x80000000

    if-ge v3, v2, :cond_4c

    .line 3907
    iget-wide v5, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v7, v19, v3

    invoke-static {v5, v6, v3, v7}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3908
    iget-wide v5, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v7, v20, v3

    invoke-static {v5, v6, v3, v4, v7}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3909
    aget-object v4, v20, v3

    aget-object v5, v20, v3

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v6, p1

    move/from16 v7, p3

    invoke-static {v5, v6, v7}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3910
    aget-object v4, v20, v3

    aget-object v5, v20, v3

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v8, p2

    move/from16 v9, p4

    invoke-static {v5, v8, v9}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3906
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 3912
    :cond_4c
    iget-wide v5, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v3

    iget-wide v5, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v5

    iget-wide v6, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3913
    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v6

    iget-wide v7, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3914
    invoke-static {v7, v8}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v7

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v8

    iget-wide v9, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3915
    invoke-static {v9, v10}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v9

    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v10

    iget-wide v11, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3916
    invoke-static {v11, v12}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v11

    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v12

    iget-wide v13, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3917
    invoke-static {v13, v14}, Landroid/view/MotionEvent;->nativeGetRawXOffset(J)F

    move-result v13

    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetRawYOffset(J)F

    move-result v14

    move/from16 p1, v5

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3918
    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v4

    move-object v5, v1

    move/from16 v18, v2

    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v1

    move/from16 p2, v1

    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3919
    invoke-static {v1, v2}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v1

    move-wide/from16 p3, v1

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3920
    const/high16 v15, -0x80000000

    invoke-static {v0, v1, v15}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v16

    .line 3912
    move/from16 v2, p1

    move v1, v3

    move-object v0, v5

    move v3, v6

    move v5, v8

    move v6, v9

    move v8, v11

    move v9, v12

    move v11, v14

    move-wide/from16 v14, p3

    move v12, v4

    move v4, v7

    move v7, v10

    move v10, v13

    move/from16 v13, p2

    invoke-direct/range {v0 .. v20}, Landroid/view/MotionEvent;->initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z

    .line 3922
    monitor-exit v21

    return-object v0

    .line 3923
    :catchall_c8
    move-exception v0

    monitor-exit v21
    :try_end_ca
    .catchall {:try_start_9 .. :try_end_ca} :catchall_c8

    throw v0
.end method

.method public bridge synthetic greylist copy()Landroid/view/InputEvent;
    .registers 2

    .line 197
    invoke-virtual {p0}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public greylist copy()Landroid/view/MotionEvent;
    .registers 2

    .line 2381
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1974
    :try_start_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 1975
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeDispose(J)V

    .line 1976
    iput-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_14

    .line 1979
    :cond_f
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1980
    nop

    .line 1981
    return-void

    .line 1979
    :catchall_14
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1980
    throw v0
.end method

.method public final whitelist findPointerIndex(I)I
    .registers 4

    .line 2834
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeFindPointerIndex(JI)I

    move-result p1

    return p1
.end method

.method public final whitelist getAction()I
    .registers 3

    .line 2469
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getActionButton()I
    .registers 3

    .line 3073
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetActionButton(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getActionIndex()I
    .registers 3

    .line 2492
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final whitelist getActionMasked()I
    .registers 3

    .line 2478
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final whitelist getAxisValue(I)F
    .registers 6

    .line 2784
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, p1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getAxisValue(II)F
    .registers 6

    .line 2978
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, p2, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getButtonState()I
    .registers 3

    .line 3038
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v0

    return v0
.end method

.method public whitelist getClassification()I
    .registers 3

    .line 3061
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getDeviceId()I
    .registers 3

    .line 2428
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v0

    return v0
.end method

.method public blacklist getDisplayId()I
    .registers 3

    .line 2451
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getDownTime()J
    .registers 5

    .line 2635
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final whitelist getEdgeFlags()I
    .registers 3

    .line 3678
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getEventTime()J
    .registers 5

    .line 2658
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getEventTimeNanos()J
    .registers 4

    .line 2675
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getFlags()I
    .registers 3

    .line 2562
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalAxisValue(II)F
    .registers 6

    .line 3460
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalAxisValue(III)F
    .registers 6

    .line 3641
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalEventTime(I)J
    .registers 6

    .line 3284
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getHistoricalEventTimeNanos(I)J
    .registers 4

    .line 3308
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getHistoricalOrientation(I)F
    .registers 6

    .line 3443
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalOrientation(II)F
    .registers 6

    .line 3622
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V
    .registers 6

    .line 3662
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3663
    return-void
.end method

.method public final whitelist getHistoricalPressure(I)F
    .registers 6

    .line 3353
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalPressure(II)F
    .registers 6

    .line 3514
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalSize(I)F
    .registers 6

    .line 3368
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalSize(II)F
    .registers 6

    .line 3532
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalToolMajor(I)F
    .registers 6

    .line 3413
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalToolMajor(II)F
    .registers 6

    .line 3586
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalToolMinor(I)F
    .registers 6

    .line 3428
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalToolMinor(II)F
    .registers 6

    .line 3604
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalTouchMajor(I)F
    .registers 6

    .line 3383
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalTouchMajor(II)F
    .registers 6

    .line 3550
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalTouchMinor(I)F
    .registers 6

    .line 3398
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalTouchMinor(II)F
    .registers 6

    .line 3568
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalX(I)F
    .registers 5

    .line 3323
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalX(II)F
    .registers 6

    .line 3478
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalY(I)F
    .registers 6

    .line 3338
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistoricalY(II)F
    .registers 6

    .line 3496
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getHistorySize()I
    .registers 3

    .line 3264
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v0

    return v0
.end method

.method public blacklist getId()I
    .registers 3

    .line 2422
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetId(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getMetaState()I
    .registers 3

    .line 3021
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getOrientation()F
    .registers 6

    .line 2771
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/16 v4, 0x8

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getOrientation(I)F
    .registers 6

    .line 2962
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    .registers 6

    .line 2992
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2, p2}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 2993
    return-void
.end method

.method public final whitelist getPointerCount()I
    .registers 3

    .line 2792
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getPointerId(I)I
    .registers 4

    .line 2804
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result p1

    return p1
.end method

.method public final greylist getPointerIdBits()I
    .registers 6

    .line 3932
    nop

    .line 3933
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    .line 3934
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_18

    .line 3935
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v1}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    .line 3934
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3937
    :cond_18
    return v2
.end method

.method public final whitelist getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V
    .registers 5

    .line 3007
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3008
    return-void
.end method

.method public final whitelist getPressure()F
    .registers 6

    .line 2711
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x2

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getPressure(I)F
    .registers 6

    .line 2890
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getRawX()F
    .registers 5

    .line 3099
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v2, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public whitelist getRawX(I)F
    .registers 6

    .line 3154
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getRawY()F
    .registers 6

    .line 3113
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public whitelist getRawY(I)F
    .registers 6

    .line 3195
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getSize()F
    .registers 6

    .line 2721
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x3

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getSize(I)F
    .registers 6

    .line 2902
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getSource()I
    .registers 3

    .line 2434
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v0

    return v0
.end method

.method public blacklist getSurfaceRotation()I
    .registers 3

    .line 4230
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetSurfaceRotation(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getToolMajor()F
    .registers 6

    .line 2751
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x6

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getToolMajor(I)F
    .registers 6

    .line 2938
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getToolMinor()F
    .registers 6

    .line 2761
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x7

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getToolMinor(I)F
    .registers 6

    .line 2950
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public whitelist getToolType(I)I
    .registers 4

    .line 2822
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetToolType(JI)I

    move-result p1

    return p1
.end method

.method public final whitelist getTouchMajor()F
    .registers 6

    .line 2731
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x4

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getTouchMajor(I)F
    .registers 6

    .line 2914
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getTouchMinor()F
    .registers 6

    .line 2741
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x5

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getTouchMinor(I)F
    .registers 6

    .line 2926
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public final whitelist getX()F
    .registers 5

    .line 2688
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getX(I)F
    .registers 6

    .line 2856
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public blacklist getXCursorPosition()F
    .registers 3

    .line 3230
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetXCursorPosition(J)F

    move-result v0

    return v0
.end method

.method public blacklist getXDispatchLocation(I)F
    .registers 4

    .line 4313
    const/16 v0, 0x2002

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4314
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getXCursorPosition()F

    move-result v0

    .line 4315
    const/high16 v1, 0x7fc00000    # Float.NaN

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_13

    .line 4316
    return v0

    .line 4319
    :cond_13
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    return p1
.end method

.method public final whitelist getXPrecision()F
    .registers 3

    .line 3207
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v0

    return v0
.end method

.method public final whitelist getY()F
    .registers 6

    .line 2701
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getY(I)F
    .registers 6

    .line 2878
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p1

    return p1
.end method

.method public blacklist getYCursorPosition()F
    .registers 3

    .line 3241
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetYCursorPosition(J)F

    move-result v0

    return v0
.end method

.method public blacklist getYDispatchLocation(I)F
    .registers 4

    .line 4330
    const/16 v0, 0x2002

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4331
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getYCursorPosition()F

    move-result v0

    .line 4332
    const/high16 v1, 0x7fc00000    # Float.NaN

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_13

    .line 4333
    return v0

    .line 4336
    :cond_13
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    return p1
.end method

.method public final whitelist getYPrecision()F
    .registers 3

    .line 3219
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v0

    return v0
.end method

.method public final whitelist isButtonPressed(I)Z
    .registers 4

    .line 4211
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 4212
    return v0

    .line 4214
    :cond_4
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public blacklist isHoverEvent()Z
    .registers 3

    .line 2528
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1a

    .line 2529
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1a

    .line 2530
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    .line 2528
    :goto_1b
    return v0
.end method

.method public final greylist-max-o isHoverExitPending()Z
    .registers 2

    .line 2618
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2619
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isInjectedFromAccessibilityService()Z
    .registers 2

    .line 2603
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2604
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isInjectedFromAccessibilityTool()Z
    .registers 2

    .line 2612
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2613
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isStylusPointer()Z
    .registers 4

    .line 2515
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2516
    const/16 v1, 0x4002

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2517
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    .line 2518
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 2516
    :goto_1d
    return v0
.end method

.method public blacklist isSynthesizedTouchpadGesture()Z
    .registers 5

    .line 2548
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    .line 2549
    const/16 v1, 0x2002

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e

    :cond_1d
    move v2, v3

    :cond_1e
    return v2
.end method

.method public final greylist-max-o isTainted()Z
    .registers 3

    .line 2568
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2569
    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public greylist-max-o isTargetAccessibilityFocus()Z
    .registers 3

    .line 2586
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2587
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final greylist-max-o isTouchEvent()Z
    .registers 3

    .line 2507
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeIsTouchEvent(J)Z

    move-result v0

    return v0
.end method

.method public final greylist-max-o isWithinBoundsNoHistory(FFFF)Z
    .registers 14

    .line 3873
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    .line 3874
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2e

    .line 3875
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v6, -0x80000000

    invoke-static {v4, v5, v1, v2, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v4

    .line 3876
    iget-wide v7, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v7, v8, v3, v2, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v3

    .line 3877
    cmpg-float v5, v4, p1

    if-ltz v5, :cond_2d

    cmpl-float v4, v4, p3

    if-gtz v4, :cond_2d

    cmpg-float v4, v3, p2

    if-ltz v4, :cond_2d

    cmpl-float v3, v3, p4

    if-lez v3, :cond_2a

    goto :goto_2d

    .line 3874
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3878
    :cond_2d
    :goto_2d
    return v1

    .line 3881
    :cond_2e
    return v3
.end method

.method public final whitelist offsetLocation(FF)V
    .registers 5

    .line 3712
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_9

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_e

    .line 3713
    :cond_9
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeOffsetLocation(JFF)V

    .line 3715
    :cond_e
    return-void
.end method

.method public final whitelist recycle()V
    .registers 4

    .line 2390
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    .line 2392
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2393
    :try_start_6
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_18

    .line 2394
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 2395
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    iput-object v1, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 2396
    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 2398
    :cond_18
    monitor-exit v0

    .line 2399
    return-void

    .line 2398
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final greylist scale(F)V
    .registers 4

    .line 2414
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 2415
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeScale(JF)V

    .line 2417
    :cond_b
    return-void
.end method

.method public final whitelist setAction(I)V
    .registers 4

    .line 3695
    and-int/lit16 v0, p1, 0xff

    .line 3696
    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 3697
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/MotionEvent;->setCanceled(Z)V

    goto :goto_12

    .line 3698
    :cond_a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    goto :goto_12

    .line 3701
    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/MotionEvent;->setCanceled(Z)V

    .line 3703
    :goto_12
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetAction(JI)V

    .line 3704
    return-void
.end method

.method public final greylist setActionButton(I)V
    .registers 4

    .line 3085
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetActionButton(JI)V

    .line 3086
    return-void
.end method

.method public final blacklist setButtonState(I)V
    .registers 4

    .line 3049
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetButtonState(JI)V

    .line 3050
    return-void
.end method

.method public blacklist setDisplayId(I)V
    .registers 4

    .line 2458
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetDisplayId(JI)V

    .line 2459
    return-void
.end method

.method public final greylist setDownTime(J)V
    .registers 7

    .line 2646
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeSetDownTimeNanos(JJ)V

    .line 2647
    return-void
.end method

.method public final whitelist setEdgeFlags(I)V
    .registers 4

    .line 3688
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetEdgeFlags(JI)V

    .line 3689
    return-void
.end method

.method public greylist-max-o setHoverExitPending(Z)V
    .registers 5

    .line 2624
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2625
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_b

    .line 2626
    or-int/lit8 p1, v0, 0x4

    goto :goto_d

    .line 2627
    :cond_b
    and-int/lit8 p1, v0, -0x5

    .line 2625
    :goto_d
    invoke-static {v1, v2, p1}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    .line 2628
    return-void
.end method

.method public final whitelist setLocation(FF)V
    .registers 5

    .line 3725
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3726
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 3727
    sub-float/2addr p1, v0

    sub-float/2addr p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3728
    return-void
.end method

.method public final whitelist setSource(I)V
    .registers 4

    .line 2440
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 2441
    return-void

    .line 2443
    :cond_7
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetSource(JI)V

    .line 2444
    invoke-direct {p0}, Landroid/view/MotionEvent;->updateCursorPosition()V

    .line 2445
    return-void
.end method

.method public final greylist-max-o setTainted(Z)V
    .registers 5

    .line 2575
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2576
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_c

    const/high16 p1, -0x80000000

    or-int/2addr p1, v0

    goto :goto_10

    :cond_c
    const p1, 0x7fffffff

    and-int/2addr p1, v0

    :goto_10
    invoke-static {v1, v2, p1}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    .line 2577
    return-void
.end method

.method public greylist-max-o setTargetAccessibilityFocus(Z)V
    .registers 5

    .line 2592
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2593
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_c

    .line 2594
    const/high16 p1, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    goto :goto_10

    .line 2595
    :cond_c
    const p1, -0x40000001    # -1.9999999f

    and-int/2addr p1, v0

    .line 2593
    :goto_10
    invoke-static {v1, v2, p1}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    .line 2596
    return-void
.end method

.method public final greylist split(I)Landroid/view/MotionEvent;
    .registers 7

    .line 3951
    if-eqz p1, :cond_49

    .line 3955
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v0

    .line 3956
    and-int/2addr v0, p1

    if-ne v0, p1, :cond_18

    .line 3962
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 3963
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v1, v2, v3, v4, p1}, Landroid/view/MotionEvent;->nativeSplit(JJI)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3964
    return-object v0

    .line 3957
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idBits must be a non-empty subset of the pointer IDs from this MotionEvent, got idBits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3960
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "0x%x"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3952
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "idBits must contain at least one pointer from this motion event"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 11

    .line 4001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4002
    const-string v1, "MotionEvent { action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4003
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v1

    invoke-static {v1}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    const-string v3, ", actionButton="

    invoke-static {v2, v0, v3, v1}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4005
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 4006
    const/4 v3, 0x0

    move v4, v3

    :goto_2b
    const/4 v5, 0x1

    if-ge v4, v1, :cond_ae

    .line 4007
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", id["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v0, v7, v9}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4008
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 4009
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 4011
    const-string v9, ", x["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4012
    const-string v6, ", y["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4014
    sget-object v6, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", toolType["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4015
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    invoke-static {v7}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v7

    .line 4014
    invoke-static {v5, v0, v6, v7}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4006
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2b

    .line 4018
    :cond_ae
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, ", buttonState="

    invoke-static {v2, v0, v6, v4}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4019
    invoke-static {v3}, Landroid/view/MotionEvent;->classificationToString(I)Ljava/lang/String;

    move-result-object v4

    .line 4020
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getClassification()I

    move-result v6

    invoke-static {v6}, Landroid/view/MotionEvent;->classificationToString(I)Ljava/lang/String;

    move-result-object v6

    .line 4019
    const-string v7, ", classification="

    invoke-static {v4, v0, v7, v6}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4021
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, ", metaState="

    invoke-static {v2, v0, v6, v4}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4022
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, ", flags=0x"

    invoke-static {v2, v0, v6, v4}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4023
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, ", edgeFlags=0x"

    invoke-static {v2, v0, v6, v4}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4024
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, ", pointerCount="

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v0, v4, v1}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4025
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", historySize="

    invoke-static {v1, v0, v3, v2}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4026
    const-string v1, ", eventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4028
    const-string v1, ", downTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4029
    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4030
    const-string v1, ", source=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4031
    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4032
    const-string v1, ", eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4034
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4035
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist transform(Landroid/graphics/Matrix;)V
    .registers 4

    .line 3736
    if-eqz p1, :cond_8

    .line 3740
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeTransform(JLandroid/graphics/Matrix;)V

    .line 3741
    return-void

    .line 3737
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "matrix must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 4301
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4302
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 4303
    return-void
.end method
