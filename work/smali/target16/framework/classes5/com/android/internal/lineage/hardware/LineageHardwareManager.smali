.class public final Lcom/android/internal/lineage/hardware/LineageHardwareManager;
.super Ljava/lang/Object;
.source "LineageHardwareManager.java"


# static fields
.field private static final blacklist BOOLEAN_FEATURES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist COLOR_CALIBRATION_BLUE_INDEX:I = 0x2

.field public static final blacklist COLOR_CALIBRATION_GREEN_INDEX:I = 0x1

.field public static final blacklist COLOR_CALIBRATION_MAX_INDEX:I = 0x4

.field public static final blacklist COLOR_CALIBRATION_MIN_INDEX:I = 0x3

.field public static final blacklist COLOR_CALIBRATION_RED_INDEX:I = 0x0

.field public static final blacklist FEATURE_ADAPTIVE_BACKLIGHT:I = 0x1

.field public static final blacklist FEATURE_ANTI_FLICKER:I = 0x200000

.field public static final blacklist FEATURE_AUTO_CONTRAST:I = 0x1000

.field public static final blacklist FEATURE_COLOR_BALANCE:I = 0x20000

.field public static final blacklist FEATURE_COLOR_ENHANCEMENT:I = 0x2

.field public static final blacklist FEATURE_DISPLAY_COLOR_CALIBRATION:I = 0x4

.field public static final blacklist FEATURE_DISPLAY_MODES:I = 0x2000

.field public static final blacklist FEATURE_HIGH_TOUCH_POLLING_RATE:I = 0x8

.field public static final blacklist FEATURE_HIGH_TOUCH_SENSITIVITY:I = 0x10

.field public static final blacklist FEATURE_KEY_DISABLE:I = 0x20

.field public static final blacklist FEATURE_PICTURE_ADJUSTMENT:I = 0x40000

.field public static final blacklist FEATURE_READING_ENHANCEMENT:I = 0x4000

.field public static final blacklist FEATURE_SUNLIGHT_ENHANCEMENT:I = 0x100

.field public static final blacklist FEATURE_TOUCHSCREEN_GESTURES:I = 0x80000

.field public static final blacklist FEATURE_TOUCH_HOVERING:I = 0x800

.field private static final blacklist TAG:Ljava/lang/String; = "LineageHardwareManager"

.field private static blacklist sLineageHardwareManagerInstance:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

.field private static blacklist sService:Lcom/android/internal/lineage/hardware/ILineageHardwareService;


# instance fields
.field private blacklist mAIDLMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mDisplayModeMappings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFilterDisplayModes:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 165
    nop

    .line 166
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 167
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 168
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 169
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 170
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 171
    const/high16 v0, 0x200000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 172
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 173
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 174
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 175
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Integer;

    move-result-object v0

    .line 165
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 9

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mDisplayModeMappings:Landroid/util/ArrayMap;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_1a

    .line 194
    iput-object v0, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mContext:Landroid/content/Context;

    goto :goto_1c

    .line 196
    :cond_1a
    iput-object p1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mContext:Landroid/content/Context;

    .line 198
    :goto_1c
    invoke-static {}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getService()Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    move-result-object p1

    sput-object p1, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->sService:Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    .line 200
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->checkService()Z

    move-result p1

    if-nez p1, :cond_2f

    .line 201
    const-string p1, "LineageHardwareManager"

    const-string v0, "Unable to get LineageHardwareService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2f
    iget-object p1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070061

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 208
    if-eqz p1, :cond_5f

    array-length v0, p1

    if-lez v0, :cond_5f

    .line 209
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_44
    if-ge v2, v0, :cond_5f

    aget-object v3, p1, v2

    .line 210
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 211
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5c

    .line 212
    iget-object v4, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mDisplayModeMappings:Landroid/util/ArrayMap;

    aget-object v5, v3, v1

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 216
    :cond_5f
    iget-object p1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x11101c2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mFilterDisplayModes:Z

    .line 218
    return-void
.end method

