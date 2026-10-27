.class public abstract Lcom/android/internal/widget/remotecompose/core/RemoteContext;
.super Ljava/lang/Object;
.source "RemoteContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;,
        Lcom/android/internal/widget/remotecompose/core/RemoteContext$FontInfo;
    }
.end annotation


# static fields
.field public static final blacklist FLOAT_ACCELERATION_X:F

.field public static final blacklist FLOAT_ACCELERATION_Y:F

.field public static final blacklist FLOAT_ACCELERATION_Z:F

.field public static final blacklist FLOAT_ANIMATION_DELTA_TIME:F

.field public static final blacklist FLOAT_ANIMATION_TIME:F

.field public static final blacklist FLOAT_API_LEVEL:F

.field public static final blacklist FLOAT_CALENDAR_MONTH:F

.field public static final blacklist FLOAT_COMPONENT_HEIGHT:F

.field public static final blacklist FLOAT_COMPONENT_WIDTH:F

.field public static final blacklist FLOAT_CONTINUOUS_SEC:F

.field public static final blacklist FLOAT_DAY_OF_MONTH:F

.field public static final blacklist FLOAT_DAY_OF_YEAR:F

.field public static final blacklist FLOAT_DENSITY:F

.field public static final blacklist FLOAT_FONT_SIZE:F

.field public static final blacklist FLOAT_GYRO_ROT_X:F

.field public static final blacklist FLOAT_GYRO_ROT_Y:F

.field public static final blacklist FLOAT_GYRO_ROT_Z:F

.field public static final blacklist FLOAT_LIGHT:F

.field public static final blacklist FLOAT_MAGNETIC_X:F

.field public static final blacklist FLOAT_MAGNETIC_Y:F

.field public static final blacklist FLOAT_MAGNETIC_Z:F

.field public static final blacklist FLOAT_OFFSET_TO_UTC:F

.field public static final blacklist FLOAT_TIME_IN_HR:F

.field public static final blacklist FLOAT_TIME_IN_MIN:F

.field public static final blacklist FLOAT_TIME_IN_SEC:F

.field public static final blacklist FLOAT_TOUCH_EVENT_TIME:F

.field public static final blacklist FLOAT_TOUCH_POS_X:F

.field public static final blacklist FLOAT_TOUCH_POS_Y:F

.field public static final blacklist FLOAT_TOUCH_VEL_X:F

.field public static final blacklist FLOAT_TOUCH_VEL_Y:F

.field public static final blacklist FLOAT_WEEK_DAY:F

.field public static final blacklist FLOAT_WINDOW_HEIGHT:F

.field public static final blacklist FLOAT_WINDOW_WIDTH:F

.field public static final blacklist FLOAT_YEAR:F

.field public static final blacklist ID_ACCELERATION_X:I = 0x11

.field public static final blacklist ID_ACCELERATION_Y:I = 0x12

.field public static final blacklist ID_ACCELERATION_Z:I = 0x13

.field public static final blacklist ID_ANIMATION_DELTA_TIME:I = 0x1f

.field public static final blacklist ID_ANIMATION_TIME:I = 0x1e

.field public static final blacklist ID_API_LEVEL:I = 0x1c

.field public static final blacklist ID_CALENDAR_MONTH:I = 0x9

.field public static final blacklist ID_COMPONENT_HEIGHT:I = 0x8

.field public static final blacklist ID_COMPONENT_WIDTH:I = 0x7

.field public static final blacklist ID_CONTINUOUS_SEC:I = 0x1

.field public static final blacklist ID_DAY_OF_MONTH:I = 0xc

.field public static final blacklist ID_DAY_OF_YEAR:I = 0x22

.field public static final blacklist ID_DENSITY:I = 0x1b

.field public static final blacklist ID_EPOCH_SECOND:I = 0x20

.field public static final blacklist ID_FONT_SIZE:I = 0x21

.field public static final blacklist ID_GYRO_ROT_X:I = 0x14

.field public static final blacklist ID_GYRO_ROT_Y:I = 0x15

.field public static final blacklist ID_GYRO_ROT_Z:I = 0x16

.field public static final blacklist ID_LIGHT:I = 0x1a

.field public static final blacklist ID_MAGNETIC_X:I = 0x17

.field public static final blacklist ID_MAGNETIC_Y:I = 0x18

.field public static final blacklist ID_MAGNETIC_Z:I = 0x19

.field public static final blacklist ID_OFFSET_TO_UTC:I = 0xa

.field public static final blacklist ID_TIME_IN_HR:I = 0x4

.field public static final blacklist ID_TIME_IN_MIN:I = 0x3

.field public static final blacklist ID_TIME_IN_SEC:I = 0x2

