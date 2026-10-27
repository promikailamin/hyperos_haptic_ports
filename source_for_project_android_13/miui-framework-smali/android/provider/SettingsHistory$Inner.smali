.class Landroid/provider/SettingsHistory$Inner;
.super Ljava/lang/Object;
.source "SettingsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SettingsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Inner"
.end annotation


# static fields
.field private static final blacklist settingsHistory:Landroid/provider/SettingsHistory;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsettingsHistory()Landroid/provider/SettingsHistory;
    .registers 1

    sget-object v0, Landroid/provider/SettingsHistory$Inner;->settingsHistory:Landroid/provider/SettingsHistory;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Landroid/provider/SettingsHistory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/provider/SettingsHistory;-><init>(Landroid/provider/SettingsHistory-IA;)V

    sput-object v0, Landroid/provider/SettingsHistory$Inner;->settingsHistory:Landroid/provider/SettingsHistory;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
