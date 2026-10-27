.class Lcom/android/server/voiceinteraction/RecognitionServiceInfo;
.super Ljava/lang/Object;
.source "RecognitionServiceInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecognitionServiceInfo"


# instance fields
.field private final mParseError:Ljava/lang/String;

.field private final mSelectableAsDefault:Z

.field private final mServiceInfo:Landroid/content/pm/ServiceInfo;


# direct methods
.method private constructor <init>(Landroid/content/pm/ServiceInfo;ZLjava/lang/String;)V
    .registers 4
    .param p1, "si"    # Landroid/content/pm/ServiceInfo;
    .param p2, "selectableAsDefault"    # Z
    .param p3, "parseError"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 131
    iput-boolean p2, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mSelectableAsDefault:Z

    .line 132
    iput-object p3, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mParseError:Ljava/lang/String;

    .line 133
    return-void
.end method

.method static getAvailableServices(Landroid/content/Context;I)Ljava/util/List;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/voiceinteraction/RecognitionServiceInfo;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/voiceinteraction/RecognitionServiceInfo;>;"
    nop

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.RecognitionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0xc0000

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 69
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 70
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    nop

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v4, v5}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->parseInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Lcom/android/server/voiceinteraction/RecognitionServiceInfo;

    move-result-object v4

    .line 72
    .local v4, "service":Lcom/android/server/voiceinteraction/RecognitionServiceInfo;
    iget-object v5, v4, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mParseError:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse error in getAvailableServices: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mParseError:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RecognitionServiceInfo"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_54
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "service":Lcom/android/server/voiceinteraction/RecognitionServiceInfo;
    goto :goto_1b

    .line 78
    :cond_58
    return-object v0
.end method

.method static parseInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Lcom/android/server/voiceinteraction/RecognitionServiceInfo;
    .registers 11
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "si"    # Landroid/content/pm/ServiceInfo;

    .line 90
    const-string v0, ""

    .line 91
    .local v0, "parseError":Ljava/lang/String;
    const/4 v1, 0x1

    .line 92
    .local v1, "selectableAsDefault":Z
    :try_start_3
    const-string v2, "android.speech"

    invoke-virtual {p1, p0, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_9} :catch_79
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_79
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_9} :catch_79

    .line 95
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v2, :cond_2c

    .line 96
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No android.speech meta-data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 98
    new-instance v3, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;

    invoke-direct {v3, p1, v1, v0}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;ZLjava/lang/String;)V
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_6d

    .line 122
    if-eqz v2, :cond_2b

    :try_start_28
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_2b} :catch_79
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_79
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_2b} :catch_79

    .line 98
    :cond_2b
    return-object v3

    .line 100
    :cond_2c
    :try_start_2c
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 101
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 103
    .local v4, "attrs":Landroid/util/AttributeSet;
    const/4 v5, 0x0

    .line 104
    .local v5, "type":I
    :goto_37
    const/4 v6, 0x1

    if-eq v5, v6, :cond_43

    const/4 v7, 0x2

    if-eq v5, v7, :cond_43

    .line 105
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v5, v6

    goto :goto_37

    .line 108
    :cond_43
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "nodeName":Ljava/lang/String;
    const-string/jumbo v8, "recognition-service"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 114
    sget-object v8, Lcom/android/internal/R$styleable;->RecognitionService:[I

    .line 115
    invoke-virtual {v3, v4, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 117
    .local v8, "values":Landroid/content/res/TypedArray;
    nop

    .line 118
    invoke-virtual {v8, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move v1, v6

    .line 121
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5f
    .catchall {:try_start_2c .. :try_end_5f} :catchall_6d

    .line 122
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "type":I
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "values":Landroid/content/res/TypedArray;
    if-eqz v2, :cond_64

    :try_start_61
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_64
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_61 .. :try_end_64} :catch_79
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_79
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_61 .. :try_end_64} :catch_79

    .line 124
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_64
    goto :goto_8d

    .line 110
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "type":I
    .restart local v7    # "nodeName":Ljava/lang/String;
    :cond_65
    :try_start_65
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Meta-data does not start with recognition-service tag"

    invoke-direct {v6, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parseError":Ljava/lang/String;
    .end local v1    # "selectableAsDefault":Z
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "pm":Landroid/content/pm/PackageManager;
    .end local p1    # "si":Landroid/content/pm/ServiceInfo;
    throw v6
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_6d

    .line 92
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "type":I
    .end local v7    # "nodeName":Ljava/lang/String;
    .restart local v0    # "parseError":Ljava/lang/String;
    .restart local v1    # "selectableAsDefault":Z
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "pm":Landroid/content/pm/PackageManager;
    .restart local p1    # "si":Landroid/content/pm/ServiceInfo;
    :catchall_6d
    move-exception v3

    if-eqz v2, :cond_78

    :try_start_70
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_78

    :catchall_74
    move-exception v4

    :try_start_75
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "parseError":Ljava/lang/String;
    .end local v1    # "selectableAsDefault":Z
    .end local p0    # "pm":Landroid/content/pm/PackageManager;
    .end local p1    # "si":Landroid/content/pm/ServiceInfo;
    :cond_78
    :goto_78
    throw v3
    :try_end_79
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_75 .. :try_end_79} :catch_79
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_79} :catch_79
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_75 .. :try_end_79} :catch_79

    .line 122
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "parseError":Ljava/lang/String;
    .restart local v1    # "selectableAsDefault":Z
    .restart local p0    # "pm":Landroid/content/pm/PackageManager;
    .restart local p1    # "si":Landroid/content/pm/ServiceInfo;
    :catch_79
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing recognition service meta-data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_8d
    new-instance v2, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;

    invoke-direct {v2, p1, v1, v0}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;ZLjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public getParseError()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public isSelectableAsDefault()Z
    .registers 2

    .line 146
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mSelectableAsDefault:Z

    return v0
.end method