.field public static final blacklist ID_TOUCH_EVENT_TIME:I = 0x1d

.field public static final blacklist ID_TOUCH_POS_X:I = 0xd

.field public static final blacklist ID_TOUCH_POS_Y:I = 0xe

.field public static final blacklist ID_TOUCH_VEL_X:I = 0xf

.field public static final blacklist ID_TOUCH_VEL_Y:I = 0x10

.field public static final blacklist ID_WEEK_DAY:I = 0xb

.field public static final blacklist ID_WINDOW_HEIGHT:I = 0x6

.field public static final blacklist ID_WINDOW_WIDTH:I = 0x5

.field public static final blacklist ID_YEAR:I = 0x23

.field public static final blacklist INT_EPOCH_SECOND:J = 0x100000020L

.field private static final blacklist MAX_OP_COUNT:I = 0x4e20


# instance fields
.field public blacklist currentTime:J

.field private blacklist mAnimate:Z

.field private blacklist mAnimationTime:F

.field private blacklist mClock:Ljava/time/Clock;

.field blacklist mDebug:I

.field protected blacklist mDensity:F

.field private blacklist mDocLoadTime:J

.field protected blacklist mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

.field public blacklist mHeight:F

.field public blacklist mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

.field blacklist mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

.field private blacklist mOpCount:I

.field protected blacklist mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

.field public blacklist mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

.field private blacklist mTheme:I

.field private blacklist mUseChoreographer:Z

