.class public Landroid/app/WindowConfiguration;
.super Ljava/lang/Object;
.source "WindowConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WindowConfiguration$MiuiConfigFlag;,
        Landroid/app/WindowConfiguration$WindowConfig;,
        Landroid/app/WindowConfiguration$AlwaysOnTop;,
        Landroid/app/WindowConfiguration$ActivityType;,
        Landroid/app/WindowConfiguration$WindowingMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/app/WindowConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist ACTIVITY_TYPE_ASSISTANT:I = 0x4

.field public static final blacklist ACTIVITY_TYPE_DREAM:I = 0x5

.field public static final blacklist ACTIVITY_TYPE_HOME:I = 0x2

.field public static final blacklist ACTIVITY_TYPE_RECENTS:I = 0x3

.field public static final blacklist ACTIVITY_TYPE_STANDARD:I = 0x1

.field public static final blacklist ACTIVITY_TYPE_UNDEFINED:I = 0x0

.field private static final blacklist ALWAYS_ON_TOP_OFF:I = 0x2

.field private static final blacklist ALWAYS_ON_TOP_ON:I = 0x1

.field private static final blacklist ALWAYS_ON_TOP_UNDEFINED:I = 0x0

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/WindowConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MIUI_CONFIGFLAG_PRIVACY:I = 0x2

.field public static final blacklist MIUI_CONFIGFLAG_UNDEFINED:I = 0x1

.field public static final blacklist MIUI_FREEFORM_REMBER_LAUNCH_PARAMS:I = 0x4

.field public static final blacklist MIUI_SPLITMODE_NO:I = 0x0

.field public static final blacklist MIUI_SPLITMODE_UNDEFINED:I = -0x1

.field public static final blacklist MIUI_SPLITMODE_YES:I = 0x1

.field public static final blacklist MIUI_WINDOWING_MODE_FREEFORM:I = 0x5

.field public static final blacklist MIUI_WINDOWING_MODE_PRIMARY:I = 0x3

.field public static final blacklist MIUI_WINDOWING_MODE_SECONDARY:I = 0x4

.field public static final greylist-max-o PINNED_WINDOWING_MODE_ELEVATION_IN_DIP:I = 0x5

.field public static final blacklist ROTATION_UNDEFINED:I = -0x1

.field public static final blacklist WINDOWING_MODE_FREEFORM:I = 0x5

.field public static final blacklist WINDOWING_MODE_FREEFORM_PC:I = 0x64

.field public static final blacklist WINDOWING_MODE_FULLSCREEN:I = 0x1

.field public static final blacklist WINDOWING_MODE_HOVER:I = 0x65

.field public static final blacklist WINDOWING_MODE_MULTI_WINDOW:I = 0x6

.field public static final blacklist WINDOWING_MODE_PINNED:I = 0x2

.field public static final blacklist WINDOWING_MODE_SPLIT_SCREEN_PRIMARY:I = 0x3

.field public static final blacklist WINDOWING_MODE_SPLIT_SCREEN_SECONDARY:I = 0x4

.field public static final blacklist WINDOWING_MODE_UNDEFINED:I = 0x0

.field public static final greylist-max-o WINDOW_CONFIG_ACTIVITY_TYPE:I = 0x10

.field public static final blacklist WINDOW_CONFIG_ALWAYS_ON_TOP:I = 0x20

.field public static final greylist-max-o WINDOW_CONFIG_APP_BOUNDS:I = 0x2

.field public static final greylist-max-o WINDOW_CONFIG_BOUNDS:I = 0x1

.field public static final blacklist WINDOW_CONFIG_DISPLAY_ROTATION:I = 0x100

.field public static final blacklist WINDOW_CONFIG_DISPLAY_WINDOWING_MODE:I = 0x80

.field public static final blacklist WINDOW_CONFIG_MAX_BOUNDS:I = 0x4

.field public static final blacklist WINDOW_CONFIG_ROTATION:I = 0x40

.field public static final greylist-max-o WINDOW_CONFIG_WINDOWING_MODE:I = 0x8


# instance fields
.field private greylist-max-o mActivityType:I

.field private blacklist mAlwaysOnTop:I

.field private greylist-max-o mAppBounds:Landroid/graphics/Rect;

.field private final greylist-max-o mBounds:Landroid/graphics/Rect;

.field private blacklist mDisplayRotation:I

