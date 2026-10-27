.class public Lcom/miui/internal/os/MiuiHooks;
.super Ljava/lang/Object;
.source "MiuiHooks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/os/MiuiHooks$IResolverActivityResolvedComponentInfo;,
        Lcom/miui/internal/os/MiuiHooks$IDisplayResolveInfo;,
        Lcom/miui/internal/os/MiuiHooks$ITargetInfo;,
        Lcom/miui/internal/os/MiuiHooks$IResolverListAdapter;,
        Lcom/miui/internal/os/MiuiHooks$IWindow;,
        Lcom/miui/internal/os/MiuiHooks$IResolverActivity;,
        Lcom/miui/internal/os/MiuiHooks$IResourcesImpl;,
        Lcom/miui/internal/os/MiuiHooks$IResources;,
        Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;,
        Lcom/miui/internal/os/MiuiHooks$IAbsListView;,
        Lcom/miui/internal/os/MiuiHooks$IAbsListViewOverFlingRunnable;,
        Lcom/miui/internal/os/MiuiHooks$INotification;,
        Lcom/miui/internal/os/MiuiHooks$IViewGroup;,
        Lcom/miui/internal/os/MiuiHooks$IClientTransaction;,
        Lcom/miui/internal/os/MiuiHooks$IWindowManagerLayoutParams;,
        Lcom/miui/internal/os/MiuiHooks$IActivity;,
        Lcom/miui/internal/os/MiuiHooks$IActivityManager;,
        Lcom/miui/internal/os/MiuiHooks$IDecorView;,
        Lcom/miui/internal/os/MiuiHooks$IActivityTaskManager;,
        Lcom/miui/internal/os/MiuiHooks$IContentService;,
        Lcom/miui/internal/os/MiuiHooks$IApplicationPackageManager;,
        Lcom/miui/internal/os/MiuiHooks$IContext;,
        Lcom/miui/internal/os/MiuiHooks$IConfiguration;,
        Lcom/miui/internal/os/MiuiHooks$Toast;
    }
.end annotation


# static fields
.field public static final blacklist FLAG_XSPACE_PROFILE:I = 0x800000

.field public static final blacklist HYPER_PACKAGE_SERVICE:Ljava/lang/String; = "HyperPackageManager"

.field public static final blacklist LOCATION_POLICY_SERVICE:Ljava/lang/String; = "locationpolicy"

.field public static final blacklist METADATA_KEY_LYRIC:Ljava/lang/String; = "android.media.metadata.LYRIC"

.field public static final blacklist MIUI_OP_END:I = 0x2734

.field public static final blacklist MIUI_OP_START:I = 0x2710

.field public static final blacklist MODE_ASK:I = 0x5

.field public static final blacklist OP_ACCESS_GALLERY:I = 0x2732

.field public static final blacklist OP_ACCESS_SOCIALITY:I = 0x2733

.field public static final blacklist OP_ACCESS_XIAOMI_ACCOUNT:I = 0x271f

.field public static final blacklist OP_AUTO_START:I = 0x2718

.field public static final blacklist OP_BACKGROUND_LOCATION:I = 0x272b

.field public static final blacklist OP_BACKGROUND_START_ACTIVITY:I = 0x2725

.field public static final blacklist OP_BLUETOOTH_CHANGE:I = 0x2712

.field public static final blacklist OP_BOOT_COMPLETED:I = 0x2717

.field public static final blacklist OP_DATA_CONNECT_CHANGE:I = 0x2713

.field public static final blacklist OP_DELETE_CALL_LOG:I = 0x271d

.field public static final blacklist OP_DELETE_CONTACTS:I = 0x271c

.field public static final blacklist OP_DELETE_MMS:I = 0x271b

.field public static final blacklist OP_DELETE_SMS:I = 0x271a

.field public static final blacklist OP_EXACT_ALARM:I = 0x271e

.field public static final blacklist OP_GET_ANONYMOUS_ID:I = 0x2728

.field public static final blacklist OP_GET_INSTALLED_APPS:I = 0x2726

.field public static final blacklist OP_GET_TASKS:I = 0x2723

.field public static final blacklist OP_GET_UDEVICE_ID:I = 0x2729

.field public static final blacklist OP_INSTALL_SHORTCUT:I = 0x2721

.field public static final blacklist OP_MODE_ASK:I = 0x5

.field public static final blacklist OP_NFC:I = 0x2720

.field public static final blacklist OP_NFC_CHANGE:I = 0x2719

.field public static final blacklist OP_POST_LOCAL_NOTIFICATION:I = 0x2731

.field public static final blacklist OP_READ_CALENDAR_REAL:I = 0x272e

.field public static final blacklist OP_READ_CALL_LOG_REAL:I = 0x272f

.field public static final blacklist OP_READ_CONTACTS_REAL:I = 0x272d

.field public static final blacklist OP_READ_MMS:I = 0x2715

.field public static final blacklist OP_READ_NOTIFICATION_SMS:I = 0x2722

.field public static final blacklist OP_READ_PHONE_STATE_REAL:I = 0x2730

.field public static final blacklist OP_READ_SMS_REAL:I = 0x272c

.field public static final blacklist OP_SEND_MMS:I = 0x2714

.field public static final blacklist OP_SERVICE_FOREGROUND:I = 0x2727

.field public static final blacklist OP_SHOW_DEAMON_NOTIFICATION:I = 0x272a

.field public static final blacklist OP_SHOW_WHEN_LOCKED:I = 0x2724

.field public static final blacklist OP_WIFI_CHANGE:I = 0x2711

.field public static final blacklist OP_WRITE_MMS:I = 0x2716

.field public static final blacklist SECURITY_SERVICE:Ljava/lang/String; = "security"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist cast(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 123
    return-object p0
.end method
