.class public Lcom/android/internal/accessibility/AccessibilityShortcutController;
.super Ljava/lang/Object;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;,
        Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;,
        Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;,
        Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;,
        Lcom/android/internal/accessibility/AccessibilityShortcutController$DialogStatus;
    }
.end annotation


# static fields
.field public static final blacklist ACCESSIBILITY_BUTTON_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist COLOR_INVERSION_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist DALTONIZER_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist MAGNIFICATION_CONTROLLER_NAME:Ljava/lang/String; = "com.android.server.accessibility.MagnificationController"

.field public static final blacklist ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist ONE_HANDED_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist REDUCE_BRIGHT_COLORS_TILE_SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final blacklist TAG:Ljava/lang/String; = "AccessibilityShortcutController"

.field private static final blacklist VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static blacklist sFrameworkShortcutFeaturesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAlertDialog:Landroid/app/Dialog;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mEnabledOnLockScreen:Z

.field public blacklist mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsShortcutEnabled:Z

.field private blacklist mUserId:I

.field private final blacklist mUserSetupCompleteObserver:Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Lcom/android/internal/accessibility/AccessibilityShortcutController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mplayNotificationTone(Lcom/android/internal/accessibility/AccessibilityShortcutController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->playNotificationTone()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 79
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.server.accessibility"

    const-string v2, "ColorInversion"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 81
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "Daltonizer"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 86
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "Magnification"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 88
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "OneHandedMode"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 90
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "ReduceBrightColors"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 94
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "AccessibilityButton"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_BUTTON_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 97
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "ColorInversionTile"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 99
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "ColorCorrectionTile"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 101
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "OneHandedModeTile"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 103
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "ReduceBrightColorsTile"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_TILE_SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 106
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 107
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 108
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 106
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "initialUserId"    # I

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    invoke-direct {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;-><init>()V

    iput-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    .line 172
    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mHandler:Landroid/os/Handler;

    .line 174
    iput p3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    .line 175
    new-instance v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserSetupCompleteObserver:Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;

    .line 178
    new-instance v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Landroid/os/Handler;)V

    .line 186
    .local v0, "co":Landroid/database/ContentObserver;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 187
    const-string v2, "accessibility_shortcut_target_service"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 186
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 190
    const-string v2, "accessibility_shortcut_on_lock_screen"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 189
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 193
    const-string v2, "accessibility_shortcut_dialog_shown"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 192
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 195
    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    .line 196
    return-void
.end method

.method private blacklist createMiuiShortcutWarningDialog(I)Landroid/app/Dialog;
    .registers 21
    .param p1, "userId"    # I

    .line 354
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    .line 355
    .local v4, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_13

    .line 356
    return-object v5

    .line 360
    :cond_13
    :try_start_13
    const-string/jumbo v0, "miuix.stub.MiuixStub"

    iget-object v6, v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    .line 361
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 360
    invoke-static {v0, v3, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 362
    .local v0, "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "createMiuiAlertDialog"

    const/16 v7, 0xa

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    const-class v9, Ljava/lang/CharSequence;

    const/4 v11, 0x2

    aput-object v9, v8, v11

    const-class v9, Ljava/lang/CharSequence;

    const/4 v12, 0x3

    aput-object v9, v8, v12

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x4

    aput-object v9, v8, v13

    const-class v9, Ljava/lang/CharSequence;

    const/4 v14, 0x5

    aput-object v9, v8, v14

    const-class v9, Landroid/content/DialogInterface$OnClickListener;

    const/4 v15, 0x6

    aput-object v9, v8, v15

    const-class v9, Ljava/lang/CharSequence;

    const/16 v16, 0x7

    aput-object v9, v8, v16

    const-class v9, Landroid/content/DialogInterface$OnClickListener;

    const/16 v17, 0x8

    aput-object v9, v8, v17

    const-class v9, Landroid/content/DialogInterface$OnCancelListener;

    const/16 v18, 0x9

    aput-object v9, v8, v18

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 368
    .local v6, "declaredMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 369
    iget-object v8, v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    invoke-virtual {v8}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getSystemUiContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "AlertDialog.Theme.DayNight"

    const-string/jumbo v5, "style"

    const-string/jumbo v15, "miuix.stub"

    .line 370
    invoke-virtual {v8, v9, v5, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 371
    .local v5, "miuiAlertDialogThemeId":I
    invoke-direct {v1, v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutWarningTitle(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 372
    .local v8, "title":Ljava/lang/String;
    invoke-direct {v1, v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutWarningMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 373
    .local v9, "message":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v14, 0x10400fa

    invoke-virtual {v15, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 374
    .local v14, "negativeButtonText":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v13, 0x10400f9

    invoke-virtual {v15, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 375
    .local v13, "positiveButtonText":Ljava/lang/String;
    new-instance v15, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda2;

    invoke-direct {v15, v1, v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;I)V

    .line 385
    .local v15, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v12, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda3;

    invoke-direct {v12, v1, v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;I)V

    .line 391
    .local v12, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-array v7, v7, [Ljava/lang/Object;

    iget-object v11, v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    .line 392
    invoke-virtual {v11}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getSystemUiContext()Landroid/content/Context;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v3

    const/4 v3, 0x2

    aput-object v8, v7, v3

    const/4 v3, 0x3

    aput-object v9, v7, v3

    .line 393
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v10, 0x4

    aput-object v3, v7, v10

    const/4 v3, 0x5

    aput-object v14, v7, v3

    const/4 v3, 0x6

    const/4 v10, 0x0

    aput-object v10, v7, v3

    aput-object v13, v7, v16

    aput-object v15, v7, v17

    aput-object v12, v7, v18

    .line 391
    const/4 v3, 0x0

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Dialog;
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_cc} :catch_cd

    return-object v7

    .line 397
    .end local v0    # "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "miuiAlertDialogThemeId":I
    .end local v6    # "declaredMethod":Ljava/lang/reflect/Method;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "message":Ljava/lang/String;
    .end local v12    # "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    .end local v13    # "positiveButtonText":Ljava/lang/String;
    .end local v14    # "negativeButtonText":Ljava/lang/String;
    .end local v15    # "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    :catch_cd
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AccessibilityShortcutController"

    const-string v5, "createMiuiShortcutWarningDialog fail: "

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    return-object v3
.end method

.method private blacklist createShortcutWarningDialog(I)Landroid/app/AlertDialog;
    .registers 6
    .param p1, "userId"    # I

    .line 317
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 318
    .local v0, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 319
    return-object v2

    .line 324
    :cond_f
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    .line 326
    invoke-virtual {v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getSystemUiContext()Landroid/content/Context;

    move-result-object v3

    .line 324
    invoke-virtual {v1, v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 327
    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutWarningTitle(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 328
    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutWarningMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v3, 0x0

    .line 329
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x10400fa

    .line 330
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x10400f9

    new-instance v3, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;I)V

    .line 331
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;I)V

    .line 342
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 348
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 349
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    return-object v1
.end method

.method public static blacklist getFrameworkShortcutFeaturesMap()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;",
            ">;"
        }
    .end annotation

    .line 144
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->sFrameworkShortcutFeaturesMap:Ljava/util/Map;

    if-nez v0, :cond_52

    .line 145
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 146
    .local v0, "featuresMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;>;"
    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    const v3, 0x1040216

    const-string v4, "accessibility_display_inversion_enabled"

    const-string v5, "1"

    const-string v6, "0"

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    const v3, 0x1040215

    const-string v4, "accessibility_display_daltonizer_enabled"

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    const v3, 0x104066e

    const-string/jumbo v4, "one_handed_mode_activated"

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    const v3, 0x1040833

    const-string/jumbo v4, "reduce_bright_colors_activated"

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->sFrameworkShortcutFeaturesMap:Ljava/util/Map;

    .line 168
    .end local v0    # "featuresMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;>;"
    :cond_52
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->sFrameworkShortcutFeaturesMap:Ljava/util/Map;

    return-object v0
.end method

.method private blacklist getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 4

    .line 433
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutTargetComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 434
    .local v0, "targetComponentName":Landroid/content/ComponentName;
    if-nez v0, :cond_8

    .line 435
    const/4 v1, 0x0

    return-object v1

    .line 437
    :cond_8
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    .line 438
    invoke-virtual {v1, v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 439
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getShortcutFeatureDescription(Z)Ljava/lang/String;
    .registers 10
    .param p1, "includeSummary"    # Z

    .line 444
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutTargetComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 445
    .local v0, "targetComponentName":Landroid/content/ComponentName;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 446
    return-object v1

    .line 449
    :cond_8
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    .line 450
    .local v2, "frameworkFeatureInfo":Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;
    if-eqz v2, :cond_1b

    .line 451
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 453
    :cond_1b
    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    .line 454
    invoke-virtual {v3, v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    .line 456
    .local v3, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v3, :cond_2a

    .line 457
    return-object v1

    .line 459
    :cond_2a
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 460
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 461
    .local v4, "label":Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 462
    .local v5, "summary":Ljava/lang/CharSequence;
    if-eqz p1, :cond_59

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_49

    goto :goto_59

    .line 465
    :cond_49
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const-string v7, "%s\n%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 463
    :cond_59
    :goto_59
    return-object v4
.end method

.method private blacklist getShortcutTargetComponentName()Landroid/content/ComponentName;
    .registers 4

    .line 537
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    .line 538
    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 539
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v0

    .line 540
    .local v0, "shortcutTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v1, :cond_15

    .line 541
    const/4 v1, 0x0

    return-object v1

    .line 543
    :cond_15
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getShortcutWarningMessage(Ljava/util/List;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 417
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_20

    .line 418
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v3, 0x10400fb

    new-array v2, v2, [Ljava/lang/Object;

    .line 420
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v4}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v1

    .line 418
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 423
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 425
    .local v4, "target":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v6, 0x10400f6

    new-array v7, v2, [Ljava/lang/Object;

    .line 426
    invoke-virtual {v4}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v1

    .line 425
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .end local v4    # "target":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    goto :goto_29

    .line 428
    :cond_4a
    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v4, 0x10400f7

    new-array v2, v2, [Ljava/lang/Object;

    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 428
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getShortcutWarningTitle(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 407
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 408
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v2, 0x10400fc

    new-array v1, v1, [Ljava/lang/Object;

    .line 410
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v4}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v3

    .line 408
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 412
    :cond_20
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v1, 0x10400f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hasFeatureLeanback()Z
    .registers 3

    .line 476
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist hasShortcutTarget()Z
    .registers 4

    .line 521
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    const-string v2, "accessibility_shortcut_target_service"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "shortcutTargets":Ljava/lang/String;
    if-nez v0, :cond_19

    .line 526
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v2, 0x1040243

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 528
    :cond_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private blacklist isServiceEnabled(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 4
    .param p1, "serviceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 469
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    .line 470
    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 471
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 472
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 471
    return v1
.end method

.method static synthetic blacklist lambda$performTtsPrompt$4(Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;Landroid/content/DialogInterface;)V
    .registers 2
    .param p0, "tts"    # Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 510
    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->dismiss()V

    return-void
.end method

.method private blacklist performTtsPrompt(Landroid/app/Dialog;)Z
    .registers 6
    .param p1, "alertDialog"    # Landroid/app/Dialog;

    .line 500
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutFeatureDescription(Z)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "serviceName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    .line 502
    .local v2, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    if-nez v2, :cond_12

    goto :goto_28

    .line 505
    :cond_12
    iget v3, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_19

    .line 507
    return v0

    .line 509
    :cond_19
    new-instance v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Ljava/lang/String;)V

    .line 510
    .local v0, "tts":Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;
    new-instance v3, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;)V

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 511
    const/4 v3, 0x1

    return v3

    .line 503
    .end local v0    # "tts":Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;
    :cond_28
    :goto_28
    return v0
.end method

.method private blacklist playNotificationTone()V
    .registers 5

    .line 482
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->hasFeatureLeanback()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 483
    const/16 v0, 0xb

    goto :goto_b

    .line 484
    :cond_9
    const/16 v0, 0xa

    :goto_b
    nop

    .line 487
    .local v0, "audioAttributesUsage":I
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 489
    .local v1, "tone":Landroid/media/Ringtone;
    if-eqz v1, :cond_2b

    .line 490
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 491
    invoke-virtual {v2, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 492
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 490
    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 493
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 495
    :cond_2b
    return-void
.end method

.method private blacklist showToast()V
    .registers 10

    .line 289
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 290
    .local v0, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v0, :cond_7

    .line 291
    return-void

    .line 293
    :cond_7
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutFeatureDescription(Z)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "serviceName":Ljava/lang/String;
    if-nez v2, :cond_f

    .line 295
    return-void

    .line 297
    :cond_f
    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v3, v3, 0x100

    const/4 v4, 0x1

    if-eqz v3, :cond_18

    move v3, v4

    goto :goto_19

    :cond_18
    move v3, v1

    .line 299
    .local v3, "requestA11yButton":Z
    :goto_19
    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isServiceEnabled(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v5

    .line 300
    .local v5, "isServiceEnabled":Z
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x1d

    if-le v6, v7, :cond_30

    if-eqz v3, :cond_30

    if-eqz v5, :cond_30

    .line 304
    return-void

    .line 307
    :cond_30
    iget-object v6, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_38

    .line 308
    const v7, 0x10400f2

    goto :goto_3b

    .line 309
    :cond_38
    const v7, 0x10400f3

    .line 307
    :goto_3b
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, "toastMessageFormatString":Ljava/lang/String;
    new-array v7, v4, [Ljava/lang/Object;

    aput-object v2, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "toastMessage":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v8, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v1, v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->makeToastFromText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 313
    .local v4, "warningToast":Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 314
    return-void
.end method


# virtual methods
.method public blacklist isAccessibilityShortcutAvailable(Z)Z
    .registers 3
    .param p1, "phoneLocked"    # Z

    .line 212
    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mIsShortcutEnabled:Z

    if-eqz v0, :cond_c

    if-eqz p1, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mEnabledOnLockScreen:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method synthetic blacklist lambda$createMiuiShortcutWarningDialog$2$com-android-internal-accessibility-AccessibilityShortcutController(ILandroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 376
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_target_service"

    const-string v2, ""

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 381
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_dialog_shown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 384
    return-void
.end method

.method synthetic blacklist lambda$createMiuiShortcutWarningDialog$3$com-android-internal-accessibility-AccessibilityShortcutController(ILandroid/content/DialogInterface;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .line 387
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_dialog_shown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 390
    return-void
.end method

.method synthetic blacklist lambda$createShortcutWarningDialog$0$com-android-internal-accessibility-AccessibilityShortcutController(ILandroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 333
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_target_service"

    const-string v2, ""

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 338
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_dialog_shown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 341
    return-void
.end method

.method synthetic blacklist lambda$createShortcutWarningDialog$1$com-android-internal-accessibility-AccessibilityShortcutController(ILandroid/content/DialogInterface;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "d"    # Landroid/content/DialogInterface;

    .line 344
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_dialog_shown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 347
    return-void
.end method

.method public blacklist onSettingsChanged()V
    .registers 7

    .line 216
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->hasShortcutTarget()Z

    move-result v0

    .line 217
    .local v0, "hasShortcutTarget":Z
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 219
    .local v1, "cr":Landroid/content/ContentResolver;
    iget v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    const-string v3, "accessibility_shortcut_dialog_shown"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 222
    .local v2, "dialogAlreadyShown":I
    iget v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    const-string v5, "accessibility_shortcut_on_lock_screen"

    invoke-static {v1, v5, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1f

    move v4, v5

    :cond_1f
    iput-boolean v4, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mEnabledOnLockScreen:Z

    .line 225
    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mIsShortcutEnabled:Z

    .line 226
    return-void
.end method

.method public blacklist performAccessibilityShortcut()V
    .registers 9

    .line 232
    const-string v0, "AccessibilityShortcutController"

    const-string v1, "Accessibility shortcut activated"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 234
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 235
    .local v1, "userId":I
    const-string v2, "accessibility_shortcut_dialog_shown"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 239
    .local v3, "dialogAlreadyShown":I
    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 240
    .local v4, "vibrator":Landroid/os/Vibrator;
    if-eqz v4, :cond_42

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 243
    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    .line 244
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070081

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 243
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->convertToLongArray([I)[J

    move-result-object v5

    .line 245
    .local v5, "vibePattern":[J
    const/4 v6, -0x1

    sget-object v7, Lcom/android/internal/accessibility/AccessibilityShortcutController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    .line 248
    .end local v5    # "vibePattern":[J
    :cond_42
    if-nez v3, :cond_7b

    .line 253
    invoke-direct {p0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->createMiuiShortcutWarningDialog(I)Landroid/app/Dialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/Dialog;

    .line 254
    if-nez v5, :cond_52

    .line 255
    invoke-direct {p0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->createShortcutWarningDialog(I)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/Dialog;

    .line 258
    :cond_52
    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/Dialog;

    if-nez v5, :cond_57

    .line 259
    return-void

    .line 261
    :cond_57
    invoke-direct {p0, v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performTtsPrompt(Landroid/app/Dialog;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 262
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->playNotificationTone()V

    .line 264
    :cond_60
    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 265
    .local v5, "w":Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 266
    .local v6, "attr":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x7d9

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 267
    invoke-virtual {v5, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 268
    iget-object v7, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 269
    const/4 v7, 0x1

    invoke-static {v0, v2, v7, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 272
    .end local v5    # "w":Landroid/view/Window;
    .end local v6    # "attr":Landroid/view/WindowManager$LayoutParams;
    goto :goto_96

    .line 273
    :cond_7b
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->playNotificationTone()V

    .line 274
    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_88

    .line 275
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 276
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/Dialog;

    .line 278
    :cond_88
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->showToast()V

    .line 279
    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    .line 280
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityShortcut()V

    .line 282
    :goto_96
    return-void
.end method

.method public blacklist setCurrentUser(I)V
    .registers 3
    .param p1, "currentUserId"    # I

    .line 199
    iput p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->onSettingsChanged()V

    .line 201
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserSetupCompleteObserver:Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;

    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->onUserSwitched(I)V

    .line 202
    return-void
.end method
