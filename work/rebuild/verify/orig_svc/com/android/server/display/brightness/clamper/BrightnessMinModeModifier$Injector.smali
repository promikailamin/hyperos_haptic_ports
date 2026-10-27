.class Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$Injector;
.super Ljava/lang/Object;
.source "BrightnessMinModeModifier.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerMinModeSettingObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 5

    .line 165
    const-string/jumbo p0, "minmode_active"

    .line 166
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 165
    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
