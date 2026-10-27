.class public final Lcom/android/server/pm/pkg/SuspendParams;
.super Ljava/lang/Object;
.source "SuspendParams.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FrameworkPackageUserState"

.field private static final TAG_APP_EXTRAS:Ljava/lang/String; = "app-extras"

.field private static final TAG_DIALOG_INFO:Ljava/lang/String; = "dialog-info"

.field private static final TAG_LAUNCHER_EXTRAS:Ljava/lang/String; = "launcher-extras"


# instance fields
.field private final appExtras:Landroid/os/PersistableBundle;

.field private final dialogInfo:Landroid/content/pm/SuspendDialogInfo;

.field private final launcherExtras:Landroid/os/PersistableBundle;


# direct methods
.method public constructor <init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "dialogInfo"    # Landroid/content/pm/SuspendDialogInfo;
    .param p2, "appExtras"    # Landroid/os/PersistableBundle;
    .param p3, "launcherExtras"    # Landroid/os/PersistableBundle;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/pm/pkg/SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    .line 52
    iput-object p2, p0, Lcom/android/server/pm/pkg/SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    .line 53
    iput-object p3, p0, Lcom/android/server/pm/pkg/SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    .line 54
    return-void
.end method

.method public static restoreFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/pkg/SuspendParams;
    .registers 11
    .param p0, "in"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const-string v0, "FrameworkPackageUserState"

    const/4 v1, 0x0

    .line 126
    .local v1, "readDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    const/4 v2, 0x0

    .line 127
    .local v2, "readAppExtras":Landroid/os/PersistableBundle;
    const/4 v3, 0x0

    .line 129
    .local v3, "readLauncherExtras":Landroid/os/PersistableBundle;
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    .line 132
    .local v4, "currentDepth":I
    :cond_9
    :goto_9
    :try_start_9
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_82

    const/4 v5, 0x3

    if-ne v6, v5, :cond_1a

    .line 134
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v4, :cond_82

    .line 135
    :cond_1a
    if-eq v6, v5, :cond_9

    const/4 v5, 0x4

    if-ne v6, v5, :cond_20

    .line 137
    goto :goto_9

    .line 139
    :cond_20
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v8, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_90

    :cond_2c
    goto :goto_4a

    :sswitch_2d
    const-string v7, "launcher-extras"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v7, 0x2

    goto :goto_4b

    :sswitch_37
    const-string v7, "dialog-info"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v7, 0x0

    goto :goto_4b

    :sswitch_41
    const-string v9, "app-extras"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    goto :goto_4b

    :goto_4a
    move v7, v8

    :goto_4b
    packed-switch v7, :pswitch_data_9e

    .line 150
    goto :goto_61

    .line 147
    :pswitch_4f
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v5

    move-object v3, v5

    .line 148
    goto :goto_81

    .line 144
    :pswitch_55
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v5

    move-object v2, v5

    .line 145
    goto :goto_81

    .line 141
    :pswitch_5b
    invoke-static {p0}, Landroid/content/pm/SuspendDialogInfo;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v5

    move-object v1, v5

    .line 142
    goto :goto_81

    .line 150
    :goto_61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " in SuspendParams. Ignoring"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_81} :catch_83

    .line 152
    :goto_81
    goto :goto_9

    .line 158
    :cond_82
    goto :goto_89

    .line 155
    .end local v6    # "type":I
    :catch_83
    move-exception v5

    .line 156
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "Exception while trying to parse SuspendParams, some fields may default"

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_89
    new-instance v0, Lcom/android/server/pm/pkg/SuspendParams;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/pkg/SuspendParams;-><init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V

    return-object v0

    nop

    :sswitch_data_90
    .sparse-switch
        -0x20149871 -> :sswitch_41
        -0x15b69ed -> :sswitch_37
        0x61017530 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_55
        :pswitch_4f
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 58
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 59
    return v0

    .line 61
    :cond_4
    instance-of v1, p1, Lcom/android/server/pm/pkg/SuspendParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 62
    return v2

    .line 64
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/server/pm/pkg/SuspendParams;

    .line 65
    .local v1, "other":Lcom/android/server/pm/pkg/SuspendParams;
    iget-object v3, p0, Lcom/android/server/pm/pkg/SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    iget-object v4, v1, Lcom/android/server/pm/pkg/SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 66
    return v2

    .line 68
    :cond_18
    iget-object v3, p0, Lcom/android/server/pm/pkg/SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    iget-object v4, v1, Lcom/android/server/pm/pkg/SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    invoke-static {v3, v4}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 69
    return v2

    .line 71
    :cond_23
    iget-object v3, p0, Lcom/android/server/pm/pkg/SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    iget-object v4, v1, Lcom/android/server/pm/pkg/SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    invoke-static {v3, v4}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 72
    return v2

    .line 74
    :cond_2e
    return v0
.end method

.method public getAppExtras()Landroid/os/PersistableBundle;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/server/pm/pkg/SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getDialogInfo()Landroid/content/pm/SuspendDialogInfo;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/android/server/pm/pkg/SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    return-object v0
.end method

.method public getLauncherExtras()Landroid/os/PersistableBundle;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/android/server/pm/pkg/SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/android/server/pm/pkg/SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 80
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/pm/pkg/SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->size()I

    move-result v2

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    add-int/2addr v1, v2

    .line 81
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/server/pm/pkg/SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->size()I

    move-result v3

    :cond_1e
    add-int/2addr v0, v3

    .line 82
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    return v0
.end method

.method public saveToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 7
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/server/pm/pkg/SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 92
    const-string v0, "dialog-info"

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    iget-object v2, p0, Lcom/android/server/pm/pkg/SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/SuspendDialogInfo;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 94
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/pkg/SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    const-string v2, "FrameworkPackageUserState"

    if-eqz v0, :cond_2c

    .line 97
    const-string v0, "app-extras"

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/pm/pkg/SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V
    :try_end_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_22} :catch_23

    .line 103
    goto :goto_29

    .line 100
    :catch_23
    move-exception v3

    .line 101
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "Exception while trying to write appExtras. Will be lost on reboot"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_29
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    :cond_2c
    iget-object v0, p0, Lcom/android/server/pm/pkg/SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_44

    .line 107
    const-string v0, "launcher-extras"

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    :try_start_35
    iget-object v3, p0, Lcom/android/server/pm/pkg/SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V
    :try_end_3a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35 .. :try_end_3a} :catch_3b

    .line 113
    goto :goto_41

    .line 110
    :catch_3b
    move-exception v3

    .line 111
    .restart local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "Exception while trying to write launcherExtras. Will be lost on reboot"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_41
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    :cond_44
    return-void
.end method
