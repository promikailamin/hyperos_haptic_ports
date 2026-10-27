.class public final Landroid/view/MotionEvent;
.super Landroid/view/InputEvent;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionEvent$FreeformProperties;,
        Landroid/view/MotionEvent$PointerProperties;,
        Landroid/view/MotionEvent$PointerCoords;,
        Landroid/view/MotionEvent$Classification;
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

.field public static final whitelist CLASSIFICATION_NONE:I = 0x0

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

.field public static final blacklist FLAG_IS_ACCESSIBILITY_EVENT:I = 0x800

.field public static final greylist-max-o FLAG_IS_GENERATED_GESTURE:I = 0x8

.field public static final blacklist FLAG_NO_FOCUS_CHANGE:I = 0x40

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
.field public final blacklist freeformProperties:Landroid/view/MotionEvent$FreeformProperties;

.field private greylist mEmbeddingScaleParameter:Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

.field private greylist-max-p mNativePtr:J

.field private greylist-max-o mNext:Landroid/view/MotionEvent;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 40

    .line 1295
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1297
    sget-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1298
    .local v0, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-string v2, "AXIS_X"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1299
    const/4 v2, 0x1

    const-string v3, "AXIS_Y"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1300
    const/4 v3, 0x2

    const-string v4, "AXIS_PRESSURE"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1301
    const/4 v4, 0x3

    const-string v5, "AXIS_SIZE"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1302
    const/4 v5, 0x4

    const-string v6, "AXIS_TOUCH_MAJOR"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1303
    const/4 v6, 0x5

    const-string v7, "AXIS_TOUCH_MINOR"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1304
    const/4 v6, 0x6

    const-string v7, "AXIS_TOOL_MAJOR"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1305
    const/4 v6, 0x7

    const-string v7, "AXIS_TOOL_MINOR"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1306
    const/16 v6, 0x8

    const-string v7, "AXIS_ORIENTATION"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1307
    const/16 v6, 0x9

    const-string v7, "AXIS_VSCROLL"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1308
    const/16 v6, 0xa

    const-string v7, "AXIS_HSCROLL"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1309
    const/16 v6, 0xb

    const-string v7, "AXIS_Z"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1310
    const/16 v6, 0xc

    const-string v7, "AXIS_RX"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1311
    const/16 v6, 0xd

    const-string v7, "AXIS_RY"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1312
    const/16 v6, 0xe

    const-string v7, "AXIS_RZ"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1313
    const/16 v6, 0xf

    const-string v7, "AXIS_HAT_X"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1314
    const/16 v6, 0x10

    const-string v7, "AXIS_HAT_Y"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1315
    const/16 v6, 0x11

    const-string v7, "AXIS_LTRIGGER"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1316
    const/16 v6, 0x12

    const-string v7, "AXIS_RTRIGGER"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1317
    const/16 v6, 0x13

    const-string v7, "AXIS_THROTTLE"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1318
    const/16 v6, 0x14

    const-string v7, "AXIS_RUDDER"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1319
    const/16 v6, 0x15

    const-string v7, "AXIS_WHEEL"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1320
    const/16 v6, 0x16

    const-string v7, "AXIS_GAS"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1321
    const/16 v6, 0x17

    const-string v7, "AXIS_BRAKE"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1322
    const/16 v6, 0x18

    const-string v7, "AXIS_DISTANCE"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1323
    const/16 v6, 0x19

    const-string v7, "AXIS_TILT"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1324
    const/16 v6, 0x1a

    const-string v7, "AXIS_SCROLL"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1325
    const/16 v6, 0x1b

    const-string v7, "AXIS_REALTIVE_X"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1326
    const/16 v6, 0x1c

    const-string v7, "AXIS_REALTIVE_Y"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1327
    const/16 v6, 0x20

    const-string v7, "AXIS_GENERIC_1"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1328
    const/16 v6, 0x21

    const-string v7, "AXIS_GENERIC_2"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1329
    const/16 v6, 0x22

    const-string v7, "AXIS_GENERIC_3"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1330
    const/16 v6, 0x23

    const-string v7, "AXIS_GENERIC_4"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1331
    const/16 v6, 0x24

    const-string v7, "AXIS_GENERIC_5"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1332
    const/16 v6, 0x25

    const-string v7, "AXIS_GENERIC_6"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1333
    const/16 v6, 0x26

    const-string v7, "AXIS_GENERIC_7"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1334
    const/16 v6, 0x27

    const-string v7, "AXIS_GENERIC_8"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1335
    const/16 v6, 0x28

    const-string v7, "AXIS_GENERIC_9"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1336
    const/16 v6, 0x29

    const-string v7, "AXIS_GENERIC_10"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1337
    const/16 v6, 0x2a

    const-string v7, "AXIS_GENERIC_11"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1338
    const/16 v6, 0x2b

    const-string v7, "AXIS_GENERIC_12"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1339
    const/16 v6, 0x2c

    const-string v7, "AXIS_GENERIC_13"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1340
    const/16 v6, 0x2d

    const-string v7, "AXIS_GENERIC_14"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1341
    const/16 v6, 0x2e

    const-string v7, "AXIS_GENERIC_15"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1342
    const/16 v6, 0x2f

    const-string v7, "AXIS_GENERIC_16"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1410
    .end local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
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

    const-string v38, "0x40000000"

    const-string v39, "0x80000000"

    filled-new-array/range {v8 .. v39}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 1531
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1533
    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1534
    .restart local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v6, "TOOL_TYPE_UNKNOWN"

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1535
    const-string v1, "TOOL_TYPE_FINGER"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1536
    const-string v1, "TOOL_TYPE_STYLUS"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1537
    const-string v1, "TOOL_TYPE_MOUSE"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1538
    const-string v1, "TOOL_TYPE_ERASER"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1550
    .end local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 1556
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    .line 4066
    new-instance v0, Landroid/view/MotionEvent$1;

    invoke-direct {v0}, Landroid/view/MotionEvent$1;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 1707
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 203
    new-instance v0, Landroid/view/MotionEvent$FreeformProperties;

    invoke-direct {v0, p0}, Landroid/view/MotionEvent$FreeformProperties;-><init>(Landroid/view/MotionEvent;)V

    iput-object v0, p0, Landroid/view/MotionEvent;->freeformProperties:Landroid/view/MotionEvent$FreeformProperties;

    .line 1581
    new-instance v0, Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

    invoke-direct {v0}, Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;-><init>()V

    iput-object v0, p0, Landroid/view/MotionEvent;->mEmbeddingScaleParameter:Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

    .line 1708
    return-void
.end method