.method private blacklist checkService()Z
    .registers 3

    .line 847
    invoke-static {}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getService()Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    move-result-object v0

    sput-object v0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->sService:Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    .line 848
    sget-object v0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->sService:Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    if-nez v0, :cond_13

    .line 849
    const-string v0, "LineageHardwareManager"

    const-string v1, "not connected to LineageHardwareManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v0, 0x0

    return v0

    .line 852
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist getAIDLService(I)Landroid/os/IBinder;
    .registers 4

    .line 275
    const-string v0, "/default"

    sparse-switch p1, :sswitch_data_170

    .line 322
    const/4 p1, 0x0

    return-object p1

    .line 280
    :sswitch_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/lineage/livedisplay/IAntiFlicker;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 319
    :sswitch_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/lineage/touch/ITouchscreenGesture;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 307
    :sswitch_37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/lineage/livedisplay/IPictureAdjustment;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 286
    :sswitch_4f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/lineage/livedisplay/IColorBalance;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 310
    :sswitch_67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/lineage/livedisplay/IReadingEnhancement;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 295
    :sswitch_7f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/lineage/livedisplay/IDisplayModes;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 283
    :sswitch_97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/lineage/livedisplay/IAutoContrast;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 316
    :sswitch_af
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/lineage/touch/IStylusMode;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 313
    :sswitch_c7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/lineage/livedisplay/ISunlightEnhancement;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 304
    :sswitch_df
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/lineage/touch/IKeyDisabler;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 301
    :sswitch_f7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/lineage/touch/IGloveMode;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 298
    :sswitch_10f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/lineage/touch/IHighTouchPollingRate;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 292
    :sswitch_127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/lineage/livedisplay/IDisplayColorCalibration;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 289
    :sswitch_13f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/lineage/livedisplay/IColorEnhancement;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 277
    :sswitch_157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/lineage/livedisplay/IAdaptiveBacklight;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_170
    .sparse-switch
        0x1 -> :sswitch_157
        0x2 -> :sswitch_13f
        0x4 -> :sswitch_127
        0x8 -> :sswitch_10f
        0x10 -> :sswitch_f7
        0x20 -> :sswitch_df
        0x100 -> :sswitch_c7
        0x800 -> :sswitch_af
        0x1000 -> :sswitch_97
        0x2000 -> :sswitch_7f
        0x4000 -> :sswitch_67
        0x20000 -> :sswitch_4f
        0x40000 -> :sswitch_37
        0x80000 -> :sswitch_1f
        0x200000 -> :sswitch_7
    .end sparse-switch
.end method

