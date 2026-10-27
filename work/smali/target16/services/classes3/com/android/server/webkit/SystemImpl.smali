.class public Lcom/android/server/webkit/SystemImpl;
.super Ljava/lang/Object;
.source "SystemImpl.java"

# interfaces
.implements Lcom/android/server/webkit/SystemInterface;


# static fields
.field public static final TAG:Ljava/lang/String; = "SystemImpl"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;


# direct methods
.method public static synthetic $r8$lambda$D8xVLvYyBPZe62cs9nzb3z2HO3k(I)[Landroid/webkit/WebViewProviderInfo;
    .registers 1

    .line 147
    new-array p0, p0, [Landroid/webkit/WebViewProviderInfo;

    return-object p0
.end method

.method public static synthetic $r8$lambda$M5QgWlGaXkQ3dmUW07583-IfhCs(Lcom/android/server/webkit/SystemImpl;Landroid/webkit/WebViewProviderInfo;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/SystemImpl;->isProviderAvailable(Landroid/webkit/WebViewProviderInfo;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 14

    .line 72
    const-string v0, "true"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 80
    :try_start_d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x1170007

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_18} :catch_c6
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_c6
    .catchall {:try_start_d .. :try_end_18} :catchall_c3

    .line 82
    :try_start_18
    const-string v3, "webviewproviders"

    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    .line 84
    :goto_1f
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 85
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_26
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_26} :catch_93
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_26} :catch_93
    .catchall {:try_start_18 .. :try_end_26} :catchall_8f

    if-nez v5, :cond_44

    .line 130
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    if-eqz v3, :cond_3c

    .line 137
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/webkit/WebViewProviderInfo;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/webkit/WebViewProviderInfo;

    iput-object p1, p0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    return-void

    .line 133
    :cond_3c
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "There must be at least one WebView package that is available by default"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_44
    :try_start_44
    const-string v6, "webviewprovider"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 90
    const-string v5, "packageName"

    invoke-interface {p1, v2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b2

    .line 95
    const-string v5, "description"

    invoke-interface {p1, v2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_aa

    .line 100
    const-string v5, "availableByDefault"

    .line 101
    invoke-interface {p1, v2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 102
    const-string v5, "isFallback"

    .line 103
    invoke-interface {p1, v2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 104
    new-instance v6, Landroid/webkit/WebViewProviderInfo;

    .line 106
    invoke-static {p1}, Lcom/android/server/webkit/SystemImpl;->readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Landroid/webkit/WebViewProviderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V

    .line 107
    iget-boolean v5, v6, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-eqz v5, :cond_9f

    add-int/lit8 v4, v4, 0x1

    .line 109
    iget-boolean v5, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v5, :cond_97

    const/4 v5, 0x1

    if-gt v4, v5, :cond_87

    goto :goto_9f

    .line 114
    :cond_87
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "There can be at most one WebView fallback package."

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_8f
    move-exception v0

    move-object p0, v0

    move-object v2, p1

    goto :goto_df

    :catch_93
    move-exception v0

    move-object p0, v0

    move-object v2, p1

    goto :goto_c8

    .line 110
    :cond_97
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Each WebView fallback package must be available by default."

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_9f
    :goto_9f
    iget-boolean v5, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v5, :cond_a5

    add-int/lit8 v3, v3, 0x1

    .line 121
    :cond_a5
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    .line 97
    :cond_aa
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "WebView provider in framework resources missing description"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_b2
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "WebView provider in framework resources missing package name"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    :cond_ba
    sget-object v5, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    const-string v6, "Found an element that is not a WebView provider"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_c1} :catch_93
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_c1} :catch_93
    .catchall {:try_start_44 .. :try_end_c1} :catchall_8f

    goto/16 :goto_1f

    :catchall_c3
    move-exception v0

    move-object p0, v0

    goto :goto_df

    :catch_c6
    move-exception v0

    move-object p0, v0

    .line 128
    :goto_c8
    :try_start_c8
    new-instance p1, Landroid/util/AndroidRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error when parsing WebView config "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_df
    .catchall {:try_start_c8 .. :try_end_df} :catchall_c3

    :goto_df
    if-eqz v2, :cond_e4

    .line 130
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 131
    :cond_e4
    throw p0
.end method

.method public static readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;
    .registers 5

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 172
    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 173
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "signature"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 175
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 178
    :cond_23
    sget-object v2, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    const-string v3, "Found an element in a webview provider that is not a signature"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 181
    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public enablePackageForAllUsers(Ljava/lang/String;Z)V
    .registers 5

    .line 214
    iget-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x0

    .line 215
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 216
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/webkit/SystemImpl;->enablePackageForUser(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    goto :goto_13

    :cond_23
    return-void
.end method

.method public final enablePackageForUser(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .registers 7

    .line 221
    iget-object p0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p2, :cond_f

    move v1, v0

    goto :goto_10

    :cond_f
    const/4 v1, 0x3

    .line 224
    :goto_10
    :try_start_10
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 229
    sget-object v0, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_26

    const-string p2, "enable "

    goto :goto_28

    :cond_26
    const-string p2, "disable "

    :goto_28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ensureZygoteStarted()V
    .registers 1

    .line 267
    invoke-static {}, Landroid/webkit/WebViewZygote;->getProcess()Landroid/os/ZygoteProcess;

    return-void
.end method

.method public getFactoryPackageVersion(Ljava/lang/String;)J
    .registers 3

    .line 151
    iget-object p0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x200000

    .line 152
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 153
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p0

    return-wide p0
.end method

.method public getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 256
    iget-object p0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 257
    iget-object p1, p1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const v0, 0x4004c0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPackageInfoForProviderAllUsers(Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;
    .registers 3

    .line 262
    iget-object p0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    iget-object p1, p1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const v0, 0x4004c0

    invoke-static {p0, p1, v0}, Landroid/webkit/UserPackage;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUserChosenWebViewProvider()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object p0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "webview_provider"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/webkit/SystemImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/webkit/SystemImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/webkit/SystemImpl;)V

    .line 146
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/webkit/SystemImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/webkit/SystemImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 147
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/webkit/WebViewProviderInfo;

    return-object p0
.end method

.method public installExistingPackageForAllUsers(Ljava/lang/String;)V
    .registers 4

    .line 236
    iget-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x0

    .line 237
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 238
    invoke-virtual {p0, p1, v1}, Lcom/android/server/webkit/SystemImpl;->installPackageForUser(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_13

    :cond_23
    return-void
.end method

.method public final installPackageForUser(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    .line 243
    iget-object p0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p0

    const/4 p2, 0x0

    .line 245
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageInstaller;->installExistingPackage(Ljava/lang/String;ILandroid/content/IntentSender;)V

    return-void
.end method

.method public final isProviderAvailable(Landroid/webkit/WebViewProviderInfo;)Z
    .registers 2

    .line 158
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/SystemImpl;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public killPackageDependents(Ljava/lang/String;)V
    .registers 5

    .line 205
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 v0, -0x1

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityManager;->killPackageDependents(Ljava/lang/String;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 208
    sget-object v0, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to call killPackageDependents for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I
    .registers 2

    .line 186
    invoke-static {p1}, Landroid/webkit/WebViewFactory;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result p0

    return p0
.end method

.method public pinWebviewIfRequired(Landroid/content/pm/ApplicationInfo;)V
    .registers 12

    .line 272
    const-class p0, Lcom/android/server/pinner/PinnerService;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/pinner/PinnerService;

    .line 273
    invoke-virtual {v0}, Lcom/android/server/pinner/PinnerService;->getWebviewPinQuota()I

    move-result p0

    if-gtz p0, :cond_10

    goto :goto_5f

    .line 278
    :cond_10
    const-string v1, "webview"

    invoke-virtual {v0, v1}, Lcom/android/server/pinner/PinnerService;->unpinGroup(Ljava/lang/String;)V

    .line 280
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 281
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "PIN_SHARED_LIBS_FIRST"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 282
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_34

    .line 283
    array-length v4, v2

    move v5, v3

    :goto_2a
    if-ge v5, v4, :cond_34

    aget-object v6, v2, v5

    .line 284
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 287
    :cond_34
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_3e

    .line 291
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 293
    :cond_3e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_42
    if-ge v3, v8, :cond_5f

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v9, v3, 0x1

    check-cast v1, Ljava/lang/String;

    if-gtz p0, :cond_4f

    goto :goto_5f

    :cond_4f
    int-to-long v2, p0

    .line 297
    const-string v5, "webview"

    const/4 v6, 0x1

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pinner/PinnerService;->pinFile(Ljava/lang/String;JLandroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Lcom/android/server/pinner/PinnedFile;

    move-result-object p0

    .line 299
    iget-wide p0, p0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long/2addr v2, p0

    long-to-int p0, v2

    move-object p1, v4

    move v3, v9

    goto :goto_42

    :cond_5f
    :goto_5f
    return-void
.end method

.method public systemIsDebuggable()Z
    .registers 1

    .line 250
    sget-boolean p0, Landroid/os/Build;->IS_ENG:Z

    return p0
.end method

.method public updateUserSetting(Ljava/lang/String;)V
    .registers 3

    .line 197
    iget-object p0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p1, :cond_a

    .line 199
    const-string p1, ""

    .line 197
    :cond_a
    const-string v0, "webview_provider"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
