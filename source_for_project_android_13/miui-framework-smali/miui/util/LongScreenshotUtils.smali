.class public Lmiui/util/LongScreenshotUtils;
.super Ljava/lang/Object;
.source "LongScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/LongScreenshotUtils$ContentPort;,
        Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_LONG_SCREENSHOT:Ljava/lang/String; = "com.miui.util.LongScreenshotUtils.LongScreenshot"

.field static final blacklist DELAY_FOR_BROADCAST_CALLBACK:I = 0xc8

.field static final blacklist DELAY_FOR_FINISH:I = 0x1f4

.field public static final blacklist EXTRA_BOTTOM_LOC:Ljava/lang/String; = "BottomLoc"

.field public static final blacklist EXTRA_CURRENT_SURFACE_CONTROL:Ljava/lang/String; = "CurrentSurfaceControl"

.field public static final blacklist EXTRA_CURRENT_SURFACE_SIZE:Ljava/lang/String; = "CurrentSurfaceSize"

.field public static final blacklist EXTRA_IS_END:Ljava/lang/String; = "IsEnd"

.field public static final blacklist EXTRA_IS_LONG_SCREENSHOT:Ljava/lang/String; = "IsLongScreenshot"

.field public static final blacklist EXTRA_IS_SCREENSHOT:Ljava/lang/String; = "IsScreenshot"

.field public static final blacklist EXTRA_IS_SPLIT:Ljava/lang/String; = "is_split_activity"

.field public static final blacklist EXTRA_SCROLL_OFFSET:Ljava/lang/String; = "scroll_offset"

.field public static final blacklist EXTRA_TOP_LOC:Ljava/lang/String; = "TopLoc"

.field public static final blacklist EXTRA_VIEW_BOTTOM:Ljava/lang/String; = "ViewBottom"

.field public static final blacklist EXTRA_VIEW_TOP:Ljava/lang/String; = "ViewTop"

.field public static final blacklist LONG_SCREENSHOT_CMD_DETECT:I = 0x1

.field public static final blacklist LONG_SCREENSHOT_CMD_FINISH:I = 0x4

.field public static final blacklist LONG_SCREENSHOT_CMD_START:I = 0x2

.field public static final blacklist LONG_SCREENSHOT_CMD_TAKED:I = 0x3

.field static final blacklist MAX_HEIGHT_FOR_SCREEN_COUNT:I = 0x8

.field private static final blacklist TAG:Ljava/lang/String; = "LongScreenshotUtils"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist inLargeScreen()Z
    .registers 4

    .line 961
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 962
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    .line 963
    .local v1, "SCREEN_SIZE":I
    const/4 v2, 0x3

    if-lt v1, v2, :cond_11

    .line 964
    const/4 v2, 0x1

    return v2

    .line 966
    :cond_11
    const-string v2, "LongScreenshotUtils"

    const-string v3, "inLargeScreen false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist isFold()Z
    .registers 3

    .line 975
    const-string v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public static blacklist isPad()Z
    .registers 1

    .line 971
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    return v0
.end method
