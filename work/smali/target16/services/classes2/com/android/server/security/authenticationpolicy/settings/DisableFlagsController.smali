.class public Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;
.super Ljava/lang/Object;
.source "DisableFlagsController.java"

# interfaces
.implements Lcom/android/server/security/authenticationpolicy/settings/SettingController;


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/statusbar/IStatusBarService;)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController$LockTaskToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController$LockTaskToken;-><init>(Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController-IA;)V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mToken:Landroid/os/IBinder;

    .line 49
    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 50
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public applySecureLockDeviceValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 6

    .line 67
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez p2, :cond_c

    .line 68
    const-string p0, "DisableFlagsController"

    const-string p1, "IStatusBarService is null, cannot apply secure lock device value for status bar state."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 72
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSecureLockDeviceValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 73
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mPackageName:Ljava/lang/String;

    invoke-interface {p2, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mPackageName:Ljava/lang/String;

    invoke-interface {p2, p1, v0, p0}, Lcom/android/internal/statusbar/IStatusBarService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/util/Pair;
    .registers 6

    .line 109
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p0

    const/4 p2, 0x0

    move v0, p2

    .line 110
    :goto_6
    invoke-static {p1, p0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 111
    const-string v1, "disable1"

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 112
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_6

    .line 113
    :cond_21
    const-string v1, "disable2"

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 114
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    .line 116
    :cond_36
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 119
    :cond_3a
    new-instance p0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public restoreFromOriginalValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 6

    .line 80
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez p2, :cond_c

    .line 81
    const-string p0, "DisableFlagsController"

    const-string p1, "IStatusBarService is null, cannot restore original status bar state."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getOriginalValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-eqz p1, :cond_36

    .line 87
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mPackageName:Ljava/lang/String;

    invoke-interface {p2, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mPackageName:Ljava/lang/String;

    invoke-interface {p2, p1, v0, p0}, Lcom/android/internal/statusbar/IStatusBarService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    :cond_36
    return-void
.end method

.method public serializeOriginalValue(Ljava/lang/String;Landroid/util/Pair;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 6

    const/4 p0, 0x0

    .line 96
    const-string p1, "disable1"

    invoke-interface {p3, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 97
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 98
    invoke-interface {v0, p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    const-string p1, "disable2"

    invoke-interface {p3, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p3

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    .line 100
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p2

    .line 101
    invoke-interface {p2, p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public bridge synthetic serializeOriginalValue(Ljava/lang/String;Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4

    .line 41
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->serializeOriginalValue(Ljava/lang/String;Landroid/util/Pair;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method

.method public storeOriginalValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 5

    .line 56
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_21

    .line 60
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p0, p2}, Lcom/android/internal/statusbar/IStatusBarService;->getDisableFlags(Landroid/os/IBinder;I)[I

    move-result-object p0

    .line 61
    new-instance p2, Landroid/util/Pair;

    const/4 v0, 0x0

    aget v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->setOriginalValue(Ljava/lang/Object;)V

    return-void

    .line 57
    :cond_21
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "IStatusBarService is null, cannot retrieve status bar state."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
