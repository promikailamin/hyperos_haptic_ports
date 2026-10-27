.class public final Landroid/os/MiuiBinderTransaction$IUiModeManager;
.super Ljava/lang/Object;
.source "MiuiBinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MiuiBinderTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IUiModeManager"
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IUiModeManager"

.field public static final blacklist GET_APP_DARK_MODE_ENABLE:I = 0xfffffd

.field public static final blacklist GET_FORCE_DARK_CHECK_APP_ORIGIN_STATE:I = 0xfffff9

.field public static final blacklist GET_FORCE_DARK_CONFIG_INFO:I = 0xfffffb

.field public static final blacklist GET_FORCE_DARK_FOR_SPLASH_SCREEN:I = 0xfffff7

.field public static final blacklist GET_FORCE_DARK_SETTINGS_APP_LIST:I = 0xfffffa

.field public static final blacklist GET_SHOULD_INTERCEPT_RELAUNCH:I = 0xfffff8

.field public static final blacklist REGISTER_APP_DARK_MODE_OBSERVER:I = 0xfffffc

.field public static final blacklist SET_APP_DARK_MODE_ENABLE:I = 0xfffffe


# instance fields
.field final synthetic blacklist this$0:Landroid/os/MiuiBinderTransaction;


# direct methods
.method public constructor blacklist <init>(Landroid/os/MiuiBinderTransaction;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/MiuiBinderTransaction;

    .line 55
    iput-object p1, p0, Landroid/os/MiuiBinderTransaction$IUiModeManager;->this$0:Landroid/os/MiuiBinderTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
