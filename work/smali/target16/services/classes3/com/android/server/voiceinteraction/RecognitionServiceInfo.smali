.class public Lcom/android/server/voiceinteraction/RecognitionServiceInfo;
.super Ljava/lang/Object;
.source "RecognitionServiceInfo.java"


# instance fields
.field public final mParseError:Ljava/lang/String;

.field public final mSelectableAsDefault:Z

.field public final mServiceInfo:Landroid/content/pm/ServiceInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ServiceInfo;ZLjava/lang/String;)V
    .registers 4

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 131
    iput-boolean p2, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mSelectableAsDefault:Z

    .line 132
    iput-object p3, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mParseError:Ljava/lang/String;

    return-void
.end method

.method public static getAvailableServices(Landroid/content/Context;I)Ljava/util/List;
    .registers 6

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.RecognitionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0xc0000

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v2, v1}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->parseInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Lcom/android/server/voiceinteraction/RecognitionServiceInfo;

    move-result-object v1

    .line 72
    iget-object v2, v1, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mParseError:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error in getAvailableServices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mParseError:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RecognitionServiceInfo"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_54
    return-object v0
.end method

.method public static parseInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Lcom/android/server/voiceinteraction/RecognitionServiceInfo;
    .registers 7

    const/4 v0, 0x1

    .line 92
    :try_start_1
    const-string v1, "android.speech"

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_7} :catch_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_7} :catch_27

    if-nez v1, :cond_2c

    .line 96
    :try_start_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No android.speech meta-data for "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 98
    new-instance v2, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;

    invoke-direct {v2, p1, v0, p0}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;ZLjava/lang/String;)V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_2a

    if-eqz v1, :cond_29

    .line 122
    :try_start_23
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_26
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_26} :catch_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_26} :catch_27

    return-object v2

    :catch_27
    move-exception p0

    goto :goto_73

    :cond_29
    return-object v2

    :catchall_2a
    move-exception p0

    goto :goto_68

    .line 100
    :cond_2c
    :try_start_2c
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    .line 101
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    const/4 v3, 0x0

    :goto_37
    if-eq v3, v0, :cond_41

    const/4 v4, 0x2

    if-eq v3, v4, :cond_41

    .line 105
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    goto :goto_37

    .line 108
    :cond_41
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 109
    const-string v4, "recognition-service"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 114
    sget-object v3, Lcom/android/internal/R$styleable;->RecognitionService:[I

    .line 115
    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 118
    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 121
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5a
    .catchall {:try_start_2c .. :try_end_5a} :catchall_2a

    .line 122
    :try_start_5a
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5a .. :try_end_5d} :catch_27
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5a .. :try_end_5d} :catch_27

    .line 124
    const-string p0, ""

    goto :goto_84

    .line 110
    :cond_60
    :try_start_60
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Meta-data does not start with recognition-service tag"

    invoke-direct {p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_2a

    :goto_68
    if-eqz v1, :cond_72

    .line 92
    :try_start_6a
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_72

    :catchall_6e
    move-exception v1

    :try_start_6f
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_72
    :goto_72
    throw p0
    :try_end_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f .. :try_end_73} :catch_27
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_73} :catch_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6f .. :try_end_73} :catch_27

    .line 123
    :goto_73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing recognition service meta-data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 125
    :goto_84
    new-instance v1, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;

    invoke-direct {v1, p1, v0, p0}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;ZLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getParseError()Ljava/lang/String;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mParseError:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object p0
.end method

.method public isSelectableAsDefault()Z
    .registers 1

    .line 146
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mSelectableAsDefault:Z

    return p0
.end method
