.class public abstract Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;
.super Ljava/lang/Object;
.source "ProtoLogImpl_842414855.java"


# static fields
.field public static TEST_GROUP_enabled:[Z

.field public static WM_DEBUG_ADD_REMOVE_enabled:[Z

.field public static WM_DEBUG_ANIM_enabled:[Z

.field public static WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:[Z

.field public static WM_DEBUG_APP_TRANSITIONS_enabled:[Z

.field public static WM_DEBUG_BACK_PREVIEW_enabled:[Z

.field public static WM_DEBUG_BOOT_enabled:[Z

.field public static WM_DEBUG_CONFIGURATION_enabled:[Z

.field public static WM_DEBUG_CONTAINERS_enabled:[Z

.field public static WM_DEBUG_CONTENT_RECORDING_enabled:[Z

.field public static WM_DEBUG_DIMMER_enabled:[Z

.field public static WM_DEBUG_DRAW_enabled:[Z

.field public static WM_DEBUG_DREAM_enabled:[Z

.field public static WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

.field public static WM_DEBUG_FOCUS_LIGHT_enabled:[Z

.field public static WM_DEBUG_FOCUS_enabled:[Z

.field public static WM_DEBUG_IME_enabled:[Z

.field public static WM_DEBUG_IMMERSIVE_enabled:[Z

.field public static WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

.field public static WM_DEBUG_LOCKTASK_enabled:[Z

.field public static WM_DEBUG_ORIENTATION_CHANGE_enabled:[Z

.field public static WM_DEBUG_ORIENTATION_enabled:[Z

.field public static WM_DEBUG_PRESENTATION_enabled:[Z

.field public static WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

.field public static WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

.field public static WM_DEBUG_RESIZE_enabled:[Z

.field public static WM_DEBUG_SCREEN_ON_enabled:[Z

.field public static WM_DEBUG_SLEEP_TOKEN_enabled:[Z

.field public static WM_DEBUG_STARTING_WINDOW_enabled:[Z

.field public static WM_DEBUG_STATES_enabled:[Z

.field public static WM_DEBUG_SWITCH_enabled:[Z

.field public static WM_DEBUG_SYNC_ENGINE_enabled:[Z

.field public static WM_DEBUG_TASKS_LAUNCH_PARAMS_enabled:[Z

.field public static WM_DEBUG_TASKS_enabled:[Z

.field public static WM_DEBUG_TPL_enabled:[Z

.field public static WM_DEBUG_WALLPAPER_enabled:[Z

.field public static WM_DEBUG_WINDOW_INSETS_enabled:[Z

.field public static WM_DEBUG_WINDOW_MOVEMENT_enabled:[Z

.field public static WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

.field public static WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

.field public static WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

.field public static WM_ERROR_enabled:[Z

.field public static WM_SHOW_SURFACE_ALLOC_enabled:[Z

.field public static WM_SHOW_TRANSACTIONS_enabled:[Z


# direct methods
.method public static bridge synthetic -$$Nest$smupdate(Lcom/android/internal/protolog/common/IProtoLog;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->update(Lcom/android/internal/protolog/common/IProtoLog;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x6

    .line 140
    new-array v1, v0, [Z

    fill-array-data v1, :array_136

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_ERROR_enabled:[Z

    .line 142
    new-array v1, v0, [Z

    fill-array-data v1, :array_13e

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 144
    new-array v1, v0, [Z

    fill-array-data v1, :array_146

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_CHANGE_enabled:[Z

    .line 146
    new-array v1, v0, [Z

    fill-array-data v1, :array_14e

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    .line 148
    new-array v1, v0, [Z

    fill-array-data v1, :array_156

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BOOT_enabled:[Z

    .line 150
    new-array v1, v0, [Z

    fill-array-data v1, :array_15e

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    .line 152
    new-array v1, v0, [Z

    fill-array-data v1, :array_166

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    .line 154
    new-array v1, v0, [Z

    fill-array-data v1, :array_16e

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    .line 156
    new-array v1, v0, [Z

    fill-array-data v1, :array_176

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SWITCH_enabled:[Z

    .line 158
    new-array v1, v0, [Z

    fill-array-data v1, :array_17e

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTAINERS_enabled:[Z

    .line 160
    new-array v1, v0, [Z

    fill-array-data v1, :array_186

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    .line 162
    new-array v1, v0, [Z

    fill-array-data v1, :array_18e

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IMMERSIVE_enabled:[Z

    .line 164
    new-array v1, v0, [Z

    fill-array-data v1, :array_196

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    .line 166
    new-array v1, v0, [Z

    fill-array-data v1, :array_19e

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 168
    new-array v1, v0, [Z

    fill-array-data v1, :array_1a6

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 170
    new-array v1, v0, [Z

    fill-array-data v1, :array_1ae

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_LAUNCH_PARAMS_enabled:[Z

    .line 172
    new-array v1, v0, [Z

    fill-array-data v1, :array_1b6

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    .line 174
    new-array v1, v0, [Z

    fill-array-data v1, :array_1be

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    .line 176
    new-array v1, v0, [Z

    fill-array-data v1, :array_1c6

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    .line 178
    new-array v1, v0, [Z

    fill-array-data v1, :array_1ce

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 180
    new-array v1, v0, [Z

    fill-array-data v1, :array_1d6

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 182
    new-array v1, v0, [Z

    fill-array-data v1, :array_1de

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:[Z

    .line 184
    new-array v1, v0, [Z

    fill-array-data v1, :array_1e6

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    .line 186
    new-array v1, v0, [Z

    fill-array-data v1, :array_1ee

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DRAW_enabled:[Z

    .line 188
    new-array v1, v0, [Z

    fill-array-data v1, :array_1f6

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    .line 190
    new-array v1, v0, [Z

    fill-array-data v1, :array_1fe

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SCREEN_ON_enabled:[Z

    .line 192
    new-array v1, v0, [Z

    fill-array-data v1, :array_206

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    .line 194
    new-array v1, v0, [Z

    fill-array-data v1, :array_20e

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SLEEP_TOKEN_enabled:[Z

    .line 196
    new-array v1, v0, [Z

    fill-array-data v1, :array_216

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:[Z

    .line 198
    new-array v1, v0, [Z

    fill-array-data v1, :array_21e

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    .line 200
    new-array v1, v0, [Z

    fill-array-data v1, :array_226

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 202
    new-array v1, v0, [Z

    fill-array-data v1, :array_22e

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    .line 204
    new-array v1, v0, [Z

    fill-array-data v1, :array_236

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 206
    new-array v1, v0, [Z

    fill-array-data v1, :array_23e

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    .line 208
    new-array v1, v0, [Z

    fill-array-data v1, :array_246

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    .line 210
    new-array v1, v0, [Z

    fill-array-data v1, :array_24e

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    .line 212
    new-array v1, v0, [Z

    fill-array-data v1, :array_256

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    .line 214
    new-array v1, v0, [Z

    fill-array-data v1, :array_25e

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    .line 216
    new-array v1, v0, [Z

    fill-array-data v1, :array_266

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DREAM_enabled:[Z

    .line 218
    new-array v1, v0, [Z

    fill-array-data v1, :array_26e

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    .line 220
    new-array v1, v0, [Z

    fill-array-data v1, :array_276

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    .line 222
    new-array v1, v0, [Z

    fill-array-data v1, :array_27e

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    .line 224
    new-array v1, v0, [Z

    fill-array-data v1, :array_286

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_PRESENTATION_enabled:[Z

    .line 226
    new-array v0, v0, [Z

    fill-array-data v0, :array_28e

    sput-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->TEST_GROUP_enabled:[Z

    return-void

    :array_136
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_13e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_146
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_14e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_156
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_15e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_166
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_16e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_176
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_17e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_186
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_18e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_196
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_19e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1a6
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1ae
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1b6
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1be
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1c6
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1ce
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1d6
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1de
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1e6
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1ee
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1f6
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1fe
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_206
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_20e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_216
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_21e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_226
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_22e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_236
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_23e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_246
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_24e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_256
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_25e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_266
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_26e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_276
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_27e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_286
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_28e
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public static update(Lcom/android/internal/protolog/common/IProtoLog;)V
    .registers 16

    .line 229
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_ERROR_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_ERROR:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v2, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v3

    const/4 v4, 0x0

    aput-boolean v3, v0, v4

    .line 230
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_ERROR_enabled:[Z

    sget-object v3, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v5

    const/4 v6, 0x1

    aput-boolean v5, v0, v6

    .line 231
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_ERROR_enabled:[Z

    sget-object v5, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v7

    const/4 v8, 0x2

    aput-boolean v7, v0, v8

    .line 232
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_ERROR_enabled:[Z

    sget-object v7, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v9

    const/4 v10, 0x3

    aput-boolean v9, v0, v10

    .line 233
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_ERROR_enabled:[Z

    sget-object v9, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v11

    const/4 v12, 0x4

    aput-boolean v11, v0, v12

    .line 234
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_ERROR_enabled:[Z

    sget-object v11, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    const/4 v13, 0x5

    aput-boolean v1, v0, v13

    .line 235
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 236
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 237
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 238
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 239
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 240
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 241
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_CHANGE_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION_CHANGE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 242
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_CHANGE_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 243
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_CHANGE_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 244
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_CHANGE_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 245
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_CHANGE_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 246
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_CHANGE_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 247
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 248
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 249
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 250
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 251
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 252
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 253
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BOOT_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 254
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BOOT_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 255
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BOOT_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 256
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BOOT_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 257
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BOOT_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 258
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BOOT_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 259
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 260
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 261
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 262
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 263
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 264
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 265
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 266
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 267
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 268
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 269
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 270
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 271
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 272
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 273
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 274
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 275
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 276
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 277
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SWITCH_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 278
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SWITCH_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 279
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SWITCH_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 280
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SWITCH_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 281
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SWITCH_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 282
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SWITCH_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 283
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTAINERS_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 284
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTAINERS_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 285
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTAINERS_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 286
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTAINERS_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 287
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTAINERS_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 288
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTAINERS_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 289
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 290
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 291
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 292
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 293
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 294
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 295
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IMMERSIVE_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 296
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IMMERSIVE_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 297
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IMMERSIVE_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 298
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IMMERSIVE_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 299
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IMMERSIVE_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 300
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IMMERSIVE_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 301
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 302
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 303
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 304
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 305
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 306
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 307
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 308
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 309
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 310
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 311
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 312
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 313
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 314
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 315
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 316
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 317
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 318
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 319
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_LAUNCH_PARAMS_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS_LAUNCH_PARAMS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 320
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_LAUNCH_PARAMS_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 321
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_LAUNCH_PARAMS_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 322
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_LAUNCH_PARAMS_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 323
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_LAUNCH_PARAMS_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 324
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_LAUNCH_PARAMS_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 325
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 326
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 327
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 328
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 329
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 330
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 331
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 332
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 333
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 334
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 335
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 336
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 337
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 338
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 339
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 340
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 341
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 342
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 343
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 344
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 345
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 346
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 347
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 348
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 349
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ANIM_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 350
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ANIM_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 351
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ANIM_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 352
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ANIM_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 353
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ANIM_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 354
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ANIM_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 355
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 356
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 357
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 358
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 359
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 360
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 361
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 362
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 363
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 364
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 365
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 366
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 367
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DRAW_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DRAW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 368
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DRAW_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 369
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DRAW_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 370
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DRAW_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 371
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DRAW_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 372
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DRAW_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 373
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 374
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 375
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 376
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 377
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 378
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 379
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SCREEN_ON_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 380
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SCREEN_ON_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 381
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SCREEN_ON_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 382
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SCREEN_ON_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 383
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SCREEN_ON_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 384
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SCREEN_ON_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 385
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 386
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 387
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 388
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 389
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 390
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 391
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SLEEP_TOKEN_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SLEEP_TOKEN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 392
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SLEEP_TOKEN_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 393
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SLEEP_TOKEN_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 394
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SLEEP_TOKEN_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 395
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SLEEP_TOKEN_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 396
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SLEEP_TOKEN_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 397
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 398
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 399
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 400
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 401
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 402
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 403
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 404
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 405
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 406
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 407
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 408
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 409
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 410
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 411
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 412
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 413
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 414
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 415
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 416
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 417
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 418
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 419
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 420
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 421
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 422
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 423
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 424
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 425
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 426
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 427
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 428
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 429
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 430
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 431
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 432
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 433
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 434
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 435
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 436
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 437
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 438
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 439
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 440
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 441
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 442
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 443
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 444
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 445
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 446
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 447
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 448
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 449
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 450
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 451
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 452
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 453
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 454
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 455
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 456
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 457
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DREAM_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DREAM:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 458
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DREAM_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 459
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DREAM_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 460
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DREAM_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 461
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DREAM_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 462
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DREAM_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 463
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 464
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 465
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 466
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 467
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 468
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 469
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 470
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 471
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 472
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 473
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 474
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TPL_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 475
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 476
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 477
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 478
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 479
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 480
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 481
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_PRESENTATION_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_PRESENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v4

    .line 482
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_PRESENTATION_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v6

    .line 483
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_PRESENTATION_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v8

    .line 484
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_PRESENTATION_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v10

    .line 485
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_PRESENTATION_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v14

    aput-boolean v14, v0, v12

    .line 486
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_PRESENTATION_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, v0, v13

    .line 487
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->TEST_GROUP_enabled:[Z

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->TEST_GROUP:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v2

    aput-boolean v2, v0, v4

    .line 488
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->TEST_GROUP_enabled:[Z

    invoke-static {p0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v2

    aput-boolean v2, v0, v6

    .line 489
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->TEST_GROUP_enabled:[Z

    invoke-static {p0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v2

    aput-boolean v2, v0, v8

    .line 490
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->TEST_GROUP_enabled:[Z

    invoke-static {p0, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v2

    aput-boolean v2, v0, v10

    .line 491
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->TEST_GROUP_enabled:[Z

    invoke-static {p0, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v2

    aput-boolean v2, v0, v12

    .line 492
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->TEST_GROUP_enabled:[Z

    invoke-static {p0, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result p0

    aput-boolean p0, v0, v13

    return-void
.end method
