.class public Lmiui/util/HapticFeedbackUtil;
.super Ljava/lang/Object;
.source "HapticFeedbackUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/HapticFeedbackUtil$SettingsObserver;
    }
.end annotation


# static fields
.field private static final blacklist CUR_VERSION:D = 1.2

.field public static final whitelist EFFECT_KEY_ALERT:Ljava/lang/String; = "alert"

.field public static final whitelist EFFECT_KEY_BOUNDARY_SPATIAL:Ljava/lang/String; = "boundary_spatial"

.field public static final whitelist EFFECT_KEY_BOUNDARY_TIME:Ljava/lang/String; = "boundary_time"

.field public static final whitelist EFFECT_KEY_BUTTON_LARGE:Ljava/lang/String; = "button_large"

.field public static final whitelist EFFECT_KEY_BUTTON_MIDDLE:Ljava/lang/String; = "button_middle"

.field public static final whitelist EFFECT_KEY_BUTTON_SMALL:Ljava/lang/String; = "button_small"

.field public static final whitelist EFFECT_KEY_CALCULATOR:Ljava/lang/String; = "calculator"

.field public static final whitelist EFFECT_KEY_CLOCK_PICKER:Ljava/lang/String; = "clock_picker"

.field public static final whitelist EFFECT_KEY_CLOCK_SECOND:Ljava/lang/String; = "clock_second"

.field public static final whitelist EFFECT_KEY_COMPASS_CALIBRATION:Ljava/lang/String; = "compass_calibration"

.field public static final whitelist EFFECT_KEY_COMPASS_NORTH:Ljava/lang/String; = "compass_north"

.field public static final whitelist EFFECT_KEY_FLICK:Ljava/lang/String; = "flick"

.field public static final whitelist EFFECT_KEY_FLICK_LIGHT:Ljava/lang/String; = "flick_light"

.field public static final whitelist EFFECT_KEY_GEAR_HEAVY:Ljava/lang/String; = "gear_heavy"

.field public static final whitelist EFFECT_KEY_GEAR_LIGHT:Ljava/lang/String; = "gear_light"

.field public static final whitelist EFFECT_KEY_HOLD:Ljava/lang/String; = "hold"

.field public static final whitelist EFFECT_KEY_HOME_DROP_FINISH:Ljava/lang/String; = "home_drop_finish"

.field public static final whitelist EFFECT_KEY_HOME_PICKUP_START:Ljava/lang/String; = "home_pickup_start"

.field public static final whitelist EFFECT_KEY_KEYBOARD:Ljava/lang/String; = "keyboard"

.field public static final whitelist EFFECT_KEY_LONG_PRESS:Ljava/lang/String; = "long_press"

.field public static final whitelist EFFECT_KEY_MESH_HEAVY:Ljava/lang/String; = "mesh_heavy"

.field public static final whitelist EFFECT_KEY_MESH_LIGHT:Ljava/lang/String; = "mesh_light"

.field public static final whitelist EFFECT_KEY_MESH_NORMAL:Ljava/lang/String; = "mesh_normal"

.field public static final whitelist EFFECT_KEY_PICKUP:Ljava/lang/String; = "pickup"

.field public static final whitelist EFFECT_KEY_POPUP_LIGHT:Ljava/lang/String; = "popup_light"

.field public static final whitelist EFFECT_KEY_POPUP_NORMAL:Ljava/lang/String; = "popup_normal"

.field public static final whitelist EFFECT_KEY_RECORDER_DELETE:Ljava/lang/String; = "recorder_delete"

.field public static final whitelist EFFECT_KEY_RECORDER_FINISH:Ljava/lang/String; = "recorder_finish"

.field public static final whitelist EFFECT_KEY_RECORDER_LIST:Ljava/lang/String; = "recorder_list"

.field public static final whitelist EFFECT_KEY_RECORDER_PAUSE:Ljava/lang/String; = "recorder_pause"

.field public static final whitelist EFFECT_KEY_RECORDER_PLAY:Ljava/lang/String; = "recorder_play"

.field public static final whitelist EFFECT_KEY_RECORDER_RECORD:Ljava/lang/String; = "recorder_record"

.field public static final whitelist EFFECT_KEY_RECORDER_RECORD_PAUSE:Ljava/lang/String; = "recorder_record_pause"

.field public static final whitelist EFFECT_KEY_RECORDER_REWIND:Ljava/lang/String; = "recorder_rewind"

.field public static final whitelist EFFECT_KEY_RECORDER_SLIDER:Ljava/lang/String; = "recorder_slider"

.field public static final whitelist EFFECT_KEY_RECORDER_STOP:Ljava/lang/String; = "recorder_stop"

.field public static final whitelist EFFECT_KEY_SCREEN_BUTTON_RECENT_TASK:Ljava/lang/String; = "screen_button_recent_task"

