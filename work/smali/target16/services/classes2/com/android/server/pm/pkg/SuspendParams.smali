.class public final Lcom/android/server/pm/pkg/SuspendParams;
.super Ljava/lang/Object;
.source "SuspendParams.java"


# instance fields
.field public final mAppExtras:Landroid/os/PersistableBundle;

.field public final mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

.field public final mLauncherExtras:Landroid/os/PersistableBundle;

.field public final mQuarantined:Z


# direct methods
.method public constructor <init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Z)V
    .registers 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    .line 61
    iput-object p2, p0, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    .line 62
    iput-object p3, p0, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    .line 63
    iput-boolean p4, p0, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    return-void
.end method

.method public static restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/pkg/SuspendParams;
    .registers 10

    .line 140
    const-string v0, "FrameworkPackageUserState"

    .line 144
    const-string/jumbo v1, "quarantined"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 146
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    move-object v4, v3

    move-object v5, v4

    .line 149
    :cond_11
    :goto_11
    :try_start_11
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_8c

    const/4 v7, 0x3

    if-ne v6, v7, :cond_24

    .line 151
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_8c

    goto :goto_24

    :catch_22
    move-exception p0

    goto :goto_87

    :cond_24
    :goto_24
    if-eq v6, v7, :cond_11

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2a

    goto :goto_11

    .line 156
    :cond_2a
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    const v8, -0x20149871

    if-eq v7, v8, :cond_5c

    const v8, -0x15b69ed

    if-eq v7, v8, :cond_4f

    const v8, 0x61017530

    if-eq v7, v8, :cond_42

    goto :goto_69

    :cond_42
    const-string v7, "launcher-extras"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 164
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v5

    goto :goto_11

    .line 156
    :cond_4f
    const-string v7, "dialog-info"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 158
    invoke-static {p0}, Landroid/content/pm/SuspendDialogInfo;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v3

    goto :goto_11

    .line 156
    :cond_5c
    const-string v7, "app-extras"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 161
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v4

    goto :goto_11

    .line 167
    :cond_69
    :goto_69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in SuspendParams. Ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_86} :catch_22

    goto :goto_11

    .line 173
    :goto_87
    const-string v2, "Exception while trying to parse SuspendParams, some fields may default"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :cond_8c
    new-instance p0, Lcom/android/server/pm/pkg/SuspendParams;

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/android/server/pm/pkg/SuspendParams;-><init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Z)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 71
    :cond_4
    instance-of v1, p1, Lcom/android/server/pm/pkg/SuspendParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 74
    :cond_a
    check-cast p1, Lcom/android/server/pm/pkg/SuspendParams;

    .line 75
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    iget-object v3, p1, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    .line 78
    :cond_17
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    iget-object v3, p1, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    invoke-static {v1, v3}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    .line 81
    :cond_22
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    iget-object v3, p1, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    invoke-static {v1, v3}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    .line 84
    :cond_2d
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    iget-boolean p1, p1, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    if-eq p0, p1, :cond_34

    return v2

    :cond_34
    return v0
.end method

.method public getAppExtras()Landroid/os/PersistableBundle;
    .registers 1

    .line 184
    iget-object p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public getDialogInfo()Landroid/content/pm/SuspendDialogInfo;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    return-object p0
.end method

.method public getLauncherExtras()Landroid/os/PersistableBundle;
    .registers 1

    .line 188
    iget-object p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 93
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->size()I

    move-result v1

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->size()I

    move-result v2

    :cond_1e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isQuarantined()Z
    .registers 1

    .line 192
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    return p0
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 7

    .line 105
    const-string/jumbo v0, "quarantined"

    iget-boolean v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    iget-object v0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    if-eqz v0, :cond_1a

    .line 107
    const-string v0, "dialog-info"

    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v1, p1}, Landroid/content/pm/SuspendDialogInfo;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 109
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    :cond_1a
    iget-object v0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    const-string v1, "FrameworkPackageUserState"

    if-eqz v0, :cond_34

    .line 112
    const-string v0, "app-extras"

    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    :try_start_25
    iget-object v3, p0, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception v3

    .line 116
    const-string v4, "Exception while trying to write appExtras. Will be lost on reboot"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :goto_31
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    :cond_34
    iget-object v0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_4c

    .line 122
    const-string v0, "launcher-extras"

    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    :try_start_3d
    iget-object p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d .. :try_end_42} :catch_43

    goto :goto_49

    :catch_43
    move-exception p0

    .line 126
    const-string v3, "Exception while trying to write launcherExtras. Will be lost on reboot"

    invoke-static {v1, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :goto_49
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4c
    return-void
.end method