.method private blacklist getArrayValue([III)I
    .registers 5

    .line 484
    if-eqz p1, :cond_9

    array-length v0, p1

    if-gt v0, p2, :cond_6

    goto :goto_9

    .line 488
    :cond_6
    aget p1, p1, p2

    return p1

    .line 485
    :cond_9
    :goto_9
    return p3
.end method

.method private blacklist getDisplayColorCalibrationArray()[I
    .registers 3

    .line 514
    const/4 v0, 0x4

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 515
    iget-object v1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    .line 517
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 516
    invoke-static {v0}, Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IDisplayColorCalibration;

    move-result-object v0

    .line 518
    invoke-interface {v0}, Lvendor/lineage/livedisplay/IDisplayColorCalibration;->getCalibration()[I

    move-result-object v0

    return-object v0

    .line 520
    :cond_1c
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 521
    sget-object v0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->sService:Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    invoke-interface {v0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService;->getDisplayColorCalibration()[I

    move-result-object v0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_28} :catch_2a

    return-object v0

    .line 524
    :cond_29
    goto :goto_2b

    .line 523
    :catch_2a
    move-exception v0

    .line 525
    :goto_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/lineage/hardware/LineageHardwareManager;
    .registers 2

    .line 226
    sget-object v0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->sLineageHardwareManagerInstance:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    if-nez v0, :cond_b

    .line 227
    new-instance v0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    invoke-direct {v0, p0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->sLineageHardwareManagerInstance:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    .line 229
    :cond_b
    sget-object p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->sLineageHardwareManagerInstance:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    return-object p0
.end method

.method public static blacklist getService()Lcom/android/internal/lineage/hardware/ILineageHardwareService;
    .registers 1

    .line 234
    sget-object v0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->sService:Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    if-eqz v0, :cond_7

    .line 235
    sget-object v0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->sService:Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    return-object v0

    .line 237
    :cond_7
    const-string v0, "lineagehardware"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_18

    .line 239
    invoke-static {v0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    move-result-object v0

    sput-object v0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->sService:Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    .line 240
    sget-object v0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->sService:Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    return-object v0

    .line 242
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist isSupportedAIDL(I)Z
    .registers 5

    .line 258
    iget-object v0, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 259
    iget-object v0, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getAIDLService(I)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_19
    iget-object v0, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_27

    const/4 p1, 0x1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    return p1
.end method

.method private blacklist isSupportedLegacy(I)Z
    .registers 4

    .line 266
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 267
    sget-object v1, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->sService:Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    invoke-interface {v1}, Lcom/android/internal/lineage/hardware/ILineageHardwareService;->getSupportedFeatures()I

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_13

    and-int/2addr v1, p1

    if-ne p1, v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    .line 270
    :cond_12
    goto :goto_14

    .line 269
    :catch_13
    move-exception p1

    .line 271
    :goto_14
    return v0
.end method

.method private blacklist remapDisplayMode(Lcom/android/internal/lineage/hardware/DisplayMode;)Lcom/android/internal/lineage/hardware/DisplayMode;
    .registers 5

    .line 706
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 707
    return-object v0

    .line 709
    :cond_4
    iget-object v1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mDisplayModeMappings:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/internal/lineage/hardware/DisplayMode;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 710
    new-instance v0, Lcom/android/internal/lineage/hardware/DisplayMode;

    iget v1, p1, Lcom/android/internal/lineage/hardware/DisplayMode;->id:I

    iget-object v2, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mDisplayModeMappings:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/internal/lineage/hardware/DisplayMode;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/lineage/hardware/DisplayMode;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 712
    :cond_20
    iget-boolean v1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mFilterDisplayModes:Z

    if-nez v1, :cond_25

    .line 713
    return-object p1

    .line 715
    :cond_25
    return-object v0
.end method


# virtual methods
.method public blacklist get(I)Z
    .registers 4

    .line 355
    sget-object v0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 360
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 361
    iget-object v0, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 362
    sparse-switch p1, :sswitch_data_a6

    .line 384
    goto :goto_89

    .line 366
    :sswitch_22
    invoke-static {v0}, Lvendor/lineage/livedisplay/IAntiFlicker$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IAntiFlicker;

    move-result-object p1

    invoke-interface {p1}, Lvendor/lineage/livedisplay/IAntiFlicker;->getEnabled()Z

    move-result p1

    return p1

    .line 378
    :sswitch_2b
    invoke-static {v0}, Lvendor/lineage/livedisplay/IReadingEnhancement$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IReadingEnhancement;

    move-result-object p1

    invoke-interface {p1}, Lvendor/lineage/livedisplay/IReadingEnhancement;->getEnabled()Z

    move-result p1

    return p1

    .line 368
    :sswitch_34
    invoke-static {v0}, Lvendor/lineage/livedisplay/IAutoContrast$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IAutoContrast;

    move-result-object p1

    invoke-interface {p1}, Lvendor/lineage/livedisplay/IAutoContrast;->getEnabled()Z

    move-result p1

    return p1

    .line 382
    :sswitch_3d
    invoke-static {v0}, Lvendor/lineage/touch/IStylusMode$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/touch/IStylusMode;

    move-result-object p1

    invoke-interface {p1}, Lvendor/lineage/touch/IStylusMode;->getEnabled()Z

    move-result p1

    return p1

    .line 380
    :sswitch_46
    invoke-static {v0}, Lvendor/lineage/livedisplay/ISunlightEnhancement$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/ISunlightEnhancement;

    move-result-object p1

    invoke-interface {p1}, Lvendor/lineage/livedisplay/ISunlightEnhancement;->getEnabled()Z

    move-result p1

    return p1

    .line 376
    :sswitch_4f
    invoke-static {v0}, Lvendor/lineage/touch/IKeyDisabler$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/touch/IKeyDisabler;

    move-result-object p1

    invoke-interface {p1}, Lvendor/lineage/touch/IKeyDisabler;->getEnabled()Z

    move-result p1

    return p1

    .line 374
    :sswitch_58
    invoke-static {v0}, Lvendor/lineage/touch/IGloveMode$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/touch/IGloveMode;

    move-result-object p1

    invoke-interface {p1}, Lvendor/lineage/touch/IGloveMode;->getEnabled()Z

    move-result p1

    return p1

    .line 372
    :sswitch_61
    invoke-static {v0}, Lvendor/lineage/touch/IHighTouchPollingRate$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/touch/IHighTouchPollingRate;

    move-result-object p1

    invoke-interface {p1}, Lvendor/lineage/touch/IHighTouchPollingRate;->getEnabled()Z

    move-result p1

    return p1

    .line 370
    :sswitch_6a
    invoke-static {v0}, Lvendor/lineage/livedisplay/IColorEnhancement$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IColorEnhancement;

    move-result-object p1

    invoke-interface {p1}, Lvendor/lineage/livedisplay/IColorEnhancement;->getEnabled()Z

    move-result p1

    return p1

    .line 364
    :sswitch_73
    invoke-static {v0}, Lvendor/lineage/livedisplay/IAdaptiveBacklight$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IAdaptiveBacklight;

    move-result-object p1

    invoke-interface {p1}, Lvendor/lineage/livedisplay/IAdaptiveBacklight;->getEnabled()Z

    move-result p1

    return p1

    .line 384
    :cond_7c
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 385
    sget-object v0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->sService:Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    invoke-interface {v0, p1}, Lcom/android/internal/lineage/hardware/ILineageHardwareService;->get(I)Z

    move-result p1
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_88} :catch_8a

    return p1

    .line 388
    :cond_89
    :goto_89
    goto :goto_8b

    .line 387
    :catch_8a
    move-exception p1

    .line 389
    :goto_8b
    const/4 p1, 0x0

    return p1

    .line 356
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not a boolean"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_a6
    .sparse-switch
        0x1 -> :sswitch_73
        0x2 -> :sswitch_6a
        0x8 -> :sswitch_61
        0x10 -> :sswitch_58
        0x20 -> :sswitch_4f
        0x100 -> :sswitch_46
        0x800 -> :sswitch_3d
        0x1000 -> :sswitch_34
        0x4000 -> :sswitch_2b
        0x200000 -> :sswitch_22
    .end sparse-switch
.end method

.method public blacklist getColorBalance()I
    .registers 3

    .line 738
    const/high16 v0, 0x20000

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 739
    iget-object v1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    .line 740
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lvendor/lineage/livedisplay/IColorBalance$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IColorBalance;

    move-result-object v0

    .line 741
    invoke-interface {v0}, Lvendor/lineage/livedisplay/IColorBalance;->getColorBalance()I

    move-result v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1c} :catch_1e

    return v0

    .line 744
    :cond_1d
    goto :goto_1f

    .line 743
    :catch_1e
    move-exception v0

    .line 745
    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getColorBalanceRange()Landroid/util/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 723
    const/high16 v0, 0x20000

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 724
    iget-object v1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    .line 725
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lvendor/lineage/livedisplay/IColorBalance$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IColorBalance;

    move-result-object v0

    .line 726
    invoke-interface {v0}, Lvendor/lineage/livedisplay/IColorBalance;->getColorBalanceRange()Lvendor/lineage/livedisplay/Range;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/lineage/hardware/AIDLHelper;->fromAIDLRange(Lvendor/lineage/livedisplay/Range;)Landroid/util/Range;

    move-result-object v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_20} :catch_22

    return-object v0

    .line 729
    :cond_21
    goto :goto_23

    .line 728
    :catch_22
    move-exception v0

    .line 730
    :goto_23
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public blacklist getCurrentDisplayMode()Lcom/android/internal/lineage/hardware/DisplayMode;
    .registers 4

    .line 659
    nop

    .line 661
    const/16 v0, 0x2000

    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 662
    iget-object v2, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    .line 663
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lvendor/lineage/livedisplay/IDisplayModes$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IDisplayModes;

    move-result-object v0

    .line 664
    invoke-interface {v0}, Lvendor/lineage/livedisplay/IDisplayModes;->getCurrentDisplayMode()Lvendor/lineage/livedisplay/DisplayMode;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/lineage/hardware/AIDLHelper;->fromAIDLMode(Lvendor/lineage/livedisplay/DisplayMode;)Lcom/android/internal/lineage/hardware/DisplayMode;

    move-result-object v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_22} :catch_2d
    .catchall {:try_start_4 .. :try_end_22} :catchall_2b

    goto :goto_24

    .line 661
    :cond_23
    move-object v0, v1

    .line 668
    :goto_24
    if-eqz v0, :cond_2a

    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->remapDisplayMode(Lcom/android/internal/lineage/hardware/DisplayMode;)Lcom/android/internal/lineage/hardware/DisplayMode;

    move-result-object v1

    :cond_2a
    return-object v1

    :catchall_2b
    move-exception v0

    return-object v1

    .line 666
    :catch_2d
    move-exception v0

    .line 668
    return-object v1
.end method

.method public blacklist getDefaultDisplayMode()Lcom/android/internal/lineage/hardware/DisplayMode;
    .registers 4

    .line 676
    nop

    .line 678
    const/16 v0, 0x2000

    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 679
    iget-object v2, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    .line 680
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lvendor/lineage/livedisplay/IDisplayModes$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IDisplayModes;

    move-result-object v0

    .line 681
    invoke-interface {v0}, Lvendor/lineage/livedisplay/IDisplayModes;->getDefaultDisplayMode()Lvendor/lineage/livedisplay/DisplayMode;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/lineage/hardware/AIDLHelper;->fromAIDLMode(Lvendor/lineage/livedisplay/DisplayMode;)Lcom/android/internal/lineage/hardware/DisplayMode;

    move-result-object v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_22} :catch_2d
    .catchall {:try_start_4 .. :try_end_22} :catchall_2b

    goto :goto_24

    .line 678
    :cond_23
    move-object v0, v1

    .line 685
    :goto_24
    if-eqz v0, :cond_2a

    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->remapDisplayMode(Lcom/android/internal/lineage/hardware/DisplayMode;)Lcom/android/internal/lineage/hardware/DisplayMode;

    move-result-object v1

    :cond_2a
    return-object v1

    :catchall_2b
    move-exception v0

    return-object v1

    .line 683
    :catch_2d
    move-exception v0

    .line 685
    return-object v1
.end method

.method public blacklist getDefaultPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;
    .registers 3

    .line 792
    const/high16 v0, 0x40000

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 793
    iget-object v1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    .line 794
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 793
    invoke-static {v0}, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IPictureAdjustment;

    move-result-object v0

    .line 795
    invoke-interface {v0}, Lvendor/lineage/livedisplay/IPictureAdjustment;->getDefaultPictureAdjustment()Lvendor/lineage/livedisplay/HSIC;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/lineage/hardware/AIDLHelper;->fromAIDLHSIC(Lvendor/lineage/livedisplay/HSIC;)Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_20} :catch_22

    return-object v0

    .line 798
    :cond_21
    goto :goto_23

    .line 797
    :catch_22
    move-exception v0

    .line 799
    :goto_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDisplayColorCalibration()[I
    .registers 4

    .line 532
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    .line 533
    if-eqz v0, :cond_10

    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_b

    goto :goto_10

    .line 536
    :cond_b
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0

    .line 534
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDisplayColorCalibrationMax()I
    .registers 4

    .line 561
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 562
    iget-object v1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    .line 564
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 563
    invoke-static {v0}, Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IDisplayColorCalibration;

    move-result-object v0

    .line 566
    :try_start_18
    invoke-interface {v0}, Lvendor/lineage/livedisplay/IDisplayColorCalibration;->getMaxValue()I

    move-result v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1c} :catch_1d

    return v0

    .line 567
    :catch_1d
    move-exception v0

    .line 568
    return v2

    .line 572
    :cond_1f
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public blacklist getDisplayColorCalibrationMin()I
    .registers 4

    .line 543
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 544
    iget-object v1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    .line 546
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 545
    invoke-static {v0}, Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IDisplayColorCalibration;

    move-result-object v0

    .line 548
    :try_start_18
    invoke-interface {v0}, Lvendor/lineage/livedisplay/IDisplayColorCalibration;->getMinValue()I

    move-result v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1c} :catch_1d

    return v0

    .line 549
    :catch_1d
    move-exception v0

    .line 550
    return v2

    .line 554
    :cond_1f
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public blacklist getDisplayModes()[Lcom/android/internal/lineage/hardware/DisplayMode;
    .registers 7

    .line 632
    nop

    .line 634
    const/16 v0, 0x2000

    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 635
    iget-object v2, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    .line 636
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lvendor/lineage/livedisplay/IDisplayModes$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IDisplayModes;

    move-result-object v0

    .line 637
    invoke-interface {v0}, Lvendor/lineage/livedisplay/IDisplayModes;->getDisplayModes()[Lvendor/lineage/livedisplay/DisplayMode;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/lineage/hardware/AIDLHelper;->fromAIDLModes([Lvendor/lineage/livedisplay/DisplayMode;)[Lcom/android/internal/lineage/hardware/DisplayMode;

    move-result-object v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_22} :catch_4a
    .catchall {:try_start_4 .. :try_end_22} :catchall_48

    goto :goto_24

    .line 634
    :cond_23
    move-object v0, v1

    .line 641
    :goto_24
    if-nez v0, :cond_27

    .line 642
    return-object v1

    .line 644
    :cond_27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 645
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_2f
    if-ge v4, v2, :cond_3f

    aget-object v5, v0, v4

    .line 646
    invoke-direct {p0, v5}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->remapDisplayMode(Lcom/android/internal/lineage/hardware/DisplayMode;)Lcom/android/internal/lineage/hardware/DisplayMode;

    move-result-object v5

    .line 647
    if-eqz v5, :cond_3c

    .line 648
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 651
    :cond_3f
    new-array v0, v3, [Lcom/android/internal/lineage/hardware/DisplayMode;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/lineage/hardware/DisplayMode;

    return-object v0

    .line 641
    :catchall_48
    move-exception v0

    .line 642
    return-object v1

    .line 639
    :catch_4a
    move-exception v0

    .line 641
    nop

    .line 642
    return-object v1
.end method

.method public blacklist getPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;
    .registers 3

    .line 775
    const/high16 v0, 0x40000

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 776
    iget-object v1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    .line 777
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 776
    invoke-static {v0}, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IPictureAdjustment;

    move-result-object v0

    .line 778
    invoke-interface {v0}, Lvendor/lineage/livedisplay/IPictureAdjustment;->getPictureAdjustment()Lvendor/lineage/livedisplay/HSIC;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/lineage/hardware/AIDLHelper;->fromAIDLHSIC(Lvendor/lineage/livedisplay/HSIC;)Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_20} :catch_22

    return-object v0

    .line 781
    :cond_21
    goto :goto_23

    .line 780
    :catch_22
    move-exception v0

    .line 782
    :goto_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPictureAdjustmentRanges()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 828
    const/high16 v0, 0x40000

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 829
    iget-object v1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    .line 830
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 829
    invoke-static {v0}, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IPictureAdjustment;

    move-result-object v0

    .line 831
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/util/Range;

    .line 832
    invoke-interface {v0}, Lvendor/lineage/livedisplay/IPictureAdjustment;->getHueRange()Lvendor/lineage/livedisplay/FloatRange;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/lineage/hardware/AIDLHelper;->fromAIDLRange(Lvendor/lineage/livedisplay/FloatRange;)Landroid/util/Range;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 833
    invoke-interface {v0}, Lvendor/lineage/livedisplay/IPictureAdjustment;->getSaturationRange()Lvendor/lineage/livedisplay/FloatRange;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/lineage/hardware/AIDLHelper;->fromAIDLRange(Lvendor/lineage/livedisplay/FloatRange;)Landroid/util/Range;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 834
    invoke-interface {v0}, Lvendor/lineage/livedisplay/IPictureAdjustment;->getIntensityRange()Lvendor/lineage/livedisplay/FloatRange;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/lineage/hardware/AIDLHelper;->fromAIDLRange(Lvendor/lineage/livedisplay/FloatRange;)Landroid/util/Range;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 835
    invoke-interface {v0}, Lvendor/lineage/livedisplay/IPictureAdjustment;->getContrastRange()Lvendor/lineage/livedisplay/FloatRange;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/lineage/hardware/AIDLHelper;->fromAIDLRange(Lvendor/lineage/livedisplay/FloatRange;)Landroid/util/Range;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 836
    invoke-interface {v0}, Lvendor/lineage/livedisplay/IPictureAdjustment;->getSaturationThresholdRange()Lvendor/lineage/livedisplay/FloatRange;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/lineage/hardware/AIDLHelper;->fromAIDLRange(Lvendor/lineage/livedisplay/FloatRange;)Landroid/util/Range;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 831
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_56} :catch_58

    return-object v0

    .line 839
    :cond_57
    goto :goto_59

    .line 838
    :catch_58
    move-exception v0

    .line 840
    :goto_59
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTouchscreenGestures()[Lcom/android/internal/lineage/hardware/TouchscreenGesture;
    .registers 3

    .line 456
    const/high16 v0, 0x80000

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 457
    iget-object v1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    .line 458
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 457
    invoke-static {v0}, Lvendor/lineage/touch/ITouchscreenGesture$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/touch/ITouchscreenGesture;

    move-result-object v0

    .line 459
    invoke-interface {v0}, Lvendor/lineage/touch/ITouchscreenGesture;->getSupportedGestures()[Lvendor/lineage/touch/Gesture;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/lineage/hardware/AIDLHelper;->fromAIDLGestures([Lvendor/lineage/touch/Gesture;)[Lcom/android/internal/lineage/hardware/TouchscreenGesture;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_22

    return-object v0

    .line 462
    :cond_21
    goto :goto_23

    .line 461
    :catch_22
    move-exception v0

    .line 463
    :goto_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isSunlightEnhancementSelfManaged()Z
    .registers 2

    .line 620
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 621
    sget-object v0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->sService:Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    invoke-interface {v0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService;->isSunlightEnhancementSelfManaged()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return v0

    .line 624
    :cond_d
    goto :goto_f

    .line 623
    :catch_e
    move-exception v0

    .line 625
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupported(I)Z
    .registers 3

    .line 253
    invoke-direct {p0, p1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedLegacy(I)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public blacklist isSupported(Ljava/lang/String;)Z
    .registers 5

    .line 331
    const-string v0, "FEATURE_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 332
    return v1

    .line 335
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 336
    if-eqz p1, :cond_24

    .line 337
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result p1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_23} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_23} :catch_25

    return p1

    .line 341
    :cond_24
    goto :goto_2f

    .line 339
    :catch_25
    move-exception p1

    .line 340
    const-string v0, "LineageHardwareManager"

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    :goto_2f
    return v1
.end method

.method public blacklist requireAdaptiveBacklightForSunlightEnhancement()Z
    .registers 2

    .line 607
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 608
    sget-object v0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->sService:Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    invoke-interface {v0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService;->requireAdaptiveBacklightForSunlightEnhancement()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return v0

    .line 611
    :cond_d
    goto :goto_f

    .line 610
    :catch_e
    move-exception v0

    .line 612
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist set(IZ)Z
    .registers 5

    .line 403
    sget-object v0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 408
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 409
    iget-object v0, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 410
    sparse-switch p1, :sswitch_data_9e

    goto :goto_72

    .line 415
    :sswitch_22
    invoke-static {v0}, Lvendor/lineage/livedisplay/IAntiFlicker$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IAntiFlicker;

    move-result-object p1

    invoke-interface {p1, p2}, Lvendor/lineage/livedisplay/IAntiFlicker;->setEnabled(Z)V

    .line 416
    goto :goto_72

    .line 433
    :sswitch_2a
    invoke-static {v0}, Lvendor/lineage/livedisplay/IReadingEnhancement$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IReadingEnhancement;

    move-result-object p1

    invoke-interface {p1, p2}, Lvendor/lineage/livedisplay/IReadingEnhancement;->setEnabled(Z)V

    .line 434
    goto :goto_72

    .line 418
    :sswitch_32
    invoke-static {v0}, Lvendor/lineage/livedisplay/IAutoContrast$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IAutoContrast;

    move-result-object p1

    invoke-interface {p1, p2}, Lvendor/lineage/livedisplay/IAutoContrast;->setEnabled(Z)V

    .line 419
    goto :goto_72

    .line 439
    :sswitch_3a
    invoke-static {v0}, Lvendor/lineage/touch/IStylusMode$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/touch/IStylusMode;

    move-result-object p1

    invoke-interface {p1, p2}, Lvendor/lineage/touch/IStylusMode;->setEnabled(Z)V

    goto :goto_72

    .line 436
    :sswitch_42
    invoke-static {v0}, Lvendor/lineage/livedisplay/ISunlightEnhancement$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/ISunlightEnhancement;

    move-result-object p1

    invoke-interface {p1, p2}, Lvendor/lineage/livedisplay/ISunlightEnhancement;->setEnabled(Z)V

    .line 437
    goto :goto_72

    .line 430
    :sswitch_4a
    invoke-static {v0}, Lvendor/lineage/touch/IKeyDisabler$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/touch/IKeyDisabler;

    move-result-object p1

    invoke-interface {p1, p2}, Lvendor/lineage/touch/IKeyDisabler;->setEnabled(Z)V

    .line 431
    goto :goto_72

    .line 427
    :sswitch_52
    invoke-static {v0}, Lvendor/lineage/touch/IGloveMode$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/touch/IGloveMode;

    move-result-object p1

    invoke-interface {p1, p2}, Lvendor/lineage/touch/IGloveMode;->setEnabled(Z)V

    .line 428
    goto :goto_72

    .line 424
    :sswitch_5a
    invoke-static {v0}, Lvendor/lineage/touch/IHighTouchPollingRate$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/touch/IHighTouchPollingRate;

    move-result-object p1

    invoke-interface {p1, p2}, Lvendor/lineage/touch/IHighTouchPollingRate;->setEnabled(Z)V

    .line 425
    goto :goto_72

    .line 421
    :sswitch_62
    invoke-static {v0}, Lvendor/lineage/livedisplay/IColorEnhancement$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IColorEnhancement;

    move-result-object p1

    invoke-interface {p1, p2}, Lvendor/lineage/livedisplay/IColorEnhancement;->setEnabled(Z)V

    .line 422
    goto :goto_72

    .line 412
    :sswitch_6a
    invoke-static {v0}, Lvendor/lineage/livedisplay/IAdaptiveBacklight$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IAdaptiveBacklight;

    move-result-object p1

    invoke-interface {p1, p2}, Lvendor/lineage/livedisplay/IAdaptiveBacklight;->setEnabled(Z)V

    .line 413
    nop

    .line 442
    :goto_72
    return p2

    .line 443
    :cond_73
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 444
    sget-object v0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->sService:Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/lineage/hardware/ILineageHardwareService;->set(IZ)Z

    move-result p1
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_7f} :catch_81

    return p1

    .line 447
    :cond_80
    goto :goto_82

    .line 446
    :catch_81
    move-exception p1

    .line 448
    :goto_82
    const/4 p1, 0x0

    return p1

    .line 404
    :cond_84
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not a boolean"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :sswitch_data_9e
    .sparse-switch
        0x1 -> :sswitch_6a
        0x2 -> :sswitch_62
        0x8 -> :sswitch_5a
        0x10 -> :sswitch_52
        0x20 -> :sswitch_4a
        0x100 -> :sswitch_42
        0x800 -> :sswitch_3a
        0x1000 -> :sswitch_32
        0x4000 -> :sswitch_2a
        0x200000 -> :sswitch_22
    .end sparse-switch
.end method

.method public blacklist setColorBalance(I)Z
    .registers 4

    .line 757
    const/high16 v0, 0x20000

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 758
    iget-object v1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    .line 759
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lvendor/lineage/livedisplay/IColorBalance$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IColorBalance;

    move-result-object v0

    .line 760
    invoke-interface {v0, p1}, Lvendor/lineage/livedisplay/IColorBalance;->setColorBalance(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1b} :catch_1e

    .line 761
    const/4 p1, 0x1

    return p1

    .line 764
    :cond_1d
    goto :goto_1f

    .line 763
    :catch_1e
    move-exception p1

    .line 765
    :goto_1f
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist setDisplayColorCalibration([I)Z
    .registers 4

    .line 586
    const/4 v0, 0x4

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 587
    iget-object v1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    .line 589
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 588
    invoke-static {v0}, Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IDisplayColorCalibration;

    move-result-object v0

    .line 590
    invoke-interface {v0, p1}, Lvendor/lineage/livedisplay/IDisplayColorCalibration;->setCalibration([I)V

    .line 591
    const/4 p1, 0x1

    return p1

    .line 593
    :cond_1c
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 594
    sget-object v0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->sService:Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    invoke-interface {v0, p1}, Lcom/android/internal/lineage/hardware/ILineageHardwareService;->setDisplayColorCalibration([I)Z

    move-result p1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_28} :catch_2a

    return p1

    .line 597
    :cond_29
    goto :goto_2b

    .line 596
    :catch_2a
    move-exception p1

    .line 598
    :goto_2b
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist setDisplayMode(Lcom/android/internal/lineage/hardware/DisplayMode;Z)Z
    .registers 5

    .line 694
    const/16 v0, 0x2000

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 695
    iget-object v1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    .line 696
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lvendor/lineage/livedisplay/IDisplayModes$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IDisplayModes;

    move-result-object v0

    .line 697
    iget p1, p1, Lcom/android/internal/lineage/hardware/DisplayMode;->id:I

    invoke-interface {v0, p1, p2}, Lvendor/lineage/livedisplay/IDisplayModes;->setDisplayMode(IZ)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1d} :catch_20

    .line 698
    const/4 p1, 0x1

    return p1

    .line 701
    :cond_1f
    goto :goto_21

    .line 700
    :catch_20
    move-exception p1

    .line 702
    :goto_21
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist setPictureAdjustment(Lcom/android/internal/lineage/hardware/HSIC;)Z
    .registers 4

    .line 810
    const/high16 v0, 0x40000

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 811
    iget-object v1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    .line 812
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 811
    invoke-static {v0}, Lvendor/lineage/livedisplay/IPictureAdjustment$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IPictureAdjustment;

    move-result-object v0

    .line 813
    invoke-static {p1}, Lcom/android/internal/lineage/hardware/AIDLHelper;->toAIDLHSIC(Lcom/android/internal/lineage/hardware/HSIC;)Lvendor/lineage/livedisplay/HSIC;

    move-result-object p1

    invoke-interface {v0, p1}, Lvendor/lineage/livedisplay/IPictureAdjustment;->setPictureAdjustment(Lvendor/lineage/livedisplay/HSIC;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1f} :catch_22

    .line 814
    const/4 p1, 0x1

    return p1

    .line 817
    :cond_21
    goto :goto_23

    .line 816
    :catch_22
    move-exception p1

    .line 818
    :goto_23
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist setTouchscreenGestureEnabled(Lcom/android/internal/lineage/hardware/TouchscreenGesture;Z)Z
    .registers 5

    .line 472
    const/high16 v0, 0x80000

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupportedAIDL(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 473
    iget-object v1, p0, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->mAIDLMap:Ljava/util/HashMap;

    .line 474
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 473
    invoke-static {v0}, Lvendor/lineage/touch/ITouchscreenGesture$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/touch/ITouchscreenGesture;

    move-result-object v0

    .line 475
    invoke-static {p1}, Lcom/android/internal/lineage/hardware/AIDLHelper;->toAIDLGesture(Lcom/android/internal/lineage/hardware/TouchscreenGesture;)Lvendor/lineage/touch/Gesture;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lvendor/lineage/touch/ITouchscreenGesture;->setGestureEnabled(Lvendor/lineage/touch/Gesture;Z)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_22

    .line 476
    const/4 p1, 0x1

    return p1

    .line 479
    :cond_21
    goto :goto_23

    .line 478
    :catch_22
    move-exception p1

    .line 480
    :goto_23
    const/4 p1, 0x0

    return p1
.end method
