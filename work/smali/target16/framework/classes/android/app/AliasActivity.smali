.class public Landroid/app/AliasActivity;
.super Landroid/app/Activity;
.source "AliasActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final greylist-max-o ALIAS_META_DATA:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const-string v0, "android.app.alias"

    iput-object v0, p0, Landroid/app/AliasActivity;->ALIAS_META_DATA:Ljava/lang/String;

    return-void
.end method

.method private greylist-max-o parseAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 90
    nop

    .line 93
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    const/4 v3, 0x2

    if-eq v1, v3, :cond_10

    goto :goto_5

    .line 97
    :cond_10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 98
    const-string v3, "alias"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 104
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v3, 0x0

    .line 105
    :cond_21
    :goto_21
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v2, :cond_52

    const/4 v5, 0x3

    if-ne v4, v5, :cond_30

    .line 106
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_52

    .line 107
    :cond_30
    if-eq v4, v5, :cond_21

    const/4 v5, 0x4

    if-ne v4, v5, :cond_36

    .line 108
    goto :goto_21

    .line 111
    :cond_36
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 112
    const-string v5, "intent"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 113
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p1, v0}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v4

    .line 114
    if-nez v3, :cond_4d

    move-object v3, v4

    .line 115
    :cond_4d
    goto :goto_21

    .line 116
    :cond_4e
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_21

    .line 120
    :cond_52
    return-object v3

    .line 99
    :cond_53
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alias meta-data must start with <alias> tag; found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    nop

    .line 61
    const/4 p1, 0x0

    :try_start_5
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 61
    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.app.alias"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 65
    if-eqz p1, :cond_39

    .line 70
    invoke-direct {p0, p1}, Landroid/app/AliasActivity;->parseAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_31

    .line 76
    invoke-virtual {p0, v0}, Landroid/app/AliasActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Landroid/app/AliasActivity;->finish()V
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_2b} :catch_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_2b} :catch_43
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2b} :catch_43
    .catchall {:try_start_5 .. :try_end_2b} :catchall_41

    .line 82
    if-eqz p1, :cond_30

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 84
    :cond_30
    return-void

    .line 72
    :cond_31
    :try_start_31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No <intent> tag found in alias description"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Alias requires a meta-data field android.app.alias"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_41} :catch_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_41} :catch_43
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_41} :catch_43
    .catchall {:try_start_31 .. :try_end_41} :catchall_41

    .line 82
    :catchall_41
    move-exception v0

    goto :goto_4c

    .line 79
    :catch_43
    move-exception v0

    .line 80
    :try_start_44
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error parsing alias"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_41

    .line 82
    :goto_4c
    if-eqz p1, :cond_51

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 83
    :cond_51
    throw v0
.end method