.field private blacklist mDisplayWindowingMode:I

.field private blacklist mFoScaled:Z

.field private blacklist mLetterBoxed:Z

.field private final blacklist mMaxBounds:Landroid/graphics/Rect;

.field private blacklist mMiuiConfigFlag:I

.field private blacklist mMiuiSplitMode:I

.field private blacklist mRotation:I

.field private greylist-max-o mWindowingMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 393
    new-instance v0, Landroid/app/WindowConfiguration$1;

    invoke-direct {v0}, Landroid/app/WindowConfiguration$1;-><init>()V

    sput-object v0, Landroid/app/WindowConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 98
    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 282
    iput v0, p0, Landroid/app/WindowConfiguration;->mMiuiSplitMode:I

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WindowConfiguration;->mLetterBoxed:Z

    .line 288
    iput-boolean v0, p0, Landroid/app/WindowConfiguration;->mFoScaled:Z

    .line 300
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->unset()V

    .line 301
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/WindowConfiguration;)V
    .registers 3
    .param p1, "configuration"    # Landroid/app/WindowConfiguration;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 98
    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 282
    iput v0, p0, Landroid/app/WindowConfiguration;->mMiuiSplitMode:I

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WindowConfiguration;->mLetterBoxed:Z

    .line 288
    iput-boolean v0, p0, Landroid/app/WindowConfiguration;->mFoScaled:Z

    .line 305
    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 306
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 98
    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 282
    iput v0, p0, Landroid/app/WindowConfiguration;->mMiuiSplitMode:I

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WindowConfiguration;->mLetterBoxed:Z

    .line 288
    iput-boolean v0, p0, Landroid/app/WindowConfiguration;->mFoScaled:Z

    .line 309
    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    .line 310
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/WindowConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/WindowConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o activityTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "applicationType"    # I

    .line 1154
    packed-switch p0, :pswitch_data_1e

    .line 1162
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1160
    :pswitch_8
    const-string v0, "dream"

    return-object v0

    .line 1159
    :pswitch_b
    const-string v0, "assistant"

    return-object v0

    .line 1158
    :pswitch_e
    const-string/jumbo v0, "recents"

    return-object v0

    .line 1157
    :pswitch_12
    const-string v0, "home"

    return-object v0

    .line 1156
    :pswitch_15
    const-string/jumbo v0, "standard"

    return-object v0

    .line 1155
    :pswitch_19
    const-string/jumbo v0, "undefined"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_15
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist alwaysOnTopToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "alwaysOnTop"    # I

    .line 1167
    packed-switch p0, :pswitch_data_14

    .line 1172
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1170
    :pswitch_8
    const-string/jumbo v0, "off"

    return-object v0

    .line 1169
    :pswitch_c
    const-string/jumbo v0, "on"

    return-object v0

    .line 1168
    :pswitch_10
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist inMultiWindowMode(I)Z
    .registers 3
    .param p0, "windowingMode"    # I

    .line 1041
    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/16 v1, 0x65

    if-eq p0, v1, :cond_a

    if-eqz p0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o isFloating(I)Z
    .registers 2
    .param p0, "windowingMode"    # I

    .line 998
    const/4 v0, 0x5

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public static blacklist isFreeFormWindowingMode(I)Z
    .registers 2
    .param p0, "windowingMode"    # I

    .line 1004
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public static blacklist isMiuiFreeFormWindowingMode(I)Z
    .registers 2
    .param p0, "windowingMode"    # I

    .line 1073
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public static blacklist isMiuiHoverWindowingMode(I)Z
    .registers 2
    .param p0, "windowingMode"    # I

    .line 1026
    const/16 v0, 0x65

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist isMiuiMultiRootTaskWindowingMode(I)Z
    .registers 2
    .param p0, "windowingMode"    # I

    .line 1009
    const/4 v0, 0x3

    if-eq p0, v0, :cond_f

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    const/4 v0, 0x6

    if-eq p0, v0, :cond_f

    const/4 v0, 0x5

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static blacklist isMiuiSplitScreenWindowingMode(I)Z
    .registers 2
    .param p0, "windowingMode"    # I

    .line 1017
    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_c

    const/4 v0, 0x6

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public static blacklist isSplitScreenPrimaryWindowingMode(I)Z
    .registers 2
    .param p0, "windowingMode"    # I

    .line 1058
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public static blacklist isSplitScreenSecondaryWindowingMode(I)Z
    .registers 2
    .param p0, "windowingMode"    # I

    .line 1063
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public static blacklist isSplitScreenWindowingMode(I)Z
    .registers 2
    .param p0, "windowingMode"    # I

    .line 1068
    invoke-static {p0}, Landroid/app/WindowConfiguration;->isSplitScreenPrimaryWindowingMode(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Landroid/app/WindowConfiguration;->isSplitScreenSecondaryWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private blacklist setAlwaysOnTop(I)V
    .registers 2
    .param p1, "alwaysOnTop"    # I

    .line 479
    iput p1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 480
    return-void
.end method

.method public static greylist-max-o supportSplitScreenWindowingMode(I)Z
    .registers 2
    .param p0, "activityType"    # I

    .line 1133
    const/4 v0, 0x4

    if-eq p0, v0, :cond_8

    const/4 v0, 0x5

    if-eq p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static greylist-max-o windowingModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "windowingMode"    # I

    .line 1138
    sparse-switch p0, :sswitch_data_26

    .line 1149
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1147
    :sswitch_8
    const-string v0, "hovermode"

    return-object v0

    .line 1141
    :sswitch_b
    const-string/jumbo v0, "multi-window"

    return-object v0

    .line 1145
    :sswitch_f
    const-string v0, "freeform"

    return-object v0

    .line 1144
    :sswitch_12
    const-string/jumbo v0, "split-screen-secondary"

    return-object v0

    .line 1143
    :sswitch_16
    const-string/jumbo v0, "split-screen-primary"

    return-object v0

    .line 1142
    :sswitch_1a
    const-string/jumbo v0, "pinned"

    return-object v0

    .line 1140
    :sswitch_1e
    const-string v0, "fullscreen"

    return-object v0

    .line 1139
    :sswitch_21
    const-string/jumbo v0, "undefined"

    return-object v0

    nop

    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_21
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1a
        0x3 -> :sswitch_16
        0x4 -> :sswitch_12
        0x5 -> :sswitch_f
        0x6 -> :sswitch_b
        0x65 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public greylist-max-o canReceiveKeys()Z
    .registers 3

    .line 1051
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o canResizeTask()Z
    .registers 3

    .line 976
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public blacklist compareTo(Landroid/app/WindowConfiguration;)I
    .registers 5
    .param p1, "that"    # Landroid/app/WindowConfiguration;

    .line 783
    const/4 v0, 0x0

    .line 784
    .local v0, "n":I
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_b

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_b

    .line 785
    const/4 v1, 0x1

    return v1

    .line 786
    :cond_b
    if-eqz v1, :cond_13

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_13

    .line 787
    const/4 v1, -0x1

    return v1

    .line 788
    :cond_13
    if-eqz v1, :cond_47

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_47

    .line 789
    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 790
    .end local v0    # "n":I
    .local v1, "n":I
    if-eqz v1, :cond_23

    return v1

    .line 791
    :cond_23
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 792
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_2f

    return v0

    .line 793
    :cond_2f
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 794
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_3b

    return v1

    .line 795
    :cond_3b
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 796
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_47

    return v0

    .line 799
    :cond_47
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 800
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_53

    return v1

    .line 801
    :cond_53
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 802
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_5f

    return v0

    .line 803
    :cond_5f
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 804
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_6b

    return v1

    .line 805
    :cond_6b
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 806
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_77

    return v0

    .line 808
    :cond_77
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 809
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_83

    return v1

    .line 810
    :cond_83
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 811
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_8f

    return v0

    .line 812
    :cond_8f
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 813
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_9b

    return v1

    .line 814
    :cond_9b
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 815
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_a7

    return v0

    .line 817
    :cond_a7
    iget v1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    sub-int/2addr v1, v2

    .line 818
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_af

    return v1

    .line 819
    :cond_af
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    sub-int/2addr v0, v2

    .line 820
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_b7

    return v0

    .line 821
    :cond_b7
    iget v1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    sub-int/2addr v1, v2

    .line 822
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_bf

    return v1

    .line 823
    :cond_bf
    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mRotation:I

    sub-int/2addr v0, v2

    .line 824
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_c7

    return v0

    .line 826
    :cond_c7
    iget v1, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    sub-int/2addr v1, v2

    .line 827
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_cf

    return v1

    .line 828
    :cond_cf
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    sub-int/2addr v0, v2

    .line 829
    .end local v1    # "n":I
    .restart local v0    # "n":I
    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 61
    check-cast p1, Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o diff(Landroid/app/WindowConfiguration;Z)J
    .registers 8
    .param p1, "other"    # Landroid/app/WindowConfiguration;
    .param p2, "compareUndefined"    # Z

    .line 731
    const-wide/16 v0, 0x0

    .line 733
    .local v0, "changes":J
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 734
    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    .line 738
    :cond_f
    if-nez p2, :cond_15

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_26

    :cond_15
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eq v2, v3, :cond_26

    if-eqz v2, :cond_23

    .line 740
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 741
    :cond_23
    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    .line 744
    :cond_26
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 745
    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    .line 748
    :cond_33
    if-nez p2, :cond_39

    iget v2, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eqz v2, :cond_42

    :cond_39
    iget v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eq v2, v3, :cond_42

    .line 750
    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    .line 753
    :cond_42
    if-nez p2, :cond_48

    iget v2, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v2, :cond_51

    :cond_48
    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eq v2, v3, :cond_51

    .line 755
    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    .line 758
    :cond_51
    if-nez p2, :cond_57

    iget v2, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eqz v2, :cond_60

    :cond_57
    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eq v2, v3, :cond_60

    .line 760
    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    .line 763
    :cond_60
    const/4 v2, -0x1

    if-nez p2, :cond_67

    iget v3, p1, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v3, v2, :cond_70

    :cond_67
    iget v3, p0, Landroid/app/WindowConfiguration;->mRotation:I

    iget v4, p1, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v3, v4, :cond_70

    .line 765
    const-wide/16 v3, 0x40

    or-long/2addr v0, v3

    .line 768
    :cond_70
    if-nez p2, :cond_76

    iget v3, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-eqz v3, :cond_7f

    :cond_76
    iget v3, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    iget v4, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-eq v3, v4, :cond_7f

    .line 770
    const-wide/16 v3, 0x80

    or-long/2addr v0, v3

    .line 773
    :cond_7f
    if-nez p2, :cond_85

    iget v3, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v3, v2, :cond_8e

    :cond_85
    iget v2, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v2, v3, :cond_8e

    .line 775
    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    .line 778
    :cond_8e
    return-wide v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 902
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 903
    .local v0, "token":J
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_10

    .line 904
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 906
    :cond_10
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 907
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 908
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 909
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 910
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 911
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "that"    # Ljava/lang/Object;

    .line 838
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 839
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    .line 840
    :cond_8
    instance-of v2, p1, Landroid/app/WindowConfiguration;

    if-nez v2, :cond_d

    .line 841
    return v0

    .line 843
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/app/WindowConfiguration;

    invoke-virtual {p0, v2}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result v2

    if-nez v2, :cond_17

    move v0, v1

    :cond_17
    return v0
.end method

.method public blacklist getActivityType()I
    .registers 2

    .line 580
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    return v0
.end method

.method public blacklist getAppBounds()Landroid/graphics/Rect;
    .registers 3

    .line 499
    invoke-static {}, Landroid/view/WindowManagerGlobalStub;->getInstance()Landroid/view/WindowManagerGlobalStub;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1}, Landroid/view/WindowManagerGlobalStub;->getCutoutAdaptedAppBounds(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 505
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getDisplayRotation()I
    .registers 2

    .line 519
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    return v0
.end method

.method public blacklist getDisplayWindowingMode()I
    .registers 2

    .line 547
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    return v0
.end method

.method public blacklist getMaxBounds()Landroid/graphics/Rect;
    .registers 2

    .line 511
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getRotation()I
    .registers 2

    .line 523
    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    return v0
.end method

.method public blacklist getWindowingMode()I
    .registers 2

    .line 536
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    return v0
.end method

.method public greylist-max-o hasMovementAnimations()Z
    .registers 3

    .line 1118
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o hasWindowDecorCaption()Z
    .registers 4

    .line 966
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_e

    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-ne v0, v2, :cond_f

    :cond_e
    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public greylist-max-o hasWindowShadow()Z
    .registers 3

    .line 957
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_d

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 849
    const/4 v0, 0x0

    .line 850
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 851
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 852
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 853
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    add-int/2addr v0, v2

    .line 854
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    add-int/2addr v1, v2

    .line 855
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    add-int/2addr v0, v2

    .line 856
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mRotation:I

    add-int/2addr v1, v2

    .line 857
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    add-int/2addr v0, v2

    .line 858
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    add-int/2addr v1, v2

    .line 859
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist inMiuiHoverWindowingMode()Z
    .registers 2

    .line 1031
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isMiuiHoverWindowingMode(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isAlwaysOnTop()Z
    .registers 6

    .line 1088
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    return v1

    .line 1089
    :cond_7
    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_d

    return v1

    .line 1090
    :cond_d
    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    const/4 v4, 0x0

    if-eq v2, v1, :cond_13

    return v4

    .line 1091
    :cond_13
    if-eq v0, v3, :cond_1a

    const/4 v2, 0x6

    if-ne v0, v2, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v4

    :cond_1a
    :goto_1a
    return v1
.end method

.method public blacklist isFoScaled()Z
    .registers 2

    .line 367
    iget-boolean v0, p0, Landroid/app/WindowConfiguration;->mFoScaled:Z

    return v0
.end method

.method public blacklist isInSplitScreen()Z
    .registers 3

    .line 376
    iget v0, p0, Landroid/app/WindowConfiguration;->mMiuiSplitMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public blacklist isLetterBoxed()Z
    .registers 2

    .line 361
    iget-boolean v0, p0, Landroid/app/WindowConfiguration;->mLetterBoxed:Z

    return v0
.end method

.method public blacklist isMiuiSplitScreenWindowingMode()Z
    .registers 2

    .line 1078
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isMiuiSplitScreenWindowingMode(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o keepVisibleDeadAppWindowOnScreen()Z
    .registers 3

    .line 1101
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o persistTaskBounds()Z
    .registers 3

    .line 983
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 332
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 333
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 334
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mMiuiSplitMode:I

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/WindowConfiguration;->mLetterBoxed:Z

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/WindowConfiguration;->mFoScaled:Z

    .line 346
    return-void
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    .line 923
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 925
    .local v0, "token":J
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_52

    .line 926
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_5c

    goto :goto_51

    .line 935
    :pswitch_13
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 936
    goto :goto_51

    .line 932
    :pswitch_1e
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 933
    goto :goto_51

    .line 941
    :pswitch_29
    const-wide v2, 0x10500000003L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    goto :goto_51

    .line 938
    :pswitch_35
    const-wide v2, 0x10500000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 939
    goto :goto_51

    .line 928
    :pswitch_41
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 929
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    :try_end_50
    .catchall {:try_start_4 .. :try_end_50} :catchall_57

    .line 930
    nop

    .line 942
    :goto_51
    goto :goto_4

    .line 947
    :cond_52
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 948
    nop

    .line 949
    return-void

    .line 947
    :catchall_57
    move-exception v2

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 948
    throw v2

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_41
        :pswitch_35
        :pswitch_29
        :pswitch_1e
        :pswitch_13
    .end packed-switch
.end method

.method public blacklist setActivityType(I)V
    .registers 7
    .param p1, "activityType"    # I

    .line 551
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-ne v0, p1, :cond_5

    .line 552
    return-void

    .line 555
    :cond_5
    const-string v1, " activityType="

    const-string v2, "Can\'t change activity type once set: "

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_f

    if-eq p1, v3, :cond_13

    :cond_f
    if-ne v0, v3, :cond_4e

    if-ne p1, v4, :cond_4e

    .line 557
    :cond_13
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 560
    invoke-static {p1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x10

    .line 561
    const-string v2, "\n"

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    const-string v1, "WindowConfiguration"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void

    .line 569
    :cond_4e
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_7e

    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v0, :cond_7e

    if-nez p1, :cond_5b

    goto :goto_7e

    .line 572
    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 573
    invoke-static {p1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_7e
    :goto_7e
    iput p1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    .line 576
    return-void
.end method

.method public blacklist setAlwaysOnTop(Z)V
    .registers 3
    .param p1, "alwaysOnTop"    # Z

    .line 467
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 468
    return-void
.end method

.method public greylist-max-o setAppBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 488
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 489
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 492
    :cond_b
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 493
    return-void
.end method

.method public blacklist setAppBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 424
    if-nez p1, :cond_6

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 426
    return-void

    .line 429
    :cond_6
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    .line 430
    return-void
.end method

.method public blacklist setBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 410
    if-nez p1, :cond_8

    .line 411
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 412
    return-void

    .line 415
    :cond_8
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 416
    return-void
.end method

.method public blacklist setDisplayRotation(I)V
    .registers 2
    .param p1, "rotation"    # I

    .line 458
    iput p1, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 459
    return-void
.end method

.method public blacklist setDisplayWindowingMode(I)V
    .registers 2
    .param p1, "windowingMode"    # I

    .line 541
    iput p1, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    .line 542
    return-void
.end method

.method public blacklist setFoScaled(Z)V
    .registers 2
    .param p1, "foScaled"    # Z

    .line 383
    iput-boolean p1, p0, Landroid/app/WindowConfiguration;->mFoScaled:Z

    .line 384
    return-void
.end method

.method public blacklist setLetterBoxed(Z)V
    .registers 2
    .param p1, "letterBoxed"    # Z

    .line 356
    iput-boolean p1, p0, Landroid/app/WindowConfiguration;->mLetterBoxed:Z

    .line 357
    return-void
.end method

.method public blacklist setMaxBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 450
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 451
    return-void
.end method

.method public blacklist setMaxBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 438
    if-nez p1, :cond_8

    .line 439
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 440
    return-void

    .line 442
    :cond_8
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 443
    return-void
.end method

.method public blacklist setRotation(I)V
    .registers 2
    .param p1, "rotation"    # I

    .line 527
    iput p1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 528
    return-void
.end method

.method public blacklist setSplitScreenState(I)V
    .registers 2
    .param p1, "miuiSplitMode"    # I

    .line 351
    iput p1, p0, Landroid/app/WindowConfiguration;->mMiuiSplitMode:I

    .line 352
    return-void
.end method

.method public blacklist setTo(Landroid/app/WindowConfiguration;)V
    .registers 3
    .param p1, "other"    # Landroid/app/WindowConfiguration;

    .line 584
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 585
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 586
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 587
    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 588
    iget v0, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 589
    iget v0, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 590
    iget v0, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-direct {p0, v0}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 591
    iget v0, p1, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 592
    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 594
    iget v0, p1, Landroid/app/WindowConfiguration;->mMiuiSplitMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setSplitScreenState(I)V

    .line 595
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->isLetterBoxed()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setLetterBoxed(Z)V

    .line 597
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->isFoScaled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setFoScaled(Z)V

    .line 598
    return-void
.end method

.method public blacklist setTo(Landroid/app/WindowConfiguration;I)V
    .registers 4
    .param p1, "delta"    # Landroid/app/WindowConfiguration;
    .param p2, "mask"    # I

    .line 690
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_9

    .line 691
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 693
    :cond_9
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_12

    .line 694
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 696
    :cond_12
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1b

    .line 697
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 699
    :cond_1b
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_24

    .line 700
    iget v0, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 702
    :cond_24
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_2d

    .line 703
    iget v0, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 705
    :cond_2d
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_36

    .line 706
    iget v0, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-direct {p0, v0}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 708
    :cond_36
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_3f

    .line 709
    iget v0, p1, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 711
    :cond_3f
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_48

    .line 712
    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 714
    :cond_48
    and-int/lit16 v0, p2, 0x100

    if-eqz v0, :cond_51

    .line 715
    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 717
    :cond_51
    return-void
.end method

.method public greylist-max-o setToDefaults()V
    .registers 3

    .line 608
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 609
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 610
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 611
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 612
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 613
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 614
    invoke-direct {p0, v1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 615
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 616
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 618
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setSplitScreenState(I)V

    .line 619
    return-void
.end method

.method public blacklist setWindowingMode(I)V
    .registers 2
    .param p1, "windowingMode"    # I

    .line 531
    iput p1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 532
    return-void
.end method

.method public greylist-max-o supportSplitScreenWindowingMode()Z
    .registers 2

    .line 1128
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o tasksAreFloating()Z
    .registers 2

    .line 993
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 866
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "windowingMode":Ljava/lang/String;
    iget v1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_13

    iget v1, p0, Landroid/app/WindowConfiguration;->mMiuiSplitMode:I

    if-eq v1, v2, :cond_13

    .line 869
    const-string/jumbo v0, "miui-magic-windows"

    .line 872
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{ mBounds="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mAppBounds="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mMaxBounds="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mDisplayRotation="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 875
    iget v3, p0, Landroid/app/WindowConfiguration;->mRotation:I

    const-string/jumbo v4, "undefined"

    const/4 v5, -0x1

    if-ne v3, v5, :cond_4d

    .line 876
    move-object v3, v4

    goto :goto_53

    :cond_4d
    iget v3, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-static {v3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v3

    :goto_53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mWindowingMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mDisplayWindowingMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    .line 880
    invoke-static {v3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mActivityType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    .line 881
    invoke-static {v3}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mAlwaysOnTop="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 882
    invoke-static {v3}, Landroid/app/WindowConfiguration;->alwaysOnTopToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mRotation="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 883
    iget v3, p0, Landroid/app/WindowConfiguration;->mRotation:I

    if-ne v3, v5, :cond_9c

    .line 884
    goto :goto_a0

    :cond_9c
    invoke-static {v3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v4

    :goto_a0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mInSplitScreen="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/WindowConfiguration;->mMiuiSplitMode:I

    if-ne v3, v2, :cond_af

    goto :goto_b0

    :cond_af
    const/4 v2, 0x0

    :goto_b0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " letterBoxed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/WindowConfiguration;->mLetterBoxed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " foScaled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/WindowConfiguration;->mFoScaled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 872
    return-object v1
.end method

.method public greylist-max-o unset()V
    .registers 1

    .line 603
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->setToDefaults()V

    .line 604
    return-void
.end method

.method public blacklist unsetAlwaysOnTop()V
    .registers 2

    .line 475
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 476
    return-void
.end method

.method public greylist-max-o updateFrom(Landroid/app/WindowConfiguration;)I
    .registers 6
    .param p1, "delta"    # Landroid/app/WindowConfiguration;

    .line 630
    const/4 v0, 0x0

    .line 632
    .local v0, "changed":I
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 633
    or-int/lit8 v0, v0, 0x1

    .line 634
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 636
    :cond_1a
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2d

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 637
    or-int/lit8 v0, v0, 0x2

    .line 638
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 640
    :cond_2d
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 641
    or-int/lit8 v0, v0, 0x4

    .line 642
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 644
    :cond_46
    iget v1, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eqz v1, :cond_53

    iget v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eq v2, v1, :cond_53

    .line 646
    or-int/lit8 v0, v0, 0x8

    .line 647
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 649
    :cond_53
    iget v1, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v1, :cond_60

    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eq v2, v1, :cond_60

    .line 651
    or-int/lit8 v0, v0, 0x10

    .line 652
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 654
    :cond_60
    iget v1, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eqz v1, :cond_6d

    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eq v2, v1, :cond_6d

    .line 656
    or-int/lit8 v0, v0, 0x20

    .line 657
    invoke-direct {p0, v1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 659
    :cond_6d
    iget v1, p1, Landroid/app/WindowConfiguration;->mRotation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7b

    iget v3, p0, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v1, v3, :cond_7b

    .line 660
    or-int/lit8 v0, v0, 0x40

    .line 661
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 663
    :cond_7b
    iget v1, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-eqz v1, :cond_88

    iget v3, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-eq v3, v1, :cond_88

    .line 665
    or-int/lit16 v0, v0, 0x80

    .line 666
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 668
    :cond_88
    iget v1, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v1, v2, :cond_95

    iget v3, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v1, v3, :cond_95

    .line 670
    or-int/lit16 v0, v0, 0x100

    .line 671
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 674
    :cond_95
    iget v1, p1, Landroid/app/WindowConfiguration;->mMiuiSplitMode:I

    if-eq v1, v2, :cond_a0

    iget v2, p0, Landroid/app/WindowConfiguration;->mMiuiSplitMode:I

    if-eq v2, v1, :cond_a0

    .line 676
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setSplitScreenState(I)V

    .line 678
    :cond_a0
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->isLetterBoxed()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setLetterBoxed(Z)V

    .line 681
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->isFoScaled()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setFoScaled(Z)V

    .line 682
    return v0
.end method

.method public greylist-max-o useWindowFrameForBackdrop()Z
    .registers 3

    .line 1110
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 314
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 315
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 316
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 317
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget v0, p0, Landroid/app/WindowConfiguration;->mMiuiSplitMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-boolean v0, p0, Landroid/app/WindowConfiguration;->mLetterBoxed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 327
    iget-boolean v0, p0, Landroid/app/WindowConfiguration;->mFoScaled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 328
    return-void
.end method
