.class public Landroid/app/TaskSnapshotHelperImpl;
.super Ljava/lang/Object;
.source "TaskSnapshotHelperImpl.java"

# interfaces
.implements Landroid/app/TaskSnapshotHelperStub;


# static fields
.field private static final blacklist DELAY_DEFAULT:J = 0x96L

.field public static final blacklist EXPIRATION_2H:J = 0x6ddd00L

.field public static final blacklist EXPIRATION_MINUTE:J = 0xea60L

.field static final blacklist FLAG_LITE_FALSE:I = 0x0

.field static final blacklist FLAG_LITE_NULL:I = -0x1

.field static final blacklist FLAG_LITE_TRUE:I = 0x1

.field private static final blacklist KEY_QS_ENABLE:Ljava/lang/String; = "qs_enabled_r"

.field private static final blacklist QUICK_START_APPLICATION_WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist QUICK_START_DEVICE_WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist QUICK_START_HOME_PACKAGE_NAME_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist QUICK_START_NAME_WITH_ACTIVITY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist QUICK_START_SPECIAL_APPLICATION_WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist QUICK_START_SPECIAL_DEVICE_WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist QUICK_START_SPECIAL_PACKAGE_NAME_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SNAPSHOTS_DIRNAME_QS:Ljava/lang/String; = "qs_snapshots"

.field private static final blacklist TAG:Ljava/lang/String; = "TaskSnapshot_Helper"

.field static blacklist flagLite:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 42
    const/4 v0, -0x1

    sput v0, Landroid/app/TaskSnapshotHelperImpl;->flagLite:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/TaskSnapshotHelperImpl;->QUICK_START_APPLICATION_WHITE_LIST:Ljava/util/List;

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/app/TaskSnapshotHelperImpl;->QUICK_START_SPECIAL_APPLICATION_WHITE_LIST:Ljava/util/List;

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Landroid/app/TaskSnapshotHelperImpl;->QUICK_START_DEVICE_WHITE_LIST:Ljava/util/List;

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Landroid/app/TaskSnapshotHelperImpl;->QUICK_START_SPECIAL_DEVICE_WHITE_LIST:Ljava/util/List;

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Landroid/app/TaskSnapshotHelperImpl;->QUICK_START_HOME_PACKAGE_NAME_LIST:Ljava/util/List;

    .line 60
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Landroid/app/TaskSnapshotHelperImpl;->QUICK_START_SPECIAL_PACKAGE_NAME_LIST:Ljava/util/List;

    .line 63
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Landroid/app/TaskSnapshotHelperImpl;->QUICK_START_NAME_WITH_ACTIVITY_LIST:Ljava/util/List;

    .line 67
    const-string v7, "com.android.soundrecorder"

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v8, "com.miui.huanji"

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v8, "com.miui.accessibility"

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v8, "com.mi.global.mimover"

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v0, "com.miui.calculator"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v0, "com.android.mms"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v0, "com.android.calendar"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v0, "com.android.contacts"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v8, "com.android.deskclock"

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v8, "com.miui.notes"

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v8, "com.android.providers.downloads.ui"

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v8, "com.android.fileexplorer"

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v8, "com.mi.android.globalFileexplorer"

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v8, "com.xiaomi.calendar"

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v1, "gauguin"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v1, "mona"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const-string v1, "lisa"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v1, "veux"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v1, "zijin"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v1, "mojito"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v1, "merlin"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v1, "surya"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const-string v1, "lancelot"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v1, "ziyi"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v1, "fleur"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v1, "miel"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v1, "viva"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v1, "vida"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v1, "sweet"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v1, "sweet_k6a"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v1, "sky"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    const-string v1, "river"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v1, "fire"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v1, "dandelion"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v1, "earth"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v1, "com.miui.home"

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    const-string v1, "com.mi.android.globallauncher"

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist quickStartEffective(Ljava/lang/String;ILandroid/content/pm/ActivityInfo;)Z
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 275
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Landroid/app/TaskSnapshotHelperImpl;->QUICK_START_NAME_WITH_ACTIVITY_LIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    if-eqz p3, :cond_23

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 279
    :cond_23
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "qs_snapshots"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_36

    .line 281
    const/4 v1, 0x0

    return v1

    .line 284
    :cond_36
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public blacklist checkExpired(Ljava/lang/String;JJ)Z
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "current"    # J
    .param p4, "beforeTime"    # J

    .line 207
    sget-object v0, Landroid/app/TaskSnapshotHelperImpl;->QUICK_START_SPECIAL_APPLICATION_WHITE_LIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 208
    return v1

    .line 210
    :cond_a
    sub-long v2, p2, p4

    const-wide/32 v4, 0x6ddd00

    cmp-long v0, v2, v4

    if-lez v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public blacklist delayTime(Ljava/lang/String;)J
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Landroid/app/TaskSnapshotHelperImpl;->QUICK_START_SPECIAL_APPLICATION_WHITE_LIST:Ljava/util/List;

    .line 173
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Landroid/app/TaskSnapshotHelperImpl;->QUICK_START_SPECIAL_DEVICE_WHITE_LIST:Ljava/util/List;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 174
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 175
    const-wide/16 v0, 0x226

    return-wide v0

    .line 177
    :cond_1b
    const-wide/16 v0, 0x96

    return-wide v0