.field public blacklist mWidth:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 757
    const/16 v0, 0x1b

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_DENSITY:F

    .line 760
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_CONTINUOUS_SEC:F

    .line 763
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TIME_IN_SEC:F

    .line 766
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TIME_IN_MIN:F

    .line 769
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TIME_IN_HR:F

    .line 772
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_CALENDAR_MONTH:F

    .line 775
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_WEEK_DAY:F

    .line 778
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_DAY_OF_MONTH:F

    .line 781
    const/16 v0, 0x22

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_DAY_OF_YEAR:F

    .line 784
    const/16 v0, 0x23

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_YEAR:F

    .line 786
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_WINDOW_WIDTH:F

    .line 787
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_WINDOW_HEIGHT:F

    .line 788
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_COMPONENT_WIDTH:F

    .line 789
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_COMPONENT_HEIGHT:F

    .line 792
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_OFFSET_TO_UTC:F

    .line 795
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_POS_X:F

    .line 798
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_POS_Y:F

    .line 801
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_VEL_X:F

    .line 804
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_VEL_Y:F

    .line 807
    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_EVENT_TIME:F

    .line 810
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ANIMATION_TIME:F

    .line 813
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ANIMATION_DELTA_TIME:F

    .line 816
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ACCELERATION_X:F

    .line 819
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ACCELERATION_Y:F

    .line 822
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ACCELERATION_Z:F

    .line 825
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_GYRO_ROT_X:F

    .line 828
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_GYRO_ROT_Y:F

    .line 831
    const/16 v0, 0x16

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_GYRO_ROT_Z:F

    .line 834
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_MAGNETIC_X:F

    .line 837
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_MAGNETIC_Y:F

    .line 840
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_MAGNETIC_Z:F

    .line 843
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_LIGHT:F

    .line 846
    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_API_LEVEL:F

    .line 849
    const/16 v0, 0x21

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_FONT_SIZE:F

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 74
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/SystemClock;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/SystemClock;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;-><init>(Ljava/time/Clock;)V

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(Ljava/time/Clock;)V
    .registers 5

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 53
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDensity:F

    .line 55
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:I

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mTheme:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    .line 63
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimate:Z

    .line 69
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->currentTime:J

    .line 71
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mUseChoreographer:Z

    .line 78
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mClock:Ljava/time/Clock;

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->setDocLoadTime()V

    .line 80
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;-><init>(Ljava/time/Clock;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 81
    return-void
.end method

.method public static blacklist getTime(F)F
    .registers 11

    .line 877
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDateTime;->now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 885
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    .line 886
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Month;->getValue()I

    move-result v2

    .line 887
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    .line 888
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v4

    .line 889
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v5

    .line 890
    mul-int/lit8 v6, v3, 0x3c

    add-int/2addr v6, v4

    .line 891
    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v4, v5

    .line 892
    int-to-float v4, v4

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v5

    int-to-float v5, v5

    const v7, 0x3089705f    # 1.0E-9f

    mul-float/2addr v5, v7

    add-float/2addr v5, v4

    .line 893
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/DayOfWeek;->getValue()I

    move-result v7

    .line 894
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v8

    .line 896
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v9

    .line 897
    invoke-virtual {v0, v9}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v9

    .line 898
    invoke-virtual {v9}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v9

    .line 899
    sparse-switch v1, :sswitch_data_70

    .line 921
    return p0

    .line 919
    :sswitch_51
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getYear()I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 917
    :sswitch_57
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfYear()I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 913
    :sswitch_5d
    int-to-float p0, v8

    return p0

    .line 915
    :sswitch_5f
    int-to-float p0, v7

    return p0

    .line 901
    :sswitch_61
    invoke-virtual {v9}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 911
    :sswitch_67
    int-to-float p0, v2

    return p0

    .line 909
    :sswitch_69
    int-to-float p0, v3

    return p0

    .line 907
    :sswitch_6b
    int-to-float p0, v6

    return p0

    .line 905
    :sswitch_6d
    return v4

    .line 903
    :sswitch_6e
    return v5

    nop

    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_6e
        0x2 -> :sswitch_6d
        0x3 -> :sswitch_6b
        0x4 -> :sswitch_69
        0x9 -> :sswitch_67
        0xa -> :sswitch_61
        0xb -> :sswitch_5f
        0xc -> :sswitch_5d
        0x22 -> :sswitch_57
        0x23 -> :sswitch_51
    .end sparse-switch
.end method

.method public static blacklist isTime(F)Z
    .registers 3

    .line 865
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p0

    .line 866
    const/4 v0, 0x1

    if-lt p0, v0, :cond_c

    const/16 v1, 0xc

    if-gt p0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public abstract blacklist addClickArea(IIFFFFI)V
.end method

.method public abstract blacklist addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V
.end method

.method public blacklist addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V
    .registers 2

    .line 339
    return-void
.end method

.method public blacklist clearLastOpCount()V
    .registers 2

    .line 965
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    .line 966
    return-void
.end method

.method public abstract blacklist clearNamedDataOverride(Ljava/lang/String;)V
.end method

.method public abstract blacklist clearNamedFloatOverride(Ljava/lang/String;)V
.end method

.method public abstract blacklist clearNamedIntegerOverride(Ljava/lang/String;)V
.end method

.method public abstract blacklist clearNamedStringOverride(Ljava/lang/String;)V
.end method

.method public blacklist getAnimationTime()F
    .registers 2

    .line 189
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimationTime:F

    return v0
.end method

.method public blacklist getClock()Ljava/time/Clock;
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mClock:Ljava/time/Clock;

    return-object v0
.end method

.method public blacklist getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    return-object v0
.end method

.method public abstract blacklist getColor(I)I
.end method

.method public abstract blacklist getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;
.end method

.method public blacklist getDensity()F
    .registers 2

    .line 96
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDensity:F

    return v0
.end method

.method public blacklist getDocLoadTime()J
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocLoadTime:J

    return-wide v0
.end method

.method public blacklist getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .registers 2

    .line 458
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    return-object v0
.end method

.method public abstract blacklist getFloat(I)F
.end method

.method public abstract blacklist getInteger(I)I
.end method

.method public blacklist getLastOpCount()I
    .registers 3

    .line 958
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    .line 959
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    .line 960
    return v0
.end method

.method public blacklist getListeners(I)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/VariableSupport;",
            ">;"
        }
    .end annotation

    .line 682
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract blacklist getLong(I)J
.end method

.method public blacklist getMode()Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    return-object v0
.end method

.method public abstract blacklist getObject(I)Ljava/lang/Object;
.end method

.method public blacklist getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .registers 2

    .line 450
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    return-object v0
.end method

