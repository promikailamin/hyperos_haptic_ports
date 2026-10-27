.class public Lmiui/freedrag/MiuiFreeDragConstants;
.super Ljava/lang/Object;
.source "MiuiFreeDragConstants.java"


# static fields
.field public static final blacklist ALLOW_PACKAGE_LIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEBUG:Z = true

.field public static final blacklist DEBUG_INPUT:Z = false

.field public static final blacklist DEL_FILE_DELAY_MILLIS:J = 0x1388L

.field public static final blacklist DRAG_SHADOW_ALPHA:I = 0x99

.field public static final blacklist IS_FOLD:Z

.field private static final blacklist LONG_PRESS_DELAY_MILLIS:I = 0xc8

.field public static final blacklist LONG_PRESS_MILLIS:I

.field public static final blacklist MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field public static blacklist TOUCH_SLOP:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/freedrag/MiuiFreeDragConstants;->ALLOW_PACKAGE_LIST:Ljava/util/HashSet;

    .line 17
    const-string v1, "com.jingdong.app.mall"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    const-string v1, "com.taobao.taobao"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    const-string v1, "com.sina.weibo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    const-string v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_21

    const/4 v1, 0x1

    :cond_21
    sput-boolean v1, Lmiui/freedrag/MiuiFreeDragConstants;->IS_FOLD:Z

    .line 26
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    add-int/lit16 v0, v0, 0xc8

    sput v0, Lmiui/freedrag/MiuiFreeDragConstants;->LONG_PRESS_MILLIS:I

    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lmiui/freedrag/MiuiFreeDragConstants;->TOUCH_SLOP:F

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