.method public static whitelist actionToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "action"    # I

    .line 3850
    packed-switch p0, :pswitch_data_66

    .line 3874
    :pswitch_3
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    .line 3875
    .local v0, "index":I
    and-int/lit16 v1, p0, 0xff

    const-string v2, ")"

    packed-switch v1, :pswitch_data_84

    .line 3881
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3872
    .end local v0    # "index":I
    :pswitch_15
    const-string v0, "ACTION_BUTTON_RELEASE"

    return-object v0

    .line 3870
    :pswitch_18
    const-string v0, "ACTION_BUTTON_PRESS"

    return-object v0

    .line 3868
    :pswitch_1b
    const-string v0, "ACTION_HOVER_EXIT"

    return-object v0

    .line 3866
    :pswitch_1e
    const-string v0, "ACTION_HOVER_ENTER"

    return-object v0

    .line 3864
    :pswitch_21
    const-string v0, "ACTION_SCROLL"

    return-object v0

    .line 3862
    :pswitch_24
    const-string v0, "ACTION_HOVER_MOVE"

    return-object v0

    .line 3858
    :pswitch_27
    const-string v0, "ACTION_OUTSIDE"

    return-object v0

    .line 3856
    :pswitch_2a
    const-string v0, "ACTION_CANCEL"

    return-object v0

    .line 3860
    :pswitch_2d
    const-string v0, "ACTION_MOVE"

    return-object v0

    .line 3854
    :pswitch_30
    const-string v0, "ACTION_UP"

    return-object v0

    .line 3852
    :pswitch_33
    const-string v0, "ACTION_DOWN"

    return-object v0

    .line 3879
    .restart local v0    # "index":I
    :pswitch_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_POINTER_UP("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3877
    :pswitch_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_POINTER_DOWN("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

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
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "key"    # Ljava/lang/String;
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

    .line 3837
    .local p0, "defValue":Ljava/lang/Object;, "TT;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3838
    return-void
.end method

.method public static whitelist axisFromString(Ljava/lang/String;)I
    .registers 3
    .param p0, "symbolicName"    # Ljava/lang/String;

    .line 3906
    const-string v0, "AXIS_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3907
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3908
    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisFromString(Ljava/lang/String;)I

    move-result v0

    .line 3909
    .local v0, "axis":I
    if-ltz v0, :cond_17

    .line 3910
    return v0

    .line 3914
    .end local v0    # "axis":I
    :cond_17
    const/16 v0, 0xa

    :try_start_19
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_1d} :catch_1e

    return v0

    .line 3915
    :catch_1e
    move-exception v0

    .line 3916
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    return v1
.end method

.method public static whitelist axisToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "axis"    # I

    .line 3893
    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisToString(I)Ljava/lang/String;

    move-result-object v0

    .line 3894
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AXIS_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1a
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1e
    return-object v1
.end method

.method public static greylist-max-o buttonStateToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "buttonState"    # I

    .line 3931
    if-nez p0, :cond_5

    .line 3932
    const-string v0, "0"

    return-object v0

    .line 3934
    :cond_5
    const/4 v0, 0x0

    .line 3935
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 3936
    .local v1, "i":I
    :goto_7
    if-eqz p0, :cond_30

    .line 3937
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 3938
    .local v2, "isSet":Z
    :goto_10
    ushr-int/lit8 p0, p0, 0x1

    .line 3939
    if-eqz v2, :cond_2c

    .line 3940
    sget-object v3, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 3941
    .local v3, "name":Ljava/lang/String;
    if-nez v0, :cond_24

    .line 3942
    if-nez p0, :cond_1d

    .line 3943
    return-object v3

    .line 3945
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_2c

    .line 3947
    :cond_24
    const/16 v4, 0x7c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3948
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3951
    .end local v3    # "name":Ljava/lang/String;
    :cond_2c
    :goto_2c
    nop

    .end local v2    # "isSet":Z
    add-int/lit8 v1, v1, 0x1

    .line 3952
    goto :goto_7

    .line 3953
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static final greylist-max-o clamp(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 3626
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .line 3627
    return p1

    .line 3628
    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_a

    .line 3629
    return p2

    .line 3631
    :cond_a
    return p0
.end method

.method public static blacklist classificationToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "classification"    # I

    .line 3964
    const-string v0, "NONE"

    packed-switch p0, :pswitch_data_e

    .line 3973
    return-object v0

    .line 3970
    :pswitch_6
    const-string v0, "DEEP_PRESS"

    return-object v0

    .line 3968
    :pswitch_9
    const-string v0, "AMBIGUOUS_GESTURE"

    return-object v0

    .line 3966
    :pswitch_c
    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;

    .line 4080
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 4081
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v1, v2, p0}, Landroid/view/MotionEvent;->nativeReadFromParcel(JLandroid/os/Parcel;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 4082
    return-object v0
.end method

.method public static blacklist createRotateMatrix(III)Landroid/graphics/Matrix;
    .registers 20
    .param p0, "rotation"    # I
    .param p1, "rotatedFrameWidth"    # I
    .param p2, "rotatedFrameHeight"    # I

    .line 4043
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez v0, :cond_10

    .line 4044
    new-instance v3, Landroid/graphics/Matrix;

    sget-object v4, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {v3, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v3

    .line 4047
    :cond_10
    const/4 v3, 0x0

    .line 4048
    .local v3, "values":[F
    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v10, 0x9

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    if-ne v0, v14, :cond_3c

    .line 4049
    new-array v10, v10, [F

    aput v16, v10, v9

    aput v15, v10, v14

    aput v16, v10, v13

    aput v11, v10, v12

    aput v16, v10, v8

    int-to-float v8, v2

    aput v8, v10, v7

    aput v16, v10, v6

    aput v16, v10, v5

    aput v15, v10, v4

    move-object v3, v10

    goto :goto_6e

    .line 4052
    :cond_3c
    if-ne v0, v13, :cond_56

    .line 4053
    new-array v10, v10, [F

    aput v11, v10, v9

    aput v16, v10, v14

    int-to-float v9, v1

    aput v9, v10, v13

    aput v16, v10, v12

    aput v11, v10, v8

    int-to-float v8, v2

    aput v8, v10, v7

    aput v16, v10, v6

    aput v16, v10, v5

    aput v15, v10, v4

    move-object v3, v10

    goto :goto_6e

    .line 4056
    :cond_56
    if-ne v0, v12, :cond_6e

    .line 4057
    new-array v10, v10, [F

    aput v16, v10, v9

    aput v11, v10, v14

    int-to-float v9, v1

    aput v9, v10, v13

    aput v15, v10, v12

    aput v16, v10, v8

    aput v16, v10, v7

    aput v16, v10, v6

    aput v16, v10, v5

    aput v15, v10, v4

    move-object v3, v10

    .line 4061
    :cond_6e
    :goto_6e
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 4062
    .local v4, "toOrient":Landroid/graphics/Matrix;
    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 4063
    return-object v4
.end method

.method private static final greylist-max-o ensureSharedTempPointerCapacity(I)V
    .registers 3
    .param p0, "desiredCapacity"    # I

    .line 1562
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v0, :cond_7

    array-length v1, v0

    if-ge v1, p0, :cond_22

    .line 1564
    :cond_7
    if-eqz v0, :cond_b

    array-length v0, v0

    goto :goto_d

    :cond_b
    const/16 v0, 0x8

    .line 1565
    .local v0, "capacity":I
    :goto_d
    if-ge v0, p0, :cond_12

    .line 1566
    mul-int/lit8 v0, v0, 0x2

    goto :goto_d

    .line 1568
    :cond_12
    invoke-static {v0}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1569
    invoke-static {v0}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v1

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1570
    new-array v1, v0, [I

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    .line 1572
    .end local v0    # "capacity":I
    :cond_22
    return-void
.end method

.method private blacklist initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z
    .registers 44
    .param p1, "deviceId"    # I
    .param p2, "source"    # I
    .param p3, "displayId"    # I
    .param p4, "action"    # I
    .param p5, "flags"    # I
    .param p6, "edgeFlags"    # I
    .param p7, "metaState"    # I
    .param p8, "buttonState"    # I
    .param p9, "classification"    # I
    .param p10, "xOffset"    # F
    .param p11, "yOffset"    # F
    .param p12, "xPrecision"    # F
    .param p13, "yPrecision"    # F
    .param p14, "downTimeNanos"    # J
    .param p16, "eventTimeNanos"    # J
    .param p18, "pointerCount"    # I
    .param p19, "pointerIds"    # [Landroid/view/MotionEvent$PointerProperties;
    .param p20, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v0, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move-wide/from16 v16, p14

    move-wide/from16 v18, p16

    move/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    .line 2061
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static/range {v1 .. v22}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 2065
    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_36

    .line 2066
    const/4 v1, 0x0

    return v1

    .line 2068
    :cond_36
    invoke-direct/range {p0 .. p0}, Landroid/view/MotionEvent;->updateCursorPosition()V

    .line 2069
    const/4 v1, 0x1

    return v1
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

.method private static native blacklist nativeGetScale(J)F
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

.method private static native greylist-max-o nativeGetXOffset(J)F
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

.method private static native greylist-max-o nativeGetYOffset(J)F
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

.method private static native blacklist nativeTransform(JLandroid/graphics/Matrix;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static greylist obtain()Landroid/view/MotionEvent;
    .registers 3

    .line 1725
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1726
    :try_start_3
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1727
    .local v1, "ev":Landroid/view/MotionEvent;
    if-nez v1, :cond_e

    .line 1728
    new-instance v2, Landroid/view/MotionEvent;

    invoke-direct {v2}, Landroid/view/MotionEvent;-><init>()V

    monitor-exit v0

    return-object v2

    .line 1730
    :cond_e
    iget-object v2, v1, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object v2, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1731
    sget v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 1732
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_20

    .line 1733
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 1734
    invoke-virtual {v1}, Landroid/view/MotionEvent;->prepareForReuse()V

    .line 1735
    return-object v1

    .line 1732
    .end local v1    # "ev":Landroid/view/MotionEvent;
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public static whitelist obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .registers 30
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "pressure"    # F
    .param p8, "size"    # F
    .param p9, "metaState"    # I
    .param p10, "xPrecision"    # F
    .param p11, "yPrecision"    # F
    .param p12, "deviceId"    # I
    .param p13, "edgeFlags"    # I

    .line 1903
    const/4 v14, 0x2

    const/4 v15, 0x0

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-static/range {v0 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtain(JJIFFFFIFFIIII)Landroid/view/MotionEvent;
    .registers 41
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "pressure"    # F
    .param p8, "size"    # F
    .param p9, "metaState"    # I
    .param p10, "xPrecision"    # F
    .param p11, "yPrecision"    # F
    .param p12, "deviceId"    # I
    .param p13, "edgeFlags"    # I
    .param p14, "source"    # I
    .param p15, "displayId"    # I

    .line 1944
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v22

    .line 1945
    .local v22, "ev":Landroid/view/MotionEvent;
    sget-object v23, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v23

    .line 1946
    const/4 v0, 0x1

    :try_start_8
    invoke-static {v0}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 1947
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1948
    .local v0, "pp":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 1949
    aget-object v2, v0, v1

    iput v1, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1951
    sget-object v2, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v24, v2

    .line 1952
    .local v24, "pc":[Landroid/view/MotionEvent$PointerCoords;
    aget-object v2, v24, v1

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 1953
    aget-object v2, v24, v1

    move/from16 v14, p5

    iput v14, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1954
    aget-object v2, v24, v1

    move/from16 v13, p6

    iput v13, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1955
    aget-object v2, v24, v1

    move/from16 v8, p7

    iput v8, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1956
    aget-object v1, v24, v1

    move/from16 v7, p8

    iput v7, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1958
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/32 v1, 0xf4240

    mul-long v15, p0, v1

    mul-long v17, p2, v1

    const/16 v19, 0x1

    move-object/from16 v1, v22

    move/from16 v2, p12

    move/from16 v3, p14

    move/from16 v4, p15

    move/from16 v5, p4

    move/from16 v7, p13

    move/from16 v8, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v20, v0

    move-object/from16 v21, v24

    invoke-direct/range {v1 .. v21}, Landroid/view/MotionEvent;->initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z

    .line 1963
    monitor-exit v23

    return-object v22

    .line 1964
    .end local v0    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v24    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :catchall_61
    move-exception v0

    monitor-exit v23
    :try_end_63
    .catchall {:try_start_8 .. :try_end_63} :catchall_61

    throw v0
.end method

.method public static whitelist obtain(JJIFFI)Landroid/view/MotionEvent;
    .registers 22
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "metaState"    # I

    .line 2025
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .registers 29
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "pressure"    # F
    .param p9, "size"    # F
    .param p10, "metaState"    # I
    .param p11, "xPrecision"    # F
    .param p12, "yPrecision"    # F
    .param p13, "deviceId"    # I
    .param p14, "edgeFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2004
    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
    .registers 33
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "pointerIds"    # [I
    .param p7, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p8, "metaState"    # I
    .param p9, "xPrecision"    # F
    .param p10, "yPrecision"    # F
    .param p11, "deviceId"    # I
    .param p12, "edgeFlags"    # I
    .param p13, "source"    # I
    .param p14, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1858
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1859
    :try_start_3
    invoke-static/range {p5 .. p5}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 1860
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1861
    .local v0, "pp":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    move/from16 v15, p5

    if-ge v2, v15, :cond_1b

    .line 1862
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 1863
    aget-object v3, v0, v2

    aget v4, p6, v2

    iput v4, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1861
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1865
    .end local v2    # "i":I
    :cond_1b
    const/4 v11, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-object v8, v0

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1868
    .end local v0    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public static whitelist obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    .registers 33
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "pointerProperties"    # [Landroid/view/MotionEvent$PointerProperties;
    .param p7, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p8, "metaState"    # I
    .param p9, "buttonState"    # I
    .param p10, "xPrecision"    # F
    .param p11, "yPrecision"    # F
    .param p12, "deviceId"    # I
    .param p13, "edgeFlags"    # I
    .param p14, "source"    # I
    .param p15, "flags"    # I

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v16, p15

    .line 1819
    const/4 v15, 0x0

    invoke-static/range {v0 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;
    .registers 39
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "pointerProperties"    # [Landroid/view/MotionEvent$PointerProperties;
    .param p7, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p8, "metaState"    # I
    .param p9, "buttonState"    # I
    .param p10, "xPrecision"    # F
    .param p11, "yPrecision"    # F
    .param p12, "deviceId"    # I
    .param p13, "edgeFlags"    # I
    .param p14, "source"    # I
    .param p15, "displayId"    # I
    .param p16, "flags"    # I

    move/from16 v4, p4

    move/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v1, p12

    move/from16 v6, p13

    move/from16 v2, p14

    move/from16 v3, p15

    move/from16 v5, p16

    .line 1773
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v21

    .local v21, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, v21

    .line 1774
    const-wide/32 v9, 0xf4240

    mul-long v14, p0, v9

    mul-long v16, p2, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v20}, Landroid/view/MotionEvent;->initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z

    move-result v0

    .line 1778
    .local v0, "success":Z
    if-nez v0, :cond_3c

    .line 1779
    const-string v1, "MotionEvent"

    const-string v2, "Could not initialize MotionEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    .line 1781
    const/4 v1, 0x0

    return-object v1

    .line 1783
    :cond_3c
    return-object v21
.end method

.method public static whitelist obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 7
    .param p0, "other"    # Landroid/view/MotionEvent;

    .line 2033
    if-eqz p0, :cond_12

    .line 2037
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 2038
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 2039
    return-object v0

    .line 2034
    .end local v0    # "ev":Landroid/view/MotionEvent;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other motion event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 7
    .param p0, "other"    # Landroid/view/MotionEvent;

    .line 2047
    if-eqz p0, :cond_12

    .line 2051
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 2052
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 2053
    return-object v0

    .line 2048
    .end local v0    # "ev":Landroid/view/MotionEvent;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other motion event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setCursorPosition(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2999
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeSetCursorPosition(JFF)V

    .line 3000
    return-void
.end method

.method public static greylist-max-o toolTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "toolType"    # I

    .line 3985
    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3986
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_10

    :cond_c
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method private blacklist updateCursorPosition()V
    .registers 6

    .line 3775
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x2002

    if-eq v0, v1, :cond_e

    .line 3776
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0, v0, v0}, Landroid/view/MotionEvent;->setCursorPosition(FF)V

    .line 3777
    return-void

    .line 3780
    :cond_e
    const/4 v0, 0x0

    .line 3781
    .local v0, "x":F
    const/4 v1, 0x0

    .line 3783
    .local v1, "y":F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 3784
    .local v2, "pointerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_24

    .line 3785
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v0, v4

    .line 3786
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v1, v4

    .line 3784
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 3791
    .end local v3    # "i":I
    :cond_24
    int-to-float v3, v2

    div-float/2addr v0, v3

    .line 3792
    int-to-float v3, v2

    div-float/2addr v1, v3

    .line 3793
    invoke-direct {p0, v0, v1}, Landroid/view/MotionEvent;->setCursorPosition(FF)V

    .line 3794
    return-void
.end method


# virtual methods
.method public final whitelist addBatch(JFFFFI)V
    .registers 16
    .param p1, "eventTime"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "pressure"    # F
    .param p6, "size"    # F
    .param p7, "metaState"    # I

    .line 3515
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3516
    const/4 v1, 0x1

    :try_start_4
    invoke-static {v1}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3517
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3518
    .local v1, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 3519
    aget-object v3, v1, v2

    iput p3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3520
    aget-object v3, v1, v2

    iput p4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3521
    aget-object v3, v1, v2

    iput p5, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3522
    aget-object v2, v1, v2

    iput p6, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3524
    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v4, 0xf4240

    mul-long/2addr v4, p1

    move-object v6, v1

    move v7, p7

    invoke-static/range {v2 .. v7}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3525
    .end local v1    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    monitor-exit v0

    .line 3526
    return-void

    .line 3525
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public final whitelist addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V
    .registers 11
    .param p1, "eventTime"    # J
    .param p3, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p4, "metaState"    # I

    .line 3540
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3541
    return-void
.end method

.method public final greylist addBatch(Landroid/view/MotionEvent;)Z
    .registers 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3557
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v3

    .line 3558
    .local v3, "action":I
    const/4 v0, 0x2

    const/4 v4, 0x0

    if-eq v3, v0, :cond_12

    const/4 v5, 0x7

    if-eq v3, v5, :cond_12

    .line 3559
    return v4

    .line 3561
    :cond_12
    iget-wide v5, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v5

    if-eq v3, v5, :cond_1b

    .line 3562
    return v4

    .line 3565
    :cond_1b
    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v5

    iget-wide v6, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v6

    if-ne v5, v6, :cond_db

    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3566
    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v5

    iget-wide v6, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v6

    if-ne v5, v6, :cond_db

    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3567
    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v5

    iget-wide v6, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v6

    if-ne v5, v6, :cond_db

    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3568
    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v5

    iget-wide v6, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v6

    if-ne v5, v6, :cond_db

    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3569
    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v5

    iget-wide v6, v2, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3570
    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v6

    if-eq v5, v6, :cond_63

    goto/16 :goto_db

    .line 3574
    :cond_63
    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v5

    .line 3575
    .local v5, "pointerCount":I
    iget-wide v6, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v6

    if-eq v5, v6, :cond_72

    .line 3576
    return v4

    .line 3579
    :cond_72
    sget-object v6, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3580
    :try_start_75
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3581
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3582
    .local v0, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v7, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3584
    .local v7, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_81
    const/4 v14, 0x1

    if-ge v8, v5, :cond_a1

    .line 3585
    iget-wide v9, v1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v11, v0, v4

    invoke-static {v9, v10, v8, v11}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3586
    iget-wide v9, v2, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v11, v0, v14

    invoke-static {v9, v10, v8, v11}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3587
    aget-object v9, v0, v4

    aget-object v10, v0, v14

    invoke-static {v9, v10}, Landroid/view/MotionEvent$PointerProperties;->-$$Nest$mequals(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v9

    if-nez v9, :cond_9e

    .line 3588
    monitor-exit v6

    return v4

    .line 3584
    :cond_9e
    add-int/lit8 v8, v8, 0x1

    goto :goto_81

    .line 3592
    .end local v8    # "i":I
    :cond_a1
    iget-wide v8, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v13

    .line 3593
    .local v13, "metaState":I
    iget-wide v8, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v4

    .line 3594
    .local v4, "historySize":I
    const/4 v8, 0x0

    move v15, v8

    .local v15, "h":I
    :goto_af
    if-gt v15, v4, :cond_d6

    .line 3595
    if-ne v15, v4, :cond_b6

    const/high16 v8, -0x80000000

    goto :goto_b7

    :cond_b6
    move v8, v15

    :goto_b7
    move v12, v8

    .line 3597
    .local v12, "historyPos":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_b9
    if-ge v8, v5, :cond_c5

    .line 3598
    iget-wide v9, v2, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v11, v7, v8

    invoke-static {v9, v10, v8, v12, v11}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3597
    add-int/lit8 v8, v8, 0x1

    goto :goto_b9

    .line 3601
    .end local v8    # "i":I
    :cond_c5
    iget-wide v8, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9, v12}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v10

    .line 3602
    .local v10, "eventTimeNanos":J
    iget-wide v8, v1, Landroid/view/MotionEvent;->mNativePtr:J

    move/from16 v16, v12

    .end local v12    # "historyPos":I
    .local v16, "historyPos":I
    move-object v12, v7

    invoke-static/range {v8 .. v13}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3594
    .end local v10    # "eventTimeNanos":J
    .end local v16    # "historyPos":I
    add-int/lit8 v15, v15, 0x1

    goto :goto_af

    .line 3604
    .end local v0    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v4    # "historySize":I
    .end local v7    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v13    # "metaState":I
    .end local v15    # "h":I
    :cond_d6
    monitor-exit v6

    .line 3605
    return v14

    .line 3604
    :catchall_d8
    move-exception v0

    monitor-exit v6
    :try_end_da
    .catchall {:try_start_75 .. :try_end_da} :catchall_d8

    throw v0

    .line 3571
    .end local v5    # "pointerCount":I
    :cond_db
    :goto_db
    return v4
.end method

.method public blacklist applyTransform(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 3492
    if-eqz p1, :cond_8

    .line 3496
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeApplyTransform(JLandroid/graphics/Matrix;)V

    .line 3497
    return-void

    .line 3493
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "matrix must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final greylist-max-o cancel()V
    .registers 2

    .line 4088
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4089
    return-void
.end method

.method public final greylist-max-o clampNoHistory(FFFF)Landroid/view/MotionEvent;
    .registers 36
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 3639
    move-object/from16 v1, p0

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v23

    .line 3640
    .local v23, "ev":Landroid/view/MotionEvent;
    sget-object v24, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v24

    .line 3641
    :try_start_9
    iget-wide v2, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    .line 3643
    .local v0, "pointerCount":I
    invoke-static {v0}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3644
    sget-object v2, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v25, v2

    .line 3645
    .local v25, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v2, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_e8

    move-object/from16 v26, v2

    .line 3647
    .local v26, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    const/high16 v3, -0x80000000

    if-ge v2, v0, :cond_5f

    .line 3648
    :try_start_1f
    iget-wide v4, v1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v6, v25, v2

    invoke-static {v4, v5, v2, v6}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3649
    iget-wide v4, v1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v6, v26, v2

    invoke-static {v4, v5, v2, v3, v6}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3650
    aget-object v3, v26, v2

    aget-object v4, v26, v2

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F
    :try_end_33
    .catchall {:try_start_1f .. :try_end_33} :catchall_54

    move/from16 v15, p1

    move/from16 v14, p3

    :try_start_37
    invoke-static {v4, v15, v14}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v4

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3651
    aget-object v3, v26, v2

    aget-object v4, v26, v2

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_50

    move/from16 v13, p2

    move/from16 v12, p4

    :try_start_47
    invoke-static {v4, v13, v12}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v4

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3647
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3664
    .end local v0    # "pointerCount":I
    .end local v2    # "i":I
    .end local v25    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v26    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :catchall_50
    move-exception v0

    move/from16 v13, p2

    goto :goto_5b

    :catchall_54
    move-exception v0

    move/from16 v15, p1

    move/from16 v13, p2

    move/from16 v14, p3

    :goto_5b
    move/from16 v12, p4

    goto/16 :goto_e9

    .line 3647
    .restart local v0    # "pointerCount":I
    .restart local v2    # "i":I
    .restart local v25    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .restart local v26    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :cond_5f
    move/from16 v15, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v12, p4

    .line 3653
    .end local v2    # "i":I
    iget-wide v4, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v4

    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v5

    iget-wide v6, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3654
    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v6

    iget-wide v7, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3655
    invoke-static {v7, v8}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v7

    iget-wide v8, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v8

    iget-wide v9, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3656
    invoke-static {v9, v10}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v9

    iget-wide v10, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v10

    move v11, v4

    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3657
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v16

    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v17

    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3658
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetXOffset(J)F

    move-result v18

    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetYOffset(J)F

    move-result v19

    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3659
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v20

    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v21

    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3660
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v27

    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3661
    const/high16 v2, -0x80000000

    invoke-static {v3, v4, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v29

    .line 3653
    move-object/from16 v2, v23

    move v3, v11

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move/from16 v10, v16

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v13, v19

    move/from16 v14, v20

    move/from16 v15, v21

    move-wide/from16 v16, v27

    move-wide/from16 v18, v29

    move/from16 v20, v0

    move-object/from16 v21, v25

    move-object/from16 v22, v26

    invoke-direct/range {v2 .. v22}, Landroid/view/MotionEvent;->initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z

    .line 3663
    monitor-exit v24

    return-object v23

    .line 3664
    .end local v0    # "pointerCount":I
    .end local v25    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v26    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :catchall_e8
    move-exception v0

    :goto_e9
    monitor-exit v24
    :try_end_ea
    .catchall {:try_start_47 .. :try_end_ea} :catchall_e8

    throw v0
.end method

.method public bridge synthetic greylist copy()Landroid/view/InputEvent;
    .registers 2

    .line 193
    invoke-virtual {p0}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public greylist copy()Landroid/view/MotionEvent;
    .registers 2

    .line 2076
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1713
    :try_start_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    .line 1714
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeDispose(J)V

    .line 1715
    iput-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_12

    .line 1718
    :cond_d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1719
    nop

    .line 1720
    return-void

    .line 1718
    :catchall_12
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1719
    throw v0
.end method

.method public final whitelist findPointerIndex(I)I
    .registers 4
    .param p1, "pointerId"    # I

    .line 2469
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeFindPointerIndex(JI)I

    move-result v0

    return v0
.end method

.method public final whitelist getAction()I
    .registers 3

    .line 2170
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getActionButton()I
    .registers 3

    .line 2738
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetActionButton(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getActionIndex()I
    .registers 3

    .line 2193
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

    .line 2179
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final whitelist getAxisValue(I)F
    .registers 6
    .param p1, "axis"    # I

    .line 2419
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, p1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getAxisValue(II)F
    .registers 6
    .param p1, "axis"    # I
    .param p2, "pointerIndex"    # I

    .line 2643
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, p2, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getButtonState()I
    .registers 3

    .line 2703
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v0

    return v0
.end method

.method public whitelist getClassification()I
    .registers 3

    .line 2726
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getDeviceId()I
    .registers 3

    .line 2130
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v0

    return v0
.end method

.method public blacklist getDisplayId()I
    .registers 3

    .line 2152
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getDownTime()J
    .registers 5

    .line 2267
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final whitelist getEdgeFlags()I
    .registers 3

    .line 3427
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v0

    return v0
.end method

.method public greylist getEmbeddingScaleParameter()Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;
    .registers 2

    .line 2761
    iget-object v0, p0, Landroid/view/MotionEvent;->mEmbeddingScaleParameter:Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

    return-object v0
.end method

.method public final whitelist getEventTime()J
    .registers 5

    .line 2290
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final greylist getEventTimeNano()J
    .registers 4

    .line 2310
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getFlags()I
    .registers 3

    .line 2217
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalAxisValue(II)F
    .registers 6
    .param p1, "axis"    # I
    .param p2, "pos"    # I

    .line 3209
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalAxisValue(III)F
    .registers 6
    .param p1, "axis"    # I
    .param p2, "pointerIndex"    # I
    .param p3, "pos"    # I

    .line 3390
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalEventTime(I)J
    .registers 6
    .param p1, "pos"    # I

    .line 3031
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final greylist-max-o getHistoricalEventTimeNano(I)J
    .registers 4
    .param p1, "pos"    # I

    .line 3057
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getHistoricalOrientation(I)F
    .registers 6
    .param p1, "pos"    # I

    .line 3192
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalOrientation(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .line 3371
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I
    .param p3, "outPointerCoords"    # Landroid/view/MotionEvent$PointerCoords;

    .line 3411
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3412
    return-void
.end method

.method public final whitelist getHistoricalPressure(I)F
    .registers 6
    .param p1, "pos"    # I

    .line 3102
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalPressure(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .line 3263
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalSize(I)F
    .registers 6
    .param p1, "pos"    # I

    .line 3117
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalSize(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .line 3281
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalToolMajor(I)F
    .registers 6
    .param p1, "pos"    # I

    .line 3162
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalToolMajor(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .line 3335
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalToolMinor(I)F
    .registers 6
    .param p1, "pos"    # I

    .line 3177
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalToolMinor(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .line 3353
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalTouchMajor(I)F
    .registers 6
    .param p1, "pos"    # I

    .line 3132
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalTouchMajor(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .line 3299
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalTouchMinor(I)F
    .registers 6
    .param p1, "pos"    # I

    .line 3147
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalTouchMinor(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .line 3317
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalX(I)F
    .registers 5
    .param p1, "pos"    # I

    .line 3072
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalX(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .line 3227
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalY(I)F
    .registers 6
    .param p1, "pos"    # I

    .line 3087
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalY(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .line 3245
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistorySize()I
    .registers 3

    .line 3011
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v0

    return v0
.end method

.method public blacklist getId()I
    .registers 3

    .line 2124
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetId(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getMetaState()I
    .registers 3

    .line 2686
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getOrientation()F
    .registers 6

    .line 2406
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getOrientation(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 2627
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "outPointerCoords"    # Landroid/view/MotionEvent$PointerCoords;

    .line 2657
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2, p2}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 2658
    return-void
.end method

.method public final whitelist getPointerCount()I
    .registers 3

    .line 2427
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getPointerId(I)I
    .registers 4
    .param p1, "pointerIndex"    # I

    .line 2439
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result v0

    return v0
.end method

.method public final greylist getPointerIdBits()I
    .registers 6

    .line 3673
    const/4 v0, 0x0

    .line 3674
    .local v0, "idBits":I
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v1

    .line 3675
    .local v1, "pointerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_17

    .line 3676
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v2}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v0, v3

    .line 3675
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3678
    .end local v2    # "i":I
    :cond_17
    return v0
.end method

.method public final whitelist getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V
    .registers 5
    .param p1, "pointerIndex"    # I
    .param p2, "outPointerProperties"    # Landroid/view/MotionEvent$PointerProperties;

    .line 2672
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 2673
    return-void
.end method

.method public final whitelist getPressure()F
    .registers 6

    .line 2346
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getPressure(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 2530
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getRawX()F
    .registers 6

    .line 2777
    sget-boolean v0, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 2778
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/GMSDownscaleStub;->getCompatInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 2779
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/GMSDownscaleStub;->getCompatInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 2780
    invoke-static {v3, v4, v2, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v1

    mul-float/2addr v0, v1

    .line 2779
    return v0

    .line 2784
    :cond_23
    iget-object v0, p0, Landroid/view/MotionEvent;->freeformProperties:Landroid/view/MotionEvent$FreeformProperties;

    if-eqz v0, :cond_49

    invoke-static {v0}, Landroid/view/MotionEvent$FreeformProperties;->-$$Nest$fgetfreeformScaleIntercepted(Landroid/view/MotionEvent$FreeformProperties;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2785
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v2, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    iget-object v1, p0, Landroid/view/MotionEvent;->freeformProperties:Landroid/view/MotionEvent$FreeformProperties;

    invoke-static {v1}, Landroid/view/MotionEvent$FreeformProperties;->-$$Nest$fgettopLeftX(Landroid/view/MotionEvent$FreeformProperties;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Landroid/view/MotionEvent;->freeformProperties:Landroid/view/MotionEvent$FreeformProperties;

    invoke-static {v1}, Landroid/view/MotionEvent$FreeformProperties;->-$$Nest$fgetfreeFormScale(Landroid/view/MotionEvent$FreeformProperties;)F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Landroid/view/MotionEvent;->freeformProperties:Landroid/view/MotionEvent$FreeformProperties;

    invoke-static {v1}, Landroid/view/MotionEvent$FreeformProperties;->-$$Nest$fgettopLeftX(Landroid/view/MotionEvent$FreeformProperties;)F

    move-result v1

    add-float/2addr v0, v1

    return v0

    .line 2791
    :cond_49
    iget-object v0, p0, Landroid/view/MotionEvent;->mEmbeddingScaleParameter:Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

    iget v0, v0, Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;->scale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_64

    .line 2792
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v2, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    .line 2794
    .local v0, "rawX":F
    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v1

    iget-object v2, p0, Landroid/view/MotionEvent;->mEmbeddingScaleParameter:Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

    invoke-interface {v1, v0, v2}, Lmiui/window/MiuiEmbeddingWindowStub;->adaptGetRawXForEmbeddingScaleIfNeeded(FLmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;)F

    move-result v1

    .line 2793
    return v1

    .line 2798
    .end local v0    # "rawX":F
    :cond_64
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v2, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public whitelist getRawX(I)F
    .registers 7
    .param p1, "pointerIndex"    # I

    .line 2876
    sget-boolean v0, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 2877
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/GMSDownscaleStub;->getCompatInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 2878
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/GMSDownscaleStub;->getCompatInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 2879
    invoke-static {v3, v4, v2, p1, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v1

    mul-float/2addr v0, v1

    .line 2878
    return v0

    .line 2883
    :cond_23
    iget-object v0, p0, Landroid/view/MotionEvent;->freeformProperties:Landroid/view/MotionEvent$FreeformProperties;

    if-eqz v0, :cond_49

    invoke-static {v0}, Landroid/view/MotionEvent$FreeformProperties;->-$$Nest$fgetfreeformScaleIntercepted(Landroid/view/MotionEvent$FreeformProperties;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2884
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v2, p1, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    iget-object v1, p0, Landroid/view/MotionEvent;->freeformProperties:Landroid/view/MotionEvent$FreeformProperties;

    invoke-static {v1}, Landroid/view/MotionEvent$FreeformProperties;->-$$Nest$fgettopLeftX(Landroid/view/MotionEvent$FreeformProperties;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Landroid/view/MotionEvent;->freeformProperties:Landroid/view/MotionEvent$FreeformProperties;

    invoke-static {v1}, Landroid/view/MotionEvent$FreeformProperties;->-$$Nest$fgetfreeFormScale(Landroid/view/MotionEvent$FreeformProperties;)F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Landroid/view/MotionEvent;->freeformProperties:Landroid/view/MotionEvent$FreeformProperties;

    invoke-static {v1}, Landroid/view/MotionEvent$FreeformProperties;->-$$Nest$fgettopLeftX(Landroid/view/MotionEvent$FreeformProperties;)F

    move-result v1

    add-float/2addr v0, v1

    return v0

    .line 2888
    :cond_49
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v2, p1, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getRawY()F
    .registers 7

    .line 2813
    sget-boolean v0, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_24

    .line 2814
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/GMSDownscaleStub;->getCompatInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 2815
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/GMSDownscaleStub;->getCompatInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 2816
    invoke-static {v4, v5, v3, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v1

    mul-float/2addr v0, v1

    .line 2815
    return v0

    .line 2820
    :cond_24
    iget-object v0, p0, Landroid/view/MotionEvent;->freeformProperties:Landroid/view/MotionEvent$FreeformProperties;

    if-eqz v0, :cond_4a

    invoke-static {v0}, Landroid/view/MotionEvent$FreeformProperties;->-$$Nest$fgetfreeformScaleIntercepted(Landroid/view/MotionEvent$FreeformProperties;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2821
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5, v3, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    iget-object v1, p0, Landroid/view/MotionEvent;->freeformProperties:Landroid/view/MotionEvent$FreeformProperties;

    invoke-static {v1}, Landroid/view/MotionEvent$FreeformProperties;->-$$Nest$fgettopLeftY(Landroid/view/MotionEvent$FreeformProperties;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Landroid/view/MotionEvent;->freeformProperties:Landroid/view/MotionEvent$FreeformProperties;

    invoke-static {v1}, Landroid/view/MotionEvent$FreeformProperties;->-$$Nest$fgetfreeFormScale(Landroid/view/MotionEvent$FreeformProperties;)F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Landroid/view/MotionEvent;->freeformProperties:Landroid/view/MotionEvent$FreeformProperties;

    invoke-static {v1}, Landroid/view/MotionEvent$FreeformProperties;->-$$Nest$fgettopLeftY(Landroid/view/MotionEvent$FreeformProperties;)F

    move-result v1

    add-float/2addr v0, v1

    return v0

    .line 2827
    :cond_4a
    iget-object v0, p0, Landroid/view/MotionEvent;->mEmbeddingScaleParameter:Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

    iget v0, v0, Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;->scale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_65

    .line 2828
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5, v3, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    .line 2830
    .local v0, "rawY":F
    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v1

    iget-object v2, p0, Landroid/view/MotionEvent;->mEmbeddingScaleParameter:Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

    invoke-interface {v1, v0, v2}, Lmiui/window/MiuiEmbeddingWindowStub;->adaptGetRawYForEmbeddingScaleIfNeeded(FLmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;)F

    move-result v1

    .line 2829
    return v1

    .line 2834
    .end local v0    # "rawY":F
    :cond_65
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5, v3, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public whitelist getRawY(I)F
    .registers 7
    .param p1, "pointerIndex"    # I

    .line 2930
    sget-boolean v0, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    .line 2931
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/GMSDownscaleStub;->getCompatInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 2932
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/GMSDownscaleStub;->getCompatInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 2933
    invoke-static {v3, v4, v2, p1, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v1

    mul-float/2addr v0, v1

    .line 2932
    return v0

    .line 2937
    :cond_23
    iget-object v0, p0, Landroid/view/MotionEvent;->freeformProperties:Landroid/view/MotionEvent$FreeformProperties;

    if-eqz v0, :cond_49

    invoke-static {v0}, Landroid/view/MotionEvent$FreeformProperties;->-$$Nest$fgetfreeformScaleIntercepted(Landroid/view/MotionEvent$FreeformProperties;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2938
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v2, p1, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    iget-object v1, p0, Landroid/view/MotionEvent;->freeformProperties:Landroid/view/MotionEvent$FreeformProperties;

    invoke-static {v1}, Landroid/view/MotionEvent$FreeformProperties;->-$$Nest$fgettopLeftY(Landroid/view/MotionEvent$FreeformProperties;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Landroid/view/MotionEvent;->freeformProperties:Landroid/view/MotionEvent$FreeformProperties;

    invoke-static {v1}, Landroid/view/MotionEvent$FreeformProperties;->-$$Nest$fgetfreeFormScale(Landroid/view/MotionEvent$FreeformProperties;)F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Landroid/view/MotionEvent;->freeformProperties:Landroid/view/MotionEvent$FreeformProperties;

    invoke-static {v1}, Landroid/view/MotionEvent$FreeformProperties;->-$$Nest$fgettopLeftY(Landroid/view/MotionEvent$FreeformProperties;)F

    move-result v1

    add-float/2addr v0, v1

    return v0

    .line 2942
    :cond_49
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v2, p1, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public blacklist getScale()F
    .registers 3

    .line 2117
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetScale(J)F

    move-result v0

    return v0
.end method

.method public final whitelist getSize()F
    .registers 6

    .line 2356
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getSize(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 2548
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getSource()I
    .registers 3

    .line 2136
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v0

    return v0
.end method

.method public blacklist getSurfaceRotation()I
    .registers 3

    .line 4022
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetSurfaceRotation(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getToolMajor()F
    .registers 6

    .line 2386
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getToolMajor(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 2592
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getToolMinor()F
    .registers 6

    .line 2396
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getToolMinor(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 2608
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getToolType(I)I
    .registers 4
    .param p1, "pointerIndex"    # I

    .line 2457
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetToolType(JI)I

    move-result v0

    return v0
.end method

.method public final whitelist getTouchMajor()F
    .registers 6

    .line 2366
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getTouchMajor(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 2562
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getTouchMinor()F
    .registers 6

    .line 2376
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getTouchMinor(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 2576
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getX()F
    .registers 5

    .line 2323
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getX(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 2491
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public blacklist getXCursorPosition()F
    .registers 3

    .line 2977
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetXCursorPosition(J)F

    move-result v0

    return v0
.end method

.method public final whitelist getXPrecision()F
    .registers 3

    .line 2954
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v0

    return v0
.end method

.method public final whitelist getY()F
    .registers 6

    .line 2336
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getY(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 2513
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public blacklist getYCursorPosition()F
    .registers 3

    .line 2988
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetYCursorPosition(J)F

    move-result v0

    return v0
.end method

.method public final whitelist getYPrecision()F
    .registers 3

    .line 2966
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v0

    return v0
.end method

.method public final whitelist isButtonPressed(I)Z
    .registers 4
    .param p1, "button"    # I

    .line 4003
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 4004
    return v0

    .line 4006
    :cond_4
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public final greylist-max-o isHoverExitPending()Z
    .registers 3

    .line 2250
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2251
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public final greylist-max-o isTainted()Z
    .registers 3

    .line 2223
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2224
    .local v0, "flags":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public greylist-max-o isTargetAccessibilityFocus()Z
    .registers 3

    .line 2236
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2237
    .local v0, "flags":I
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public final greylist-max-o isTouchEvent()Z
    .registers 3

    .line 2208
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeIsTouchEvent(J)Z

    move-result v0

    return v0
.end method

.method public final greylist-max-o isWithinBoundsNoHistory(FFFF)Z
    .registers 14
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 3614
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    .line 3615
    .local v0, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/4 v2, 0x1

    if-ge v1, v0, :cond_2e

    .line 3616
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    invoke-static {v3, v4, v5, v1, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v3

    .line 3617
    .local v3, "x":F
    iget-wide v7, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v7, v8, v2, v1, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v2

    .line 3618
    .local v2, "y":F
    cmpg-float v4, v3, p1

    if-ltz v4, :cond_2d

    cmpl-float v4, v3, p3

    if-gtz v4, :cond_2d

    cmpg-float v4, v2, p2

    if-ltz v4, :cond_2d

    cmpl-float v4, v2, p4

    if-lez v4, :cond_2a

    goto :goto_2d

    .line 3615
    .end local v2    # "y":F
    .end local v3    # "x":F
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3619
    .restart local v2    # "y":F
    .restart local v3    # "x":F
    :cond_2d
    :goto_2d
    return v5

    .line 3622
    .end local v1    # "i":I
    .end local v2    # "y":F
    .end local v3    # "x":F
    :cond_2e
    return v2
.end method

.method public final whitelist offsetLocation(FF)V
    .registers 5
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 3453
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_9

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_e

    .line 3454
    :cond_9
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeOffsetLocation(JFF)V

    .line 3456
    :cond_e
    return-void
.end method

.method public final whitelist recycle()V
    .registers 4

    .line 2085
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    .line 2087
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2088
    :try_start_6
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_16

    .line 2089
    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 2090
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    iput-object v1, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 2091
    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 2093
    :cond_16
    monitor-exit v0

    .line 2094
    return-void

    .line 2093
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public final greylist scale(F)V
    .registers 4
    .param p1, "scale"    # F

    .line 2109
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 2110
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeScale(JF)V

    .line 2112
    :cond_b
    return-void
.end method

.method public final whitelist setAction(I)V
    .registers 4
    .param p1, "action"    # I

    .line 3444
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetAction(JI)V

    .line 3445
    return-void
.end method

.method public final greylist setActionButton(I)V
    .registers 4
    .param p1, "button"    # I

    .line 2750
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetActionButton(JI)V

    .line 2751
    return-void
.end method

.method public final blacklist setButtonState(I)V
    .registers 4
    .param p1, "buttonState"    # I

    .line 2714
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetButtonState(JI)V

    .line 2715
    return-void
.end method

.method public blacklist setDisplayId(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 2159
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetDisplayId(JI)V

    .line 2160
    return-void
.end method

.method public final greylist setDownTime(J)V
    .registers 7
    .param p1, "downTime"    # J

    .line 2278
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetDownTimeNanos(JJ)V

    .line 2279
    return-void
.end method

.method public final whitelist setEdgeFlags(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 3437
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetEdgeFlags(JI)V

    .line 3438
    return-void
.end method

.method public greylist-max-o setHoverExitPending(Z)V
    .registers 6
    .param p1, "hoverExitPending"    # Z

    .line 2256
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2257
    .local v0, "flags":I
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_b

    .line 2258
    or-int/lit8 v3, v0, 0x4

    goto :goto_d

    .line 2259
    :cond_b
    and-int/lit8 v3, v0, -0x5

    .line 2257
    :goto_d
    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    .line 2260
    return-void
.end method

.method public final whitelist setLocation(FF)V
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3466
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3467
    .local v0, "oldX":F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 3468
    .local v1, "oldY":F
    sub-float v2, p1, v0

    sub-float v3, p2, v1

    invoke-virtual {p0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3469
    return-void
.end method

.method public final whitelist setSource(I)V
    .registers 4
    .param p1, "source"    # I

    .line 2142
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 2143
    return-void

    .line 2145
    :cond_7
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetSource(JI)V

    .line 2146
    invoke-direct {p0}, Landroid/view/MotionEvent;->updateCursorPosition()V

    .line 2147
    return-void
.end method

.method public final greylist-max-o setTainted(Z)V
    .registers 6
    .param p1, "tainted"    # Z

    .line 2230
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2231
    .local v0, "flags":I
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_c

    const/high16 v3, -0x80000000

    or-int/2addr v3, v0

    goto :goto_10

    :cond_c
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    :goto_10
    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    .line 2232
    return-void
.end method

.method public greylist-max-o setTargetAccessibilityFocus(Z)V
    .registers 6
    .param p1, "targetsFocus"    # Z

    .line 2242
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2243
    .local v0, "flags":I
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_c

    .line 2244
    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v3, v0

    goto :goto_10

    .line 2245
    :cond_c
    const v3, -0x40000001    # -1.9999999f

    and-int/2addr v3, v0

    .line 2243
    :goto_10
    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    .line 2246
    return-void
.end method

.method public final greylist split(I)Landroid/view/MotionEvent;
    .registers 43
    .param p1, "idBits"    # I

    .line 3687
    move-object/from16 v1, p0

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v15

    .line 3688
    .local v15, "ev":Landroid/view/MotionEvent;
    sget-object v23, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v23

    .line 3689
    :try_start_9
    iget-wide v2, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    .line 3690
    .local v0, "oldPointerCount":I
    invoke-static {v0}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3691
    sget-object v2, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v24, v2

    .line 3692
    .local v24, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v2, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v25, v2

    .line 3693
    .local v25, "pc":[Landroid/view/MotionEvent$PointerCoords;
    sget-object v2, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    move-object/from16 v26, v2

    .line 3695
    .local v26, "map":[I
    iget-wide v2, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v2
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_173

    move v14, v2

    .line 3696
    .local v14, "oldAction":I
    and-int/lit16 v13, v14, 0xff

    .line 3697
    .local v13, "oldActionMasked":I
    const v2, 0xff00

    and-int/2addr v2, v14

    shr-int/lit8 v12, v2, 0x8

    .line 3699
    .local v12, "oldActionPointerIndex":I
    const/4 v2, -0x1

    .line 3700
    .local v2, "newActionPointerIndex":I
    const/4 v3, 0x0

    .line 3701
    .local v3, "newPointerCount":I
    const/4 v4, 0x0

    move/from16 v27, v2

    move v11, v3

    .end local v2    # "newActionPointerIndex":I
    .end local v3    # "newPointerCount":I
    .local v4, "i":I
    .local v11, "newPointerCount":I
    .local v27, "newActionPointerIndex":I
    :goto_33
    const/4 v2, 0x1

    if-ge v4, v0, :cond_55

    .line 3702
    :try_start_36
    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v3, v24, v11

    invoke-static {v5, v6, v4, v3}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3703
    aget-object v3, v24, v11

    iget v3, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int/2addr v2, v3

    .line 3704
    .local v2, "idBit":I
    and-int v3, v2, p1

    if-eqz v3, :cond_4e

    .line 3705
    if-ne v4, v12, :cond_4a

    .line 3706
    move/from16 v27, v11

    .line 3708
    :cond_4a
    aput v4, v26, v11

    .line 3709
    add-int/lit8 v11, v11, 0x1

    .line 3701
    .end local v2    # "idBit":I
    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 3761
    .end local v0    # "oldPointerCount":I
    .end local v4    # "i":I
    .end local v11    # "newPointerCount":I
    .end local v12    # "oldActionPointerIndex":I
    .end local v13    # "oldActionMasked":I
    .end local v14    # "oldAction":I
    .end local v24    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v25    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v26    # "map":[I
    .end local v27    # "newActionPointerIndex":I
    :catchall_51
    move-exception v0

    move-object v1, v15

    goto/16 :goto_175

    .line 3713
    .restart local v0    # "oldPointerCount":I
    .restart local v11    # "newPointerCount":I
    .restart local v12    # "oldActionPointerIndex":I
    .restart local v13    # "oldActionMasked":I
    .restart local v14    # "oldAction":I
    .restart local v24    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .restart local v25    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v26    # "map":[I
    .restart local v27    # "newActionPointerIndex":I
    :cond_55
    if-eqz v11, :cond_162

    .line 3718
    const/4 v3, 0x5

    if-eq v13, v3, :cond_62

    const/4 v4, 0x6

    if-ne v13, v4, :cond_5e

    goto :goto_62

    .line 3734
    :cond_5e
    move v2, v14

    move/from16 v28, v2

    .local v2, "newAction":I
    goto :goto_80

    .line 3719
    .end local v2    # "newAction":I
    :cond_62
    :goto_62
    if-gez v27, :cond_68

    .line 3721
    const/4 v2, 0x2

    move/from16 v28, v2

    .restart local v2    # "newAction":I
    goto :goto_80

    .line 3722
    .end local v2    # "newAction":I
    :cond_68
    if-ne v11, v2, :cond_7b

    .line 3724
    if-ne v13, v3, :cond_6e

    .line 3725
    const/4 v2, 0x0

    goto :goto_78

    .line 3726
    :cond_6e
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v3
    :try_end_72
    .catchall {:try_start_36 .. :try_end_72} :catchall_51

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_77

    goto :goto_78

    :cond_77
    const/4 v2, 0x3

    :goto_78
    move/from16 v28, v2

    .restart local v2    # "newAction":I
    goto :goto_80

    .line 3729
    .end local v2    # "newAction":I
    :cond_7b
    shl-int/lit8 v2, v27, 0x8

    or-int/2addr v2, v13

    move/from16 v28, v2

    .line 3737
    .local v28, "newAction":I
    :goto_80
    :try_start_80
    iget-wide v2, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v2
    :try_end_86
    .catchall {:try_start_80 .. :try_end_86} :catchall_173

    move v10, v2

    .line 3738
    .local v10, "historySize":I
    const/4 v2, 0x0

    move v9, v2

    .local v9, "h":I
    :goto_89
    if-gt v9, v10, :cond_153

    .line 3739
    if-ne v9, v10, :cond_90

    const/high16 v2, -0x80000000

    goto :goto_91

    :cond_90
    move v2, v9

    :goto_91
    move v8, v2

    .line 3741
    .local v8, "historyPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_93
    if-ge v2, v11, :cond_a1

    .line 3742
    :try_start_95
    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    aget v5, v26, v2

    aget-object v6, v25, v2

    invoke-static {v3, v4, v5, v8, v6}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V
    :try_end_9e
    .catchall {:try_start_95 .. :try_end_9e} :catchall_51

    .line 3741
    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    .line 3745
    .end local v2    # "i":I
    :cond_a1
    :try_start_a1
    iget-wide v2, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3, v8}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v18

    .line 3746
    .local v18, "eventTimeNanos":J
    if-nez v9, :cond_129

    .line 3747
    iget-wide v2, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v3

    iget-wide v4, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v4

    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3748
    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v5

    iget-wide v6, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3749
    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v7

    move/from16 v17, v8

    move/from16 v16, v9

    .end local v8    # "historyPos":I
    .end local v9    # "h":I
    .local v16, "h":I
    .local v17, "historyPos":I
    iget-wide v8, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3750
    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v8

    move/from16 v20, v10

    .end local v10    # "historySize":I
    .local v20, "historySize":I
    iget-wide v9, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v9, v10}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v9

    move/from16 v21, v11

    .end local v11    # "newPointerCount":I
    .local v21, "newPointerCount":I
    iget-wide v10, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3751
    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v10

    move/from16 v22, v12

    .end local v12    # "oldActionPointerIndex":I
    .local v22, "oldActionPointerIndex":I
    iget-wide v11, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v11, v12}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v11

    move/from16 v29, v13

    .end local v13    # "oldActionMasked":I
    .local v29, "oldActionMasked":I
    iget-wide v12, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3752
    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetXOffset(J)F

    move-result v12

    move/from16 v30, v14

    .end local v14    # "oldAction":I
    .local v30, "oldAction":I
    iget-wide v13, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v13, v14}, Landroid/view/MotionEvent;->nativeGetYOffset(J)F

    move-result v13

    move/from16 v31, v13

    iget-wide v13, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3753
    invoke-static {v13, v14}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v14

    move/from16 v32, v14

    iget-wide v13, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v13, v14}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v33

    iget-wide v13, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3754
    invoke-static {v13, v14}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v34
    :try_end_109
    .catchall {:try_start_a1 .. :try_end_109} :catchall_173

    .line 3747
    move-object v2, v15

    move/from16 v6, v28

    move/from16 v36, v17

    .end local v17    # "historyPos":I
    .local v36, "historyPos":I
    move/from16 v37, v16

    .end local v16    # "h":I
    .local v37, "h":I
    move/from16 v38, v20

    .end local v20    # "historySize":I
    .local v38, "historySize":I
    move/from16 v39, v21

    .end local v21    # "newPointerCount":I
    .local v39, "newPointerCount":I
    move/from16 v40, v22

    .end local v22    # "oldActionPointerIndex":I
    .local v40, "oldActionPointerIndex":I
    move/from16 v13, v31

    move/from16 v14, v32

    move-object v1, v15

    .end local v15    # "ev":Landroid/view/MotionEvent;
    .local v1, "ev":Landroid/view/MotionEvent;
    move/from16 v15, v33

    move-wide/from16 v16, v34

    move/from16 v20, v39

    move-object/from16 v21, v24

    move-object/from16 v22, v25

    :try_start_125
    invoke-direct/range {v2 .. v22}, Landroid/view/MotionEvent;->initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z

    goto :goto_142

    .line 3757
    .end local v1    # "ev":Landroid/view/MotionEvent;
    .end local v29    # "oldActionMasked":I
    .end local v30    # "oldAction":I
    .end local v36    # "historyPos":I
    .end local v37    # "h":I
    .end local v38    # "historySize":I
    .end local v39    # "newPointerCount":I
    .end local v40    # "oldActionPointerIndex":I
    .restart local v8    # "historyPos":I
    .restart local v9    # "h":I
    .restart local v10    # "historySize":I
    .restart local v11    # "newPointerCount":I
    .restart local v12    # "oldActionPointerIndex":I
    .restart local v13    # "oldActionMasked":I
    .restart local v14    # "oldAction":I
    .restart local v15    # "ev":Landroid/view/MotionEvent;
    :cond_129
    move/from16 v36, v8

    move/from16 v37, v9

    move/from16 v38, v10

    move/from16 v39, v11

    move/from16 v40, v12

    move/from16 v29, v13

    move/from16 v30, v14

    move-object v1, v15

    .end local v8    # "historyPos":I
    .end local v9    # "h":I
    .end local v10    # "historySize":I
    .end local v11    # "newPointerCount":I
    .end local v12    # "oldActionPointerIndex":I
    .end local v13    # "oldActionMasked":I
    .end local v14    # "oldAction":I
    .end local v15    # "ev":Landroid/view/MotionEvent;
    .restart local v1    # "ev":Landroid/view/MotionEvent;
    .restart local v29    # "oldActionMasked":I
    .restart local v30    # "oldAction":I
    .restart local v36    # "historyPos":I
    .restart local v37    # "h":I
    .restart local v38    # "historySize":I
    .restart local v39    # "newPointerCount":I
    .restart local v40    # "oldActionPointerIndex":I
    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v8, 0x0

    move-wide/from16 v5, v18

    move-object/from16 v7, v25

    invoke-static/range {v3 .. v8}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3738
    .end local v18    # "eventTimeNanos":J
    .end local v36    # "historyPos":I
    :goto_142
    add-int/lit8 v9, v37, 0x1

    move-object v15, v1

    move/from16 v13, v29

    move/from16 v14, v30

    move/from16 v10, v38

    move/from16 v11, v39

    move/from16 v12, v40

    move-object/from16 v1, p0

    .end local v37    # "h":I
    .restart local v9    # "h":I
    goto/16 :goto_89

    .end local v1    # "ev":Landroid/view/MotionEvent;
    .end local v29    # "oldActionMasked":I
    .end local v30    # "oldAction":I
    .end local v38    # "historySize":I
    .end local v39    # "newPointerCount":I
    .end local v40    # "oldActionPointerIndex":I
    .restart local v10    # "historySize":I
    .restart local v11    # "newPointerCount":I
    .restart local v12    # "oldActionPointerIndex":I
    .restart local v13    # "oldActionMasked":I
    .restart local v14    # "oldAction":I
    .restart local v15    # "ev":Landroid/view/MotionEvent;
    :cond_153
    move/from16 v37, v9

    move/from16 v38, v10

    move/from16 v39, v11

    move/from16 v40, v12

    move/from16 v29, v13

    move/from16 v30, v14

    move-object v1, v15

    .line 3760
    .end local v9    # "h":I
    .end local v10    # "historySize":I
    .end local v11    # "newPointerCount":I
    .end local v12    # "oldActionPointerIndex":I
    .end local v13    # "oldActionMasked":I
    .end local v14    # "oldAction":I
    .end local v15    # "ev":Landroid/view/MotionEvent;
    .restart local v1    # "ev":Landroid/view/MotionEvent;
    .restart local v29    # "oldActionMasked":I
    .restart local v30    # "oldAction":I
    .restart local v38    # "historySize":I
    .restart local v39    # "newPointerCount":I
    .restart local v40    # "oldActionPointerIndex":I
    monitor-exit v23

    return-object v1

    .line 3714
    .end local v1    # "ev":Landroid/view/MotionEvent;
    .end local v28    # "newAction":I
    .end local v29    # "oldActionMasked":I
    .end local v30    # "oldAction":I
    .end local v38    # "historySize":I
    .end local v39    # "newPointerCount":I
    .end local v40    # "oldActionPointerIndex":I
    .restart local v11    # "newPointerCount":I
    .restart local v12    # "oldActionPointerIndex":I
    .restart local v13    # "oldActionMasked":I
    .restart local v14    # "oldAction":I
    .restart local v15    # "ev":Landroid/view/MotionEvent;
    :cond_162
    move/from16 v39, v11

    move/from16 v40, v12

    move/from16 v29, v13

    move/from16 v30, v14

    move-object v1, v15

    .end local v11    # "newPointerCount":I
    .end local v12    # "oldActionPointerIndex":I
    .end local v13    # "oldActionMasked":I
    .end local v14    # "oldAction":I
    .end local v15    # "ev":Landroid/view/MotionEvent;
    .restart local v1    # "ev":Landroid/view/MotionEvent;
    .restart local v29    # "oldActionMasked":I
    .restart local v30    # "oldAction":I
    .restart local v39    # "newPointerCount":I
    .restart local v40    # "oldActionPointerIndex":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "idBits did not match any ids in the event"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ev":Landroid/view/MotionEvent;
    .end local p0    # "this":Landroid/view/MotionEvent;
    .end local p1    # "idBits":I
    throw v2

    .line 3761
    .end local v0    # "oldPointerCount":I
    .end local v24    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v25    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v26    # "map":[I
    .end local v27    # "newActionPointerIndex":I
    .end local v29    # "oldActionMasked":I
    .end local v30    # "oldAction":I
    .end local v39    # "newPointerCount":I
    .end local v40    # "oldActionPointerIndex":I
    .restart local v15    # "ev":Landroid/view/MotionEvent;
    .restart local p0    # "this":Landroid/view/MotionEvent;
    .restart local p1    # "idBits":I
    :catchall_173
    move-exception v0

    move-object v1, v15

    .end local v15    # "ev":Landroid/view/MotionEvent;
    .restart local v1    # "ev":Landroid/view/MotionEvent;
    :goto_175
    monitor-exit v23
    :try_end_176
    .catchall {:try_start_125 .. :try_end_176} :catchall_177

    throw v0

    :catchall_177
    move-exception v0

    goto :goto_175
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 11

    .line 3798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3799
    .local v0, "msg":Ljava/lang/StringBuilder;
    const-string v1, "MotionEvent { action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3800
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v1

    invoke-static {v1}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    const-string v3, ", actionButton="

    invoke-static {v2, v0, v3, v1}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3802
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 3803
    .local v1, "pointerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    const/4 v4, 0x1

    if-ge v3, v1, :cond_ad

    .line 3804
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", id["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v0, v6, v8}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3805
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 3806
    .local v5, "x":F
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 3808
    .local v6, "y":F
    const-string v8, ", x["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3809
    const-string v8, ", y["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3811
    sget-object v8, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", toolType["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3812
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    invoke-static {v8}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v8

    .line 3811
    invoke-static {v4, v0, v7, v8}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3803
    .end local v5    # "x":F
    .end local v6    # "y":F
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2a

    .line 3815
    .end local v3    # "i":I
    :cond_ad
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    invoke-static {v3}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ", buttonState="

    invoke-static {v2, v0, v5, v3}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3816
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/view/MotionEvent;->classificationToString(I)Ljava/lang/String;

    move-result-object v5

    .line 3817
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getClassification()I

    move-result v6

    invoke-static {v6}, Landroid/view/MotionEvent;->classificationToString(I)Ljava/lang/String;

    move-result-object v6

    .line 3816
    const-string v7, ", classification="

    invoke-static {v5, v0, v7, v6}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3818
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ", metaState="

    invoke-static {v2, v0, v6, v5}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3819
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ", flags=0x"

    invoke-static {v2, v0, v6, v5}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3820
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ", edgeFlags=0x"

    invoke-static {v2, v0, v6, v5}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3821
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ", pointerCount="

    invoke-static {v2, v0, v5, v4}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3822
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ", historySize="

    invoke-static {v2, v0, v4, v3}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3823
    const-string v2, ", eventTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3825
    const-string v2, ", downTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3826
    const-string v2, ", deviceId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3827
    const-string v2, ", source=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3828
    const-string v2, ", displayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3829
    const-string v2, ", eventId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3831
    const-string v2, " }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3832
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final whitelist transform(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 3477
    if-eqz p1, :cond_8

    .line 3481
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeTransform(JLandroid/graphics/Matrix;)V

    .line 3482
    return-void

    .line 3478
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "matrix must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 4092
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4093
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 4094
    return-void
.end method
