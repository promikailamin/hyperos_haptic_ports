.class public Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;
.super Ljava/lang/Object;
.source "MiuiScreenProjectionStubImpl.java"

# interfaces
.implements Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;


# static fields
.field public static final blacklist CAST_MODE:Ljava/lang/String; = "cast_mode"

.field public static final blacklist CAST_MODE_PACKAGE:Ljava/lang/String; = "cast_mode_package"

.field public static final blacklist EXTRA_FLAG_IS_CALL_SCREEN_PROJECTION:I = 0x4000

.field public static final blacklist EXTRA_FLAG_IS_PIP_SCREEN_PROJECTION:I = 0x2000000

.field public static final blacklist EXTRA_FLAG_IS_SCREEN_PROJECTION:I = 0x1000000

.field public static final blacklist EXTRA_FLAG_IS_SCREEN_SHARE_PROTECTION_HIDE:I = 0x2

.field public static final blacklist EXTRA_FLAG_IS_SCREEN_SHARE_PROTECTION_WITH_BLUR:I = 0x1

.field public static final blacklist SCREEN_PROJECT_HANG_UP:Ljava/lang/String; = "screen_project_hang_up_on"

.field public static final blacklist SCREEN_PROJECT_IN_SCREENING:Ljava/lang/String; = "screen_project_in_screening"

.field public static final blacklist SCREEN_PROJECT_PRIVACY_ON:Ljava/lang/String; = "screen_project_private_on"

.field public static final blacklist SCREEN_PROJECT_SMALL_WINDOW:Ljava/lang/String; = "screen_project_small_window_on"

.field public static final blacklist SCREEN_SHARE_PROTECTION:Ljava/lang/String; = "screen_share_protection_on"

.field private static blacklist mProjectionBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mScreenShareProjectionBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mScreenShareProjectionBlackList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getExtraCallScreenProjectFlag()I
    .registers 2

    .line 52
    const/16 v0, 0x4000

    return v0
.end method

.method public blacklist getExtraPipScreenProjectFlag()I
    .registers 2

    .line 48
    const/high16 v0, 0x2000000

    return v0
.end method

.method public blacklist getExtraScreenProjectFlag()I
    .registers 2

    .line 44
    const/high16 v0, 0x1000000

    return v0
.end method

.method public blacklist getLastFrame(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 56
    const-string v0, "Splash Screen com.android.incallui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 57
    const-string v0, "com.android.incallui/.InCallActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 58
    const-string v0, "com.android.incallui/com.android.incallui.InCallActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 59
    const-string v0, "com.tencent.mobileqq/com.tencent.av.ui.AVActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 60
    const-string v0, "com.tencent.mobileqq/com.tencent.av.ui.AVLoadingDialogActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 61
    const-string v0, "com.tencent.mobileqq/com.tencent.av.ui.VideoInviteActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 62
    const-string v0, "Splash Screen com.tencent.mm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 63
    const-string v0, "com.tencent.mm/com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 64
    const-string v0, "com.tencent.mm/.plugin.voip.ui.VideoActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 65
    const-string v0, "com.google.android.dialer/com.android.incallui.InCallActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 66
    const-string v0, "com.google.android.dialer/com.android.incallui.LegacyInCallActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 67
    const-string v0, "com.google.android.dialer/com.android.dialer.incall.activity.ui.InCallActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 68
    const-string v0, "voipcalling.VoipActivityV2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 69
    const-string v0, "com.whatsapp/com.whatsapp.voipcalling.VoipActivityV2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_71

    goto :goto_73

    .line 72
    :cond_71
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_73
    :goto_73
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getMiuiCastModePackageSettingsKey()Ljava/lang/String;
    .registers 2

    .line 80
    const-string v0, "cast_mode_package"

    return-object v0
.end method

.method public blacklist getMiuiCastModeSettingsKey()Ljava/lang/String;
    .registers 2

    .line 76
    const-string v0, "cast_mode"

    return-object v0
.end method

.method public blacklist getMiuiHangUpSettingsKey()Ljava/lang/String;
    .registers 2

    .line 88
    const-string v0, "screen_project_hang_up_on"

    return-object v0
.end method

.method public blacklist getMiuiInScreeningSettingsKey()Ljava/lang/String;
    .registers 2

    .line 84
    const-string v0, "screen_project_in_screening"

    return-object v0
.end method

.method public blacklist getMiuiPrivacyOnSettingsKey()Ljava/lang/String;
    .registers 2

    .line 96
    const-string v0, "screen_project_private_on"

    return-object v0
.end method

.method public blacklist getMiuiSmallWindowSettingsKey()Ljava/lang/String;
    .registers 2

    .line 92
    const-string v0, "screen_project_small_window_on"

    return-object v0
.end method

.method public blacklist getProjectionBlackList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_be

    .line 101
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "Splash Screen com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.android.incallui/com.android.incallui.InCallActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "FloatAssistantView"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "MiuiFreeformBorderView"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "SnapshotStartingWindow for"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "ScreenshotThumbnail"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.milink.ui.activity.ScreeningConsoleWindow"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "FloatNotificationPanel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq/com.tencent.av.ui.AVActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq/com.tencent.av.ui.AVLoadingDialogActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq/com.tencent.av.ui.VideoInviteActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq/.FloatingWindow"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "Splash Screen com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm/com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm/.FloatingWindow"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.whatsapp/com.whatsapp.voipcalling.VoipActivityV2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.google.android.dialer/com.android.incallui.InCallActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.google.android.dialer/.FloatingWindow"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.miui.yellowpage/com.miui.yellowpage.activity.MarkNumberActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.miui.securitycenter/.FloatingWindow"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.milink.service.ui.PrivateWindow"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.milink.ui.activity.NFCLoadingActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "Freeform-OverLayView"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "Freeform-HotSpotView"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "Freeform-TipView"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_be
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getScreenShareProjectBlackList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mScreenShareProjectionBlackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist setProjectionBlackList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 131
    .local p1, "blacklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sput-object p1, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mProjectionBlackList:Ljava/util/ArrayList;

    .line 132
    return-void
.end method

.method public blacklist setScreenShareProjectBlackList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p1, "blacklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sput-object p1, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;->mScreenShareProjectionBlackList:Ljava/util/ArrayList;

    .line 142
    return-void
.end method
