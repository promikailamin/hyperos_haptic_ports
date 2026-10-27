.class public Lcom/android/server/signedconfig/SignedConfigService;
.super Ljava/lang/Object;
.source "SignedConfigService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPacMan:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/signedconfig/SignedConfigService;->mContext:Landroid/content/Context;

    .line 61
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/signedconfig/SignedConfigService;->mPacMan:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method

.method public static registerUpdateReceiver(Landroid/content/Context;)V
    .registers 4

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/android/server/signedconfig/SignedConfigService$UpdateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/signedconfig/SignedConfigService$UpdateReceiver;-><init>(Lcom/android/server/signedconfig/SignedConfigService-IA;)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public handlePackageBroadcast(Landroid/content/Intent;)V
    .registers 8

    .line 66
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_9

    const/4 p1, 0x0

    :goto_7
    move-object v1, p1

    goto :goto_e

    .line 67
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :goto_e
    if-nez v1, :cond_12

    goto/16 :goto_af

    .line 72
    :cond_12
    iget-object p1, p0, Lcom/android/server/signedconfig/SignedConfigService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 73
    iget-object v0, p0, Lcom/android/server/signedconfig/SignedConfigService;->mPacMan:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x80

    const/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 75
    const-string v0, "SignedConfig"

    if-nez p1, :cond_47

    .line 76
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Got null PackageInfo for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 79
    :cond_47
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p1, :cond_4e

    goto :goto_af

    .line 84
    :cond_4e
    const-string v2, "android.settings.global"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 85
    const-string v3, "android.settings.global.signature"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_af

    .line 86
    new-instance v4, Lcom/android/server/signedconfig/SignedConfigEvent;

    invoke-direct {v4}, Lcom/android/server/signedconfig/SignedConfigEvent;-><init>()V

    const/4 v5, 0x1

    .line 88
    :try_start_64
    iput v5, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->type:I

    .line 89
    iput-object v1, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->fromPackage:Ljava/lang/String;

    .line 90
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_70
    .catchall {:try_start_64 .. :try_end_70} :catchall_8d

    .line 94
    :try_start_70
    new-instance v3, Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_7f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_70 .. :try_end_7f} :catch_90
    .catchall {:try_start_70 .. :try_end_7f} :catchall_8d

    .line 106
    :try_start_7f
    new-instance v0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;

    iget-object p0, p0, Lcom/android/server/signedconfig/SignedConfigService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v4}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/signedconfig/SignedConfigEvent;)V

    invoke-virtual {v0, v3, p1}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->applyConfig(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_7f .. :try_end_89} :catchall_8d

    .line 109
    invoke-virtual {v4}, Lcom/android/server/signedconfig/SignedConfigEvent;->send()V

    return-void

    :catchall_8d
    move-exception v0

    move-object p0, v0

    goto :goto_ab

    .line 96
    :catch_90
    :try_start_90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to base64 decode global settings config from "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    .line 98
    iput p0, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I
    :try_end_a7
    .catchall {:try_start_90 .. :try_end_a7} :catchall_8d

    .line 109
    invoke-virtual {v4}, Lcom/android/server/signedconfig/SignedConfigEvent;->send()V

    return-void

    :goto_ab
    invoke-virtual {v4}, Lcom/android/server/signedconfig/SignedConfigEvent;->send()V

    .line 110
    throw p0

    :cond_af
    :goto_af
    return-void
.end method