.method public abstract blacklist getPathData(I)[F
.end method

.method public abstract blacklist getShader(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
.end method

.method public abstract blacklist getText(I)Ljava/lang/String;
.end method

.method public blacklist getTheme()I
    .registers 2

    .line 433
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mTheme:I

    return v0
.end method

.method public blacklist getUseChoreographer()Z
    .registers 2

    .line 361
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mUseChoreographer:Z

    return v0
.end method

.method public abstract blacklist hapticEffect(I)V
.end method

.method public blacklist header(IIIIIJLcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIJ",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float v1, p4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowWidth(F)V

    .line 507
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float v1, p5

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowHeight(F)V

    .line 508
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setVersion(III)V

    .line 509
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p1, p4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setWidth(I)V

    .line 510
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p1, p5}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setHeight(I)V

    .line 511
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p1, p6, p7}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setRequiredCapabilities(J)V

    .line 512
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p1, p8}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setProperties(Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    .line 513
    return-void
.end method

.method public blacklist incrementOpCount()V
    .registers 3

    .line 946
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    .line 947
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    const/16 v1, 0x4e20

    if-gt v0, v1, :cond_d

    .line 950
    return-void

    .line 948
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Too many operations executed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAnimationEnabled()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimate:Z

    return v0
.end method

.method public blacklist isBasicDebug()Z
    .registers 3

    .line 462
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public blacklist isVisualDebug()Z
    .registers 3

    .line 466
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public abstract blacklist listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
.end method

.method public abstract blacklist loadAnimatedFloat(ILcom/android/internal/widget/remotecompose/core/operations/FloatExpression;)V
.end method

.method public abstract blacklist loadBitmap(ISSII[B)V
.end method

.method public abstract blacklist loadColor(II)V
.end method

.method public abstract blacklist loadFloat(IF)V
.end method

.method public blacklist loadFont(I[B)V
    .registers 4

    .line 388
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_d

    .line 390
    check-cast v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$FontInfo;

    .line 391
    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$FontInfo;->mFontData:[B

    if-ne v0, p2, :cond_d

    .line 392
    return-void

    .line 395
    :cond_d
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$FontInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext$FontInfo;-><init>(I[B)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->putObject(ILjava/lang/Object;)V

    .line 396
    return-void
.end method

.method public abstract blacklist loadInteger(II)V
.end method

.method public abstract blacklist loadPathData(II[F)V
.end method

.method public abstract blacklist loadShader(ILcom/android/internal/widget/remotecompose/core/operations/ShaderData;)V
.end method

.method public abstract blacklist loadText(ILjava/lang/String;)V
.end method

.method public abstract blacklist loadVariableName(Ljava/lang/String;II)V
.end method

.method public blacklist needsRepaint()V
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    if-eqz v0, :cond_9

    .line 351
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->needsRepaint()V

    .line 353
    :cond_9
    return-void
.end method

.method public abstract blacklist overrideFloat(IF)V
.end method

.method public abstract blacklist overrideInteger(II)V
.end method

.method public abstract blacklist overrideText(II)V
.end method

.method public abstract blacklist putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V
.end method

.method public abstract blacklist putObject(ILjava/lang/Object;)V
.end method

.method public abstract blacklist runAction(ILjava/lang/String;)V
.end method

.method public abstract blacklist runNamedAction(ILjava/lang/Object;)V
.end method

.method public blacklist setAnimationEnabled(Z)V
    .registers 2

    .line 129
    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimate:Z

    .line 130
    return-void
.end method

.method public blacklist setAnimationTime(F)V
    .registers 2

    .line 180
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimationTime:F

    .line 181
    return-void
.end method

.method public blacklist setClock(Ljava/time/Clock;)V
    .registers 2

    .line 378
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mClock:Ljava/time/Clock;

    .line 379
    return-void
.end method

.method public blacklist setDebug(I)V
    .registers 2

    .line 470
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:I

    .line 471
    return-void
.end method

.method public blacklist setDensity(F)V
    .registers 3

    .line 105
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    .line 106
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDensity:F

    .line 108
    :cond_d
    return-void
.end method

.method public blacklist setDocLoadTime()V
    .registers 3

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getClock()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocLoadTime:J

    .line 122
    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .registers 2

    .line 479
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 480
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getClock()Ljava/time/Clock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mClock:Ljava/time/Clock;

    .line 481
    return-void
.end method

.method public blacklist setDocumentContentDescription(I)V
    .registers 3

    .line 537
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 538
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setContentDescription(Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public blacklist setMode(Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;)V
    .registers 2

    .line 445
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 446
    return-void
.end method

.method public abstract blacklist setNamedColorOverride(Ljava/lang/String;I)V
.end method

.method public abstract blacklist setNamedDataOverride(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract blacklist setNamedFloatOverride(Ljava/lang/String;F)V
.end method

.method public abstract blacklist setNamedIntegerOverride(Ljava/lang/String;I)V
.end method

.method public abstract blacklist setNamedLong(Ljava/lang/String;J)V
.end method

.method public abstract blacklist setNamedStringOverride(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public blacklist setPaintContext(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 2

    .line 454
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 455
    return-void
.end method

.method public blacklist setRootContentBehavior(IIII)V
    .registers 6

    .line 528
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setRootContentBehavior(IIII)V

    .line 529
    return-void
.end method

.method public blacklist setTheme(I)V
    .registers 2

    .line 437
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mTheme:I

    .line 438
    return-void
.end method

.method public blacklist setUseChoreographer(Z)V
    .registers 2

    .line 370
    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mUseChoreographer:Z

    .line 371
    return-void
.end method

.method public blacklist supportsVersion(III)Z
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->supportsVersion(III)Z

    move-result p1

    return p1
.end method

.method public abstract blacklist updateOps()I
.end method