.field public static final whitelist EFFECT_KEY_SCREEN_BUTTON_VOICE_ASSIST:Ljava/lang/String; = "screen_button_voice_assist"

.field public static final whitelist EFFECT_KEY_SCROLL_EDGE:Ljava/lang/String; = "scroll_edge"

.field public static final whitelist EFFECT_KEY_SWITCH:Ljava/lang/String; = "switch"

.field public static final whitelist EFFECT_KEY_TAP_LIGHT:Ljava/lang/String; = "tap_light"

.field public static final whitelist EFFECT_KEY_TAP_NORMAL:Ljava/lang/String; = "tap_normal"

.field public static final whitelist EFFECT_KEY_TORCH_OFF:Ljava/lang/String; = "torch_off"

.field public static final whitelist EFFECT_KEY_TORCH_ON:Ljava/lang/String; = "torch_on"

.field public static final whitelist EFFECT_KEY_TRIGGER_DRAWER:Ljava/lang/String; = "trigger_drawer"

.field public static final whitelist EFFECT_KEY_VIRTUAL_KEY_DOWN:Ljava/lang/String; = "virtual_key_down"

.field public static final whitelist EFFECT_KEY_VIRTUAL_KEY_LONGPRESS:Ljava/lang/String; = "virtual_key_longpress"

.field public static final whitelist EFFECT_KEY_VIRTUAL_KEY_TAP:Ljava/lang/String; = "virtual_key_tap"

.field public static final whitelist EFFECT_KEY_VIRTUAL_KEY_UP:Ljava/lang/String; = "virtual_key_up"

.field public static final whitelist EFFECT_KEY_ZAXIS_SWITCH:Ljava/lang/String; = "zaxis_switch"

.field private static final blacklist EFFECT_STRENGTH_DEFAULT:I = -0x64

.field private static final blacklist EFFECT_STRENGTH_STRONG:I = 0x2

.field private static final blacklist ID_TO_KEY:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist IS_IMMERSION_ENABLED:Z = false

.field private static final blacklist KEY_VIBRATE_EX_ENABLED:Ljava/lang/String; = "ro.haptic.vibrate_ex.enabled"