.end method

.method public blacklist destroyQS(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 219
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "qs_snapshots"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .local v0, "dir":Ljava/io/File;
    const/4 v1, 0x0

    .line 222
    .local v1, "files":[Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 225
    :cond_1d
    if-eqz v1, :cond_2c

    .line 226
    array-length v2, v1

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_2c

    aget-object v4, v1, v3

    .line 227
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_2d

    .line 226
    nop

    .end local v4    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 232
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_2c
    goto :goto_35

    .line 230
    :catch_2d
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TaskSnapshot_Helper"

    const-string v2, "exception in destroy QS."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_35
    return-void
.end method

.method public blacklist ensureEnable(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 117
    invoke-virtual {p0, p1}, Landroid/app/TaskSnapshotHelperImpl;->ensureSysLite(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TaskSnapshot_Helper"

    if-nez v0, :cond_f

    .line 118
    const-string v0, "SYS is normal."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v1

    .line 123
    :cond_f
    sget-object v0, Landroid/app/TaskSnapshotHelperImpl;->QUICK_START_APPLICATION_WHITE_LIST:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Landroid/app/TaskSnapshotHelperImpl;->QUICK_START_SPECIAL_APPLICATION_WHITE_LIST:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 124
    const-string v0, "app is not pre-defined."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return v1

    .line 128
    :cond_25
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist ensureEnable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-eq v0, v1, :cond_27

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_22

    goto :goto_27

    .line 141
    :cond_22
    invoke-virtual {p0, p1, p2}, Landroid/app/TaskSnapshotHelperImpl;->ensureEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 138
    :cond_27
    :goto_27
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist ensureSysLite(Landroid/content/Context;)Z
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 145
    sget v0, Landroid/app/TaskSnapshotHelperImpl;->flagLite:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_79

    .line 146
    const-string v0, "TaskSnapshot_Helper"

    const-string v3, "SYS lite mode will be initialized."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :try_start_e
    sget-boolean v3, Lmiui/util/DeviceLevel;->IS_MIUI_LITE_VERSION:Z

    .line 149
    .local v3, "isLite":Z
    sget v4, Lmiui/util/DeviceLevel;->RAM:I

    .line 150
    .local v4, "ram":I
    sget v5, Lmiui/util/DeviceLevel;->TOTAL_RAM:I

    .line 151
    .local v5, "totalRam":I
    sget-object v6, Landroid/app/TaskSnapshotHelperImpl;->QUICK_START_DEVICE_WHITE_LIST:Ljava/util/List;

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 153
    .local v6, "isSupportDevice":Z
    if-nez v3, :cond_26

    const/4 v7, 0x4

    if-le v5, v7, :cond_26

    if-eqz v6, :cond_24

    goto :goto_26

    :cond_24
    move v7, v1

    goto :goto_27

    :cond_26
    :goto_26
    move v7, v2

    :goto_27
    sput v7, Landroid/app/TaskSnapshotHelperImpl;->flagLite:I

    .line 155
    if-eqz p1, :cond_3e

    if-ne v7, v2, :cond_3e

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "qs_enabled_r"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 157
    .local v7, "status":I
    if-ne v7, v2, :cond_3b

    move v8, v2

    goto :goto_3c

    :cond_3b
    move v8, v1

    :goto_3c
    sput v8, Landroid/app/TaskSnapshotHelperImpl;->flagLite:I

    .line 159
    .end local v7    # "status":I
    :cond_3e
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v7}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToLogcat()Z

    move-result v7

    if-eqz v7, :cond_70

    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ram = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", totalRam = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isLite = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_70} :catch_71

    .line 166
    .end local v3    # "isLite":Z
    .end local v4    # "ram":I
    .end local v5    # "totalRam":I
    .end local v6    # "isSupportDevice":Z
    :cond_70
    goto :goto_79

    .line 163
    :catch_71
    move-exception v3

    .line 164
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "exception"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    sput v1, Landroid/app/TaskSnapshotHelperImpl;->flagLite:I

    .line 168
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_79
    :goto_79
    sget v0, Landroid/app/TaskSnapshotHelperImpl;->flagLite:I

    if-ne v0, v2, :cond_7e

    move v1, v2

    :cond_7e
    return v1
.end method

.method public blacklist isCompatibilityMode()Z
    .registers 3

    .line 270
    nop

    .line 271
    const-string v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 270
    xor-int/lit8 v0, v0, 0x1

    const-string v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist isMiuiHome(Ljava/lang/String;)Z
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 266
    if-eqz p1, :cond_c

    sget-object v0, Landroid/app/TaskSnapshotHelperImpl;->QUICK_START_HOME_PACKAGE_NAME_LIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist setBackgroundWithQS(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/TaskSnapshotHelperImpl;->setBackgroundWithQS(Landroid/content/Context;ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setBackgroundWithQS(Landroid/content/Context;ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "pkg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    sget-object v1, Landroid/app/TaskSnapshotHelperImpl;->QUICK_START_NAME_WITH_ACTIVITY_LIST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    if-eqz p3, :cond_27

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    :cond_27
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "qs_snapshots"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 253
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 257
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_63

    .line 258
    return-object v3

    .line 260
    :cond_63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "... drawable is null! path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TaskSnapshot_Helper"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v4, 0x0

    return-object v4
.end method

.method public blacklist shouldDelay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ActivityInfo;Z)J
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "launchedFromPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "processRunning"    # Z

    .line 181
    invoke-virtual {p0, p3}, Landroid/app/TaskSnapshotHelperImpl;->isMiuiHome(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_10

    .line 182
    const-string v0, "TaskSnapshot_Helper"

    const-string v3, "shouldDelay()... Not launched by home, no delay needed."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-wide v1

    .line 185
    :cond_10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    sget-object v0, Landroid/app/TaskSnapshotHelperImpl;->QUICK_START_SPECIAL_APPLICATION_WHITE_LIST:Ljava/util/List;

    .line 186
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 187
    invoke-virtual {p0, p1}, Landroid/app/TaskSnapshotHelperImpl;->ensureSysLite(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 188
    if-nez p6, :cond_3d

    invoke-direct {p0, p2, p4, p5}, Landroid/app/TaskSnapshotHelperImpl;->quickStartEffective(Ljava/lang/String;ILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_3d

    .line 193
    :cond_2d
    sget-object v0, Landroid/app/TaskSnapshotHelperImpl;->QUICK_START_SPECIAL_DEVICE_WHITE_LIST:Ljava/util/List;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-wide/16 v0, 0x258

    goto :goto_3c

    :cond_3a
    const-wide/16 v0, 0x12c

    :goto_3c
    return-wide v0

    .line 189
    :cond_3d
    :goto_3d
    return-wide v1

    .line 195
    :cond_3e
    return-wide v1
.end method