.field private static final blacklist LEVEL_FACTOR:[F

.field private static final blacklist LEVEL_SUFFIX:[Ljava/lang/String;

.field private static final blacklist OVERLAY_HAPTIC_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final blacklist PROPERTY_KEY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PROPERTY_MOTOR_KEY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "HapticFeedbackUtil"

.field private static final blacklist VIRTUAL_RELEASED:I = 0x2

.field private static final blacklist sPatternId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sPatterns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mIsSupportLinearMotorVibrate:Z

.field private blacklist mIsSupportZLinearMotorVibrate:Z

.field private blacklist mLevel:I

.field private blacklist mSettingsObserver:Lmiui/util/HapticFeedbackUtil$SettingsObserver;

.field private blacklist mVibrator:Landroid/os/Vibrator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lmiui/util/HapticFeedbackUtil;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 25

    .line 43
    const-string v0, ".weak"

    const-string v1, ".normal"

    const-string v2, ".strong"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->LEVEL_SUFFIX:[Ljava/lang/String;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_26c

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->LEVEL_FACTOR:[F

    .line 51
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 52
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->OVERLAY_HAPTIC_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    .line 118
    const/4 v1, 0x1

    const-string v2, "virtual_key_down"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    const/4 v1, 0x0

    const-string v3, "virtual_key_longpress"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    const/4 v1, 0x3

    const-string v4, "virtual_key_tap"

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    const/4 v1, 0x2

    const-string v5, "virtual_key_up"

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    const/high16 v1, 0x10000000

    const-string v5, "tap_normal"

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    const v1, 0x10000001

    const-string v6, "tap_light"

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    const v1, 0x10000002

    const-string v7, "flick"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    const v1, 0x1000000d

    const-string v8, "flick_light"

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    const v1, 0x10000003

    const-string v9, "switch"

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    const v1, 0x10000004

    const-string v10, "mesh_heavy"

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    const v1, 0x10000005

    const-string v11, "mesh_normal"

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    const v1, 0x10000006

    const-string v12, "mesh_light"

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    const v1, 0x10000007

    const-string v13, "long_press"

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    const v1, 0x10000008

    const-string v14, "popup_normal"

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    const v1, 0x10000009

    const-string v15, "popup_light"

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    const v1, 0x1000000a

    move-object/from16 v16, v15

    const-string v15, "pickup"

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    const v1, 0x1000000b

    move-object/from16 v17, v14

    const-string v14, "scroll_edge"

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    const v1, 0x1000000c

    move-object/from16 v18, v14

    const-string v14, "trigger_drawer"

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    const v1, 0x1000000e

    move-object/from16 v19, v14

    const-string v14, "hold"

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    const v1, 0x1000000f

    move-object/from16 v20, v14

    const-string v14, "boundary_spatial"

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    const v1, 0x10000010

    move-object/from16 v21, v14

    const-string v14, "boundary_time"

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    const v1, 0x10000011

    move-object/from16 v22, v14

    const-string v14, "button_large"

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    const v1, 0x10000012

    move-object/from16 v23, v14

    const-string v14, "button_middle"

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    const v1, 0x10000013

    move-object/from16 v24, v14

    const-string v14, "button_small"

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    const v1, 0x10000014

    const-string v14, "gear_light"

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    const v1, 0x10000015

    const-string v14, "gear_heavy"

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    const v1, 0x10000016

    const-string v14, "keyboard"

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    const v1, 0x10000017

    const-string v14, "alert"

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    const v1, 0x10000018

    const-string v14, "zaxis_switch"

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    .line 186
    const-string v1, "sys.haptic.down"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "sys.haptic.long.press"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "sys.haptic.tap.normal"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "virtual_key_up"

    const-string v14, "sys.haptic.up"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "sys.haptic.tap.normal"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "sys.haptic.tap.light"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "sys.haptic.flick"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v1, "sys.haptic.flick.light"

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "sys.haptic.switch"

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "sys.haptic.mesh.heavy"

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v1, "sys.haptic.mesh.normal"

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "sys.haptic.mesh.light"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v1, "sys.haptic.long.press"

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v1, "sys.haptic.pickup"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v1, "sys.haptic.scroll.edge"

    move-object/from16 v14, v18

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "sys.haptic.popup.normal"

    move-object/from16 v18, v15

    move-object/from16 v15, v17

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "sys.haptic.popup.light"

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "sys.haptic.trigger.drawer"

    move-object/from16 v16, v3

    move-object/from16 v3, v19

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "sys.haptic.hold"

    move-object/from16 v19, v4

    move-object/from16 v4, v20

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "sys.haptic.boundary_spatial"

    move-object/from16 v20, v2

    move-object/from16 v2, v21

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "sys.haptic.boundary_time"

    move-object/from16 v2, v22

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "sys.haptic.button_large"

    move-object/from16 v2, v23

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "sys.haptic.button_middle"

    move-object/from16 v2, v24

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "button_small"

    const-string v2, "sys.haptic.button_small"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, "gear_light"

    const-string v2, "sys.haptic.gear_light"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v1, "gear_heavy"

    const-string v2, "sys.haptic.gear_heavy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "keyboard"

    const-string v2, "sys.haptic.keyboard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "alert"

    const-string v2, "sys.haptic.alert"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "zaxis_switch"

    const-string v2, "sys.haptic.zaxis_switch"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    .line 222
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    const-string v1, "button_small"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v1, "gear_light"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    const-string v1, "gear_heavy"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    const-string v1, "keyboard"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v1, "alert"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    const-string v1, "zaxis_switch"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    return-void

    :array_26c
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
    .end array-data
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Z)V
    .registers 11
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "onceOnly"    # Z

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 156
    .local v0, "sr":Landroid/content/res/Resources;
    const-string v1, "config_longPressVibePattern"

    const-string v2, "array"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 157
    .local v1, "config_longPressVibePattern":I
    const-string v4, "config_virtualKeyVibePattern"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 158
    .local v4, "config_virtualKeyVibePattern":I
    const-string v5, "config_keyboardTapVibePattern"

    invoke-virtual {v0, v5, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 159
    .local v2, "config_keyboardTapVibePattern":I
    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "compass_north"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "home_pickup_start"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const v5, 0x110300be

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "recorder_delete"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v6, "recorder_finish"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v6, "recorder_list"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const v5, 0x110300bd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "recorder_pause"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v6, "recorder_play"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v6, "recorder_record"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v6, "recorder_record_pause"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const v6, 0x110300bf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "recorder_rewind"

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const v6, 0x110300c0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "recorder_slider"

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v6, "recorder_stop"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "screen_button_recent_task"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "screen_button_voice_assist"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const v5, 0x110300c1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "torch_off"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const v5, 0x110300c2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "torch_on"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "virtual_key_longpress"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "virtual_key_down"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "virtual_key_tap"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const v5, 0x110300c3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "virtual_key_up"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .end local v0    # "sr":Landroid/content/res/Resources;
    .end local v1    # "config_longPressVibePattern":I
    .end local v2    # "config_keyboardTapVibePattern":I
    .end local v4    # "config_virtualKeyVibePattern":I
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v0, :cond_dc

    .line 263
    const/4 v0, 0x1

    const-string v1, "ro.haptic.default_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_de

    .line 264
    :cond_dc
    sget v0, Landroid/provider/MiuiSettings$System;->HAPTIC_FEEDBACK_LEVEL_DEFAULT:I

    :goto_de
    iput v0, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportLinearMotorVibrate:Z

    .line 270
    iput-boolean v0, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportZLinearMotorVibrate:Z

    .line 273
    iput-object p1, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    .line 274
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    .line 275
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v0, :cond_f6

    .line 276
    return-void

    .line 278
    :cond_f6
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportLinearMotorVibrate:Z

    .line 279
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportZLinearMotorVibrate()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportZLinearMotorVibrate:Z

    .line 280
    iget-boolean v0, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportLinearMotorVibrate:Z

    if-eqz v0, :cond_107

    .line 281
    return-void

    .line 283
    :cond_107
    if-eqz p2, :cond_10d

    .line 284
    invoke-virtual {p0}, Lmiui/util/HapticFeedbackUtil;->updateSettings()V

    goto :goto_11c

    .line 286
    :cond_10d
    new-instance v0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lmiui/util/HapticFeedbackUtil$SettingsObserver;-><init>(Lmiui/util/HapticFeedbackUtil;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mSettingsObserver:Lmiui/util/HapticFeedbackUtil$SettingsObserver;

    .line 287
    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->observe()V

    .line 289
    :goto_11c
    return-void
.end method

.method public static whitelist getCurVersion()D
    .registers 2

    .line 40
    const-wide v0, 0x3ff3333333333333L    # 1.2

    return-wide v0
.end method

.method private blacklist getHapticFeedback(I)Landroid/os/VibrationEffect;
    .registers 7
    .param p1, "hapticFeedbackConstantId"    # I

    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, "vibrationEffect":Landroid/os/VibrationEffect;
    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->isSupportedEffect(I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 686
    sget-object v1, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 687
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 688
    invoke-direct {p0, v1}, Lmiui/util/HapticFeedbackUtil;->loadPattern(Ljava/lang/String;)[J

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :cond_1e
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 691
    .local v2, "pattern":[J
    if-eqz v2, :cond_32

    array-length v3, v2

    if-lez v3, :cond_32

    .line 692
    const/4 v3, 0x0

    aget-wide v3, v2, v3

    long-to-int v3, v3

    .line 693
    .local v3, "effectId":I
    invoke-static {v3}, Lmiui/util/VibrateUtils;->getVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 694
    .end local v3    # "effectId":I
    goto :goto_39

    .line 695
    :cond_32
    const-string v3, "HapticFeedbackUtil"

    const-string v4, "vibrate: null or empty pattern"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pattern":[J
    :cond_39
    :goto_39
    return-object v0
.end method

.method private blacklist getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 9
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "resid"    # I

    .line 502
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 503
    .local v0, "ar":[I
    if-nez v0, :cond_8

    .line 504
    const/4 v1, 0x0

    return-object v1

    .line 506
    :cond_8
    array-length v1, v0

    new-array v1, v1, [J

    .line 507
    .local v1, "out":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_1f

    .line 508
    aget v3, v0, v2

    int-to-float v3, v3

    sget-object v4, Lmiui/util/HapticFeedbackUtil;->LEVEL_FACTOR:[F

    iget v5, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    aget v4, v4, v5

    mul-float/2addr v3, v4

    float-to-long v3, v3

    aput-wide v3, v1, v2

    .line 507
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 510
    .end local v2    # "i":I
    :cond_1f
    return-object v1
.end method

.method private blacklist isHapticsDisable()Z
    .registers 2

    .line 401
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->isHapticFeedbackDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static whitelist isSupportLinearMotorVibrate()Z
    .registers 2

    .line 526
    const-string v0, "sys.haptic.motor"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "motorName":Ljava/lang/String;
    const-string v1, "linear"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static whitelist isSupportLinearMotorVibrate(I)Z
    .registers 5
    .param p0, "flag"    # I

    .line 536
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 537
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 538
    .local v0, "effectKey":Ljava/lang/String;
    sget-object v1, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 539
    sget-object v1, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 540
    .local v1, "propertyKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "effectValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 542
    const/4 v3, 0x1

    return v3

    .line 546
    .end local v0    # "effectKey":Ljava/lang/String;
    .end local v1    # "propertyKey":Ljava/lang/String;
    .end local v2    # "effectValue":Ljava/lang/String;
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isSupportMotorEffect(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 304
    iget-boolean v0, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportLinearMotorVibrate:Z

    if-eqz v0, :cond_14

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_MOTOR_KEY:Ljava/util/List;

    .line 305
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 304
    :goto_15
    return v0
.end method

.method private static blacklist isSupportZLinearMotorVibrate()Z
    .registers 2

    .line 531
    const-string v0, "sys.haptic.motor"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "motorName":Ljava/lang/String;
    const-string v1, "zlinear"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private blacklist loadPattern(Ljava/lang/String;)[J
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .line 479
    const/4 v0, 0x0

    .line 481
    .local v0, "result":[J
    sget-object v1, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 482
    .local v1, "propertyKey":Ljava/lang/String;
    if-eqz v1, :cond_34

    .line 483
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiui/util/HapticFeedbackUtil;->stringToLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 484
    if-nez v0, :cond_34

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->LEVEL_SUFFIX:[Ljava/lang/String;

    iget v4, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiui/util/HapticFeedbackUtil;->stringToLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 489
    :cond_34
    if-nez v0, :cond_5f

    sget-object v2, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 490
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 492
    .local v2, "id":I
    :try_start_48
    iget-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2}, Lmiui/util/ResourceMapperUtil;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v3
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_52} :catch_54

    move v2, v3

    .line 494
    goto :goto_55

    .line 493
    :catch_54
    move-exception v3

    .line 495
    :goto_55
    iget-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lmiui/util/HapticFeedbackUtil;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    .line 498
    .end local v2    # "id":I
    :cond_5f
    return-object v0
.end method

.method private blacklist stringToLongArray(Ljava/lang/String;)[J
    .registers 8
    .param p1, "pattern"    # Ljava/lang/String;

    .line 514
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 516
    :cond_8
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "splitStr":[Ljava/lang/String;
    array-length v1, v0

    .line 518
    .local v1, "los":I
    new-array v2, v1, [J

    .line 519
    .local v2, "returnByte":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v1, :cond_23

    .line 520
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 519
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 522
    .end local v3    # "i":I
    :cond_23
    return-object v2
.end method


# virtual methods
.method public whitelist convertToMiuiHapticFeedback(I)Landroid/os/VibrationEffect;
    .registers 3
    .param p1, "hapticFeedbackConstantId"    # I

    .line 674
    packed-switch p1, :pswitch_data_e

    .line 680
    const/4 v0, 0x0

    return-object v0

    .line 676
    :pswitch_5
    const v0, 0x10000005

    invoke-direct {p0, v0}, Lmiui/util/HapticFeedbackUtil;->getHapticFeedback(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method

.method public whitelist isSupportExtHapticFeedback(I)Z
    .registers 7
    .param p1, "effectId"    # I

    .line 702
    iget-boolean v0, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportLinearMotorVibrate:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 703
    :cond_6
    const/4 v0, 0x1

    new-array v2, v0, [I

    aput p1, v2, v1

    .line 704
    .local v2, "ids":[I
    iget-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3, v2}, Landroid/os/Vibrator;->areEffectsSupported([I)[I

    move-result-object v3

    .line 705
    .local v3, "support":[I
    aget v4, v3, v1

    if-ne v4, v0, :cond_16

    move v1, v0

    :cond_16
    return v1
.end method

.method public whitelist isSupportedEffect(I)Z
    .registers 3
    .param p1, "effectId"    # I

    .line 299
    const/4 v0, 0x3

    if-le p1, v0, :cond_14

    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    .line 300
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/util/HapticFeedbackUtil;->isSupportMotorEffect(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    .line 299
    :goto_15
    return v0
.end method

.method public whitelist performExtHapticFeedback(I)Z
    .registers 3
    .param p1, "effectId"    # I

    .line 554
    invoke-direct {p0}, Lmiui/util/HapticFeedbackUtil;->isHapticsDisable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(IZ)Z

    move-result v0

    return v0
.end method

.method public whitelist performExtHapticFeedback(IDLjava/lang/String;)Z
    .registers 11
    .param p1, "effectId"    # I
    .param p2, "suitIntensity"    # D
    .param p4, "reason"    # Ljava/lang/String;

    .line 646
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/os/VibrationAttributes;IDLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist performExtHapticFeedback(II)Z
    .registers 4
    .param p1, "audioAttributesUsage"    # I
    .param p2, "effectId"    # I

    .line 610
    invoke-direct {p0}, Lmiui/util/HapticFeedbackUtil;->isHapticsDisable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(IIZ)Z

    move-result v0

    return v0
.end method

.method public whitelist performExtHapticFeedback(IIZ)Z
    .registers 8
    .param p1, "audioAttributesUsage"    # I
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .line 564
    const/4 v0, 0x0

    if-nez p3, :cond_a

    invoke-direct {p0}, Lmiui/util/HapticFeedbackUtil;->isHapticsDisable()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 565
    return v0

    .line 567
    :cond_a
    invoke-virtual {p0, p2}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rtp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HapticFeedbackUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :try_start_28
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v1, p2, p1}, Lmiui/util/VibrateUtils;->vibrateExt(Landroid/os/Vibrator;II)Z

    move-result v0
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_2e} :catch_2f

    return v0

    .line 571
    :catch_2f
    move-exception v1

    .line 572
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "performExtHapticFeedback: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_35
    return v0
.end method

.method public whitelist performExtHapticFeedback(IZ)Z
    .registers 4
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .line 550
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/os/VibrationAttributes;IZ)Z

    move-result v0

    return v0
.end method

.method public whitelist performExtHapticFeedback(Landroid/net/Uri;)Z
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 642
    invoke-direct {p0}, Lmiui/util/HapticFeedbackUtil;->isHapticsDisable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist performExtHapticFeedback(Landroid/net/Uri;Z)Z
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "always"    # Z

    .line 625
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/os/VibrationAttributes;Landroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist performExtHapticFeedback(Landroid/os/VibrationAttributes;I)Z
    .registers 4
    .param p1, "attributes"    # Landroid/os/VibrationAttributes;
    .param p2, "effectId"    # I

    .line 621
    invoke-direct {p0}, Lmiui/util/HapticFeedbackUtil;->isHapticsDisable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/os/VibrationAttributes;IZ)Z

    move-result v0

    return v0
.end method

.method public whitelist performExtHapticFeedback(Landroid/os/VibrationAttributes;IDLjava/lang/String;)Z
    .registers 16
    .param p1, "attributes"    # Landroid/os/VibrationAttributes;
    .param p2, "effectId"    # I
    .param p3, "suitIntensity"    # D
    .param p5, "reason"    # Ljava/lang/String;

    .line 650
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 651
    return v1

    .line 653
    :cond_a
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    instance-of v0, v0, Landroid/os/SystemVibrator;

    const-string v2, "HapticFeedbackUtil"

    if-nez v0, :cond_18

    .line 654
    const-string v0, "vibrate is not SystemVibrator"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return v1

    .line 657
    :cond_18
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 658
    const-string v0, "reason is empty"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return v1

    .line 661
    :cond_24
    invoke-virtual {p0, p2}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-direct {p0}, Lmiui/util/HapticFeedbackUtil;->isHapticsDisable()Z

    move-result v0

    if-nez v0, :cond_60

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rtp:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :try_start_46
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    move-object v3, v0

    check-cast v3, Landroid/os/SystemVibrator;

    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    .line 665
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 664
    move v4, p2

    move-wide v5, p3

    move-object v8, p5

    move-object v9, p1

    invoke-static/range {v3 .. v9}, Lmiui/util/VibrateUtils;->vibrate(Landroid/os/SystemVibrator;IDLjava/lang/String;Ljava/lang/String;Landroid/os/VibrationAttributes;)Z

    move-result v0
    :try_end_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_59} :catch_5a

    return v0

    .line 666
    :catch_5a
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "performExtHapticFeedback: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_60
    return v1
.end method

.method public whitelist performExtHapticFeedback(Landroid/os/VibrationAttributes;IZ)Z
    .registers 8
    .param p1, "attributes"    # Landroid/os/VibrationAttributes;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .line 586
    const/4 v0, 0x0

    if-nez p3, :cond_a

    invoke-direct {p0}, Lmiui/util/HapticFeedbackUtil;->isHapticsDisable()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 587
    return v0

    .line 589
    :cond_a
    if-eqz p3, :cond_10

    if-nez p1, :cond_10

    .line 590
    sget-object p1, Lmiui/util/HapticFeedbackUtil;->OVERLAY_HAPTIC_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 592
    :cond_10
    invoke-virtual {p0, p2}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rtp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HapticFeedbackUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :try_start_2e
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v1, p2, p1}, Lmiui/util/VibrateUtils;->vibrateExt(Landroid/os/Vibrator;ILandroid/os/VibrationAttributes;)Z

    move-result v0
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_34} :catch_35

    return v0

    .line 596
    :catch_35
    move-exception v1

    .line 597
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "performExtHapticFeedback: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3b
    return v0
.end method

.method public whitelist performExtHapticFeedback(Landroid/os/VibrationAttributes;Landroid/net/Uri;Z)Z
    .registers 6
    .param p1, "attributes"    # Landroid/os/VibrationAttributes;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "always"    # Z

    .line 629
    const/4 v0, 0x0

    if-nez p3, :cond_a

    invoke-direct {p0}, Lmiui/util/HapticFeedbackUtil;->isHapticsDisable()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 630
    return v0

    .line 632
    :cond_a
    if-eqz p3, :cond_10

    if-nez p1, :cond_10

    .line 633
    sget-object p1, Lmiui/util/HapticFeedbackUtil;->OVERLAY_HAPTIC_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 635
    :cond_10
    iget-boolean v1, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportLinearMotorVibrate:Z

    if-eqz v1, :cond_1d

    .line 636
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, v1, p1}, Lmiui/util/VibrateUtils;->vibrateExt(Landroid/os/Vibrator;Landroid/net/Uri;Landroid/content/Context;Landroid/os/VibrationAttributes;)Z

    move-result v0

    return v0

    .line 638
    :cond_1d
    return v0
.end method

.method public whitelist performHapticFeedback(IDLjava/lang/String;)Z
    .registers 11
    .param p1, "effectId"    # I
    .param p2, "suitIntensity"    # D
    .param p4, "reason"    # Ljava/lang/String;

    .line 361
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Landroid/os/VibrationAttributes;IDLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist performHapticFeedback(IZ)Z
    .registers 5
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .line 344
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Landroid/os/VibrationAttributes;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist performHapticFeedback(IZI)Z
    .registers 6
    .param p1, "effectId"    # I
    .param p2, "always"    # Z
    .param p3, "effectStrength"    # I

    .line 352
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Landroid/os/VibrationAttributes;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public whitelist performHapticFeedback(Landroid/os/VibrationAttributes;IDLjava/lang/String;)Z
    .registers 20
    .param p1, "attributes"    # Landroid/os/VibrationAttributes;
    .param p2, "effectId"    # I
    .param p3, "suitIntensity"    # D
    .param p5, "reason"    # Ljava/lang/String;

    .line 438
    move-object v0, p0

    move/from16 v1, p2

    sget-object v2, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 439
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "HapticFeedbackUtil"

    const/4 v5, 0x0

    if-eqz v3, :cond_2b

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "effectId is not supported:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return v5

    .line 443
    :cond_2b
    iget-object v3, v0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-nez v3, :cond_34

    .line 444
    return v5

    .line 446
    :cond_34
    iget-object v3, v0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    instance-of v3, v3, Landroid/os/SystemVibrator;

    if-nez v3, :cond_40

    .line 447
    const-string v3, "vibrate is not SystemVibrator"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return v5

    .line 450
    :cond_40
    iget-boolean v3, v0, Lmiui/util/HapticFeedbackUtil;->mIsSupportLinearMotorVibrate:Z

    if-nez v3, :cond_4b

    iget-boolean v3, v0, Lmiui/util/HapticFeedbackUtil;->mIsSupportZLinearMotorVibrate:Z

    if-eqz v3, :cond_49

    goto :goto_4b

    :cond_49
    move v3, v5

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 v3, 0x1

    .line 451
    .local v3, "isUsePrebakedEffect":Z
    :goto_4c
    if-nez v3, :cond_54

    .line 452
    const-string v6, "not use PrebakedEffect"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return v5

    .line 455
    :cond_54
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 456
    const-string v6, "reason is empty"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return v5

    .line 459
    :cond_60
    invoke-direct {p0}, Lmiui/util/HapticFeedbackUtil;->isHapticsDisable()Z

    move-result v6

    if-eqz v6, :cond_67

    .line 460
    return v5

    .line 462
    :cond_67
    sget-object v6, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_76

    .line 463
    invoke-direct {p0, v2}, Lmiui/util/HapticFeedbackUtil;->loadPattern(Ljava/lang/String;)[J

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_76
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    .line 466
    .local v6, "pattern":[J
    if-eqz v6, :cond_9a

    array-length v7, v6

    if-nez v7, :cond_82

    goto :goto_9a

    .line 470
    :cond_82
    iget-object v4, v0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    move-object v7, v4

    check-cast v7, Landroid/os/SystemVibrator;

    aget-wide v4, v6, v5

    long-to-int v8, v4

    iget-object v4, v0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    .line 471
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    .line 470
    move-wide/from16 v9, p3

    move-object/from16 v12, p5

    move-object v13, p1

    invoke-static/range {v7 .. v13}, Lmiui/util/VibrateUtils;->vibrate(Landroid/os/SystemVibrator;IDLjava/lang/String;Ljava/lang/String;Landroid/os/VibrationAttributes;)Z

    move-result v4

    return v4

    .line 467
    :cond_9a
    :goto_9a
    const-string v7, "vibrate: null or empty pattern"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return v5
.end method

.method public whitelist performHapticFeedback(Landroid/os/VibrationAttributes;IZ)Z
    .registers 5
    .param p1, "attributes"    # Landroid/os/VibrationAttributes;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .line 365
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Landroid/os/VibrationAttributes;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist performHapticFeedback(Landroid/os/VibrationAttributes;IZI)Z
    .registers 6
    .param p1, "attributes"    # Landroid/os/VibrationAttributes;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z
    .param p4, "effectStrength"    # I

    .line 396
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p3, p4}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Landroid/os/VibrationAttributes;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public whitelist performHapticFeedback(Landroid/os/VibrationAttributes;Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "attributes"    # Landroid/os/VibrationAttributes;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "always"    # Z

    .line 369
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "HapticFeedbackUtil"

    if-eqz v0, :cond_f

    .line 370
    const-string v0, "fail to get key"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return v1

    .line 373
    :cond_f
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 374
    invoke-direct {p0, p2}, Lmiui/util/HapticFeedbackUtil;->loadPattern(Ljava/lang/String;)[J

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_1e
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 378
    .local v0, "pattern":[J
    if-eqz v0, :cond_5c

    array-length v3, v0

    if-nez v3, :cond_2a

    goto :goto_5c

    .line 382
    :cond_2a
    invoke-direct {p0, p2}, Lmiui/util/HapticFeedbackUtil;->isSupportMotorEffect(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_43

    .line 383
    array-length v3, v0

    if-ge v3, v4, :cond_3a

    .line 384
    const-string v3, "fail to read strength id"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return v1

    .line 387
    :cond_3a
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    long-to-int v1, v1

    .line 388
    .local v1, "effectStrength":I
    invoke-virtual {p0, p1, p2, p3, v1}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Landroid/os/VibrationAttributes;Ljava/lang/String;ZI)Z

    move-result v2

    return v2

    .line 390
    .end local v1    # "effectStrength":I
    :cond_43
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "andromeda"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    iget-boolean v1, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportLinearMotorVibrate:Z

    if-eqz v1, :cond_52

    goto :goto_55

    .line 391
    :cond_52
    const/16 v4, -0x64

    goto :goto_56

    :cond_55
    :goto_55
    nop

    :goto_56
    move v1, v4

    .line 392
    .restart local v1    # "effectStrength":I
    invoke-virtual {p0, p1, p2, p3, v1}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Landroid/os/VibrationAttributes;Ljava/lang/String;ZI)Z

    move-result v2

    return v2

    .line 379
    .end local v1    # "effectStrength":I
    :cond_5c
    :goto_5c
    const-string v3, "vibrate: null or empty pattern"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return v1
.end method

.method public whitelist performHapticFeedback(Landroid/os/VibrationAttributes;Ljava/lang/String;ZI)Z
    .registers 15
    .param p1, "attributes"    # Landroid/os/VibrationAttributes;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "always"    # Z
    .param p4, "effectStrength"    # I

    .line 410
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 411
    return v1

    .line 414
    :cond_a
    if-nez p3, :cond_13

    invoke-direct {p0}, Lmiui/util/HapticFeedbackUtil;->isHapticsDisable()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 415
    return v1

    .line 418
    :cond_13
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 419
    invoke-direct {p0, p2}, Lmiui/util/HapticFeedbackUtil;->loadPattern(Ljava/lang/String;)[J

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_22
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 423
    .local v0, "pattern":[J
    if-eqz v0, :cond_52

    array-length v2, v0

    if-nez v2, :cond_2e

    goto :goto_52

    .line 427
    :cond_2e
    if-eqz p3, :cond_34

    if-nez p1, :cond_34

    .line 428
    sget-object p1, Lmiui/util/HapticFeedbackUtil;->OVERLAY_HAPTIC_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 430
    :cond_34
    iget-object v2, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    iget-boolean v3, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportLinearMotorVibrate:Z

    const/4 v9, 0x1

    if-nez v3, :cond_42

    iget-boolean v3, p0, Lmiui/util/HapticFeedbackUtil;->mIsSupportZLinearMotorVibrate:Z

    if-eqz v3, :cond_40

    goto :goto_42

    :cond_40
    move v3, v1

    goto :goto_43

    :cond_42
    :goto_42
    move v3, v9

    :goto_43
    const/16 v6, -0x64

    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    .line 432
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 430
    move-object v4, v0

    move v5, p4

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Lmiui/util/VibrateUtils;->vibrate(Landroid/os/Vibrator;Z[JIILjava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 433
    return v9

    .line 424
    :cond_52
    :goto_52
    const-string v2, "HapticFeedbackUtil"

    const-string v3, "vibrate: null or empty pattern"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return v1
.end method

.method public whitelist performHapticFeedback(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "always"    # Z

    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Landroid/os/VibrationAttributes;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist performHapticFeedback(Ljava/lang/String;ZI)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "always"    # Z
    .param p3, "effectStrength"    # I

    .line 356
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Landroid/os/VibrationAttributes;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public whitelist release()V
    .registers 2

    .line 292
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mSettingsObserver:Lmiui/util/HapticFeedbackUtil$SettingsObserver;

    if-eqz v0, :cond_7

    .line 293
    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->unobserve()V

    .line 295
    :cond_7
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 296
    return-void
.end method

.method public whitelist stop()V
    .registers 2

    .line 475
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 476
    return-void
.end method

.method public whitelist updateImmersionSettings(Z)V
    .registers 2
    .param p1, "forceUpdate"    # Z

    .line 341
    return-void
.end method

.method public whitelist updateSettings()V
    .registers 3

    .line 332
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getHapticFeedbackLevel(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    .line 334
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    .line 337
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 338
    return-void
.end method
